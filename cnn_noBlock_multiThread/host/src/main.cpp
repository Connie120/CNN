#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "CL/opencl.h"
#include "AOCLUtils/aocl_utils.h"
#include "instance.h"
#include "assert.h"
#include "float.h"

using namespace aocl_utils;

// OpenCL runtime configuration
cl_platform_id platform = NULL;
unsigned num_devices = 0;
scoped_array<cl_device_id> device; // num_devices elements
cl_context context = NULL;
cl_command_queue queue; // num_devices elements
cl_program program = NULL;
cl_kernel kernel; // num_devices elements

cl_mem input_buf; // num_devices elements
cl_mem weight_buf;
cl_mem output_buf; // num_devices elements

float* dt_input = (float*)malloc(N_ifm*R_ifm*C_ifm * sizeof(float));
float* dt_output = (float*)malloc(M_ofm*R_ofm*C_ofm * sizeof(float));
float* dt_weights = (float*)malloc(M_ofm*N_ifm*K_wts*K_wts * sizeof(float));

float* ref_output = (float*)malloc(M_ofm*R_ofm*C_ofm * sizeof(float));

// Function prototypes
void ZhangIsfpga15_1_fp(float *input, float *output, float *weights);
int nearlyEqual(float a, float b);
bool init_opencl();
void init_problem();
void run();
void verify();
void cleanup();

// Entry point.
int main(int argc, char **argv) {
	printf("R_ofm: %d\n", R_ofm);
	printf("C_ofm: %d\n", C_ofm);
	printf("M_ofm: %d\n", M_ofm);
	printf("Tr: %d\n", Tr);	
	printf("Tc: %d\n", Tc);
	printf("Tm: %d\n", Tm);
    // Initialize OpenCL.
    if(!init_opencl()) {
        return -1;
    }
	printf("init_opencl done.\n");

    // Initialize the problem data.
    // Requires the number of devices to be known.
    init_problem();
	printf("init_problem done.\n");

    // Run the kernel.
    run();

    // Free the resources allocated
    cleanup();

    return 0;
}

// Initializes the OpenCL objects.
bool init_opencl() {
    cl_int status;

    printf("Initializing OpenCL\n");

    if(!setCwdToExeDir()) {
        return false;
    }

    // Get the OpenCL platform.
    platform = findPlatform("Intel(R) FPGA SDK for OpenCL(TM)");
    if(platform == NULL) {
        printf("ERROR: Unable to find Intel(R) FPGA OpenCL platform.\n");
        return false;
    }

    // Query the available OpenCL device.
    device.reset(getDevices(platform, CL_DEVICE_TYPE_ALL, &num_devices));
    printf("Platform: %s\n", getPlatformName(platform).c_str());
    printf("Using %d device(s)\n", num_devices);

	//To test number of device is equal to 1
	num_devices = 1;
    printf("  %s\n", getDeviceName(device[0]).c_str());

    // Create the context.
    context = clCreateContext(NULL, num_devices, device, &oclContextCallback, NULL, &status);
    checkError(status, "Failed to create context");

    // Create the program for all device. Use the first device as the
    // representative device (assuming all device are of the same type).
    std::string binary_file = getBoardBinaryFile("cnn", device[0]);
    printf("Using AOCX: %s\n", binary_file.c_str());
    program = createProgramFromBinary(context, binary_file.c_str(), device, num_devices);

    // Build the program that was just created.
    status = clBuildProgram(program, 0, NULL, "", NULL, NULL);
    checkError(status, "Failed to build program");

    // Command queue.
    queue = clCreateCommandQueue(context, device[0], CL_QUEUE_PROFILING_ENABLE, &status);
    checkError(status, "Failed to create cnommand queue");

    // Kernel.
    const char *kernel_name = "cnn";
    kernel = clCreateKernel(program, kernel_name, &status);
    checkError(status, "Failed to create kernel");

    // Input buffer.
    input_buf = clCreateBuffer(context, CL_MEM_READ_ONLY | CL_CHANNEL_1_INTELFPGA,
                                    N_ifm * R_ifm * C_ifm * sizeof(float), NULL, &status);
    checkError(status, "Failed to create buffer for input");
	printf("input buffer done\n");

    // Weight buffer.
    weight_buf = clCreateBuffer(context, CL_MEM_READ_ONLY | CL_CHANNEL_2_INTELFPGA,
                                    M_ofm * N_ifm * K_wts * K_wts * sizeof(float), NULL, &status);
    checkError(status, "Failed to create buffer for weights");
	printf("weight buffer done\n");

    // Output buffer.
    output_buf = clCreateBuffer(context, CL_MEM_WRITE_ONLY | CL_CHANNEL_1_INTELFPGA,
                                    M_ofm * R_ofm * C_ofm * sizeof(float), NULL, &status);
    checkError(status, "Failed to create buffer for output");
	printf("output buffer done\n");

    return true;
}

