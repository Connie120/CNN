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

__kernel void cnn(__global float* input, __global float* weights, __global float* output)
{
	unsigned long to = get_global_id(0) * Tm;
	unsigned long row = get_global_id(1) * Tr;
	unsigned long col = get_global_id(2) * Tc;
	
	__local float BufI[Tn][Tr*S_wts+K_wts-1][Tc*S_wts+K_wts-1];
	__local float BufO[Tm][Tr][Tc];
	__local float BufW[Tm][Tn][K_wts][K_wts];

	unsigned long ti;

	// temporary versions of incremented indices;
	// same usage as in ZhangIsfpga_2()
	unsigned long trr, tcc, too, tii;

	// only need to zero BufO in this loop ordering
	{
		// indices internal to the block: count from 0
		unsigned long ioo, icc, irr;
	  
		for(ioo=0;ioo<Tm;ioo++) {
			for(irr=0;irr<Tr;irr++) {
				for(icc=0;icc<Tc;icc++) {
					BufO[ioo][irr][icc]=0;
				}
			}
		}

	}

	for(ti=0; ti<N_ifm; ti+=Tn) {
		{
			/*
				* load active input feature map into local buffer
				*/
	    
			// indices internal to the block: count from 0
			unsigned long irr, icc, iii;

			// incremented temporary indices for input row and col
			unsigned long xrr, xcc;
	    
			for(tii=ti,iii=0;tii<MIN(ti+Tn,N_ifm);tii++,iii++){
				for(xrr=row*S_wts,irr=0;xrr<(MIN(row+Tr,R_ofm)*S_wts+K_wts-1);xrr++,irr++){
					for(xcc=col*S_wts,icc=0;xcc<(MIN(col+Tc,C_ofm)*S_wts+K_wts-1);xcc++,icc++){
						BufI[iii][irr][icc]=ARRAY(input,0,tii,xrr,xcc,0,N_ifm,R_ifm,C_ifm);
					}
				}
			}
		}

		{
			/*
				* load active weights into local buffer
				*/

				// indices internal to the block: count from 0                                     
			unsigned long ioo, iii, irr, icc;

			for(too=to,ioo=0;too<MIN(to+Tm,M_ofm);too++,ioo++){
				for(tii=ti,iii=0;tii<MIN(ti+Tn,N_ifm);tii++,iii++){
				for(irr=0;irr<K_wts;irr++) {
					for(icc=0;icc<K_wts;icc++) {
					BufW[ioo][iii][irr][icc]=ARRAY(weights,too,tii,irr,icc,M_ofm,N_ifm,K_wts,K_wts);
					}
				}
				}
	      
				/* write 0s into over-run regions at the end;
				* this way convolve_kernel() accumulates correctly
				* without needing a special case */
				if (iii<Tn) {
					for(;iii<Tn;iii++) {
						for(irr=0;irr<K_wts;irr++) {
							for(icc=0;icc<K_wts;icc++) {
								BufW[ioo][iii][irr][icc]=0;
							}
						}
					}
				}
			}
		}

		/*
		* This is the kernel to be implemented on the fabric using
		* HLS.
		*
		* Call as software for Linux and HLS simulation testbench
		*/
		//convolve_kernel(bufW, BufI, BufO);
		unsigned long to_b, ti_b, row_b, col_b;

		unsigned long i, j;
		for(i=0;i<K_wts;i++){
			for(j=0;j<K_wts;j++){
				for(row_b=0;row_b<Tr;row_b++){
					for(col_b=0;col_b<Tc;col_b++){
						for(to_b=0;to_b<Tm;to_b++){
							#pragma unroll
							for(ti_b=0;ti_b<Tn;ti_b++){
								BufO[to_b][row_b][col_b]+=
									BufW[to_b][ti_b][i][j]*
									BufI[ti_b][S_wts*row_b+i][S_wts*col_b+j];
							}
						}
					}
				}
			}
		}
	}

	{
		/*
		* unload finished active intermedaite output feature map
		* from local to full buffer
		*/

			// indices internal to the block: count from 0                                       
			unsigned long ioo, icc, irr;

		for(too=to,ioo=0;too<MIN(to+Tm,M_ofm);too++,ioo++){
			for(trr=row,irr=0;trr<MIN(row+Tr,R_ofm);trr++,irr++){
				for(tcc=col,icc=0;tcc<MIN(col+Tc,C_ofm);tcc++,icc++){
				ARRAY(output,0,too,trr,tcc,0,M_ofm,R_ofm,C_ofm)=BufO[ioo][irr][icc];
				}
			}
		}
	}
}
