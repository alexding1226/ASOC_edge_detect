/**************************************************************************
 *                                                                        *
 *  Edge Detect Design Walkthrough for HLS                                *
 *                                                                        *
 *  Software Version: 1.0                                                 *
 *                                                                        *
 *  Release Date    : Tue Jan 14 15:40:43 PST 2020                        *
 *  Release Type    : Production Release                                  *
 *  Release Build   : 1.0.0                                               *
 *                                                                        *
 *  Copyright 2020, Siemens                                               *
 *                                                                        *
 **************************************************************************
 *  Licensed under the Apache License, Version 2.0 (the "License");       *
 *  you may not use this file except in compliance with the License.      *
 *  You may obtain a copy of the License at                               *
 *                                                                        *
 *      http://www.apache.org/licenses/LICENSE-2.0                        *
 *                                                                        *
 *  Unless required by applicable law or agreed to in writing, software   *
 *  distributed under the License is distributed on an "AS IS" BASIS,     *
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or       *
 *  implied.                                                              *
 *  See the License for the specific language governing permissions and   *
 *  limitations under the License.                                        *
 **************************************************************************
 *                                                                        *
 *  The most recent version of this package is available at github.       *
 *                                                                        *
 *************************************************************************/
#pragma once

#include "EdgeDetect_defs.h"
#include <mc_scverify.h>
//my
namespace EdgeDetect_IP {

  class EdgeDetect_VerDer
  {
  private:
  
  public:
    EdgeDetect_VerDer() {}
  
    #pragma hls_design interface
    void CCS_BLOCK(run)(ac_channel<Stream_t> &dat_in,
                        maxWType              &widthIn,
                        maxHType              &heightIn,
                        ac_channel<Stream_t> &pix_chan1,
                        ac_channel<gradType4x>  &dy_chan)
    {
      // Line buffers store pixel line history - Mapped to RAM
      pixelType8x line_buf0[maxImageWidth/2];
      pixelType8x line_buf1[maxImageWidth/2];
      pixelType8x rdbuf0_pix, rdbuf1_pix;
      pixelType8x wrbuf0_pix, wrbuf1_pix;
      pixelType4x pix0, pix1, pix2, pix3;
      gradType4x pix;
      gradType g0, g1, g2, g3;
      Stream_t streamin;
      Stream_t streamout;

  
      // Remove loop upperbounds for RTL code coverage
      // Use bit accurate data types on loop iterator
      VROW: for (maxHType y = 0; ; y=y+1) { // VROW has one extra iteration to ramp-up window
        #pragma hls_pipeline_init_interval 1
        VCOL: for (maxWType x = 0; ; x=x+4) {
          if (y <= heightIn-1) {
            if (dat_in.available(1)) {
              streamin = dat_in.read(); // Read streaming interface
              pix0 = streamin.pix;
            }
            // else {
            //   cout << "ERROR: Not enough data with x = " << x << " y = " << y << endl;
            // }
          }
          // Write data cache, write lower 8 on even iterations of COL loop, upper 8 on odd
          if ( (x&4) == 0 ) {
            wrbuf0_pix.set_slc(0,pix0);
          } else {
            wrbuf0_pix.set_slc(32,pix0);
          }
          // Read line buffers into read buffer caches on even iterations of COL loop
          if ( (x&4) == 0 ) {
            // vertical window of pixels
            rdbuf1_pix = line_buf1[x/8];
            rdbuf0_pix = line_buf0[x/8];
          } else { // Write line buffer caches on odd iterations of COL loop
            line_buf1[x/8] = rdbuf0_pix; // copy previous line
            line_buf0[x/8] = wrbuf0_pix; // store current line
          }
          // Get 8-bit data from read buffer caches, lower 8 on even iterations of COL loop
          pix2 = ((x&4)==0) ? rdbuf1_pix.slc<32>(0) : rdbuf1_pix.slc<32>(32);
          pix1 = ((x&4)==0) ? rdbuf0_pix.slc<32>(0) : rdbuf0_pix.slc<32>(32);
  
          // Boundary condition processing
          if (y == 1) {
            pix2 = pix1; // top boundary (replicate pix1 up to pix2)
          }
          if (y == heightIn) {
            pix0 = pix1; // bottom boundary (replicate pix1 down to pix0)
          }
  
          // Calculate derivative
          //pix = pix2*kernel[0] + pix1*kernel[1] + pix0*kernel[2];
          g0 = pix0.slc<8>(0) * kernel[2] + pix1.slc<8>(0) * kernel[1] + pix2.slc<8>(0) * kernel[0];
          g1 = pix0.slc<8>(8) * kernel[2] + pix1.slc<8>(8) * kernel[1] + pix2.slc<8>(8) * kernel[0];
          g2 = pix0.slc<8>(16)* kernel[2] + pix1.slc<8>(16)* kernel[1] + pix2.slc<8>(16)* kernel[0];
          g3 = pix0.slc<8>(24)* kernel[2] + pix1.slc<8>(24)* kernel[1] + pix2.slc<8>(24)* kernel[0];
          pix.set_slc(0,g0);
          pix.set_slc(9,g1);
          pix.set_slc(18,g2);
          pix.set_slc(27,g3);
  
          if (y != 0) { // Write streaming interfaces
            streamout.pix = pix1;
            streamout.sof = ((x == 0) && (y == 1));
            streamout.eol = ((x == maxWType(widthIn - 1)) && (y == heightIn));
            pix_chan1.write(streamout); // Pass thru original data
            dy_chan.write(pix); // derivative output
          }
          // programmable width exit condition
          if (x == maxWType(widthIn-4)) { // cast to maxWType for RTL code coverage
            break;
          }
        }
        // programmable height exit condition
        if (y == heightIn) {
          break;
        }
      }
    }
  };

}


