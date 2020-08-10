#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "CL/opencl.h"
#include "AOCLUtils/aocl_utils.h"
#include "instance.h"
#include "assert.h"
#include "float.h"

using namespace aocl_utils;

#define ACL_ALIGNMENT 64

void* acl_aligned_malloc (size_t size) {
    void *result = NULL;
    if (posix_memalign(&result, ACL_ALIGNMENT, size) != 0)
        printf("acl_aligned_malloc() failed.\n");
    return result;
}

void acl_aligned_free (void *ptr) {
    free (ptr);
}

// OpenCL runtime configuration
cl_platform_id platform = NULL;
unsigned num_devices = 0;
scoped_array<cl_device_id> device;
cl_context context = NULL;
cl_command_queue queue;
cl_program program = NULL;
cl_kernel kernel;

cl_mem input_buf;
cl_mem weight_buf;
cl_mem output_buf;

cl_int Tm;
cl_int Tr;
cl_int Tc;
cl_int Tn;
cl_int K_wts;
cl_int S_wts;
cl_int M_ofm;
cl_int R_ofm;
cl_int C_ofm;
// cl_int N_ifm;
cl_int R_ifm;
cl_int C_ifm;

float* dt_input;
float* dt_output;
float* dt_weights;

float* ref_output;

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
    // Take inputs
    Tm = atoi(argv[1]);
    Tr = atoi(argv[2]);
    Tc = atoi(argv[3]);
    // Tn = atoi(argv[4]);

    K_wts = atoi(argv[5]);
    S_wts = atoi(argv[6]);

    M_ofm = atoi(argv[7]);
    R_ofm = atoi(argv[8]);
    C_ofm = atoi(argv[9]);

    // N_ifm = atoi(argv[10]);
    // R_ifm = atoi(argv[11]);
    // C_ifm = atoi(argv[12]);
    R_ifm = R_ofm * S_wts + K_wts - S_wts;
    C_ifm = C_ofm * S_wts + K_wts - S_wts;

    // Display parameters
    printf("Tr: %d\n", Tr);	
	printf("Tc: %d\n", Tc);
	printf("Tm: %d\n", Tm);
    // printf("Tn: %d\n", Tn);

    printf("K_wts: %d\n", K_wts);
	printf("S_wts: %d\n", S_wts);

	printf("R_ofm: %d\n", R_ofm);
	printf("C_ofm: %d\n", C_ofm);
	printf("M_ofm: %d\n", M_ofm);

	printf("N_ifm: %d\n", N_ifm);
    printf("R_ifm: %d\n", R_ifm);
	printf("C_ifm: %d\n", C_ifm);

    // Allocate memory for input, output and weights
    dt_input = (float*)acl_aligned_malloc(N_ifm*R_ifm*C_ifm * sizeof(float));
    dt_output = (float*)acl_aligned_malloc(M_ofm*R_ofm*C_ofm * sizeof(float));
    dt_weights = (float*)acl_aligned_malloc(M_ofm*N_ifm*K_wts*K_wts * sizeof(float));

    ref_output = (float*)acl_aligned_malloc(M_ofm*R_ofm*C_ofm * sizeof(float));

    // Initialize OpenCL.
    if(!init_opencl()) {
        return -1;
    }

    // Initialize the problem data.
    // Requires the number of devices to be known.
    init_problem();

    // Run the kernel.
    run();

    // Free the resources allocated
    cleanup();

    return 0;
}

// Initializes the OpenCL objects.
bool init_opencl() {
    cl_int status;

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
    input_buf = clCreateBuffer(context, CL_MEM_READ_ONLY,
                                    N_ifm * R_ifm * C_ifm * sizeof(float), NULL, &status);
    checkError(status, "Failed to create buffer for input");

    // Weight buffer.
    weight_buf = clCreateBuffer(context, CL_MEM_READ_ONLY,
                                    M_ofm * N_ifm * K_wts * K_wts * sizeof(float), NULL, &status);
    checkError(status, "Failed to create buffer for weights");

    // Output buffer.
    output_buf = clCreateBuffer(context, CL_MEM_WRITE_ONLY,
                                    M_ofm * R_ofm * C_ofm * sizeof(float), NULL, &status);
    checkError(status, "Failed to create buffer for output");

    return true;
}

// Initialize the data for the problem. Requires num_devices to be known.
void init_problem() {
    if(num_devices == 0) {
        checkError(-1, "No devices");
    }

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

    status = clEnqueueWriteBuffer(queue, output_buf, CL_TRUE,
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

    status = clSetKernelArg(kernel, argi++, sizeof(cl_int), &Tm);
    checkError(status, "Failed to set argument %d", argi - 1);

    status = clSetKernelArg(kernel, argi++, sizeof(cl_int), &Tr);
    checkError(status, "Failed to set argument %d", argi - 1);

    status = clSetKernelArg(kernel, argi++, sizeof(cl_int), &Tc);
    checkError(status, "Failed to set argument %d", argi - 1);

    status = clSetKernelArg(kernel, argi++, sizeof(cl_int), &Tn);
    checkError(status, "Failed to set argument %d", argi - 1);

    status = clSetKernelArg(kernel, argi++, sizeof(cl_int), &K_wts);
    checkError(status, "Failed to set argument %d", argi - 1);

    status = clSetKernelArg(kernel, argi++, sizeof(cl_int), &S_wts);
    checkError(status, "Failed to set argument %d", argi - 1);

    status = clSetKernelArg(kernel, argi++, sizeof(cl_int), &M_ofm);
    checkError(status, "Failed to set argument %d", argi - 1);

    status = clSetKernelArg(kernel, argi++, sizeof(cl_int), &R_ofm);
    checkError(status, "Failed to set argument %d", argi - 1);

    status = clSetKernelArg(kernel, argi++, sizeof(cl_int), &C_ofm);
    checkError(status, "Failed to set argument %d", argi - 1);

    // status = clSetKernelArg(kernel, argi++, sizeof(cl_int), &N_ifm);
    // checkError(status, "Failed to set argument %d", argi - 1);

    status = clSetKernelArg(kernel, argi++, sizeof(cl_int), &R_ifm);
    checkError(status, "Failed to set argument %d", argi - 1);

    status = clSetKernelArg(kernel, argi++, sizeof(cl_int), &C_ifm);
    checkError(status, "Failed to set argument %d", argi - 1);

    // Enqueue kernel.
    //
    // Events are used to ensure that the kernel is not launched until
    // the writes to the input buffers have completed.
	const size_t global_work_size[3] = { 1, 1, 1 };
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

    // Verify results.
    ZhangIsfpga15_1_fp(dt_input, ref_output, dt_weights);
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
                assert(nearlyEqual((float)ARRAY(dt_output,0,to,row,col,0,M_ofm,R_ofm,C_ofm),
                                   ARRAY(ref_output,0,to,row,col,0,M_ofm,R_ofm,C_ofm)));
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