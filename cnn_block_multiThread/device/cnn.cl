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

__kernel 
__attribute((reqd_work_group_size(Tm, Tr, Tc)))
void cnn(__global float* input, __global float* weights, __global float* output)
{
	unsigned long to = get_global_id(0);
	unsigned long row = get_global_id(1);
	unsigned long col = get_global_id(2);

	// indices internal to the block: count from 0
	unsigned long local_m = get_local_id(0);
	unsigned long local_r = get_local_id(1);
	unsigned long local_c = get_local_id(2);

	unsigned long ioo, icc, irr;
	
	__local float BufI[Tn][Tr*S_wts+K_wts-S_wts][Tc*S_wts+K_wts-S_wts];
	__local float BufO[Tm][Tr][Tc];
	__local float BufW[Tm][Tn][K_wts][K_wts];

	unsigned long ti;

	// temporary versions of incremented indices;
	// same usage as in ZhangIsfpga_2()
	unsigned long trr, tcc, too, tii;

	// only need to zero BufO in this loop ordering
	{ 
		BufO[local_m][local_r][local_c]=0;

		// Wait for the entire buffer to be initialized
        // barrier(CLK_LOCAL_MEM_FENCE);
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
	    
			if (to == 0 && col == 0 && row == 0) {
				printf("input\n");
			}
			// Load one block for each thread, and there might be some overlaps
			for(tii=ti,iii=0;tii<MIN(ti+Tn,N_ifm);tii++,iii++){
				for(xrr=row*S_wts,irr=local_r*S_wts;xrr<(row*S_wts+K_wts);xrr++,irr++){
					for(xcc=col*S_wts,icc=local_c*S_wts;xcc<(col*S_wts+K_wts);xcc++,icc++){
						BufI[iii][irr][icc]=ARRAY(input,0,tii,xrr,xcc,0,N_ifm,R_ifm,C_ifm);
						if (to == 0 && col == 0 && row == 0) {
							printf("%f ", BufI[iii][irr][icc]);
						}
					}
					if (to == 0 && col == 0 && row == 0) {
						printf("\n");
					}
				}
			}

			// Wait for the entire input matrix to be loaded
			// barrier(CLK_LOCAL_MEM_FENCE);
		}

		{
			/*
			* load active weights into local buffer
			*/

				// indices internal to the block: count from 0                                     
			unsigned long iii, irr, icc;

			if (to == 0 && col == 0 && row == 0) {
				printf("weight\n");
			}
			for(tii=ti,iii=0;tii<MIN(ti+Tn,N_ifm);tii++,iii++){
				for(irr=0;irr<K_wts;irr++) {
					for(icc=0;icc<K_wts;icc++) {
						BufW[local_m][iii][irr][icc]=ARRAY(weights,to,tii,irr,icc,M_ofm,N_ifm,K_wts,K_wts);
						if (to == 0 && col == 0 && row == 0) {
							printf("%f ", BufW[local_m][iii][irr][icc]);
						}
					}
					if (to == 0 && col == 0 && row == 0) {
						printf("\n");
					}
				}
			}
		
			/* write 0s into over-run regions at the end;
			* this way convolve_kernel() accumulates correctly
			* without needing a special case */
			// Not needed for the FPGA version
			if (iii<Tn) {
				for(;iii<Tn;iii++) {
					for(irr=0;irr<K_wts;irr++) {
						for(icc=0;icc<K_wts;icc++) {
							BufW[local_m][iii][irr][icc]=0;
						}
					}
				}
			}

			// Wait for all of the weight matrices to be loaded
			// barrier(CLK_LOCAL_MEM_FENCE);
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
				#pragma unroll
				for(ti_b=0;ti_b<Tn;ti_b++){
					BufO[local_m][local_r][local_c]+=
						BufW[local_m][ti_b][i][j]*
						BufI[ti_b][S_wts*local_r+i][S_wts*local_c+j];
				}
			}
		}
	}

	{
		/*
		* unload finished active intermedaite output feature map
		* from local to full buffer
		*/

		ARRAY(output,0,to,row,col,0,M_ofm,R_ofm,C_ofm)=BufO[local_m][local_r][local_c];
	}
}
