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
  class EdgeDetect_MagAng
  {
    private:
    template <int len>
    uint32 calc_crc32(uint32 crc_in, ac_int<len, false> dat_in)
    {
      const uint32 CRC_POLY = 0xEDB88320;
      uint32 crc_tmp = crc_in;

      #pragma hls_unroll yes
      for(int i=0; i<len; i++)
      {
        uint1 tmp_bit = crc_tmp[0] ^ dat_in[i];

        uint31 mask;

        #pragma hls_unroll yes
        for(int i=0; i<31; i++)
          mask[i] = tmp_bit & CRC_POLY[i];

        uint31 crc_tmp_h31 = crc_tmp.slc<31>(1);
   
        crc_tmp_h31 ^= mask;
        
        crc_tmp.set_slc(31,tmp_bit);
        crc_tmp.set_slc(0,crc_tmp_h31);
      }
      return crc_tmp;
    }

  public:
    EdgeDetect_MagAng() {}
  
    #pragma hls_design interface
    void CCS_BLOCK(run)(ac_channel<gradType4x> &dx_chan,
                        ac_channel<gradType4x> &dy_chan,
                        ac_channel<Stream_t> &pix_chan2,
                        maxWType             widthIn,
                        maxHType             heightIn,
                        bool                 sw_in,
                        uint32               &crc32_pix_in,
                        uint32               &crc32_dat_out,
                        ac_channel<Stream_t> &dat_out)
    {
      gradType4x dx, dy;
      gradType dx0, dx1, dx2, dx3, dy0, dy1, dy2, dy3;
      pixelType abs_dx0, abs_dx1, abs_dx2, abs_dx3, abs_dy0, abs_dy1, abs_dy2, abs_dy3, sum0, sum1, sum2, sum3;
      pixelType4x sum; // fixed point integer for sqrt
      Stream_t streamin,streamout;
      crc32_pix_in = 0XFFFFFFFF;
      crc32_dat_out = 0XFFFFFFFF;
  
      MROW: for (maxHType y = 0; ; y++) {
        #pragma hls_pipeline_init_interval 1
        MCOL: for (maxWType x = 0; ; x=x+4) {
          if (dx_chan.available(1)){
            dx = dx_chan.read();
          }
          if (dy_chan.available(1)){
            dy = dy_chan.read();
          }
          // dx = dx_chan.read();
          // dy = dy_chan.read();
          // dx_sq = dx * dx;
          // dy_sq = dy * dy;
          // sum = dx_sq + dy_sq;
          // // Catapult's math library piecewise linear implementation of sqrt and atan2
          // ac_math::ac_sqrt_pwl(sum,sq_rt);
          // magn.write(sq_rt.to_uint());
          // ac_math::ac_atan2_cordic((ac_fixed<9,9>)dy, (ac_fixed<9,9>) dx, at);
          // angle.write(at);

          dx0 = dx.slc<9>(0);
          dx1 = dx.slc<9>(9);
          dx2 = dx.slc<9>(18);
          dx3 = dx.slc<9>(27);
          dy0 = dy.slc<9>(0);
          dy1 = dy.slc<9>(9);
          dy2 = dy.slc<9>(18);
          dy3 = dy.slc<9>(27);

          if (dx0>=0) abs_dx0=dx0; else abs_dx0 = -dx0;
          if (dx1>=0) abs_dx1=dx1; else abs_dx1 = -dx1;
          if (dx2>=0) abs_dx2=dx2; else abs_dx2 = -dx2;
          if (dx3>=0) abs_dx3=dx3; else abs_dx3 = -dx3;
          if (dy0>=0) abs_dy0=dy0; else abs_dy0 = -dy0;
          if (dy1>=0) abs_dy1=dy1; else abs_dy1 = -dy1;
          if (dy2>=0) abs_dy2=dy2; else abs_dy2 = -dy2;
          if (dy3>=0) abs_dy3=dy3; else abs_dy3 = -dy3;

          if ((abs_dx0 + abs_dy0) >= 255) sum0 = 255; else sum0 = (abs_dx0 + abs_dy0);
          if ((abs_dx1 + abs_dy1) >= 255) sum1 = 255; else sum1 = (abs_dx1 + abs_dy1);
          if ((abs_dx2 + abs_dy2) >= 255) sum2 = 255; else sum2 = (abs_dx2 + abs_dy2);
          if ((abs_dx3 + abs_dy3) >= 255) sum3 = 255; else sum3 = (abs_dx3 + abs_dy3);

          sum.set_slc(0, sum0);
          sum.set_slc(8, sum1);
          sum.set_slc(16, sum2);
          sum.set_slc(24, sum3);

          if (pix_chan2.available(1)){
            streamin = pix_chan2.read();
          }
          //streamin = pix_chan2.read();

          crc32_pix_in = calc_crc32<32>(crc32_pix_in, streamin.pix);

          if (sw_in) streamin.pix = sum;

          crc32_dat_out = calc_crc32<32>(crc32_dat_out, streamin.pix);

          streamout.pix = streamin.pix;
          streamout.sof = (x == 0) && (y == 0);
          streamout.eol = (x == maxWType(widthIn-1));

          dat_out.write(streamout);

          // programmable width exit condition
          if (x == maxWType(widthIn-4)) { // cast to maxWType for RTL code coverage
            break;
          }
        }
        // programmable height exit condition
        if (y == maxHType(heightIn-1)) { // cast to maxHType for RTL code coverage
          break;
        }
      }
      crc32_pix_in = ~crc32_pix_in;
      crc32_dat_out = ~crc32_dat_out;
    }
    
  
  };

}


