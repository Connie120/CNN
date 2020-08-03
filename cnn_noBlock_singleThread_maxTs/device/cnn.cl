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

__attribute((reqd_work_group_size(1, 1, 1)))
__kernel void cnn(__global float* const restrict input, __global float* const restrict weights, __global float* restrict output, 
                    const int Tm, const int Tr, const int Tc, const int Tn,
                    const int S_wts, const int M_ofm, const int R_ofm, const int C_ofm, const int R_ifm, const int C_ifm)
{
	//unsigned long too = get_global_id(0) * Tm;
	//unsigned long roo = get_global_id(1) * Tr;
	//unsigned long coo = get_global_id(2) * Tc;


	
	unsigned long too, roo, coo, tii;
	unsigned long ti, row, col, to;

	for(roo=0; roo<R_ofm; roo+=Tr) {
		for(coo=0; coo<C_ofm; coo+=Tc) {
			for(too=0; too<M_ofm; too+=Tm) {
                for(row=roo; row<MIN(roo+Tr, R_ofm); row++) {
                    for(col=coo; col<MIN(coo+Tc, C_ofm); col++) {
                        for(to=too; to<MIN(too+Tm, M_ofm); to++) {
                            float running_sum = 0.0f;
							#pragma unroll 16
                            for(ti=0; ti<N_ifm; ti++) {
                                unsigned long i, j;
                                #pragma unroll
                                for(i=0; i<K_wts; i++) {
                                    #pragma unroll
                                    for(j=0; j<K_wts; j++) {
                                        running_sum += 
                                        ARRAY(weights,to,ti,i,j,M_ofm,N_ifm,K_wts,K_wts)*
                                        ARRAY(input,0,ti,S_wts*row+i,S_wts*col+j,0,N_ifm,R_ifm,C_ifm);
                                    }
                                }
                            }
                            ARRAY(output,0,to,row,col,0,M_ofm,R_ofm,C_ofm) = running_sum;
                        }
                    }
                }
			}
		}
	}
}
