#include "instance.h"
#include <stdio.h>
#include <stdlib.h>

void cnn(float* const __restrict input, float* const __restrict weights, float* __restrict output, 
                    const int Tm, const int Tr, const int Tc, const int Tn) {
	float* BufI = (float*)malloc(Tn * (Tr*S_wts+K_wts-1) * (Tc*S_wts+K_wts-1) * sizeof(float));
	float* BufO = (float*)malloc(Tm * Tr * Tc * sizeof(float));
	float* BufW = (float*)malloc(Tm * Tn * K_wts * K_wts * sizeof(float));

    unsigned long ti;

	// temporary versions of incremented indices;
	// same usage as in ZhangIsfpga_2()
	unsigned long trr, tcc, too, tii;

    unsigned long row, col, to;

    for(row=0; row<R_ofm; row+=Tr) {
		for(col=0; col<C_ofm; col+=Tc) {
			for(to=0; to<M_ofm; to+=Tm) {

                // only need to zero BufO in this loop ordering
                {
                    // indices internal to the block: count from 0
                    unsigned long ioo, icc, irr;
                
                    for(ioo=0;ioo<Tm;ioo++) {
                        for(irr=0;irr<Tr;irr++) {
                            for(icc=0;icc<Tc;icc++) {
                                ARRAY(BufO,0,ioo,irr,icc,0,Tm,Tr,Tc)=0;
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
                                    ARRAY(BufI,0,iii,irr,icc,0,Tn,Tr*S_wts+K_wts-1,Tc*S_wts+K_wts-1)=ARRAY(input,0,tii,xrr,xcc,0,N_ifm,R_ifm,C_ifm);
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
                                        ARRAY(BufW,ioo,iii,irr,icc,Tm,Tn,K_wts,K_wts)=ARRAY(weights,too,tii,irr,icc,M_ofm,N_ifm,K_wts,K_wts);
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
                                            ARRAY(BufW,ioo,iii,irr,icc,Tm,Tn,K_wts,K_wts)=0;
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
                                            ARRAY(BufO,0,to_b,row_b,col_b,0,Tm,Tr,Tc)+=
                                                ARRAY(BufW,to_b,ti_b,i,j,Tm,Tn,K_wts,K_wts)*
                                                ARRAY(BufI,0,ti_b,S_wts*row_b+i,S_wts*col_b+j,0,Tn,Tr*S_wts+K_wts-1,Tc*S_wts+K_wts-1);
                                            // BufO[to_b][row_b][col_b]+=
                                            // 	ARRAY(weights,to_i,ti_i,i,j,M_ofm,N_ifm,K_wts,K_wts)*
                                            // 	ARRAY(input,0,ti_i,row_i*S_wts+i,col_i*S_wts+j,0,N_ifm,R_ifm,C_ifm);
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
                                ARRAY(output,0,too,trr,tcc,0,M_ofm,R_ofm,C_ofm)=ARRAY(BufO,0,ioo,irr,icc,0,Tm,Tr,Tc);
                            }
                        }
                    }
                }
            }
        }
    }
}
