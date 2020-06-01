/*****************************************************************************
 * Copyright (c) 2013-2016 Intel Corporation
 * All rights reserved.
 *
 * WARRANTY DISCLAIMER
 *
 * THESE MATERIALS ARE PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
 * A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL INTEL OR ITS
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
 * PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY
 * OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY OR TORT (INCLUDING
 * NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THESE
 * MATERIALS, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *
 * Intel Corporation is the author of the Materials, and requests that all
 * problem reports or change requests be submitted to it directly
 *****************************************************************************/

#include "../host/inc/instance.h"

__kernel void cnn(__global float* input, __global float* weights, __global float* restrict output)
{
	unsigned long too = get_global_id(0) * Tm;
	unsigned long roo = get_global_id(1) * Tr;
	unsigned long coo = get_global_id(2) * Tc;
	printf("global_id(0): %lu\n", get_global_id(0));
	printf("global_id(1): %lu\n", get_global_id(1));
	printf("global_id(2): %lu\n", get_global_id(2));
	printf("too: %lu\n", too);
	printf("roo: %lu\n", roo);
	printf("coo: %lu\n", coo);
	unsigned long ti, row, col, to;

	for(row=roo; row<MIN(roo+Tr, R_ofm); row++) {
		for(col=coo; col<MIN(coo+Tc, C_ofm); col++) {
			for(to=too; to<MIN(too+Tm, M_ofm); to++) {
				//float running_sum = 0.0f;
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
				//ARRAY(output,0,to,row,col,0,M_ofm,R_ofm,C_ofm) = running_sum;
			}
		}
	}
}