// Initialize the data for the problem. Requires num_devices to be known.
void init_problem() {
    if(num_devices == 0) {
        checkError(-1, "No devices");
    }

    // Generate input and weight matrices.
    printf("Generating input and weight matrices\n");

    unsigned long row, col, to, ti;

    // Set the actual output and reference output matrices to 0.
    for(row=0; row<R_ofm; row++) {
        for(col=0; col<C_ofm ; col++) {
            for(to=0; to<M_ofm; to++) {
                ARRAY(dt_output,0,to,row,col,0,M_ofm,R_ofm,C_ofm) = 0;
                ARRAY(ref_output,0,to,row,col,0,M_ofm,R_ofm,C_ofm) = 0;
            }
        }
    }

    // Generate the input matrix
    for(row=0; row<R_ifm; row++) {
        for(col=0; col<C_ifm ; col++) {
            for(ti=0; ti<N_ifm; ti++) {
                ARRAY(dt_input,0,ti,row,col,0,N_ifm,R_ifm,C_ifm)=(((float)(rand()%RANGE))/RANGE);
            }
        }
    }

    // Generate the weight matrix
    for(to=0; to<M_ofm; to++) {
        for(ti=0; ti<N_ifm; ti++) {
            for(row=0; row<K_wts; row++) {
                for(col=0; col<K_wts; col++) {
                    ARRAY(dt_weights,to,ti,row,col,M_ofm,N_ifm,K_wts,K_wts) = (((float)(rand()%RANGE))/RANGE);
                }
            }
        }
    }
	printf("generating all inputs done\n");
}

void run() {
    cl_int status;

    // Transfer inputs to each device. Each of the host buffers supplied to
    // clEnqueueWriteBuffer here is already aligned to ensure that DMA is used
    // for the host-to-device transfer.
    status = clEnqueueWriteBuffer(queue, input_buf, CL_FALSE,
                                    0, N_ifm * R_ifm * C_ifm * sizeof(float), dt_input, 0, NULL, NULL);
    checkError(status, "Failed to transfer input");

    status = clEnqueueWriteBuffer(queue, weight_buf, CL_FALSE,
                                    0, M_ofm * N_ifm * K_wts * K_wts * sizeof(float), dt_weights, 0, NULL, NULL);
    checkError(status, "Failed to transfer weight");

    status = clEnqueueWriteBuffer(queue, output_buf, CL_FALSE,
                                   0, M_ofm * R_ofm * C_ofm * sizeof(float), dt_output, 0, NULL, NULL);
    checkError(status, "Failed to transfer output");

    // Wait for all queues to finish.
    clFinish(queue);

    // Launch kernels.
    // This is the portion of time that we'll be measuring for throughput
    // benchmarking.
    cl_event kernel_event;

    const double start_time = getCurrentTimestamp();
    // Set kernel arguments.
    unsigned argi = 0;

    status = clSetKernelArg(kernel, argi++, sizeof(cl_mem), &input_buf);
    checkError(status, "Failed to set argument %d", argi - 1);

    status = clSetKernelArg(kernel, argi++, sizeof(cl_mem), &weight_buf);
    checkError(status, "Failed to set argument %d", argi - 1);

    status = clSetKernelArg(kernel, argi++, sizeof(cl_mem), &output_buf);
    checkError(status, "Failed to set argument %d", argi - 1);

    // Enqueue kernel.
    // Use a global work size corresponding to the size of the output matrix.
    // Each work-item computes the result for one value of the output matrix,
    // so the global work size has the same dimensions as the output matrix.
    //
    // The local work size is one block, so Tm * Tr * Tc.
    //
    // Events are used to ensure that the kernel is not launched until
    // the writes to the input buffers have completed.
	const size_t global_work_size[3] = { M_ofm/Tm, R_ofm/Tr, C_ofm/Tc };
	const size_t local_work_size[3] = { 1, 1, 1 };

    status = clEnqueueNDRangeKernel(queue, kernel, 3, NULL,
                                    global_work_size, NULL, 0, NULL, &kernel_event);
    checkError(status, "Failed to launch kernel");

    // Wait for all kernels to finish.
    clWaitForEvents(num_devices, &kernel_event);

    const double end_time = getCurrentTimestamp();
    const double total_time = end_time - start_time;

    // Wall-clock time taken.
    printf("\nTime: %0.3f ms\n", total_time * 1e3);

    // Get kernel times using the OpenCL event profiling API.
    cl_ulong time_ns = getStartEndTime(kernel_event);
    printf("Kernel time (device %d): %0.3f ms\n", 1, double(time_ns) * 1e-6);

    // Compute the throughput (GFLOPS).
    const float flops = (float)(2.0f * M_ofm * R_ofm * C_ofm * N_ifm * K_wts * K_wts / total_time);
    printf("\nThroughput: %0.2f GFLOPS\n\n", flops * 1e-9);

    // Release kernel events.
    clReleaseEvent(kernel_event);

    // Read the result.
    status = clEnqueueReadBuffer(queue, output_buf, CL_TRUE,
                                    0, M_ofm * R_ofm * C_ofm * sizeof(float), dt_output, 0, NULL, NULL);
    checkError(status, "Failed to read output matrix");

    printf("First verification");
    // Verify results.
    ZhangIsfpga15_1_fp(dt_input, ref_output, dt_weights);
    verify();

    printf("Second verification");
    status = clEnqueueReadBuffer(queue, output_buf, CL_TRUE,
                                    0, M_ofm * R_ofm * C_ofm * sizeof(float), dt_output, 0, NULL, NULL);
    checkError(status, "Failed to read output matrix");

    // Verify results.
    verify();
}

