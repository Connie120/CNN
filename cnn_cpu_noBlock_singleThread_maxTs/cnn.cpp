#include "instance.h"
#include <stdio.h>

void cnn(float* const __restrict input, float* const __restrict weights, float* __restrict output, 
                    const int Tm, const int Tr, const int Tc, const int Tn)
{
	//printf("Tm: %lu\n", Tm);
	//printf("Tr: %lu\n", Tr);
	//printf("Tc: %lu\n", Tc);
	//unsigned long too = get_global_id(0) * Tm;
	//unsigned long roo = get_global_id(1) * Tr;
	//unsigned long coo = get_global_id(2) * Tc;
	//printf("global_id(0): %lu\n", get_global_id(0));
	//printf("global_id(1): %lu\n", get_global_id(1));
	//printf("global_id(2): %lu\n", get_global_id(2));
	//printf("too: %lu\n", too);
	//printf("roo: %lu\n", roo);
	//printf("coo: %lu\n", coo);
	unsigned long too, roo, coo, tii;
	unsigned long ti, row, col, to;

	/*for(row=roo; row<MIN(roo+Tr, R_ofm); row++) {
		for(col=coo; col<MIN(coo+Tc, C_ofm); col++) {
			for(to=too; to<MIN(too+Tm, M_ofm); to++) {
				ARRAY(output,0,to,row,col,0,M_ofm,R_ofm,C_ofm) = 0.0f;
			}
		}
	}*/

	for(roo=0; roo<R_ofm; roo+=Tr) {
		for(coo=0; coo<C_ofm; coo+=Tc) {
			for(too=0; too<M_ofm; too+=Tm) {
                for(row=roo; row<MIN(roo+Tr, R_ofm); row++) {
                    for(col=coo; col<MIN(coo+Tc, C_ofm); col++) {
                        for(to=too; to<MIN(too+Tm, M_ofm); to++) {
                            float running_sum = 0.0f;
							#pragma unroll 8
                            for(ti=0; ti<N_ifm; ti++) {
                                unsigned long i, j;
                                for(i=0; i<K_wts; i++) {
                                    for(j=0; j<K_wts; j++) {
                                        running_sum += 
                                        ARRAY(weights,to,ti,i,j,M_ofm,N_ifm,K_wts,K_wts)*
                                        ARRAY(input,0,ti,S_wts*row+i,S_wts*col+j,0,N_ifm,R_ifm,C_ifm);
                                        //printf("weight, input: %f, %f\n", ARRAY(weights,to,ti,i,j,M_ofm,N_ifm,K_wts,K_wts),  ARRAY(input,0,ti,S_wts*row+i,S_wts*col+j,0,N_ifm,R_ifm,C_ifm));
                                    }
                                }
                            }
                            ARRAY(output,0,to,row,col,0,M_ofm,R_ofm,C_ofm) = running_sum;
                            //printf("output: %f\n", ARRAY(output,0,to,row,col,0,M_ofm,R_ofm,C_ofm));
                        }
                    }
                }
			}
		}
	}
}
