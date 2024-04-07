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
namespace EdgeDetect_IP 
{
  class EdgeDetect_HorDer
  {
  public:
    EdgeDetect_HorDer() {}
  
    #pragma hls_design interface
    void CCS_BLOCK(run)(ac_channel<Stream_t> &pix_chan1,
                        maxWType              &widthIn,
                        maxHType              &heightIn,
                        ac_channel<Stream_t>  &pix_chan2,
                        ac_channel<gradType4x>  &dx_chan)
    {
      // pixel buffers store pixel history
      pixelType4x pix_buf0;
      pixelType4x pix_buf1;
  
      pixelType4x pix0 = 0;
      pixelType4x pix1 = 0;
      pixelType4x pix2 = 0;
      pixelType4x pix3;
  
      gradType4x  pix;
      gradType   g0, g1, g2, g3;

      Stream_t streamin, streamout;
  
      HROW: for (maxHType y = 0; ; y++) {
        #pragma hls_pipeline_init_interval 1
        HCOL: for (maxWType x = 0; ; x=x+4) { // HCOL has one extra iteration to ramp-up window
          pix2 = pix_buf1;
          pix1 = pix_buf0;
          if (x <= widthIn-4) {
            streamin = pix_chan1.read(); // Read streaming interface
            pix0 = streamin.pix;
          }
          if (x == 4) {
            pix2.set_slc(24, pix1.slc<8>(0));
            //pix2 = pix1; // left boundary (replicate pix1 left to pix2)
          }
          if (x == widthIn) {
            pix0.set_slc(0, pix1.slc<8>(24)); 
            //pix0 = pix1; // right boundary (replicate pix1 right to pix0)
          }
  
          pix_buf1 = pix_buf0;
          pix_buf0 = pix0;
  
          // Calculate derivative
          //pix = pix2*kernel[0] + pix1*kernel[1] + pix0*kernel[2];
          g0 = pix2.slc<8>(24) * kernel[0] + pix1.slc<8>(0) * kernel[1] + pix1.slc<8>(8) * kernel[2];
          g1 = pix1.slc<8>(0) * kernel[0] + pix1.slc<8>(8) * kernel[1] + pix1.slc<8>(16) * kernel[2];
          g2 = pix1.slc<8>(8) * kernel[0] + pix1.slc<8>(16) * kernel[1] + pix1.slc<8>(24) * kernel[2];
          g3 = pix1.slc<8>(16) * kernel[0] + pix1.slc<8>(24) * kernel[1] + pix0.slc<8>(0) * kernel[2];
          pix.set_slc(0,g0);
          pix.set_slc(9,g1);
          pix.set_slc(18,g2);
          pix.set_slc(27,g3);

          if (x != 0) { // Write streaming interface
            streamout.pix = pix1;
            streamout.sof = (x == 4 && y == 0);
            streamout.eol = (x == widthIn) && (y == maxHType(heightIn-1));
            pix_chan2.write(streamout);
            dx_chan.write(pix); // derivative out
          }
          // programmable width exit condition
          if ( x == widthIn) {
            break;
          }
        }
        // programmable height exit condition
        if (y == maxHType(heightIn-1)) { // cast to maxHType for RTL code coverage
          break;
        }
      }
    }
  };

}


