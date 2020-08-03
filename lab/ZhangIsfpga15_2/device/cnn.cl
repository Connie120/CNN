/****************************************************************
 * Blocked (without copying) convolution layer implementation 
 * based on Figure 5:
 *    C. Zhang, et al., "Optimizing FPGA-based Accelerator 
 *    Design for Deep Convolutional Neural Networks," FPGA, 2015.
 ****************************************************************/

#include "../host/inc/instance.h"

__attribute((reqd_work_group_size(1, 1, 1)))
__kernel void cnn(__global float* const restrict input, __global float* const restrict weights, __global float* restrict output, 
                    const int Tm, const int Tr, const int Tc, const int Tn,
                    const int K_wts, const int S_wts, const int M_ofm, const int R_ofm, const int C_ofm, const int R_ifm, const int C_ifm)
{
	unsigned long row, col, to, ti;
  
    for(row=0; row<R_ofm; row+=Tr) {
        for(col=0; col<C_ofm ; col+=Tc) {
            for(to=0; to<M_ofm; to+=Tm) {
                for(ti=0; ti<N_ifm; ti+=Tn) {
                    unsigned long trr, tcc, too, tii;

                    // The comments below are from Zhang'15 verbatim.
                    // They are realized in ZhangIsfpga15_3() next

                    //  -- load output feature maps
                    //  -- load weights
                    //  -- load input feature maps

                    for(trr=row;trr<MIN(row+Tr,R_ofm);trr++){
                        for(tcc=col;tcc<MIN(col+Tc,C_ofm);tcc++){
                            for(too=to;too<MIN(to+Tm,M_ofm);too++){
                                for(tii=ti;tii<MIN(ti+Tn,N_ifm);tii++){
                                    unsigned long i, j;
                                    for(i=0;i<K_wts;i++){
                                        for(j=0;j<K_wts;j++){
                                            ARRAY(output,0,too,trr,tcc,0,M_ofm,R_ofm,C_ofm)+=
                                                ARRAY(weights,too,tii,i,j,M_ofm,N_ifm,K_wts,K_wts)*
                                                ARRAY(input,0,tii,S_wts*trr+i,S_wts*tcc+j,0,N_ifm,R_ifm,C_ifm);
                                        }
                                    }
                                }
                            }
                        }
                    }

                    // -- store output feature maps

                } 
            } 
        } 
    }
}
