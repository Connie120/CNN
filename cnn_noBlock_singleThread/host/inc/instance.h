#ifndef INSTANCE_H
#define INSTANCE_H

/****************************************************************
 * Copyright (c) 2017~2019, 18-643 Course Staff, CMU
 * All rights reserved.

 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:

 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.

 * 2. Redistributions in binary form must reproduce the above
 *    copyright notice, this list of conditions and the following
 *    disclaimer in the documentation and/or other materials provided
 *    with the distribution.

 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 * FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 * COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
 * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
 * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED
 * OF THE POSSIBILITY OF SUCH DAMAGE.

 * The views and conclusions contained in the software and
 * documentation are those of the authors and should not be
 * interpreted as representing official policies, either expressed or
 * implied, of the FreeBSD Project.
 ****************************************************************/

/*
 * CMU 18643 Fall 2017 Lab Exercise
 *
 * The paramters in this file sets the problem sizes
 *
 */

/* 
 * weights parameters
 */
#define K_wts (4) // weight width and height (square)
                  // same depth as output
#define S_wts (1) // sliding stride

/* 
 * output feature map paramters
 */
#define R_ofm (16) // height
#define C_ofm (16) // width
#define M_ofm (128) // depth

/*
 * input feature map paramters
 */
#define N_ifm (128) // depth
#define R_ifm (R_ofm*S_wts+K_wts-1) // derived height
#define C_ifm (C_ofm*S_wts+K_wts-1) // derived width

// Block size. Affects the kernel, so if this value changes, the kernel
// needs to be recompiled.
#ifndef BLOCK_SIZE
#define BLOCK_SIZE 3 // default value, better to be multiple of Tr, Tm, Tc
#endif

/*
 * access macro
 */
#define ARRAY(ptr,i3,i2,i1,i0,d3,d2,d1,d0) (*((ptr)+(i3)*(d2)*(d1)*(d0)+(i2)*(d1)*(d0)+(i1)*(d0)+(i0)))

#define MIN(a,b) (((a)<(b))?(a):(b))

#define RANGE (100)

#define EPSILON (1e-4)  // do not change this value

/*
 * Blocking parameters
 */
#define Tr 16 // output row
#define Tc 16 // output column
#define Tm 128 // output depth
#define Tn 6  // input depth

#endif