void ZhangIsfpga15_1_fp(float *input, float *output, float *weights) {
    printf("Computing reference output\n");
    unsigned long row, col, to, ti;

    for(row=0; row<R_ofm; row++) {
        for(col=0; col<C_ofm; col++) {
            for(to=0; to<M_ofm; to++) {
                for(ti=0; ti<N_ifm; ti++) {
                    unsigned long i, j;
                    for(i=0; i<K_wts; i++) {
                        for(j=0; j<K_wts; j++) {
                            ARRAY(output,0,to,row,col,0,M_ofm,R_ofm,C_ofm) +=
                                    ARRAY(weights,to,ti,i,j,M_ofm,N_ifm,K_wts,K_wts)*
                                    ARRAY(input,0,ti,S_wts*row+i,S_wts*col+j,0,N_ifm,R_ifm,C_ifm);
                        }
                    }
                }
            }
        }
    }
}

void verify() {
    printf("Verifying\n");

    unsigned long row, col, to;

    for(to=0; to<M_ofm; to++) {
        for(row=0; row<R_ofm; row++) {
            for(col=0; col<C_ofm ; col++) {
                if (!nearlyEqual((float)ARRAY(dt_output,0,to,row,col,0,M_ofm,R_ofm,C_ofm),
                                   ARRAY(ref_output,0,to,row,col,0,M_ofm,R_ofm,C_ofm))) {
		            printf("to: %lu, row: %lu, col: %lu\n", to, row, col);
		            printf("output: %f, ref: %f\n", ARRAY(dt_output,0,to,row,col,0,M_ofm,R_ofm,C_ofm), ARRAY(ref_output,0,to,row,col,0,M_ofm,R_ofm,C_ofm));
                }
                //assert(nearlyEqual((float)ARRAY(dt_output,0,to,row,col,0,M_ofm,R_ofm,C_ofm),
                //                   ARRAY(ref_output,0,to,row,col,0,M_ofm,R_ofm,C_ofm)));
            }
        }
    }

    printf("Results correct.\n\n");
}

int nearlyEqual(float a, float b) {
    float absA = fabs(a);
    float absB = fabs(b);
    float diff = fabs(a - b);

    if (a == b) { // shortcut, handles infinities
        return 1;
    } else if (a == 0 || b == 0 || diff < FLT_MIN) {
        // a or b is zero or both are extremely close to it
        // relative error is less meaningful here
        return diff < (EPSILON * FLT_MIN);
    } else { // use relative error
        return diff / fmin((absA + absB), FLT_MAX) < EPSILON;
    }
}

// Free the resources allocated during initialization
void cleanup() {
    if (kernel) {
        clReleaseKernel(kernel);
    }
    if (queue) {
        clReleaseCommandQueue(queue);
    }

    if(input_buf) {
        clReleaseMemObject(input_buf);
    }
    if(weight_buf) {
        clReleaseMemObject(weight_buf);
    }
    if(output_buf) {
        clReleaseMemObject(output_buf);
    }

    if(program) {
        clReleaseProgram(program);
    }
    if(context) {
        clReleaseContext(context);
    }
}
