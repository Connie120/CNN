#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <iostream>
#include <chrono>
#include "instance.h"
#include "assert.h"
#include "float.h"

float* dt_input = (float*)malloc(N_ifm*R_ifm*C_ifm * sizeof(float));
float* dt_output = (float*)malloc(M_ofm*R_ofm*C_ofm * sizeof(float));
float* dt_weights = (float*)malloc(M_ofm*N_ifm*K_wts*K_wts * sizeof(float));

float* ref_output = (float*)malloc(M_ofm*R_ofm*C_ofm * sizeof(float));

int Tm;
int Tr;
int Tc;
int Tn;

// Function prototypes
void ZhangIsfpga15_1_fp(float *input, float *output, float *weights);
int nearlyEqual(float a, float b);
void init_problem();
void run();
void verify();
void cleanup();

// Entry point.
int main(int argc, char **argv) {
	printf("R_ofm: %d\n", R_ofm);
	printf("C_ofm: %d\n", C_ofm);
	printf("M_ofm: %d\n", M_ofm);

    // printf("argc: %d\n", argc);
    // printf("argv: %s\n", argv[1]);

    // Take inputs
    Tm = atoi(argv[1]);
    Tr = atoi(argv[2]);
    Tc = atoi(argv[3]);
    Tn = atoi(argv[4]);

    printf("Tr: %d\n", Tr);	
	printf("Tc: %d\n", Tc);
	printf("Tm: %d\n", Tm);
    printf("Tn: %d\n", Tn);

    // Initialize the problem data.
    // Requires the number of devices to be known.
    init_problem();
	//printf("init_problem done.\n");

    // Run the kernel.
    run();

    // Free the resources allocated
    cleanup();

    return 0;
}

// Initialize the data for the problem. Requires num_devices to be known.
void init_problem() {

    // Generate input and weight matrices.
    //printf("Generating input and weight matrices\n");

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
	//printf("generating all inputs done\n");
}

void run() {
    auto start = std::chrono::high_resolution_clock::now();

    cnn(dt_input, dt_weights, dt_output, Tm, Tr, Tc, Tn);

    auto finish = std::chrono::high_resolution_clock::now();
    //std::cout << std::chrono::duration_cast<std::chrono::nanoseconds>(finish-start).count() << "ns\n";

    printf("Kernel time (device %d): %0.3f ms\n", 1, double((finish-start).count()) * 1e-6);

    // Compute the throughput (GFLOPS).
    // const float flops = (float)(2.0f * M_ofm * R_ofm * C_ofm * N_ifm * K_wts * K_wts / total_time);
    // printf("\nThroughput: %0.2f GFLOPS\n\n", flops * 1e-9);

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
		        //printf("to: %lu, row: %lu, col: %lu\n", to, row, col);
		        //printf("output: %f, ref: %f\n", ARRAY(dt_output,0,to,row,col,0,M_ofm,R_ofm,C_ofm), ARRAY(ref_output,0,to,row,col,0,M_ofm,R_ofm,C_ofm));
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
    free(dt_input);
    free(dt_weights);
    free(dt_output);
    free(ref_output);
}
