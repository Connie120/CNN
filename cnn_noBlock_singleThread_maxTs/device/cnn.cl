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
                    const int Tm, const int Tr, const int Tc, const int Tn)
{
	//unsigned long too = get_global_id(0) * Tm;
	//unsigned long roo = get_global_id(1) * Tr;
	//unsigned long coo = get_global_id(2) * Tc;
	
	unsigned long too, roo, coo, tii, noo;
	unsigned long ti, row, col, to, no;

    __local float BufO[max_Tm][max_Tr][max_Tc];

    // only need to zero BufO in this loop ordering
	{
		// indices internal to the block: count from 0
		unsigned long ioo, icc, irr;
	  
		for(ioo=0;ioo<max_Tm;ioo++) {
			for(irr=0;irr<max_Tr;irr++) {
				for(icc=0;icc<max_Tc;icc++) {
					BufO[ioo][irr][icc]=0;
				}
			}
		}
	}

	for(roo=0; roo<R_ofm; roo+=Tr) {
	    for(coo=0; coo<C_ofm; coo+=Tc) {
		for(too=0; too<M_ofm; too+=Tm) {
                    for (noo=0; noo<N_ifm; noo+=Tn){
                    	for(row=roo; row<MIN(roo+Tr, R_ofm); row++) {
                            for(col=coo; col<MIN(coo+Tc, C_ofm); col++) {
                            	for(to=too; to<MIN(too+Tm, M_ofm); to++) {
				    #pragma unroll 16
                                    for (no=noo; no<MIN(noo+Tn, N_ifm); no++){
                                    	unsigned long i, j;
                                    	#pragma unroll
                                    	for(i=0; i<K_wts; i++) {
                                            #pragma unroll
                                            for(j=0; j<K_wts; j++) {
                                            	BufO[to][row][col]+= 
                                            	ARRAY(weights,to,no,i,j,M_ofm,N_ifm,K_wts,K_wts)*
                                            	ARRAY(input,0,no,S_wts*row+i,S_wts*col+j,0,N_ifm,R_ifm,C_ifm);
                                            }
                                        }
                                    }
                                    if (noo + Tn >= N_ifm) {
                                    	ARRAY(output,0,to,row,col,0,M_ofm,R_ofm,C_ofm) = BufO[to][row][col];
                                    	BufO[to][row][col] = 0;
                                    }
                            	}
                            }
                    	}
                    }
		}
	    }
	}
}
