
//------> /home/raid7_4/raid1_1/linux/mentor/Catapult/2023.2/Mgc_home/pkgs/siflibs/ccs_in_wait_v1.v 
//------------------------------------------------------------------------------
// Catapult Synthesis - Sample I/O Port Library
//
// Copyright (c) 2003-2017 Mentor Graphics Corp.
//       All Rights Reserved
//
// This document may be used and distributed without restriction provided that
// this copyright statement is not removed from the file and that any derivative
// work contains this copyright notice.
//
// The design information contained in this file is intended to be an example
// of the functionality which the end user may study in preparation for creating
// their own custom interfaces. This design does not necessarily present a 
// complete implementation of the named protocol or standard.
//
//------------------------------------------------------------------------------


module ccs_in_wait_v1 (idat, rdy, ivld, dat, irdy, vld);

  parameter integer rscid = 1;
  parameter integer width = 8;

  output [width-1:0] idat;
  output             rdy;
  output             ivld;
  input  [width-1:0] dat;
  input              irdy;
  input              vld;

  wire   [width-1:0] idat;
  wire               rdy;
  wire               ivld;

  localparam stallOff = 0; 
  wire                  stall_ctrl;
  assign stall_ctrl = stallOff;

  assign idat = dat;
  assign rdy = irdy && !stall_ctrl;
  assign ivld = vld && !stall_ctrl;

endmodule


//------> /home/raid7_4/raid1_1/linux/mentor/Catapult/2023.2/Mgc_home/pkgs/siflibs/mgc_inout_prereg_en_v1.v 
//------------------------------------------------------------------------------
// Catapult Synthesis - Sample I/O Port Library
//
// Copyright (c) 2003-2019 Mentor Graphics Corp.
//       All Rights Reserved
//
// This document may be used and distributed without restriction provided that
// this copyright statement is not removed from the file and that any derivative
// work contains this copyright notice.
//
// The design information contained in this file is intended to be an example
// of the functionality which the end user may study in preparation for creating
// their own custom interfaces. This design does not necessarily present a 
// complete implementation of the named protocol or standard.
//
//------------------------------------------------------------------------------


module mgc_inout_prereg_en_v1 (din, ldout, dout, zin, lzout, zout);

    parameter integer rscid = 1;
    parameter integer width = 8;

    output [width-1:0] din;
    input              ldout;
    input  [width-1:0] dout;
    input  [width-1:0] zin;
    output             lzout;
    output [width-1:0] zout;

    wire   [width-1:0] din;
    wire               lzin;
    wire               lzout;
    wire   [width-1:0] z;

    assign lzout = ldout;
    assign din = zin;
    assign zout = dout;

endmodule



//------> /home/raid7_4/raid1_1/linux/mentor/Catapult/2023.2/Mgc_home/pkgs/siflibs/ccs_out_wait_v1.v 
//------------------------------------------------------------------------------
// Catapult Synthesis - Sample I/O Port Library
//
// Copyright (c) 2003-2017 Mentor Graphics Corp.
//       All Rights Reserved
//
// This document may be used and distributed without restriction provided that
// this copyright statement is not removed from the file and that any derivative
// work contains this copyright notice.
//
// The design information contained in this file is intended to be an example
// of the functionality which the end user may study in preparation for creating
// their own custom interfaces. This design does not necessarily present a 
// complete implementation of the named protocol or standard.
//
//------------------------------------------------------------------------------


module ccs_out_wait_v1 (dat, irdy, vld, idat, rdy, ivld);

  parameter integer rscid = 1;
  parameter integer width = 8;

  output [width-1:0] dat;
  output             irdy;
  output             vld;
  input  [width-1:0] idat;
  input              rdy;
  input              ivld;

  wire   [width-1:0] dat;
  wire               irdy;
  wire               vld;

  localparam stallOff = 0; 
  wire stall_ctrl;
  assign stall_ctrl = stallOff;

  assign dat = idat;
  assign irdy = rdy && !stall_ctrl;
  assign vld = ivld && !stall_ctrl;

endmodule



//------> /home/raid7_4/raid1_1/linux/mentor/Catapult/2023.2/Mgc_home/pkgs/siflibs/mgc_io_sync_v2.v 
//------------------------------------------------------------------------------
// Catapult Synthesis - Sample I/O Port Library
//
// Copyright (c) 2003-2017 Mentor Graphics Corp.
//       All Rights Reserved
//
// This document may be used and distributed without restriction provided that
// this copyright statement is not removed from the file and that any derivative
// work contains this copyright notice.
//
// The design information contained in this file is intended to be an example
// of the functionality which the end user may study in preparation for creating
// their own custom interfaces. This design does not necessarily present a 
// complete implementation of the named protocol or standard.
//
//------------------------------------------------------------------------------


module mgc_io_sync_v2 (ld, lz);
    parameter valid = 0;

    input  ld;
    output lz;

    wire   lz;

    assign lz = ld;

endmodule


//------> ../EdgeDetect_IP_EdgeDetect_MagAng.v1/rtl.v 
// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    2023.2/1059873 Production Release
//  HLS Date:       Mon Aug  7 10:54:31 PDT 2023
// 
//  Generated by:   r12016@cad40
//  Generated date: Sun Apr  7 21:04:38 2024
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_MagAng_run_run_fsm
//  FSM Module
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_MagAng_run_run_fsm (
  clk, rst, arst_n, run_wen, fsm_output, MCOL_C_0_tr0, MROW_C_0_tr0
);
  input clk;
  input rst;
  input arst_n;
  input run_wen;
  output [5:0] fsm_output;
  reg [5:0] fsm_output;
  input MCOL_C_0_tr0;
  input MROW_C_0_tr0;


  // FSM State Type Declaration for EdgeDetect_IP_EdgeDetect_MagAng_run_run_fsm_1
  parameter
    run_rlp_C_0 = 3'd0,
    run_rlp_C_1 = 3'd1,
    main_C_0 = 3'd2,
    MCOL_C_0 = 3'd3,
    MROW_C_0 = 3'd4,
    main_C_1 = 3'd5;

  reg [2:0] state_var;
  reg [2:0] state_var_NS;


  // Interconnect Declarations for Component Instantiations 
  always @(*)
  begin : EdgeDetect_IP_EdgeDetect_MagAng_run_run_fsm_1
    case (state_var)
      run_rlp_C_1 : begin
        fsm_output = 6'b000010;
        state_var_NS = main_C_0;
      end
      main_C_0 : begin
        fsm_output = 6'b000100;
        state_var_NS = MCOL_C_0;
      end
      MCOL_C_0 : begin
        fsm_output = 6'b001000;
        if ( MCOL_C_0_tr0 ) begin
          state_var_NS = MROW_C_0;
        end
        else begin
          state_var_NS = MCOL_C_0;
        end
      end
      MROW_C_0 : begin
        fsm_output = 6'b010000;
        if ( MROW_C_0_tr0 ) begin
          state_var_NS = main_C_1;
        end
        else begin
          state_var_NS = MCOL_C_0;
        end
      end
      main_C_1 : begin
        fsm_output = 6'b100000;
        state_var_NS = main_C_0;
      end
      // run_rlp_C_0
      default : begin
        fsm_output = 6'b000001;
        state_var_NS = run_rlp_C_1;
      end
    endcase
  end

  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      state_var <= run_rlp_C_0;
    end
    else if ( rst ) begin
      state_var <= run_rlp_C_0;
    end
    else if ( run_wen ) begin
      state_var <= state_var_NS;
    end
  end

endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_MagAng_run_staller
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_MagAng_run_staller (
  clk, rst, arst_n, run_wen, run_wten, dx_chan_rsci_wen_comp, dy_chan_rsci_wen_comp,
      pix_chan2_rsci_wen_comp, dat_out_rsci_wen_comp
);
  input clk;
  input rst;
  input arst_n;
  output run_wen;
  output run_wten;
  input dx_chan_rsci_wen_comp;
  input dy_chan_rsci_wen_comp;
  input pix_chan2_rsci_wen_comp;
  input dat_out_rsci_wen_comp;


  // Interconnect Declarations
  reg run_wten_reg;


  // Interconnect Declarations for Component Instantiations 
  assign run_wen = dx_chan_rsci_wen_comp & dy_chan_rsci_wen_comp & pix_chan2_rsci_wen_comp
      & dat_out_rsci_wen_comp;
  assign run_wten = run_wten_reg;
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      run_wten_reg <= 1'b0;
    end
    else if ( rst ) begin
      run_wten_reg <= 1'b0;
    end
    else begin
      run_wten_reg <= ~ run_wen;
    end
  end
endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_MagAng_run_crc32_dat_out_triosy_obj_crc32_dat_out_triosy_wait_ctrl
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_MagAng_run_crc32_dat_out_triosy_obj_crc32_dat_out_triosy_wait_ctrl
    (
  run_wten, crc32_dat_out_triosy_obj_iswt0, crc32_dat_out_triosy_obj_biwt
);
  input run_wten;
  input crc32_dat_out_triosy_obj_iswt0;
  output crc32_dat_out_triosy_obj_biwt;



  // Interconnect Declarations for Component Instantiations 
  assign crc32_dat_out_triosy_obj_biwt = (~ run_wten) & crc32_dat_out_triosy_obj_iswt0;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_MagAng_run_crc32_pix_in_triosy_obj_crc32_pix_in_triosy_wait_ctrl
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_MagAng_run_crc32_pix_in_triosy_obj_crc32_pix_in_triosy_wait_ctrl
    (
  run_wten, crc32_pix_in_triosy_obj_iswt0, crc32_pix_in_triosy_obj_biwt
);
  input run_wten;
  input crc32_pix_in_triosy_obj_iswt0;
  output crc32_pix_in_triosy_obj_biwt;



  // Interconnect Declarations for Component Instantiations 
  assign crc32_pix_in_triosy_obj_biwt = (~ run_wten) & crc32_pix_in_triosy_obj_iswt0;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_MagAng_run_dat_out_rsci_dat_out_wait_dp
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_MagAng_run_dat_out_rsci_dat_out_wait_dp (
  clk, rst, arst_n, dat_out_rsci_oswt, dat_out_rsci_wen_comp, dat_out_rsci_biwt,
      dat_out_rsci_bdwt, dat_out_rsci_bcwt
);
  input clk;
  input rst;
  input arst_n;
  input dat_out_rsci_oswt;
  output dat_out_rsci_wen_comp;
  input dat_out_rsci_biwt;
  input dat_out_rsci_bdwt;
  output dat_out_rsci_bcwt;
  reg dat_out_rsci_bcwt;



  // Interconnect Declarations for Component Instantiations 
  assign dat_out_rsci_wen_comp = (~ dat_out_rsci_oswt) | dat_out_rsci_biwt | dat_out_rsci_bcwt;
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      dat_out_rsci_bcwt <= 1'b0;
    end
    else if ( rst ) begin
      dat_out_rsci_bcwt <= 1'b0;
    end
    else begin
      dat_out_rsci_bcwt <= ~((~(dat_out_rsci_bcwt | dat_out_rsci_biwt)) | dat_out_rsci_bdwt);
    end
  end
endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_MagAng_run_dat_out_rsci_dat_out_wait_ctrl
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_MagAng_run_dat_out_rsci_dat_out_wait_ctrl (
  run_wen, dat_out_rsci_oswt, dat_out_rsci_biwt, dat_out_rsci_bdwt, dat_out_rsci_bcwt,
      dat_out_rsci_irdy, dat_out_rsci_ivld_run_sct
);
  input run_wen;
  input dat_out_rsci_oswt;
  output dat_out_rsci_biwt;
  output dat_out_rsci_bdwt;
  input dat_out_rsci_bcwt;
  input dat_out_rsci_irdy;
  output dat_out_rsci_ivld_run_sct;


  // Interconnect Declarations
  wire dat_out_rsci_ogwt;


  // Interconnect Declarations for Component Instantiations 
  assign dat_out_rsci_bdwt = dat_out_rsci_oswt & run_wen;
  assign dat_out_rsci_biwt = dat_out_rsci_ogwt & dat_out_rsci_irdy;
  assign dat_out_rsci_ogwt = dat_out_rsci_oswt & (~ dat_out_rsci_bcwt);
  assign dat_out_rsci_ivld_run_sct = dat_out_rsci_ogwt;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_MagAng_run_crc32_dat_out_rsci_crc32_dat_out_rsc_wait_ctrl
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_MagAng_run_crc32_dat_out_rsci_crc32_dat_out_rsc_wait_ctrl
    (
  run_wten, crc32_dat_out_rsci_iswt0, crc32_dat_out_rsci_ldout_run_sct
);
  input run_wten;
  input crc32_dat_out_rsci_iswt0;
  output crc32_dat_out_rsci_ldout_run_sct;



  // Interconnect Declarations for Component Instantiations 
  assign crc32_dat_out_rsci_ldout_run_sct = crc32_dat_out_rsci_iswt0 & (~ run_wten);
endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_MagAng_run_crc32_pix_in_rsci_crc32_pix_in_rsc_wait_ctrl
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_MagAng_run_crc32_pix_in_rsci_crc32_pix_in_rsc_wait_ctrl
    (
  run_wten, crc32_pix_in_rsci_iswt0, crc32_pix_in_rsci_ldout_run_sct
);
  input run_wten;
  input crc32_pix_in_rsci_iswt0;
  output crc32_pix_in_rsci_ldout_run_sct;



  // Interconnect Declarations for Component Instantiations 
  assign crc32_pix_in_rsci_ldout_run_sct = crc32_pix_in_rsci_iswt0 & (~ run_wten);
endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_MagAng_run_pix_chan2_rsci_pix_chan2_wait_dp
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_MagAng_run_pix_chan2_rsci_pix_chan2_wait_dp (
  clk, rst, arst_n, pix_chan2_rsci_oswt, pix_chan2_rsci_wen_comp, pix_chan2_rsci_idat_mxwt,
      pix_chan2_rsci_biwt, pix_chan2_rsci_bdwt, pix_chan2_rsci_bcwt, pix_chan2_rsci_idat
);
  input clk;
  input rst;
  input arst_n;
  input pix_chan2_rsci_oswt;
  output pix_chan2_rsci_wen_comp;
  output [31:0] pix_chan2_rsci_idat_mxwt;
  input pix_chan2_rsci_biwt;
  input pix_chan2_rsci_bdwt;
  output pix_chan2_rsci_bcwt;
  reg pix_chan2_rsci_bcwt;
  input [33:0] pix_chan2_rsci_idat;


  // Interconnect Declarations
  reg [31:0] pix_chan2_rsci_idat_bfwt_31_0;


  // Interconnect Declarations for Component Instantiations 
  assign pix_chan2_rsci_wen_comp = (~ pix_chan2_rsci_oswt) | pix_chan2_rsci_biwt
      | pix_chan2_rsci_bcwt;
  assign pix_chan2_rsci_idat_mxwt = MUX_v_32_2_2((pix_chan2_rsci_idat[31:0]), pix_chan2_rsci_idat_bfwt_31_0,
      pix_chan2_rsci_bcwt);
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      pix_chan2_rsci_bcwt <= 1'b0;
    end
    else if ( rst ) begin
      pix_chan2_rsci_bcwt <= 1'b0;
    end
    else begin
      pix_chan2_rsci_bcwt <= ~((~(pix_chan2_rsci_bcwt | pix_chan2_rsci_biwt)) | pix_chan2_rsci_bdwt);
    end
  end
  always @(posedge clk) begin
    if ( pix_chan2_rsci_biwt ) begin
      pix_chan2_rsci_idat_bfwt_31_0 <= pix_chan2_rsci_idat[31:0];
    end
  end

  function automatic [31:0] MUX_v_32_2_2;
    input [31:0] input_0;
    input [31:0] input_1;
    input  sel;
    reg [31:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_32_2_2 = result;
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_MagAng_run_pix_chan2_rsci_pix_chan2_wait_ctrl
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_MagAng_run_pix_chan2_rsci_pix_chan2_wait_ctrl (
  run_wen, pix_chan2_rsci_oswt, pix_chan2_rsci_biwt, pix_chan2_rsci_bdwt, pix_chan2_rsci_bcwt,
      pix_chan2_rsci_irdy_run_sct, pix_chan2_rsci_ivld
);
  input run_wen;
  input pix_chan2_rsci_oswt;
  output pix_chan2_rsci_biwt;
  output pix_chan2_rsci_bdwt;
  input pix_chan2_rsci_bcwt;
  output pix_chan2_rsci_irdy_run_sct;
  input pix_chan2_rsci_ivld;


  // Interconnect Declarations
  wire pix_chan2_rsci_ogwt;


  // Interconnect Declarations for Component Instantiations 
  assign pix_chan2_rsci_bdwt = pix_chan2_rsci_oswt & run_wen;
  assign pix_chan2_rsci_biwt = pix_chan2_rsci_ogwt & pix_chan2_rsci_ivld;
  assign pix_chan2_rsci_ogwt = pix_chan2_rsci_oswt & (~ pix_chan2_rsci_bcwt);
  assign pix_chan2_rsci_irdy_run_sct = pix_chan2_rsci_ogwt;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_MagAng_run_dy_chan_rsci_dy_chan_wait_dp
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_MagAng_run_dy_chan_rsci_dy_chan_wait_dp (
  clk, rst, arst_n, dy_chan_rsci_oswt, dy_chan_rsci_wen_comp, dy_chan_rsci_idat_mxwt,
      dy_chan_rsci_biwt, dy_chan_rsci_bdwt, dy_chan_rsci_bcwt, dy_chan_rsci_idat
);
  input clk;
  input rst;
  input arst_n;
  input dy_chan_rsci_oswt;
  output dy_chan_rsci_wen_comp;
  output [35:0] dy_chan_rsci_idat_mxwt;
  input dy_chan_rsci_biwt;
  input dy_chan_rsci_bdwt;
  output dy_chan_rsci_bcwt;
  reg dy_chan_rsci_bcwt;
  input [35:0] dy_chan_rsci_idat;


  // Interconnect Declarations
  reg [35:0] dy_chan_rsci_idat_bfwt;


  // Interconnect Declarations for Component Instantiations 
  assign dy_chan_rsci_wen_comp = (~ dy_chan_rsci_oswt) | dy_chan_rsci_biwt | dy_chan_rsci_bcwt;
  assign dy_chan_rsci_idat_mxwt = MUX_v_36_2_2(dy_chan_rsci_idat, dy_chan_rsci_idat_bfwt,
      dy_chan_rsci_bcwt);
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      dy_chan_rsci_bcwt <= 1'b0;
    end
    else if ( rst ) begin
      dy_chan_rsci_bcwt <= 1'b0;
    end
    else begin
      dy_chan_rsci_bcwt <= ~((~(dy_chan_rsci_bcwt | dy_chan_rsci_biwt)) | dy_chan_rsci_bdwt);
    end
  end
  always @(posedge clk) begin
    if ( dy_chan_rsci_biwt ) begin
      dy_chan_rsci_idat_bfwt <= dy_chan_rsci_idat;
    end
  end

  function automatic [35:0] MUX_v_36_2_2;
    input [35:0] input_0;
    input [35:0] input_1;
    input  sel;
    reg [35:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_36_2_2 = result;
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_MagAng_run_dy_chan_rsci_dy_chan_wait_ctrl
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_MagAng_run_dy_chan_rsci_dy_chan_wait_ctrl (
  run_wen, dy_chan_rsci_oswt, dy_chan_rsci_biwt, dy_chan_rsci_bdwt, dy_chan_rsci_bcwt,
      dy_chan_rsci_irdy_run_sct, dy_chan_rsci_ivld
);
  input run_wen;
  input dy_chan_rsci_oswt;
  output dy_chan_rsci_biwt;
  output dy_chan_rsci_bdwt;
  input dy_chan_rsci_bcwt;
  output dy_chan_rsci_irdy_run_sct;
  input dy_chan_rsci_ivld;


  // Interconnect Declarations
  wire dy_chan_rsci_ogwt;


  // Interconnect Declarations for Component Instantiations 
  assign dy_chan_rsci_bdwt = dy_chan_rsci_oswt & run_wen;
  assign dy_chan_rsci_biwt = dy_chan_rsci_ogwt & dy_chan_rsci_ivld;
  assign dy_chan_rsci_ogwt = dy_chan_rsci_oswt & (~ dy_chan_rsci_bcwt);
  assign dy_chan_rsci_irdy_run_sct = dy_chan_rsci_ogwt;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_MagAng_run_dx_chan_rsci_dx_chan_wait_dp
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_MagAng_run_dx_chan_rsci_dx_chan_wait_dp (
  clk, rst, arst_n, dx_chan_rsci_oswt, dx_chan_rsci_wen_comp, dx_chan_rsci_idat_mxwt,
      dx_chan_rsci_biwt, dx_chan_rsci_bdwt, dx_chan_rsci_bcwt, dx_chan_rsci_idat
);
  input clk;
  input rst;
  input arst_n;
  input dx_chan_rsci_oswt;
  output dx_chan_rsci_wen_comp;
  output [35:0] dx_chan_rsci_idat_mxwt;
  input dx_chan_rsci_biwt;
  input dx_chan_rsci_bdwt;
  output dx_chan_rsci_bcwt;
  reg dx_chan_rsci_bcwt;
  input [35:0] dx_chan_rsci_idat;


  // Interconnect Declarations
  reg [35:0] dx_chan_rsci_idat_bfwt;


  // Interconnect Declarations for Component Instantiations 
  assign dx_chan_rsci_wen_comp = (~ dx_chan_rsci_oswt) | dx_chan_rsci_biwt | dx_chan_rsci_bcwt;
  assign dx_chan_rsci_idat_mxwt = MUX_v_36_2_2(dx_chan_rsci_idat, dx_chan_rsci_idat_bfwt,
      dx_chan_rsci_bcwt);
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      dx_chan_rsci_bcwt <= 1'b0;
    end
    else if ( rst ) begin
      dx_chan_rsci_bcwt <= 1'b0;
    end
    else begin
      dx_chan_rsci_bcwt <= ~((~(dx_chan_rsci_bcwt | dx_chan_rsci_biwt)) | dx_chan_rsci_bdwt);
    end
  end
  always @(posedge clk) begin
    if ( dx_chan_rsci_biwt ) begin
      dx_chan_rsci_idat_bfwt <= dx_chan_rsci_idat;
    end
  end

  function automatic [35:0] MUX_v_36_2_2;
    input [35:0] input_0;
    input [35:0] input_1;
    input  sel;
    reg [35:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_36_2_2 = result;
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_MagAng_run_dx_chan_rsci_dx_chan_wait_ctrl
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_MagAng_run_dx_chan_rsci_dx_chan_wait_ctrl (
  run_wen, dx_chan_rsci_oswt, dx_chan_rsci_biwt, dx_chan_rsci_bdwt, dx_chan_rsci_bcwt,
      dx_chan_rsci_irdy_run_sct, dx_chan_rsci_ivld
);
  input run_wen;
  input dx_chan_rsci_oswt;
  output dx_chan_rsci_biwt;
  output dx_chan_rsci_bdwt;
  input dx_chan_rsci_bcwt;
  output dx_chan_rsci_irdy_run_sct;
  input dx_chan_rsci_ivld;


  // Interconnect Declarations
  wire dx_chan_rsci_ogwt;


  // Interconnect Declarations for Component Instantiations 
  assign dx_chan_rsci_bdwt = dx_chan_rsci_oswt & run_wen;
  assign dx_chan_rsci_biwt = dx_chan_rsci_ogwt & dx_chan_rsci_ivld;
  assign dx_chan_rsci_ogwt = dx_chan_rsci_oswt & (~ dx_chan_rsci_bcwt);
  assign dx_chan_rsci_irdy_run_sct = dx_chan_rsci_ogwt;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_MagAng_run_crc32_dat_out_triosy_obj
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_MagAng_run_crc32_dat_out_triosy_obj (
  crc32_dat_out_triosy_lz, run_wten, crc32_dat_out_triosy_obj_iswt0
);
  output crc32_dat_out_triosy_lz;
  input run_wten;
  input crc32_dat_out_triosy_obj_iswt0;


  // Interconnect Declarations
  wire crc32_dat_out_triosy_obj_biwt;


  // Interconnect Declarations for Component Instantiations 
  mgc_io_sync_v2 #(.valid(32'sd0)) crc32_dat_out_triosy_obj (
      .ld(crc32_dat_out_triosy_obj_biwt),
      .lz(crc32_dat_out_triosy_lz)
    );
  EdgeDetect_IP_EdgeDetect_MagAng_run_crc32_dat_out_triosy_obj_crc32_dat_out_triosy_wait_ctrl
      EdgeDetect_IP_EdgeDetect_MagAng_run_crc32_dat_out_triosy_obj_crc32_dat_out_triosy_wait_ctrl_inst
      (
      .run_wten(run_wten),
      .crc32_dat_out_triosy_obj_iswt0(crc32_dat_out_triosy_obj_iswt0),
      .crc32_dat_out_triosy_obj_biwt(crc32_dat_out_triosy_obj_biwt)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_MagAng_run_crc32_pix_in_triosy_obj
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_MagAng_run_crc32_pix_in_triosy_obj (
  crc32_pix_in_triosy_lz, run_wten, crc32_pix_in_triosy_obj_iswt0
);
  output crc32_pix_in_triosy_lz;
  input run_wten;
  input crc32_pix_in_triosy_obj_iswt0;


  // Interconnect Declarations
  wire crc32_pix_in_triosy_obj_biwt;


  // Interconnect Declarations for Component Instantiations 
  mgc_io_sync_v2 #(.valid(32'sd0)) crc32_pix_in_triosy_obj (
      .ld(crc32_pix_in_triosy_obj_biwt),
      .lz(crc32_pix_in_triosy_lz)
    );
  EdgeDetect_IP_EdgeDetect_MagAng_run_crc32_pix_in_triosy_obj_crc32_pix_in_triosy_wait_ctrl
      EdgeDetect_IP_EdgeDetect_MagAng_run_crc32_pix_in_triosy_obj_crc32_pix_in_triosy_wait_ctrl_inst
      (
      .run_wten(run_wten),
      .crc32_pix_in_triosy_obj_iswt0(crc32_pix_in_triosy_obj_iswt0),
      .crc32_pix_in_triosy_obj_biwt(crc32_pix_in_triosy_obj_biwt)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_MagAng_run_dat_out_rsci
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_MagAng_run_dat_out_rsci (
  clk, rst, arst_n, dat_out_rsc_dat, dat_out_rsc_vld, dat_out_rsc_rdy, run_wen, dat_out_rsci_oswt,
      dat_out_rsci_wen_comp, dat_out_rsci_idat
);
  input clk;
  input rst;
  input arst_n;
  output [33:0] dat_out_rsc_dat;
  output dat_out_rsc_vld;
  input dat_out_rsc_rdy;
  input run_wen;
  input dat_out_rsci_oswt;
  output dat_out_rsci_wen_comp;
  input [33:0] dat_out_rsci_idat;


  // Interconnect Declarations
  wire dat_out_rsci_biwt;
  wire dat_out_rsci_bdwt;
  wire dat_out_rsci_bcwt;
  wire dat_out_rsci_irdy;
  wire dat_out_rsci_ivld_run_sct;


  // Interconnect Declarations for Component Instantiations 
  ccs_out_wait_v1 #(.rscid(32'sd9),
  .width(32'sd34)) dat_out_rsci (
      .irdy(dat_out_rsci_irdy),
      .ivld(dat_out_rsci_ivld_run_sct),
      .idat(dat_out_rsci_idat),
      .rdy(dat_out_rsc_rdy),
      .vld(dat_out_rsc_vld),
      .dat(dat_out_rsc_dat)
    );
  EdgeDetect_IP_EdgeDetect_MagAng_run_dat_out_rsci_dat_out_wait_ctrl EdgeDetect_IP_EdgeDetect_MagAng_run_dat_out_rsci_dat_out_wait_ctrl_inst
      (
      .run_wen(run_wen),
      .dat_out_rsci_oswt(dat_out_rsci_oswt),
      .dat_out_rsci_biwt(dat_out_rsci_biwt),
      .dat_out_rsci_bdwt(dat_out_rsci_bdwt),
      .dat_out_rsci_bcwt(dat_out_rsci_bcwt),
      .dat_out_rsci_irdy(dat_out_rsci_irdy),
      .dat_out_rsci_ivld_run_sct(dat_out_rsci_ivld_run_sct)
    );
  EdgeDetect_IP_EdgeDetect_MagAng_run_dat_out_rsci_dat_out_wait_dp EdgeDetect_IP_EdgeDetect_MagAng_run_dat_out_rsci_dat_out_wait_dp_inst
      (
      .clk(clk),
      .rst(rst),
      .arst_n(arst_n),
      .dat_out_rsci_oswt(dat_out_rsci_oswt),
      .dat_out_rsci_wen_comp(dat_out_rsci_wen_comp),
      .dat_out_rsci_biwt(dat_out_rsci_biwt),
      .dat_out_rsci_bdwt(dat_out_rsci_bdwt),
      .dat_out_rsci_bcwt(dat_out_rsci_bcwt)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_MagAng_run_crc32_dat_out_rsci
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_MagAng_run_crc32_dat_out_rsci (
  crc32_dat_out_rsc_zout, crc32_dat_out_rsc_lzout, crc32_dat_out_rsc_zin, run_wten,
      crc32_dat_out_rsci_iswt0, crc32_dat_out_rsci_din, crc32_dat_out_rsci_dout_run
);
  output [31:0] crc32_dat_out_rsc_zout;
  output crc32_dat_out_rsc_lzout;
  input [31:0] crc32_dat_out_rsc_zin;
  input run_wten;
  input crc32_dat_out_rsci_iswt0;
  output [31:0] crc32_dat_out_rsci_din;
  input [31:0] crc32_dat_out_rsci_dout_run;


  // Interconnect Declarations
  wire crc32_dat_out_rsci_ldout_run_sct;


  // Interconnect Declarations for Component Instantiations 
  mgc_inout_prereg_en_v1 #(.rscid(32'sd8),
  .width(32'sd32)) crc32_dat_out_rsci (
      .din(crc32_dat_out_rsci_din),
      .ldout(crc32_dat_out_rsci_ldout_run_sct),
      .dout(crc32_dat_out_rsci_dout_run),
      .zin(crc32_dat_out_rsc_zin),
      .lzout(crc32_dat_out_rsc_lzout),
      .zout(crc32_dat_out_rsc_zout)
    );
  EdgeDetect_IP_EdgeDetect_MagAng_run_crc32_dat_out_rsci_crc32_dat_out_rsc_wait_ctrl
      EdgeDetect_IP_EdgeDetect_MagAng_run_crc32_dat_out_rsci_crc32_dat_out_rsc_wait_ctrl_inst
      (
      .run_wten(run_wten),
      .crc32_dat_out_rsci_iswt0(crc32_dat_out_rsci_iswt0),
      .crc32_dat_out_rsci_ldout_run_sct(crc32_dat_out_rsci_ldout_run_sct)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_MagAng_run_crc32_pix_in_rsci
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_MagAng_run_crc32_pix_in_rsci (
  crc32_pix_in_rsc_zout, crc32_pix_in_rsc_lzout, crc32_pix_in_rsc_zin, run_wten,
      crc32_pix_in_rsci_iswt0, crc32_pix_in_rsci_din, crc32_pix_in_rsci_dout_run
);
  output [31:0] crc32_pix_in_rsc_zout;
  output crc32_pix_in_rsc_lzout;
  input [31:0] crc32_pix_in_rsc_zin;
  input run_wten;
  input crc32_pix_in_rsci_iswt0;
  output [31:0] crc32_pix_in_rsci_din;
  input [31:0] crc32_pix_in_rsci_dout_run;


  // Interconnect Declarations
  wire crc32_pix_in_rsci_ldout_run_sct;


  // Interconnect Declarations for Component Instantiations 
  mgc_inout_prereg_en_v1 #(.rscid(32'sd7),
  .width(32'sd32)) crc32_pix_in_rsci (
      .din(crc32_pix_in_rsci_din),
      .ldout(crc32_pix_in_rsci_ldout_run_sct),
      .dout(crc32_pix_in_rsci_dout_run),
      .zin(crc32_pix_in_rsc_zin),
      .lzout(crc32_pix_in_rsc_lzout),
      .zout(crc32_pix_in_rsc_zout)
    );
  EdgeDetect_IP_EdgeDetect_MagAng_run_crc32_pix_in_rsci_crc32_pix_in_rsc_wait_ctrl
      EdgeDetect_IP_EdgeDetect_MagAng_run_crc32_pix_in_rsci_crc32_pix_in_rsc_wait_ctrl_inst
      (
      .run_wten(run_wten),
      .crc32_pix_in_rsci_iswt0(crc32_pix_in_rsci_iswt0),
      .crc32_pix_in_rsci_ldout_run_sct(crc32_pix_in_rsci_ldout_run_sct)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_MagAng_run_pix_chan2_rsci
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_MagAng_run_pix_chan2_rsci (
  clk, rst, arst_n, pix_chan2_rsc_dat, pix_chan2_rsc_vld, pix_chan2_rsc_rdy, run_wen,
      pix_chan2_rsci_oswt, pix_chan2_rsci_wen_comp, pix_chan2_rsci_idat_mxwt
);
  input clk;
  input rst;
  input arst_n;
  input [33:0] pix_chan2_rsc_dat;
  input pix_chan2_rsc_vld;
  output pix_chan2_rsc_rdy;
  input run_wen;
  input pix_chan2_rsci_oswt;
  output pix_chan2_rsci_wen_comp;
  output [31:0] pix_chan2_rsci_idat_mxwt;


  // Interconnect Declarations
  wire pix_chan2_rsci_biwt;
  wire pix_chan2_rsci_bdwt;
  wire pix_chan2_rsci_bcwt;
  wire pix_chan2_rsci_irdy_run_sct;
  wire pix_chan2_rsci_ivld;
  wire [33:0] pix_chan2_rsci_idat;
  wire [31:0] pix_chan2_rsci_idat_mxwt_pconst;


  // Interconnect Declarations for Component Instantiations 
  ccs_in_wait_v1 #(.rscid(32'sd3),
  .width(32'sd34)) pix_chan2_rsci (
      .rdy(pix_chan2_rsc_rdy),
      .vld(pix_chan2_rsc_vld),
      .dat(pix_chan2_rsc_dat),
      .irdy(pix_chan2_rsci_irdy_run_sct),
      .ivld(pix_chan2_rsci_ivld),
      .idat(pix_chan2_rsci_idat)
    );
  EdgeDetect_IP_EdgeDetect_MagAng_run_pix_chan2_rsci_pix_chan2_wait_ctrl EdgeDetect_IP_EdgeDetect_MagAng_run_pix_chan2_rsci_pix_chan2_wait_ctrl_inst
      (
      .run_wen(run_wen),
      .pix_chan2_rsci_oswt(pix_chan2_rsci_oswt),
      .pix_chan2_rsci_biwt(pix_chan2_rsci_biwt),
      .pix_chan2_rsci_bdwt(pix_chan2_rsci_bdwt),
      .pix_chan2_rsci_bcwt(pix_chan2_rsci_bcwt),
      .pix_chan2_rsci_irdy_run_sct(pix_chan2_rsci_irdy_run_sct),
      .pix_chan2_rsci_ivld(pix_chan2_rsci_ivld)
    );
  EdgeDetect_IP_EdgeDetect_MagAng_run_pix_chan2_rsci_pix_chan2_wait_dp EdgeDetect_IP_EdgeDetect_MagAng_run_pix_chan2_rsci_pix_chan2_wait_dp_inst
      (
      .clk(clk),
      .rst(rst),
      .arst_n(arst_n),
      .pix_chan2_rsci_oswt(pix_chan2_rsci_oswt),
      .pix_chan2_rsci_wen_comp(pix_chan2_rsci_wen_comp),
      .pix_chan2_rsci_idat_mxwt(pix_chan2_rsci_idat_mxwt_pconst),
      .pix_chan2_rsci_biwt(pix_chan2_rsci_biwt),
      .pix_chan2_rsci_bdwt(pix_chan2_rsci_bdwt),
      .pix_chan2_rsci_bcwt(pix_chan2_rsci_bcwt),
      .pix_chan2_rsci_idat(pix_chan2_rsci_idat)
    );
  assign pix_chan2_rsci_idat_mxwt = pix_chan2_rsci_idat_mxwt_pconst;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_MagAng_run_dy_chan_rsci
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_MagAng_run_dy_chan_rsci (
  clk, rst, arst_n, dy_chan_rsc_dat, dy_chan_rsc_vld, dy_chan_rsc_rdy, run_wen, dy_chan_rsci_oswt,
      dy_chan_rsci_wen_comp, dy_chan_rsci_idat_mxwt
);
  input clk;
  input rst;
  input arst_n;
  input [35:0] dy_chan_rsc_dat;
  input dy_chan_rsc_vld;
  output dy_chan_rsc_rdy;
  input run_wen;
  input dy_chan_rsci_oswt;
  output dy_chan_rsci_wen_comp;
  output [35:0] dy_chan_rsci_idat_mxwt;


  // Interconnect Declarations
  wire dy_chan_rsci_biwt;
  wire dy_chan_rsci_bdwt;
  wire dy_chan_rsci_bcwt;
  wire dy_chan_rsci_irdy_run_sct;
  wire dy_chan_rsci_ivld;
  wire [35:0] dy_chan_rsci_idat;


  // Interconnect Declarations for Component Instantiations 
  ccs_in_wait_v1 #(.rscid(32'sd2),
  .width(32'sd36)) dy_chan_rsci (
      .rdy(dy_chan_rsc_rdy),
      .vld(dy_chan_rsc_vld),
      .dat(dy_chan_rsc_dat),
      .irdy(dy_chan_rsci_irdy_run_sct),
      .ivld(dy_chan_rsci_ivld),
      .idat(dy_chan_rsci_idat)
    );
  EdgeDetect_IP_EdgeDetect_MagAng_run_dy_chan_rsci_dy_chan_wait_ctrl EdgeDetect_IP_EdgeDetect_MagAng_run_dy_chan_rsci_dy_chan_wait_ctrl_inst
      (
      .run_wen(run_wen),
      .dy_chan_rsci_oswt(dy_chan_rsci_oswt),
      .dy_chan_rsci_biwt(dy_chan_rsci_biwt),
      .dy_chan_rsci_bdwt(dy_chan_rsci_bdwt),
      .dy_chan_rsci_bcwt(dy_chan_rsci_bcwt),
      .dy_chan_rsci_irdy_run_sct(dy_chan_rsci_irdy_run_sct),
      .dy_chan_rsci_ivld(dy_chan_rsci_ivld)
    );
  EdgeDetect_IP_EdgeDetect_MagAng_run_dy_chan_rsci_dy_chan_wait_dp EdgeDetect_IP_EdgeDetect_MagAng_run_dy_chan_rsci_dy_chan_wait_dp_inst
      (
      .clk(clk),
      .rst(rst),
      .arst_n(arst_n),
      .dy_chan_rsci_oswt(dy_chan_rsci_oswt),
      .dy_chan_rsci_wen_comp(dy_chan_rsci_wen_comp),
      .dy_chan_rsci_idat_mxwt(dy_chan_rsci_idat_mxwt),
      .dy_chan_rsci_biwt(dy_chan_rsci_biwt),
      .dy_chan_rsci_bdwt(dy_chan_rsci_bdwt),
      .dy_chan_rsci_bcwt(dy_chan_rsci_bcwt),
      .dy_chan_rsci_idat(dy_chan_rsci_idat)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_MagAng_run_dx_chan_rsci
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_MagAng_run_dx_chan_rsci (
  clk, rst, arst_n, dx_chan_rsc_dat, dx_chan_rsc_vld, dx_chan_rsc_rdy, run_wen, dx_chan_rsci_oswt,
      dx_chan_rsci_wen_comp, dx_chan_rsci_idat_mxwt
);
  input clk;
  input rst;
  input arst_n;
  input [35:0] dx_chan_rsc_dat;
  input dx_chan_rsc_vld;
  output dx_chan_rsc_rdy;
  input run_wen;
  input dx_chan_rsci_oswt;
  output dx_chan_rsci_wen_comp;
  output [35:0] dx_chan_rsci_idat_mxwt;


  // Interconnect Declarations
  wire dx_chan_rsci_biwt;
  wire dx_chan_rsci_bdwt;
  wire dx_chan_rsci_bcwt;
  wire dx_chan_rsci_irdy_run_sct;
  wire dx_chan_rsci_ivld;
  wire [35:0] dx_chan_rsci_idat;


  // Interconnect Declarations for Component Instantiations 
  ccs_in_wait_v1 #(.rscid(32'sd1),
  .width(32'sd36)) dx_chan_rsci (
      .rdy(dx_chan_rsc_rdy),
      .vld(dx_chan_rsc_vld),
      .dat(dx_chan_rsc_dat),
      .irdy(dx_chan_rsci_irdy_run_sct),
      .ivld(dx_chan_rsci_ivld),
      .idat(dx_chan_rsci_idat)
    );
  EdgeDetect_IP_EdgeDetect_MagAng_run_dx_chan_rsci_dx_chan_wait_ctrl EdgeDetect_IP_EdgeDetect_MagAng_run_dx_chan_rsci_dx_chan_wait_ctrl_inst
      (
      .run_wen(run_wen),
      .dx_chan_rsci_oswt(dx_chan_rsci_oswt),
      .dx_chan_rsci_biwt(dx_chan_rsci_biwt),
      .dx_chan_rsci_bdwt(dx_chan_rsci_bdwt),
      .dx_chan_rsci_bcwt(dx_chan_rsci_bcwt),
      .dx_chan_rsci_irdy_run_sct(dx_chan_rsci_irdy_run_sct),
      .dx_chan_rsci_ivld(dx_chan_rsci_ivld)
    );
  EdgeDetect_IP_EdgeDetect_MagAng_run_dx_chan_rsci_dx_chan_wait_dp EdgeDetect_IP_EdgeDetect_MagAng_run_dx_chan_rsci_dx_chan_wait_dp_inst
      (
      .clk(clk),
      .rst(rst),
      .arst_n(arst_n),
      .dx_chan_rsci_oswt(dx_chan_rsci_oswt),
      .dx_chan_rsci_wen_comp(dx_chan_rsci_wen_comp),
      .dx_chan_rsci_idat_mxwt(dx_chan_rsci_idat_mxwt),
      .dx_chan_rsci_biwt(dx_chan_rsci_biwt),
      .dx_chan_rsci_bdwt(dx_chan_rsci_bdwt),
      .dx_chan_rsci_bcwt(dx_chan_rsci_bcwt),
      .dx_chan_rsci_idat(dx_chan_rsci_idat)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_MagAng_run
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_MagAng_run (
  clk, rst, arst_n, dx_chan_rsc_dat, dx_chan_rsc_vld, dx_chan_rsc_rdy, dy_chan_rsc_dat,
      dy_chan_rsc_vld, dy_chan_rsc_rdy, pix_chan2_rsc_dat, pix_chan2_rsc_vld, pix_chan2_rsc_rdy,
      widthIn, heightIn, sw_in, crc32_pix_in_rsc_zout, crc32_pix_in_rsc_lzout, crc32_pix_in_rsc_zin,
      crc32_pix_in_triosy_lz, crc32_dat_out_rsc_zout, crc32_dat_out_rsc_lzout, crc32_dat_out_rsc_zin,
      crc32_dat_out_triosy_lz, dat_out_rsc_dat, dat_out_rsc_vld, dat_out_rsc_rdy
);
  input clk;
  input rst;
  input arst_n;
  input [35:0] dx_chan_rsc_dat;
  input dx_chan_rsc_vld;
  output dx_chan_rsc_rdy;
  input [35:0] dy_chan_rsc_dat;
  input dy_chan_rsc_vld;
  output dy_chan_rsc_rdy;
  input [33:0] pix_chan2_rsc_dat;
  input pix_chan2_rsc_vld;
  output pix_chan2_rsc_rdy;
  input [10:0] widthIn;
  input [9:0] heightIn;
  input sw_in;
  output [31:0] crc32_pix_in_rsc_zout;
  output crc32_pix_in_rsc_lzout;
  input [31:0] crc32_pix_in_rsc_zin;
  output crc32_pix_in_triosy_lz;
  output [31:0] crc32_dat_out_rsc_zout;
  output crc32_dat_out_rsc_lzout;
  input [31:0] crc32_dat_out_rsc_zin;
  output crc32_dat_out_triosy_lz;
  output [33:0] dat_out_rsc_dat;
  output dat_out_rsc_vld;
  input dat_out_rsc_rdy;


  // Interconnect Declarations
  wire run_wen;
  wire run_wten;
  wire dx_chan_rsci_wen_comp;
  wire [35:0] dx_chan_rsci_idat_mxwt;
  wire dy_chan_rsci_wen_comp;
  wire [35:0] dy_chan_rsci_idat_mxwt;
  wire pix_chan2_rsci_wen_comp;
  wire [31:0] pix_chan2_rsci_idat_mxwt;
  wire [31:0] crc32_pix_in_rsci_din;
  wire [31:0] crc32_dat_out_rsci_din;
  wire dat_out_rsci_wen_comp;
  reg dat_out_rsci_idat_33;
  reg dat_out_rsci_idat_32;
  reg [7:0] dat_out_rsci_idat_31_24;
  reg [7:0] dat_out_rsci_idat_23_16;
  reg [7:0] dat_out_rsci_idat_15_8;
  reg [7:0] dat_out_rsci_idat_7_0;
  wire [5:0] fsm_output;
  wire MROW_equal_tmp;
  wire or_tmp_4;
  wire or_tmp_199;
  wire and_17_cse;
  wire and_20_cse;
  reg MCOL_stage_0;
  wire [7:0] abs_dx3_lpi_3_dfm_mx0;
  wire [7:0] abs_dy3_lpi_3_dfm_mx0;
  wire [7:0] abs_dx2_lpi_3_dfm_mx0;
  wire [7:0] abs_dy2_lpi_3_dfm_mx0;
  wire [7:0] abs_dx1_lpi_3_dfm_mx0;
  wire [7:0] abs_dy1_lpi_3_dfm_mx0;
  wire [7:0] abs_dx0_lpi_3_dfm_mx0;
  wire [7:0] abs_dy0_lpi_3_dfm_mx0;
  reg reg_dx_chan_rsci_oswt_cse;
  reg reg_dat_out_rsci_oswt_cse;
  reg reg_crc32_pix_in_triosy_obj_iswt0_cse;
  wire MCOL_and_cse;
  wire MCOL_and_3_cse;
  wire nand_cse;
  reg [8:0] MCOL_x_10_2_sva;
  wire MROW_y_or_cse;
  wire or_8_rmff;
  wire xor_cse_1;
  wire xor_cse_40;
  wire xor_cse_74;
  wire xor_cse_30;
  wire xor_cse_131;
  wire xor_cse_98;
  wire xor_cse_47;
  wire xor_cse_4;
  wire xor_cse_101;
  wire xor_cse_123;
  wire xor_cse_105;
  wire xor_cse_57;
  wire xor_cse_42;
  wire xor_cse_39;
  wire xor_cse_53;
  wire xor_cse_90;
  wire xor_cse_66;
  wire xor_cse_52;
  wire xor_cse_10;
  wire xor_cse_113;
  wire xor_cse_72;
  wire xor_cse_7;
  wire xor_cse_61;
  wire xor_cse_121;
  wire xor_cse_110;
  wire xor_cse_14;
  wire xor_cse_17;
  wire xor_cse_116;
  wire xor_cse_91;
  wire xor_cse_85;
  wire xor_cse_70;
  wire xor_cse_71;
  wire xor_cse_34;
  wire xor_cse_103;
  wire xor_cse_92;
  wire xor_cse_93;
  wire xor_cse_95;
  wire xor_cse_88;
  wire xor_cse_96;
  wire xor_cse_24;
  wire xor_cse;
  wire xor_cse_80;
  wire xor_cse_56;
  wire xor_cse_23;
  wire xor_cse_29;
  wire xor_cse_64;
  wire xor_cse_68;
  wire xor_cse_54;
  wire xor_cse_27;
  wire xor_cse_76;
  wire xor_cse_59;
  wire xor_cse_102;
  wire xor_cse_118;
  wire xor_cse_148;
  wire xor_cse_187;
  wire xor_cse_221;
  wire xor_cse_177;
  wire xor_cse_278;
  wire [7:0] streamin_pix_7_0_lpi_3_dfm_mx0;
  wire [7:0] streamin_pix_23_16_lpi_3_dfm_mx0;
  wire [7:0] streamin_pix_31_24_lpi_3_dfm_mx0;
  wire xor_cse_245;
  wire xor_cse_194;
  wire xor_cse_151;
  wire xor_cse_248;
  wire xor_cse_270;
  wire xor_cse_252;
  wire xor_cse_204;
  wire xor_cse_189;
  wire xor_cse_186;
  wire xor_cse_200;
  wire xor_cse_237;
  wire xor_cse_213;
  wire xor_cse_199;
  wire xor_cse_157;
  wire xor_cse_260;
  wire [7:0] streamin_pix_15_8_lpi_3_dfm_mx0;
  wire xor_cse_219;
  wire xor_cse_154;
  wire xor_cse_208;
  wire xor_cse_268;
  wire xor_cse_257;
  wire xor_cse_161;
  wire xor_cse_164;
  wire xor_cse_263;
  wire xor_cse_238;
  wire xor_cse_232;
  wire xor_cse_217;
  wire xor_cse_218;
  wire xor_cse_181;
  wire xor_cse_250;
  wire xor_cse_239;
  wire xor_cse_240;
  wire xor_cse_242;
  wire xor_cse_235;
  wire xor_cse_243;
  wire xor_cse_171;
  wire xor_cse_147;
  wire xor_cse_227;
  wire xor_cse_203;
  wire xor_cse_170;
  wire xor_cse_176;
  wire xor_cse_211;
  wire xor_cse_215;
  wire xor_cse_201;
  wire xor_cse_174;
  wire xor_cse_223;
  wire xor_cse_206;
  wire xor_cse_249;
  wire xor_cse_265;
  wire [10:0] z_out;
  wire [11:0] nl_z_out;
  wire [9:0] z_out_1;
  wire [10:0] nl_z_out_1;
  reg [9:0] MROW_y_sva;
  wire [7:0] MCOL_MCOL_or_3_mx0w0;
  wire [7:0] MCOL_MCOL_or_4_mx0w0;
  wire [7:0] MCOL_MCOL_or_2_mx0w0;
  wire [7:0] MCOL_MCOL_or_1_mx0w0;

  wire MROW_y_not_1_nl;
  wire[8:0] operator_11_false_acc_nl;
  wire[9:0] nl_operator_11_false_acc_nl;
  wire MROW_y_not_nl;
  wire[7:0] MCOL_else_12_acc_nl;
  wire[8:0] nl_MCOL_else_12_acc_nl;
  wire operator_9_false_2_not_nl;
  wire[8:0] MCOL_if_12_acc_1_nl;
  wire[9:0] nl_MCOL_if_12_acc_1_nl;
  wire[7:0] MCOL_else_13_acc_nl;
  wire[8:0] nl_MCOL_else_13_acc_nl;
  wire operator_9_false_3_not_nl;
  wire[8:0] MCOL_if_13_acc_1_nl;
  wire[9:0] nl_MCOL_if_13_acc_1_nl;
  wire[7:0] MCOL_else_11_acc_nl;
  wire[8:0] nl_MCOL_else_11_acc_nl;
  wire operator_9_false_1_not_nl;
  wire[8:0] MCOL_if_11_acc_1_nl;
  wire[9:0] nl_MCOL_if_11_acc_1_nl;
  wire[7:0] MCOL_else_10_acc_nl;
  wire[8:0] nl_MCOL_else_10_acc_nl;
  wire operator_9_false_not_nl;
  wire[8:0] MCOL_if_10_acc_1_nl;
  wire[9:0] nl_MCOL_if_10_acc_1_nl;
  wire[7:0] MCOL_else_2_acc_nl;
  wire[8:0] nl_MCOL_else_2_acc_nl;
  wire[7:0] MCOL_else_3_acc_nl;
  wire[8:0] nl_MCOL_else_3_acc_nl;
  wire[7:0] MCOL_else_4_acc_nl;
  wire[8:0] nl_MCOL_else_4_acc_nl;
  wire[7:0] MCOL_else_5_acc_nl;
  wire[8:0] nl_MCOL_else_5_acc_nl;
  wire[7:0] MCOL_else_6_acc_nl;
  wire[8:0] nl_MCOL_else_6_acc_nl;
  wire[7:0] MCOL_else_7_acc_nl;
  wire[8:0] nl_MCOL_else_7_acc_nl;
  wire[7:0] MCOL_else_8_acc_nl;
  wire[8:0] nl_MCOL_else_8_acc_nl;
  wire[7:0] MCOL_else_9_acc_nl;
  wire[8:0] nl_MCOL_else_9_acc_nl;
  wire MROW_MROW_and_1_nl;
  wire[9:0] MROW_mux_3_nl;
  wire operator_11_false_1_operator_11_false_1_and_1_nl;
  wire[8:0] operator_11_false_1_mux_2_nl;

  // Interconnect Declarations for Component Instantiations 
  wire  nl_EdgeDetect_IP_EdgeDetect_MagAng_run_crc32_pix_in_rsci_inst_run_wten;
  assign nl_EdgeDetect_IP_EdgeDetect_MagAng_run_crc32_pix_in_rsci_inst_run_wten =
      ~ run_wen;
  wire or_253_nl;
  wire mux_31_nl;
  wire EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_for_tmp_bit_xor_nl;
  wire or_251_nl;
  wire mux_29_nl;
  wire xor_140_nl;
  wire or_249_nl;
  wire mux_27_nl;
  wire xor_135_nl;
  wire or_247_nl;
  wire mux_25_nl;
  wire xor_128_nl;
  wire or_245_nl;
  wire mux_23_nl;
  wire xor_122_nl;
  wire or_243_nl;
  wire mux_21_nl;
  wire xor_114_nl;
  wire or_241_nl;
  wire mux_19_nl;
  wire xor_105_nl;
  wire or_239_nl;
  wire mux_17_nl;
  wire xor_98_nl;
  wire or_237_nl;
  wire mux_15_nl;
  wire xor_93_nl;
  wire or_235_nl;
  wire mux_13_nl;
  wire xor_86_nl;
  wire or_233_nl;
  wire mux_11_nl;
  wire xor_77_nl;
  wire or_231_nl;
  wire mux_9_nl;
  wire xor_69_nl;
  wire or_229_nl;
  wire mux_7_nl;
  wire xor_57_nl;
  wire or_227_nl;
  wire mux_5_nl;
  wire xor_49_nl;
  wire or_225_nl;
  wire mux_3_nl;
  wire xor_36_nl;
  wire or_223_nl;
  wire mux_1_nl;
  wire xor_18_nl;
  wire or_222_nl;
  wire mux_nl;
  wire xor_9_nl;
  wire or_224_nl;
  wire mux_2_nl;
  wire xor_26_nl;
  wire or_226_nl;
  wire mux_4_nl;
  wire xor_42_nl;
  wire or_228_nl;
  wire mux_6_nl;
  wire xor_52_nl;
  wire or_230_nl;
  wire mux_8_nl;
  wire xor_61_nl;
  wire or_232_nl;
  wire mux_10_nl;
  wire xor_73_nl;
  wire or_234_nl;
  wire mux_12_nl;
  wire xor_83_nl;
  wire or_236_nl;
  wire mux_14_nl;
  wire xor_90_nl;
  wire or_238_nl;
  wire mux_16_nl;
  wire xor_95_nl;
  wire or_240_nl;
  wire mux_18_nl;
  wire xor_102_nl;
  wire or_242_nl;
  wire mux_20_nl;
  wire xor_108_nl;
  wire or_244_nl;
  wire mux_22_nl;
  wire xor_117_nl;
  wire or_246_nl;
  wire mux_24_nl;
  wire xor_125_nl;
  wire or_248_nl;
  wire mux_26_nl;
  wire xor_132_nl;
  wire or_250_nl;
  wire mux_28_nl;
  wire xor_137_nl;
  wire or_252_nl;
  wire mux_30_nl;
  wire xor_143_nl;
  wire [31:0] nl_EdgeDetect_IP_EdgeDetect_MagAng_run_crc32_pix_in_rsci_inst_crc32_pix_in_rsci_dout_run;
  assign EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_for_tmp_bit_xor_nl = xor_cse_1
      ^ xor_cse_40 ^ xor_cse_74 ^ xor_cse_30 ^ xor_cse_131 ^ (crc32_pix_in_rsci_din[2])
      ^ (pix_chan2_rsci_idat_mxwt[2]) ^ (crc32_pix_in_rsci_din[25]) ^ (crc32_pix_in_rsci_din[21])
      ^ (pix_chan2_rsci_idat_mxwt[21]) ^ (pix_chan2_rsci_idat_mxwt[25]);
  assign mux_31_nl = MUX_s_1_2_2(EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_for_tmp_bit_xor_nl,
      (~ (crc32_pix_in_rsci_din[31])), fsm_output[4]);
  assign or_253_nl = mux_31_nl | or_tmp_4;
  assign xor_140_nl = xor_cse_98 ^ (crc32_pix_in_rsci_din[24]) ^ (crc32_pix_in_rsci_din[22])
      ^ (pix_chan2_rsci_idat_mxwt[22]) ^ (pix_chan2_rsci_idat_mxwt[19]) ^ xor_cse_47
      ^ xor_cse_4 ^ xor_cse_101 ^ xor_cse_123;
  assign mux_29_nl = MUX_s_1_2_2(xor_140_nl, (~ (crc32_pix_in_rsci_din[30])), fsm_output[4]);
  assign or_251_nl = mux_29_nl | or_tmp_4;
  assign xor_135_nl = xor_cse_105 ^ (crc32_pix_in_rsci_din[23]) ^ (pix_chan2_rsci_idat_mxwt[23])
      ^ (crc32_pix_in_rsci_din[5]) ^ (pix_chan2_rsci_idat_mxwt[5]) ^ xor_cse_1 ^
      xor_cse_57 ^ xor_cse_42 ^ xor_cse_30;
  assign mux_27_nl = MUX_s_1_2_2(xor_135_nl, (~ (crc32_pix_in_rsci_din[29])), fsm_output[4]);
  assign or_249_nl = mux_27_nl | or_tmp_4;
  assign xor_128_nl = xor_cse_39 ^ (crc32_pix_in_rsci_din[23]) ^ (pix_chan2_rsci_idat_mxwt[23])
      ^ (crc32_pix_in_rsci_din[4]) ^ (pix_chan2_rsci_idat_mxwt[4]) ^ xor_cse_57 ^
      xor_cse_53 ^ xor_cse_90 ^ xor_cse_66;
  assign mux_25_nl = MUX_s_1_2_2(xor_128_nl, (~ (crc32_pix_in_rsci_din[28])), fsm_output[4]);
  assign or_247_nl = mux_25_nl | or_tmp_4;
  assign xor_122_nl = xor_cse_52 ^ (pix_chan2_rsci_idat_mxwt[25]) ^ xor_cse_1 ^ xor_cse_10
      ^ xor_cse_113 ^ (crc32_pix_in_rsci_din[11]) ^ (pix_chan2_rsci_idat_mxwt[11])
      ^ (crc32_pix_in_rsci_din[1]) ^ (pix_chan2_rsci_idat_mxwt[1]) ^ (crc32_pix_in_rsci_din[29])
      ^ (pix_chan2_rsci_idat_mxwt[29]) ^ (crc32_pix_in_rsci_din[6]) ^ (pix_chan2_rsci_idat_mxwt[6]);
  assign mux_23_nl = MUX_s_1_2_2(xor_122_nl, (~ (crc32_pix_in_rsci_din[27])), fsm_output[4]);
  assign or_245_nl = mux_23_nl | or_tmp_4;
  assign xor_114_nl = xor_cse_72 ^ xor_cse_1 ^ xor_cse_7 ^ xor_cse_61 ^ xor_cse_121
      ^ xor_cse_123 ^ xor_cse_110;
  assign mux_21_nl = MUX_s_1_2_2(xor_114_nl, (~ (crc32_pix_in_rsci_din[26])), fsm_output[4]);
  assign or_243_nl = mux_21_nl | or_tmp_4;
  assign xor_105_nl = xor_cse_14 ^ xor_cse_57 ^ xor_cse_47 ^ xor_cse_7 ^ xor_cse_17
      ^ xor_cse_61 ^ xor_cse_116 ^ xor_cse_91;
  assign mux_19_nl = MUX_s_1_2_2(xor_105_nl, (~ (crc32_pix_in_rsci_din[25])), fsm_output[4]);
  assign or_241_nl = mux_19_nl | or_tmp_4;
  assign xor_98_nl = xor_cse_85 ^ xor_cse_70 ^ xor_cse_14 ^ xor_cse_7 ^ (crc32_pix_in_rsci_din[8])
      ^ (pix_chan2_rsci_idat_mxwt[8]);
  assign mux_17_nl = MUX_s_1_2_2(xor_98_nl, (~ (crc32_pix_in_rsci_din[24])), fsm_output[4]);
  assign or_239_nl = mux_17_nl | or_tmp_4;
  assign xor_93_nl = xor_cse_10 ^ xor_cse_71 ^ xor_cse_90 ^ xor_cse_34 ^ xor_cse_103
      ^ (crc32_pix_in_rsci_din[3]) ^ (pix_chan2_rsci_idat_mxwt[3]) ^ (crc32_pix_in_rsci_din[31])
      ^ (crc32_pix_in_rsci_din[0]) ^ (pix_chan2_rsci_idat_mxwt[0]) ^ (pix_chan2_rsci_idat_mxwt[31]);
  assign mux_15_nl = MUX_s_1_2_2(xor_93_nl, (~ (crc32_pix_in_rsci_din[23])), fsm_output[4]);
  assign or_237_nl = mux_15_nl | or_tmp_4;
  assign xor_86_nl = xor_cse_10 ^ xor_cse_92 ^ xor_cse_93 ^ xor_cse_95 ^ xor_cse_103
      ^ (crc32_pix_in_rsci_din[22]) ^ (pix_chan2_rsci_idat_mxwt[22]) ^ (crc32_pix_in_rsci_din[30])
      ^ (pix_chan2_rsci_idat_mxwt[30]);
  assign mux_13_nl = MUX_s_1_2_2(xor_86_nl, (~ (crc32_pix_in_rsci_din[22])), fsm_output[4]);
  assign or_235_nl = mux_13_nl | or_tmp_4;
  assign xor_77_nl = xor_cse_40 ^ xor_cse_53 ^ xor_cse_92 ^ xor_cse_88 ^ xor_cse_95
      ^ xor_cse_96 ^ (crc32_pix_in_rsci_din[31]) ^ (pix_chan2_rsci_idat_mxwt[31]);
  assign mux_11_nl = MUX_s_1_2_2(xor_77_nl, (~ (crc32_pix_in_rsci_din[21])), fsm_output[4]);
  assign or_233_nl = mux_11_nl | or_tmp_4;
  assign xor_69_nl = xor_cse_85 ^ xor_cse_40 ^ xor_cse_24 ^ xor_cse_10 ^ xor_cse_88
      ^ xor_cse_90 ^ xor_cse_91;
  assign mux_9_nl = MUX_s_1_2_2(xor_69_nl, (~ (crc32_pix_in_rsci_din[20])), fsm_output[4]);
  assign or_231_nl = mux_9_nl | or_tmp_4;
  assign xor_57_nl = xor_cse ^ (pix_chan2_rsci_idat_mxwt[13]) ^ (pix_chan2_rsci_idat_mxwt[29])
      ^ xor_cse_40 ^ xor_cse_47 ^ xor_cse_80 ^ (crc32_pix_in_rsci_din[16]) ^ (pix_chan2_rsci_idat_mxwt[16])
      ^ (crc32_pix_in_rsci_din[29]) ^ (crc32_pix_in_rsci_din[13]);
  assign mux_7_nl = MUX_s_1_2_2(xor_57_nl, (~ (crc32_pix_in_rsci_din[19])), fsm_output[4]);
  assign or_229_nl = mux_7_nl | or_tmp_4;
  assign xor_49_nl = xor_cse_70 ^ xor_cse_72 ^ (crc32_pix_in_rsci_din[18]) ^ xor_cse_74
      ^ xor_cse_42 ^ (crc32_pix_in_rsci_din[26]) ^ (pix_chan2_rsci_idat_mxwt[26])
      ^ (crc32_pix_in_rsci_din[0]) ^ (pix_chan2_rsci_idat_mxwt[0]);
  assign mux_5_nl = MUX_s_1_2_2(xor_49_nl, (~ (crc32_pix_in_rsci_din[18])), fsm_output[4]);
  assign or_227_nl = mux_5_nl | or_tmp_4;
  assign xor_36_nl = xor_cse_52 ^ xor_cse_56 ^ xor_cse_61 ^ (crc32_pix_in_rsci_din[14])
      ^ (pix_chan2_rsci_idat_mxwt[14]) ^ (pix_chan2_rsci_idat_mxwt[25]);
  assign mux_3_nl = MUX_s_1_2_2(xor_36_nl, (~ (crc32_pix_in_rsci_din[17])), fsm_output[4]);
  assign or_225_nl = mux_3_nl | or_tmp_4;
  assign xor_18_nl = xor_cse_23 ^ xor_cse_29 ^ xor_cse_34 ^ (crc32_pix_in_rsci_din[13])
      ^ (pix_chan2_rsci_idat_mxwt[13]) ^ (crc32_pix_in_rsci_din[16]) ^ (pix_chan2_rsci_idat_mxwt[16]);
  assign mux_1_nl = MUX_s_1_2_2(xor_18_nl, (~ (crc32_pix_in_rsci_din[16])), fsm_output[4]);
  assign or_223_nl = mux_1_nl | or_tmp_4;
  assign xor_9_nl = xor_cse ^ xor_cse_14 ^ xor_cse_17 ^ (crc32_pix_in_rsci_din[12])
      ^ (pix_chan2_rsci_idat_mxwt[12]) ^ (crc32_pix_in_rsci_din[5]) ^ (pix_chan2_rsci_idat_mxwt[5]);
  assign mux_nl = MUX_s_1_2_2(xor_9_nl, (~ (crc32_pix_in_rsci_din[15])), fsm_output[4]);
  assign or_222_nl = mux_nl | or_tmp_4;
  assign xor_26_nl = xor_cse_39 ^ (crc32_pix_in_rsci_din[18]) ^ (pix_chan2_rsci_idat_mxwt[18])
      ^ xor_cse_47 ^ xor_cse_24 ^ xor_cse_17 ^ (crc32_pix_in_rsci_din[8]) ^ (pix_chan2_rsci_idat_mxwt[8])
      ^ (crc32_pix_in_rsci_din[26]) ^ (pix_chan2_rsci_idat_mxwt[26]);
  assign mux_2_nl = MUX_s_1_2_2(xor_26_nl, (~ (crc32_pix_in_rsci_din[14])), fsm_output[4]);
  assign or_224_nl = mux_2_nl | or_tmp_4;
  assign xor_42_nl = xor_cse_56 ^ xor_cse_64 ^ xor_cse_66 ^ xor_cse_68 ^ (crc32_pix_in_rsci_din[12])
      ^ (pix_chan2_rsci_idat_mxwt[12]) ^ (crc32_pix_in_rsci_din[0]) ^ (pix_chan2_rsci_idat_mxwt[0]);
  assign mux_4_nl = MUX_s_1_2_2(xor_42_nl, (~ (crc32_pix_in_rsci_din[13])), fsm_output[4]);
  assign or_226_nl = mux_4_nl | or_tmp_4;
  assign xor_52_nl = xor_cse_14 ^ xor_cse_24 ^ xor_cse_54 ^ xor_cse_27 ^ xor_cse_76
      ^ (crc32_pix_in_rsci_din[15]) ^ (pix_chan2_rsci_idat_mxwt[15]) ^ (crc32_pix_in_rsci_din[6])
      ^ (pix_chan2_rsci_idat_mxwt[6]);
  assign mux_6_nl = MUX_s_1_2_2(xor_52_nl, (~ (crc32_pix_in_rsci_din[12])), fsm_output[4]);
  assign or_228_nl = mux_6_nl | or_tmp_4;
  assign xor_61_nl = xor_cse_29 ^ xor_cse_74 ^ xor_cse_59 ^ (crc32_pix_in_rsci_din[10])
      ^ (pix_chan2_rsci_idat_mxwt[10]) ^ (crc32_pix_in_rsci_din[23]) ^ (crc32_pix_in_rsci_din[14])
      ^ (pix_chan2_rsci_idat_mxwt[14]) ^ (pix_chan2_rsci_idat_mxwt[23]);
  assign mux_8_nl = MUX_s_1_2_2(xor_61_nl, (~ (crc32_pix_in_rsci_din[11])), fsm_output[4]);
  assign or_230_nl = mux_8_nl | or_tmp_4;
  assign xor_73_nl = xor_cse_40 ^ xor_cse_4 ^ xor_cse_71 ^ xor_cse_92 ^ xor_cse_93
      ^ (crc32_pix_in_rsci_din[4]) ^ (pix_chan2_rsci_idat_mxwt[4]) ^ (crc32_pix_in_rsci_din[5])
      ^ (pix_chan2_rsci_idat_mxwt[5]);
  assign mux_10_nl = MUX_s_1_2_2(xor_73_nl, (~ (crc32_pix_in_rsci_din[10])), fsm_output[4]);
  assign or_232_nl = mux_10_nl | or_tmp_4;
  assign xor_83_nl = xor_cse_98 ^ (pix_chan2_rsci_idat_mxwt[19]) ^ xor_cse_40 ^ xor_cse_59
      ^ xor_cse_42 ^ xor_cse_101 ^ xor_cse_102;
  assign mux_12_nl = MUX_s_1_2_2(xor_83_nl, (~ (crc32_pix_in_rsci_din[9])), fsm_output[4]);
  assign or_234_nl = mux_12_nl | or_tmp_4;
  assign xor_90_nl = xor_cse_105 ^ xor_cse_24 ^ xor_cse_88 ^ xor_cse_102 ^ (crc32_pix_in_rsci_din[16])
      ^ (pix_chan2_rsci_idat_mxwt[16]) ^ (crc32_pix_in_rsci_din[31]) ^ (pix_chan2_rsci_idat_mxwt[31]);
  assign mux_14_nl = MUX_s_1_2_2(xor_90_nl, (~ (crc32_pix_in_rsci_din[8])), fsm_output[4]);
  assign or_236_nl = mux_14_nl | or_tmp_4;
  assign xor_95_nl = xor_cse_57 ^ xor_cse_24 ^ xor_cse_42 ^ xor_cse_30 ^ xor_cse_64
      ^ xor_cse_90 ^ xor_cse_110;
  assign mux_16_nl = MUX_s_1_2_2(xor_95_nl, (~ (crc32_pix_in_rsci_din[7])), fsm_output[4]);
  assign or_238_nl = mux_16_nl | or_tmp_4;
  assign xor_102_nl = xor_cse_14 ^ xor_cse_53 ^ xor_cse_54 ^ xor_cse_64 ^ xor_cse_113
      ^ (crc32_pix_in_rsci_din[9]) ^ (pix_chan2_rsci_idat_mxwt[9]) ^ (crc32_pix_in_rsci_din[14])
      ^ (pix_chan2_rsci_idat_mxwt[14]) ^ (crc32_pix_in_rsci_din[29]) ^ (pix_chan2_rsci_idat_mxwt[29]);
  assign mux_18_nl = MUX_s_1_2_2(xor_102_nl, (~ (crc32_pix_in_rsci_din[6])), fsm_output[4]);
  assign or_240_nl = mux_18_nl | or_tmp_4;
  assign xor_108_nl = xor_cse_61 ^ xor_cse_118 ^ xor_cse_1 ^ xor_cse_53 ^ xor_cse_71
      ^ xor_cse_113;
  assign mux_20_nl = MUX_s_1_2_2(xor_108_nl, (~ (crc32_pix_in_rsci_din[5])), fsm_output[4]);
  assign or_242_nl = mux_20_nl | or_tmp_4;
  assign xor_117_nl = xor_cse_23 ^ xor_cse_59 ^ xor_cse_102 ^ xor_cse_116 ^ (crc32_pix_in_rsci_din[27])
      ^ (pix_chan2_rsci_idat_mxwt[27]) ^ (crc32_pix_in_rsci_din[30]) ^ (pix_chan2_rsci_idat_mxwt[30]);
  assign mux_22_nl = MUX_s_1_2_2(xor_117_nl, (~ (crc32_pix_in_rsci_din[4])), fsm_output[4]);
  assign or_244_nl = mux_22_nl | or_tmp_4;
  assign xor_125_nl = xor_cse_74 ^ xor_cse_24 ^ xor_cse_7 ^ xor_cse_17 ^ xor_cse_68
      ^ xor_cse_131 ^ (crc32_pix_in_rsci_din[29]) ^ (crc32_pix_in_rsci_din[23]) ^
      (pix_chan2_rsci_idat_mxwt[23]) ^ (pix_chan2_rsci_idat_mxwt[29]);
  assign mux_24_nl = MUX_s_1_2_2(xor_125_nl, (~ (crc32_pix_in_rsci_din[3])), fsm_output[4]);
  assign or_246_nl = mux_24_nl | or_tmp_4;
  assign xor_132_nl = xor_cse_118 ^ (pix_chan2_rsci_idat_mxwt[4]) ^ (pix_chan2_rsci_idat_mxwt[18])
      ^ xor_cse_40 ^ xor_cse_121 ^ xor_cse_76 ^ (pix_chan2_rsci_idat_mxwt[24]) ^
      (crc32_pix_in_rsci_din[10]) ^ (pix_chan2_rsci_idat_mxwt[10]) ^ (crc32_pix_in_rsci_din[4]);
  assign mux_26_nl = MUX_s_1_2_2(xor_132_nl, (~ (crc32_pix_in_rsci_din[2])), fsm_output[4]);
  assign or_248_nl = mux_26_nl | or_tmp_4;
  assign xor_137_nl = xor_cse_14 ^ xor_cse_59 ^ xor_cse_71 ^ xor_cse_27 ^ xor_cse_80
      ^ xor_cse_96 ^ (crc32_pix_in_rsci_din[27]) ^ (pix_chan2_rsci_idat_mxwt[27]);
  assign mux_28_nl = MUX_s_1_2_2(xor_137_nl, (~ (crc32_pix_in_rsci_din[1])), fsm_output[4]);
  assign or_250_nl = mux_28_nl | or_tmp_4;
  assign xor_143_nl = xor_cse_40 ^ xor_cse_14 ^ xor_cse_74 ^ xor_cse_54 ^ xor_cse_80
      ^ (crc32_pix_in_rsci_din[7]) ^ (pix_chan2_rsci_idat_mxwt[7]) ^ (crc32_pix_in_rsci_din[8])
      ^ (pix_chan2_rsci_idat_mxwt[8]) ^ (crc32_pix_in_rsci_din[26]) ^ (pix_chan2_rsci_idat_mxwt[26]);
  assign mux_30_nl = MUX_s_1_2_2(xor_143_nl, (~ (crc32_pix_in_rsci_din[0])), fsm_output[4]);
  assign or_252_nl = mux_30_nl | or_tmp_4;
  assign nl_EdgeDetect_IP_EdgeDetect_MagAng_run_crc32_pix_in_rsci_inst_crc32_pix_in_rsci_dout_run
      = {or_253_nl , or_251_nl , or_249_nl , or_247_nl , or_245_nl , or_243_nl ,
      or_241_nl , or_239_nl , or_237_nl , or_235_nl , or_233_nl , or_231_nl , or_229_nl
      , or_227_nl , or_225_nl , or_223_nl , or_222_nl , or_224_nl , or_226_nl , or_228_nl
      , or_230_nl , or_232_nl , or_234_nl , or_236_nl , or_238_nl , or_240_nl , or_242_nl
      , or_244_nl , or_246_nl , or_248_nl , or_250_nl , or_252_nl};
  wire  nl_EdgeDetect_IP_EdgeDetect_MagAng_run_crc32_dat_out_rsci_inst_run_wten;
  assign nl_EdgeDetect_IP_EdgeDetect_MagAng_run_crc32_dat_out_rsci_inst_run_wten
      = ~ run_wen;
  wire or_285_nl;
  wire mux_63_nl;
  wire EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_for_tmp_bit_xor_nl;
  wire or_283_nl;
  wire mux_61_nl;
  wire xor_286_nl;
  wire or_281_nl;
  wire mux_59_nl;
  wire xor_281_nl;
  wire or_279_nl;
  wire mux_57_nl;
  wire xor_274_nl;
  wire or_277_nl;
  wire mux_55_nl;
  wire xor_268_nl;
  wire or_275_nl;
  wire mux_53_nl;
  wire xor_260_nl;
  wire or_273_nl;
  wire mux_51_nl;
  wire xor_251_nl;
  wire or_271_nl;
  wire mux_49_nl;
  wire xor_244_nl;
  wire or_269_nl;
  wire mux_47_nl;
  wire xor_239_nl;
  wire or_267_nl;
  wire mux_45_nl;
  wire xor_232_nl;
  wire or_265_nl;
  wire mux_43_nl;
  wire xor_223_nl;
  wire or_263_nl;
  wire mux_41_nl;
  wire xor_215_nl;
  wire or_261_nl;
  wire mux_39_nl;
  wire xor_203_nl;
  wire or_259_nl;
  wire mux_37_nl;
  wire xor_195_nl;
  wire or_257_nl;
  wire mux_35_nl;
  wire xor_182_nl;
  wire or_255_nl;
  wire mux_33_nl;
  wire xor_164_nl;
  wire or_254_nl;
  wire mux_32_nl;
  wire xor_155_nl;
  wire or_256_nl;
  wire mux_34_nl;
  wire xor_172_nl;
  wire or_258_nl;
  wire mux_36_nl;
  wire xor_188_nl;
  wire or_260_nl;
  wire mux_38_nl;
  wire xor_198_nl;
  wire or_262_nl;
  wire mux_40_nl;
  wire xor_207_nl;
  wire or_264_nl;
  wire mux_42_nl;
  wire xor_219_nl;
  wire or_266_nl;
  wire mux_44_nl;
  wire xor_229_nl;
  wire or_268_nl;
  wire mux_46_nl;
  wire xor_236_nl;
  wire or_270_nl;
  wire mux_48_nl;
  wire xor_241_nl;
  wire or_272_nl;
  wire mux_50_nl;
  wire xor_248_nl;
  wire or_274_nl;
  wire mux_52_nl;
  wire xor_254_nl;
  wire or_276_nl;
  wire mux_54_nl;
  wire xor_263_nl;
  wire or_278_nl;
  wire mux_56_nl;
  wire xor_271_nl;
  wire or_280_nl;
  wire mux_58_nl;
  wire xor_278_nl;
  wire or_282_nl;
  wire mux_60_nl;
  wire xor_283_nl;
  wire or_284_nl;
  wire mux_62_nl;
  wire xor_289_nl;
  wire [31:0] nl_EdgeDetect_IP_EdgeDetect_MagAng_run_crc32_dat_out_rsci_inst_crc32_dat_out_rsci_dout_run;
  assign EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_for_tmp_bit_xor_nl = xor_cse_148
      ^ xor_cse_187 ^ xor_cse_221 ^ xor_cse_177 ^ xor_cse_278 ^ (crc32_dat_out_rsci_din[2])
      ^ (streamin_pix_7_0_lpi_3_dfm_mx0[2]) ^ (crc32_dat_out_rsci_din[25]) ^ (crc32_dat_out_rsci_din[21])
      ^ (streamin_pix_23_16_lpi_3_dfm_mx0[5]) ^ (streamin_pix_31_24_lpi_3_dfm_mx0[1]);
  assign mux_63_nl = MUX_s_1_2_2(EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_for_tmp_bit_xor_nl,
      (~ (crc32_dat_out_rsci_din[31])), fsm_output[4]);
  assign or_285_nl = mux_63_nl | or_tmp_4;
  assign xor_286_nl = xor_cse_245 ^ (crc32_dat_out_rsci_din[24]) ^ (crc32_dat_out_rsci_din[22])
      ^ (streamin_pix_23_16_lpi_3_dfm_mx0[6]) ^ (streamin_pix_23_16_lpi_3_dfm_mx0[3])
      ^ xor_cse_194 ^ xor_cse_151 ^ xor_cse_248 ^ xor_cse_270;
  assign mux_61_nl = MUX_s_1_2_2(xor_286_nl, (~ (crc32_dat_out_rsci_din[30])), fsm_output[4]);
  assign or_283_nl = mux_61_nl | or_tmp_4;
  assign xor_281_nl = xor_cse_252 ^ (crc32_dat_out_rsci_din[23]) ^ (streamin_pix_23_16_lpi_3_dfm_mx0[7])
      ^ (crc32_dat_out_rsci_din[5]) ^ (streamin_pix_7_0_lpi_3_dfm_mx0[5]) ^ xor_cse_148
      ^ xor_cse_204 ^ xor_cse_189 ^ xor_cse_177;
  assign mux_59_nl = MUX_s_1_2_2(xor_281_nl, (~ (crc32_dat_out_rsci_din[29])), fsm_output[4]);
  assign or_281_nl = mux_59_nl | or_tmp_4;
  assign xor_274_nl = xor_cse_186 ^ (crc32_dat_out_rsci_din[23]) ^ (streamin_pix_23_16_lpi_3_dfm_mx0[7])
      ^ (crc32_dat_out_rsci_din[4]) ^ (streamin_pix_7_0_lpi_3_dfm_mx0[4]) ^ xor_cse_204
      ^ xor_cse_200 ^ xor_cse_237 ^ xor_cse_213;
  assign mux_57_nl = MUX_s_1_2_2(xor_274_nl, (~ (crc32_dat_out_rsci_din[28])), fsm_output[4]);
  assign or_279_nl = mux_57_nl | or_tmp_4;
  assign xor_268_nl = xor_cse_199 ^ (streamin_pix_31_24_lpi_3_dfm_mx0[1]) ^ xor_cse_148
      ^ xor_cse_157 ^ xor_cse_260 ^ (crc32_dat_out_rsci_din[11]) ^ (streamin_pix_15_8_lpi_3_dfm_mx0[3])
      ^ (crc32_dat_out_rsci_din[1]) ^ (streamin_pix_7_0_lpi_3_dfm_mx0[1]) ^ (crc32_dat_out_rsci_din[29])
      ^ (streamin_pix_31_24_lpi_3_dfm_mx0[5]) ^ (crc32_dat_out_rsci_din[6]) ^ (streamin_pix_7_0_lpi_3_dfm_mx0[6]);
  assign mux_55_nl = MUX_s_1_2_2(xor_268_nl, (~ (crc32_dat_out_rsci_din[27])), fsm_output[4]);
  assign or_277_nl = mux_55_nl | or_tmp_4;
  assign xor_260_nl = xor_cse_219 ^ xor_cse_148 ^ xor_cse_154 ^ xor_cse_208 ^ xor_cse_268
      ^ xor_cse_270 ^ xor_cse_257;
  assign mux_53_nl = MUX_s_1_2_2(xor_260_nl, (~ (crc32_dat_out_rsci_din[26])), fsm_output[4]);
  assign or_275_nl = mux_53_nl | or_tmp_4;
  assign xor_251_nl = xor_cse_161 ^ xor_cse_204 ^ xor_cse_194 ^ xor_cse_154 ^ xor_cse_164
      ^ xor_cse_208 ^ xor_cse_263 ^ xor_cse_238;
  assign mux_51_nl = MUX_s_1_2_2(xor_251_nl, (~ (crc32_dat_out_rsci_din[25])), fsm_output[4]);
  assign or_273_nl = mux_51_nl | or_tmp_4;
  assign xor_244_nl = xor_cse_232 ^ xor_cse_217 ^ xor_cse_161 ^ xor_cse_154 ^ (crc32_dat_out_rsci_din[8])
      ^ (streamin_pix_15_8_lpi_3_dfm_mx0[0]);
  assign mux_49_nl = MUX_s_1_2_2(xor_244_nl, (~ (crc32_dat_out_rsci_din[24])), fsm_output[4]);
  assign or_271_nl = mux_49_nl | or_tmp_4;
  assign xor_239_nl = xor_cse_157 ^ xor_cse_218 ^ xor_cse_237 ^ xor_cse_181 ^ xor_cse_250
      ^ (crc32_dat_out_rsci_din[3]) ^ (streamin_pix_7_0_lpi_3_dfm_mx0[3]) ^ (crc32_dat_out_rsci_din[31])
      ^ (crc32_dat_out_rsci_din[0]) ^ (streamin_pix_7_0_lpi_3_dfm_mx0[0]) ^ (streamin_pix_31_24_lpi_3_dfm_mx0[7]);
  assign mux_47_nl = MUX_s_1_2_2(xor_239_nl, (~ (crc32_dat_out_rsci_din[23])), fsm_output[4]);
  assign or_269_nl = mux_47_nl | or_tmp_4;
  assign xor_232_nl = xor_cse_157 ^ xor_cse_239 ^ xor_cse_240 ^ xor_cse_242 ^ xor_cse_250
      ^ (crc32_dat_out_rsci_din[22]) ^ (streamin_pix_23_16_lpi_3_dfm_mx0[6]) ^ (crc32_dat_out_rsci_din[30])
      ^ (streamin_pix_31_24_lpi_3_dfm_mx0[6]);
  assign mux_45_nl = MUX_s_1_2_2(xor_232_nl, (~ (crc32_dat_out_rsci_din[22])), fsm_output[4]);
  assign or_267_nl = mux_45_nl | or_tmp_4;
  assign xor_223_nl = xor_cse_187 ^ xor_cse_200 ^ xor_cse_239 ^ xor_cse_235 ^ xor_cse_242
      ^ xor_cse_243 ^ (crc32_dat_out_rsci_din[31]) ^ (streamin_pix_31_24_lpi_3_dfm_mx0[7]);
  assign mux_43_nl = MUX_s_1_2_2(xor_223_nl, (~ (crc32_dat_out_rsci_din[21])), fsm_output[4]);
  assign or_265_nl = mux_43_nl | or_tmp_4;
  assign xor_215_nl = xor_cse_232 ^ xor_cse_187 ^ xor_cse_171 ^ xor_cse_157 ^ xor_cse_235
      ^ xor_cse_237 ^ xor_cse_238;
  assign mux_41_nl = MUX_s_1_2_2(xor_215_nl, (~ (crc32_dat_out_rsci_din[20])), fsm_output[4]);
  assign or_263_nl = mux_41_nl | or_tmp_4;
  assign xor_203_nl = xor_cse_147 ^ (streamin_pix_15_8_lpi_3_dfm_mx0[5]) ^ (streamin_pix_31_24_lpi_3_dfm_mx0[5])
      ^ xor_cse_187 ^ xor_cse_194 ^ xor_cse_227 ^ (crc32_dat_out_rsci_din[16]) ^
      (streamin_pix_23_16_lpi_3_dfm_mx0[0]) ^ (crc32_dat_out_rsci_din[29]) ^ (crc32_dat_out_rsci_din[13]);
  assign mux_39_nl = MUX_s_1_2_2(xor_203_nl, (~ (crc32_dat_out_rsci_din[19])), fsm_output[4]);
  assign or_261_nl = mux_39_nl | or_tmp_4;
  assign xor_195_nl = xor_cse_217 ^ xor_cse_219 ^ (crc32_dat_out_rsci_din[18]) ^
      xor_cse_221 ^ xor_cse_189 ^ (crc32_dat_out_rsci_din[26]) ^ (streamin_pix_31_24_lpi_3_dfm_mx0[2])
      ^ (crc32_dat_out_rsci_din[0]) ^ (streamin_pix_7_0_lpi_3_dfm_mx0[0]);
  assign mux_37_nl = MUX_s_1_2_2(xor_195_nl, (~ (crc32_dat_out_rsci_din[18])), fsm_output[4]);
  assign or_259_nl = mux_37_nl | or_tmp_4;
  assign xor_182_nl = xor_cse_199 ^ xor_cse_203 ^ xor_cse_208 ^ (crc32_dat_out_rsci_din[14])
      ^ (streamin_pix_15_8_lpi_3_dfm_mx0[6]) ^ (streamin_pix_31_24_lpi_3_dfm_mx0[1]);
  assign mux_35_nl = MUX_s_1_2_2(xor_182_nl, (~ (crc32_dat_out_rsci_din[17])), fsm_output[4]);
  assign or_257_nl = mux_35_nl | or_tmp_4;
  assign xor_164_nl = xor_cse_170 ^ xor_cse_176 ^ xor_cse_181 ^ (crc32_dat_out_rsci_din[13])
      ^ (streamin_pix_15_8_lpi_3_dfm_mx0[5]) ^ (crc32_dat_out_rsci_din[16]) ^ (streamin_pix_23_16_lpi_3_dfm_mx0[0]);
  assign mux_33_nl = MUX_s_1_2_2(xor_164_nl, (~ (crc32_dat_out_rsci_din[16])), fsm_output[4]);
  assign or_255_nl = mux_33_nl | or_tmp_4;
  assign xor_155_nl = xor_cse_147 ^ xor_cse_161 ^ xor_cse_164 ^ (crc32_dat_out_rsci_din[12])
      ^ (streamin_pix_15_8_lpi_3_dfm_mx0[4]) ^ (crc32_dat_out_rsci_din[5]) ^ (streamin_pix_7_0_lpi_3_dfm_mx0[5]);
  assign mux_32_nl = MUX_s_1_2_2(xor_155_nl, (~ (crc32_dat_out_rsci_din[15])), fsm_output[4]);
  assign or_254_nl = mux_32_nl | or_tmp_4;
  assign xor_172_nl = xor_cse_186 ^ (crc32_dat_out_rsci_din[18]) ^ (streamin_pix_23_16_lpi_3_dfm_mx0[2])
      ^ xor_cse_194 ^ xor_cse_171 ^ xor_cse_164 ^ (crc32_dat_out_rsci_din[8]) ^ (streamin_pix_15_8_lpi_3_dfm_mx0[0])
      ^ (crc32_dat_out_rsci_din[26]) ^ (streamin_pix_31_24_lpi_3_dfm_mx0[2]);
  assign mux_34_nl = MUX_s_1_2_2(xor_172_nl, (~ (crc32_dat_out_rsci_din[14])), fsm_output[4]);
  assign or_256_nl = mux_34_nl | or_tmp_4;
  assign xor_188_nl = xor_cse_203 ^ xor_cse_211 ^ xor_cse_213 ^ xor_cse_215 ^ (crc32_dat_out_rsci_din[12])
      ^ (streamin_pix_15_8_lpi_3_dfm_mx0[4]) ^ (crc32_dat_out_rsci_din[0]) ^ (streamin_pix_7_0_lpi_3_dfm_mx0[0]);
  assign mux_36_nl = MUX_s_1_2_2(xor_188_nl, (~ (crc32_dat_out_rsci_din[13])), fsm_output[4]);
  assign or_258_nl = mux_36_nl | or_tmp_4;
  assign xor_198_nl = xor_cse_161 ^ xor_cse_171 ^ xor_cse_201 ^ xor_cse_174 ^ xor_cse_223
      ^ (crc32_dat_out_rsci_din[15]) ^ (streamin_pix_15_8_lpi_3_dfm_mx0[7]) ^ (crc32_dat_out_rsci_din[6])
      ^ (streamin_pix_7_0_lpi_3_dfm_mx0[6]);
  assign mux_38_nl = MUX_s_1_2_2(xor_198_nl, (~ (crc32_dat_out_rsci_din[12])), fsm_output[4]);
  assign or_260_nl = mux_38_nl | or_tmp_4;
  assign xor_207_nl = xor_cse_176 ^ xor_cse_221 ^ xor_cse_206 ^ (crc32_dat_out_rsci_din[10])
      ^ (streamin_pix_15_8_lpi_3_dfm_mx0[2]) ^ (crc32_dat_out_rsci_din[23]) ^ (crc32_dat_out_rsci_din[14])
      ^ (streamin_pix_15_8_lpi_3_dfm_mx0[6]) ^ (streamin_pix_23_16_lpi_3_dfm_mx0[7]);
  assign mux_40_nl = MUX_s_1_2_2(xor_207_nl, (~ (crc32_dat_out_rsci_din[11])), fsm_output[4]);
  assign or_262_nl = mux_40_nl | or_tmp_4;
  assign xor_219_nl = xor_cse_187 ^ xor_cse_151 ^ xor_cse_218 ^ xor_cse_239 ^ xor_cse_240
      ^ (crc32_dat_out_rsci_din[4]) ^ (streamin_pix_7_0_lpi_3_dfm_mx0[4]) ^ (crc32_dat_out_rsci_din[5])
      ^ (streamin_pix_7_0_lpi_3_dfm_mx0[5]);
  assign mux_42_nl = MUX_s_1_2_2(xor_219_nl, (~ (crc32_dat_out_rsci_din[10])), fsm_output[4]);
  assign or_264_nl = mux_42_nl | or_tmp_4;
  assign xor_229_nl = xor_cse_245 ^ (streamin_pix_23_16_lpi_3_dfm_mx0[3]) ^ xor_cse_187
      ^ xor_cse_206 ^ xor_cse_189 ^ xor_cse_248 ^ xor_cse_249;
  assign mux_44_nl = MUX_s_1_2_2(xor_229_nl, (~ (crc32_dat_out_rsci_din[9])), fsm_output[4]);
  assign or_266_nl = mux_44_nl | or_tmp_4;
  assign xor_236_nl = xor_cse_252 ^ xor_cse_171 ^ xor_cse_235 ^ xor_cse_249 ^ (crc32_dat_out_rsci_din[16])
      ^ (streamin_pix_23_16_lpi_3_dfm_mx0[0]) ^ (crc32_dat_out_rsci_din[31]) ^ (streamin_pix_31_24_lpi_3_dfm_mx0[7]);
  assign mux_46_nl = MUX_s_1_2_2(xor_236_nl, (~ (crc32_dat_out_rsci_din[8])), fsm_output[4]);
  assign or_268_nl = mux_46_nl | or_tmp_4;
  assign xor_241_nl = xor_cse_204 ^ xor_cse_171 ^ xor_cse_189 ^ xor_cse_177 ^ xor_cse_211
      ^ xor_cse_237 ^ xor_cse_257;
  assign mux_48_nl = MUX_s_1_2_2(xor_241_nl, (~ (crc32_dat_out_rsci_din[7])), fsm_output[4]);
  assign or_270_nl = mux_48_nl | or_tmp_4;
  assign xor_248_nl = xor_cse_161 ^ xor_cse_200 ^ xor_cse_201 ^ xor_cse_211 ^ xor_cse_260
      ^ (crc32_dat_out_rsci_din[9]) ^ (streamin_pix_15_8_lpi_3_dfm_mx0[1]) ^ (crc32_dat_out_rsci_din[14])
      ^ (streamin_pix_15_8_lpi_3_dfm_mx0[6]) ^ (crc32_dat_out_rsci_din[29]) ^ (streamin_pix_31_24_lpi_3_dfm_mx0[5]);
  assign mux_50_nl = MUX_s_1_2_2(xor_248_nl, (~ (crc32_dat_out_rsci_din[6])), fsm_output[4]);
  assign or_272_nl = mux_50_nl | or_tmp_4;
  assign xor_254_nl = xor_cse_208 ^ xor_cse_265 ^ xor_cse_148 ^ xor_cse_200 ^ xor_cse_218
      ^ xor_cse_260;
  assign mux_52_nl = MUX_s_1_2_2(xor_254_nl, (~ (crc32_dat_out_rsci_din[5])), fsm_output[4]);
  assign or_274_nl = mux_52_nl | or_tmp_4;
  assign xor_263_nl = xor_cse_170 ^ xor_cse_206 ^ xor_cse_249 ^ xor_cse_263 ^ (crc32_dat_out_rsci_din[27])
      ^ (streamin_pix_31_24_lpi_3_dfm_mx0[3]) ^ (crc32_dat_out_rsci_din[30]) ^ (streamin_pix_31_24_lpi_3_dfm_mx0[6]);
  assign mux_54_nl = MUX_s_1_2_2(xor_263_nl, (~ (crc32_dat_out_rsci_din[4])), fsm_output[4]);
  assign or_276_nl = mux_54_nl | or_tmp_4;
  assign xor_271_nl = xor_cse_221 ^ xor_cse_171 ^ xor_cse_154 ^ xor_cse_164 ^ xor_cse_215
      ^ xor_cse_278 ^ (crc32_dat_out_rsci_din[29]) ^ (crc32_dat_out_rsci_din[23])
      ^ (streamin_pix_23_16_lpi_3_dfm_mx0[7]) ^ (streamin_pix_31_24_lpi_3_dfm_mx0[5]);
  assign mux_56_nl = MUX_s_1_2_2(xor_271_nl, (~ (crc32_dat_out_rsci_din[3])), fsm_output[4]);
  assign or_278_nl = mux_56_nl | or_tmp_4;
  assign xor_278_nl = xor_cse_265 ^ (streamin_pix_7_0_lpi_3_dfm_mx0[4]) ^ (streamin_pix_23_16_lpi_3_dfm_mx0[2])
      ^ xor_cse_187 ^ xor_cse_268 ^ xor_cse_223 ^ (streamin_pix_31_24_lpi_3_dfm_mx0[0])
      ^ (crc32_dat_out_rsci_din[10]) ^ (streamin_pix_15_8_lpi_3_dfm_mx0[2]) ^ (crc32_dat_out_rsci_din[4]);
  assign mux_58_nl = MUX_s_1_2_2(xor_278_nl, (~ (crc32_dat_out_rsci_din[2])), fsm_output[4]);
  assign or_280_nl = mux_58_nl | or_tmp_4;
  assign xor_283_nl = xor_cse_161 ^ xor_cse_206 ^ xor_cse_218 ^ xor_cse_174 ^ xor_cse_227
      ^ xor_cse_243 ^ (crc32_dat_out_rsci_din[27]) ^ (streamin_pix_31_24_lpi_3_dfm_mx0[3]);
  assign mux_60_nl = MUX_s_1_2_2(xor_283_nl, (~ (crc32_dat_out_rsci_din[1])), fsm_output[4]);
  assign or_282_nl = mux_60_nl | or_tmp_4;
  assign xor_289_nl = xor_cse_187 ^ xor_cse_161 ^ xor_cse_221 ^ xor_cse_201 ^ xor_cse_227
      ^ (crc32_dat_out_rsci_din[7]) ^ (streamin_pix_7_0_lpi_3_dfm_mx0[7]) ^ (crc32_dat_out_rsci_din[8])
      ^ (streamin_pix_15_8_lpi_3_dfm_mx0[0]) ^ (crc32_dat_out_rsci_din[26]) ^ (streamin_pix_31_24_lpi_3_dfm_mx0[2]);
  assign mux_62_nl = MUX_s_1_2_2(xor_289_nl, (~ (crc32_dat_out_rsci_din[0])), fsm_output[4]);
  assign or_284_nl = mux_62_nl | or_tmp_4;
  assign nl_EdgeDetect_IP_EdgeDetect_MagAng_run_crc32_dat_out_rsci_inst_crc32_dat_out_rsci_dout_run
      = {or_285_nl , or_283_nl , or_281_nl , or_279_nl , or_277_nl , or_275_nl ,
      or_273_nl , or_271_nl , or_269_nl , or_267_nl , or_265_nl , or_263_nl , or_261_nl
      , or_259_nl , or_257_nl , or_255_nl , or_254_nl , or_256_nl , or_258_nl , or_260_nl
      , or_262_nl , or_264_nl , or_266_nl , or_268_nl , or_270_nl , or_272_nl , or_274_nl
      , or_276_nl , or_278_nl , or_280_nl , or_282_nl , or_284_nl};
  wire [33:0] nl_EdgeDetect_IP_EdgeDetect_MagAng_run_dat_out_rsci_inst_dat_out_rsci_idat;
  assign nl_EdgeDetect_IP_EdgeDetect_MagAng_run_dat_out_rsci_inst_dat_out_rsci_idat
      = {dat_out_rsci_idat_33 , dat_out_rsci_idat_32 , dat_out_rsci_idat_31_24 ,
      dat_out_rsci_idat_23_16 , dat_out_rsci_idat_15_8 , dat_out_rsci_idat_7_0};
  wire  nl_EdgeDetect_IP_EdgeDetect_MagAng_run_run_fsm_inst_MCOL_C_0_tr0;
  assign nl_EdgeDetect_IP_EdgeDetect_MagAng_run_run_fsm_inst_MCOL_C_0_tr0 = ~ MCOL_stage_0;
  EdgeDetect_IP_EdgeDetect_MagAng_run_dx_chan_rsci EdgeDetect_IP_EdgeDetect_MagAng_run_dx_chan_rsci_inst
      (
      .clk(clk),
      .rst(rst),
      .arst_n(arst_n),
      .dx_chan_rsc_dat(dx_chan_rsc_dat),
      .dx_chan_rsc_vld(dx_chan_rsc_vld),
      .dx_chan_rsc_rdy(dx_chan_rsc_rdy),
      .run_wen(run_wen),
      .dx_chan_rsci_oswt(reg_dx_chan_rsci_oswt_cse),
      .dx_chan_rsci_wen_comp(dx_chan_rsci_wen_comp),
      .dx_chan_rsci_idat_mxwt(dx_chan_rsci_idat_mxwt)
    );
  EdgeDetect_IP_EdgeDetect_MagAng_run_dy_chan_rsci EdgeDetect_IP_EdgeDetect_MagAng_run_dy_chan_rsci_inst
      (
      .clk(clk),
      .rst(rst),
      .arst_n(arst_n),
      .dy_chan_rsc_dat(dy_chan_rsc_dat),
      .dy_chan_rsc_vld(dy_chan_rsc_vld),
      .dy_chan_rsc_rdy(dy_chan_rsc_rdy),
      .run_wen(run_wen),
      .dy_chan_rsci_oswt(reg_dx_chan_rsci_oswt_cse),
      .dy_chan_rsci_wen_comp(dy_chan_rsci_wen_comp),
      .dy_chan_rsci_idat_mxwt(dy_chan_rsci_idat_mxwt)
    );
  EdgeDetect_IP_EdgeDetect_MagAng_run_pix_chan2_rsci EdgeDetect_IP_EdgeDetect_MagAng_run_pix_chan2_rsci_inst
      (
      .clk(clk),
      .rst(rst),
      .arst_n(arst_n),
      .pix_chan2_rsc_dat(pix_chan2_rsc_dat),
      .pix_chan2_rsc_vld(pix_chan2_rsc_vld),
      .pix_chan2_rsc_rdy(pix_chan2_rsc_rdy),
      .run_wen(run_wen),
      .pix_chan2_rsci_oswt(reg_dx_chan_rsci_oswt_cse),
      .pix_chan2_rsci_wen_comp(pix_chan2_rsci_wen_comp),
      .pix_chan2_rsci_idat_mxwt(pix_chan2_rsci_idat_mxwt)
    );
  EdgeDetect_IP_EdgeDetect_MagAng_run_crc32_pix_in_rsci EdgeDetect_IP_EdgeDetect_MagAng_run_crc32_pix_in_rsci_inst
      (
      .crc32_pix_in_rsc_zout(crc32_pix_in_rsc_zout),
      .crc32_pix_in_rsc_lzout(crc32_pix_in_rsc_lzout),
      .crc32_pix_in_rsc_zin(crc32_pix_in_rsc_zin),
      .run_wten(nl_EdgeDetect_IP_EdgeDetect_MagAng_run_crc32_pix_in_rsci_inst_run_wten),
      .crc32_pix_in_rsci_iswt0(or_8_rmff),
      .crc32_pix_in_rsci_din(crc32_pix_in_rsci_din),
      .crc32_pix_in_rsci_dout_run(nl_EdgeDetect_IP_EdgeDetect_MagAng_run_crc32_pix_in_rsci_inst_crc32_pix_in_rsci_dout_run[31:0])
    );
  EdgeDetect_IP_EdgeDetect_MagAng_run_crc32_dat_out_rsci EdgeDetect_IP_EdgeDetect_MagAng_run_crc32_dat_out_rsci_inst
      (
      .crc32_dat_out_rsc_zout(crc32_dat_out_rsc_zout),
      .crc32_dat_out_rsc_lzout(crc32_dat_out_rsc_lzout),
      .crc32_dat_out_rsc_zin(crc32_dat_out_rsc_zin),
      .run_wten(nl_EdgeDetect_IP_EdgeDetect_MagAng_run_crc32_dat_out_rsci_inst_run_wten),
      .crc32_dat_out_rsci_iswt0(or_8_rmff),
      .crc32_dat_out_rsci_din(crc32_dat_out_rsci_din),
      .crc32_dat_out_rsci_dout_run(nl_EdgeDetect_IP_EdgeDetect_MagAng_run_crc32_dat_out_rsci_inst_crc32_dat_out_rsci_dout_run[31:0])
    );
  EdgeDetect_IP_EdgeDetect_MagAng_run_dat_out_rsci EdgeDetect_IP_EdgeDetect_MagAng_run_dat_out_rsci_inst
      (
      .clk(clk),
      .rst(rst),
      .arst_n(arst_n),
      .dat_out_rsc_dat(dat_out_rsc_dat),
      .dat_out_rsc_vld(dat_out_rsc_vld),
      .dat_out_rsc_rdy(dat_out_rsc_rdy),
      .run_wen(run_wen),
      .dat_out_rsci_oswt(reg_dat_out_rsci_oswt_cse),
      .dat_out_rsci_wen_comp(dat_out_rsci_wen_comp),
      .dat_out_rsci_idat(nl_EdgeDetect_IP_EdgeDetect_MagAng_run_dat_out_rsci_inst_dat_out_rsci_idat[33:0])
    );
  EdgeDetect_IP_EdgeDetect_MagAng_run_crc32_pix_in_triosy_obj EdgeDetect_IP_EdgeDetect_MagAng_run_crc32_pix_in_triosy_obj_inst
      (
      .crc32_pix_in_triosy_lz(crc32_pix_in_triosy_lz),
      .run_wten(run_wten),
      .crc32_pix_in_triosy_obj_iswt0(reg_crc32_pix_in_triosy_obj_iswt0_cse)
    );
  EdgeDetect_IP_EdgeDetect_MagAng_run_crc32_dat_out_triosy_obj EdgeDetect_IP_EdgeDetect_MagAng_run_crc32_dat_out_triosy_obj_inst
      (
      .crc32_dat_out_triosy_lz(crc32_dat_out_triosy_lz),
      .run_wten(run_wten),
      .crc32_dat_out_triosy_obj_iswt0(reg_crc32_pix_in_triosy_obj_iswt0_cse)
    );
  EdgeDetect_IP_EdgeDetect_MagAng_run_staller EdgeDetect_IP_EdgeDetect_MagAng_run_staller_inst
      (
      .clk(clk),
      .rst(rst),
      .arst_n(arst_n),
      .run_wen(run_wen),
      .run_wten(run_wten),
      .dx_chan_rsci_wen_comp(dx_chan_rsci_wen_comp),
      .dy_chan_rsci_wen_comp(dy_chan_rsci_wen_comp),
      .pix_chan2_rsci_wen_comp(pix_chan2_rsci_wen_comp),
      .dat_out_rsci_wen_comp(dat_out_rsci_wen_comp)
    );
  EdgeDetect_IP_EdgeDetect_MagAng_run_run_fsm EdgeDetect_IP_EdgeDetect_MagAng_run_run_fsm_inst
      (
      .clk(clk),
      .rst(rst),
      .arst_n(arst_n),
      .run_wen(run_wen),
      .fsm_output(fsm_output),
      .MCOL_C_0_tr0(nl_EdgeDetect_IP_EdgeDetect_MagAng_run_run_fsm_inst_MCOL_C_0_tr0),
      .MROW_C_0_tr0(MROW_equal_tmp)
    );
  assign or_8_rmff = and_17_cse | (fsm_output[5]) | (fsm_output[1]) | and_20_cse;
  assign MCOL_and_cse = run_wen & ((MCOL_stage_0 & sw_in & (fsm_output[3])) | or_tmp_199);
  assign MCOL_and_3_cse = run_wen & MCOL_stage_0 & (fsm_output[3]);
  assign MROW_y_or_cse = (fsm_output[2]) | (fsm_output[4]);
  assign nand_cse = ~(MCOL_stage_0 & (MCOL_x_10_2_sva == (z_out_1[8:0])) & (widthIn[1:0]==2'b00));
  assign nl_MCOL_else_12_acc_nl = abs_dx2_lpi_3_dfm_mx0 + abs_dy2_lpi_3_dfm_mx0;
  assign MCOL_else_12_acc_nl = nl_MCOL_else_12_acc_nl[7:0];
  assign nl_MCOL_if_12_acc_1_nl = ({1'b1 , abs_dx2_lpi_3_dfm_mx0}) + conv_u2s_8_9(abs_dy2_lpi_3_dfm_mx0)
      + 9'b000000001;
  assign MCOL_if_12_acc_1_nl = nl_MCOL_if_12_acc_1_nl[8:0];
  assign operator_9_false_2_not_nl = ~ (readslicef_9_1_8(MCOL_if_12_acc_1_nl));
  assign MCOL_MCOL_or_3_mx0w0 = MUX_v_8_2_2(MCOL_else_12_acc_nl, 8'b11111111, operator_9_false_2_not_nl);
  assign nl_MCOL_else_13_acc_nl = abs_dx3_lpi_3_dfm_mx0 + abs_dy3_lpi_3_dfm_mx0;
  assign MCOL_else_13_acc_nl = nl_MCOL_else_13_acc_nl[7:0];
  assign nl_MCOL_if_13_acc_1_nl = ({1'b1 , abs_dx3_lpi_3_dfm_mx0}) + conv_u2s_8_9(abs_dy3_lpi_3_dfm_mx0)
      + 9'b000000001;
  assign MCOL_if_13_acc_1_nl = nl_MCOL_if_13_acc_1_nl[8:0];
  assign operator_9_false_3_not_nl = ~ (readslicef_9_1_8(MCOL_if_13_acc_1_nl));
  assign MCOL_MCOL_or_4_mx0w0 = MUX_v_8_2_2(MCOL_else_13_acc_nl, 8'b11111111, operator_9_false_3_not_nl);
  assign nl_MCOL_else_11_acc_nl = abs_dx1_lpi_3_dfm_mx0 + abs_dy1_lpi_3_dfm_mx0;
  assign MCOL_else_11_acc_nl = nl_MCOL_else_11_acc_nl[7:0];
  assign nl_MCOL_if_11_acc_1_nl = ({1'b1 , abs_dx1_lpi_3_dfm_mx0}) + conv_u2s_8_9(abs_dy1_lpi_3_dfm_mx0)
      + 9'b000000001;
  assign MCOL_if_11_acc_1_nl = nl_MCOL_if_11_acc_1_nl[8:0];
  assign operator_9_false_1_not_nl = ~ (readslicef_9_1_8(MCOL_if_11_acc_1_nl));
  assign MCOL_MCOL_or_2_mx0w0 = MUX_v_8_2_2(MCOL_else_11_acc_nl, 8'b11111111, operator_9_false_1_not_nl);
  assign nl_MCOL_else_10_acc_nl = abs_dx0_lpi_3_dfm_mx0 + abs_dy0_lpi_3_dfm_mx0;
  assign MCOL_else_10_acc_nl = nl_MCOL_else_10_acc_nl[7:0];
  assign nl_MCOL_if_10_acc_1_nl = ({1'b1 , abs_dx0_lpi_3_dfm_mx0}) + conv_u2s_8_9(abs_dy0_lpi_3_dfm_mx0)
      + 9'b000000001;
  assign MCOL_if_10_acc_1_nl = nl_MCOL_if_10_acc_1_nl[8:0];
  assign operator_9_false_not_nl = ~ (readslicef_9_1_8(MCOL_if_10_acc_1_nl));
  assign MCOL_MCOL_or_1_mx0w0 = MUX_v_8_2_2(MCOL_else_10_acc_nl, 8'b11111111, operator_9_false_not_nl);
  assign nl_MCOL_else_2_acc_nl =  -(dx_chan_rsci_idat_mxwt[7:0]);
  assign MCOL_else_2_acc_nl = nl_MCOL_else_2_acc_nl[7:0];
  assign abs_dx0_lpi_3_dfm_mx0 = MUX_v_8_2_2((dx_chan_rsci_idat_mxwt[7:0]), MCOL_else_2_acc_nl,
      dx_chan_rsci_idat_mxwt[8]);
  assign nl_MCOL_else_3_acc_nl =  -(dx_chan_rsci_idat_mxwt[16:9]);
  assign MCOL_else_3_acc_nl = nl_MCOL_else_3_acc_nl[7:0];
  assign abs_dx1_lpi_3_dfm_mx0 = MUX_v_8_2_2((dx_chan_rsci_idat_mxwt[16:9]), MCOL_else_3_acc_nl,
      dx_chan_rsci_idat_mxwt[17]);
  assign nl_MCOL_else_4_acc_nl =  -(dx_chan_rsci_idat_mxwt[25:18]);
  assign MCOL_else_4_acc_nl = nl_MCOL_else_4_acc_nl[7:0];
  assign abs_dx2_lpi_3_dfm_mx0 = MUX_v_8_2_2((dx_chan_rsci_idat_mxwt[25:18]), MCOL_else_4_acc_nl,
      dx_chan_rsci_idat_mxwt[26]);
  assign nl_MCOL_else_5_acc_nl =  -(dx_chan_rsci_idat_mxwt[34:27]);
  assign MCOL_else_5_acc_nl = nl_MCOL_else_5_acc_nl[7:0];
  assign abs_dx3_lpi_3_dfm_mx0 = MUX_v_8_2_2((dx_chan_rsci_idat_mxwt[34:27]), MCOL_else_5_acc_nl,
      dx_chan_rsci_idat_mxwt[35]);
  assign nl_MCOL_else_6_acc_nl =  -(dy_chan_rsci_idat_mxwt[7:0]);
  assign MCOL_else_6_acc_nl = nl_MCOL_else_6_acc_nl[7:0];
  assign abs_dy0_lpi_3_dfm_mx0 = MUX_v_8_2_2((dy_chan_rsci_idat_mxwt[7:0]), MCOL_else_6_acc_nl,
      dy_chan_rsci_idat_mxwt[8]);
  assign nl_MCOL_else_7_acc_nl =  -(dy_chan_rsci_idat_mxwt[16:9]);
  assign MCOL_else_7_acc_nl = nl_MCOL_else_7_acc_nl[7:0];
  assign abs_dy1_lpi_3_dfm_mx0 = MUX_v_8_2_2((dy_chan_rsci_idat_mxwt[16:9]), MCOL_else_7_acc_nl,
      dy_chan_rsci_idat_mxwt[17]);
  assign nl_MCOL_else_8_acc_nl =  -(dy_chan_rsci_idat_mxwt[25:18]);
  assign MCOL_else_8_acc_nl = nl_MCOL_else_8_acc_nl[7:0];
  assign abs_dy2_lpi_3_dfm_mx0 = MUX_v_8_2_2((dy_chan_rsci_idat_mxwt[25:18]), MCOL_else_8_acc_nl,
      dy_chan_rsci_idat_mxwt[26]);
  assign nl_MCOL_else_9_acc_nl =  -(dy_chan_rsci_idat_mxwt[34:27]);
  assign MCOL_else_9_acc_nl = nl_MCOL_else_9_acc_nl[7:0];
  assign abs_dy3_lpi_3_dfm_mx0 = MUX_v_8_2_2((dy_chan_rsci_idat_mxwt[34:27]), MCOL_else_9_acc_nl,
      dy_chan_rsci_idat_mxwt[35]);
  assign streamin_pix_7_0_lpi_3_dfm_mx0 = MUX_v_8_2_2((pix_chan2_rsci_idat_mxwt[7:0]),
      MCOL_MCOL_or_1_mx0w0, sw_in);
  assign streamin_pix_15_8_lpi_3_dfm_mx0 = MUX_v_8_2_2((pix_chan2_rsci_idat_mxwt[15:8]),
      MCOL_MCOL_or_2_mx0w0, sw_in);
  assign streamin_pix_31_24_lpi_3_dfm_mx0 = MUX_v_8_2_2((pix_chan2_rsci_idat_mxwt[31:24]),
      MCOL_MCOL_or_4_mx0w0, sw_in);
  assign streamin_pix_23_16_lpi_3_dfm_mx0 = MUX_v_8_2_2((pix_chan2_rsci_idat_mxwt[23:16]),
      MCOL_MCOL_or_3_mx0w0, sw_in);
  assign MROW_equal_tmp = MROW_y_sva == z_out_1;
  assign and_17_cse = MCOL_stage_0 & (fsm_output[3]);
  assign and_20_cse = MROW_equal_tmp & (fsm_output[4]);
  assign or_tmp_4 = ~((fsm_output[4:3]!=2'b00));
  assign or_tmp_199 = MCOL_stage_0 & (~ sw_in) & (fsm_output[3]);
  assign xor_cse_1 = (crc32_pix_in_rsci_din[7]) ^ (pix_chan2_rsci_idat_mxwt[7]) ^
      (crc32_pix_in_rsci_din[31]) ^ (pix_chan2_rsci_idat_mxwt[31]);
  assign xor_cse_4 = (crc32_pix_in_rsci_din[14]) ^ (pix_chan2_rsci_idat_mxwt[14])
      ^ (crc32_pix_in_rsci_din[18]) ^ (pix_chan2_rsci_idat_mxwt[18]);
  assign xor_cse_7 = (crc32_pix_in_rsci_din[26]) ^ (pix_chan2_rsci_idat_mxwt[26])
      ^ (crc32_pix_in_rsci_din[10]) ^ (pix_chan2_rsci_idat_mxwt[10]);
  assign xor_cse_10 = (crc32_pix_in_rsci_din[27]) ^ (pix_chan2_rsci_idat_mxwt[27])
      ^ (crc32_pix_in_rsci_din[19]) ^ (pix_chan2_rsci_idat_mxwt[19]);
  assign xor_cse = xor_cse_1 ^ xor_cse_4 ^ xor_cse_7 ^ xor_cse_10;
  assign xor_cse_14 = (crc32_pix_in_rsci_din[2]) ^ (pix_chan2_rsci_idat_mxwt[2])
      ^ (crc32_pix_in_rsci_din[23]) ^ (pix_chan2_rsci_idat_mxwt[23]);
  assign xor_cse_17 = (crc32_pix_in_rsci_din[1]) ^ (pix_chan2_rsci_idat_mxwt[1])
      ^ (crc32_pix_in_rsci_din[9]) ^ (pix_chan2_rsci_idat_mxwt[9]);
  assign xor_cse_24 = (crc32_pix_in_rsci_din[4]) ^ (pix_chan2_rsci_idat_mxwt[4])
      ^ (crc32_pix_in_rsci_din[11]) ^ (pix_chan2_rsci_idat_mxwt[11]);
  assign xor_cse_27 = (crc32_pix_in_rsci_din[24]) ^ (pix_chan2_rsci_idat_mxwt[24])
      ^ (crc32_pix_in_rsci_din[7]) ^ (pix_chan2_rsci_idat_mxwt[7]);
  assign xor_cse_23 = xor_cse_24 ^ xor_cse_7 ^ xor_cse_27;
  assign xor_cse_30 = (crc32_pix_in_rsci_din[15]) ^ (pix_chan2_rsci_idat_mxwt[15])
      ^ (crc32_pix_in_rsci_din[1]) ^ (pix_chan2_rsci_idat_mxwt[1]);
  assign xor_cse_29 = xor_cse_30 ^ (crc32_pix_in_rsci_din[22]) ^ (pix_chan2_rsci_idat_mxwt[22])
      ^ xor_cse_10;
  assign xor_cse_34 = (crc32_pix_in_rsci_din[28]) ^ (pix_chan2_rsci_idat_mxwt[28])
      ^ (crc32_pix_in_rsci_din[23]) ^ (pix_chan2_rsci_idat_mxwt[23]);
  assign xor_cse_40 = (crc32_pix_in_rsci_din[0]) ^ (pix_chan2_rsci_idat_mxwt[0])
      ^ (crc32_pix_in_rsci_din[22]) ^ (pix_chan2_rsci_idat_mxwt[22]);
  assign xor_cse_42 = (crc32_pix_in_rsci_din[13]) ^ (pix_chan2_rsci_idat_mxwt[13])
      ^ (crc32_pix_in_rsci_din[17]) ^ (pix_chan2_rsci_idat_mxwt[17]);
  assign xor_cse_39 = xor_cse_40 ^ xor_cse_42 ^ (crc32_pix_in_rsci_din[6]) ^ (pix_chan2_rsci_idat_mxwt[6]);
  assign xor_cse_47 = (crc32_pix_in_rsci_din[30]) ^ (pix_chan2_rsci_idat_mxwt[30])
      ^ (crc32_pix_in_rsci_din[25]) ^ (pix_chan2_rsci_idat_mxwt[25]);
  assign xor_cse_53 = (crc32_pix_in_rsci_din[28]) ^ (pix_chan2_rsci_idat_mxwt[28])
      ^ (crc32_pix_in_rsci_din[12]) ^ (pix_chan2_rsci_idat_mxwt[12]);
  assign xor_cse_54 = (crc32_pix_in_rsci_din[16]) ^ (pix_chan2_rsci_idat_mxwt[16])
      ^ (crc32_pix_in_rsci_din[20]) ^ (pix_chan2_rsci_idat_mxwt[20]);
  assign xor_cse_52 = xor_cse_53 ^ xor_cse_14 ^ xor_cse_54 ^ (crc32_pix_in_rsci_din[25]);
  assign xor_cse_57 = (crc32_pix_in_rsci_din[24]) ^ (pix_chan2_rsci_idat_mxwt[24])
      ^ (crc32_pix_in_rsci_din[29]) ^ (pix_chan2_rsci_idat_mxwt[29]);
  assign xor_cse_59 = (crc32_pix_in_rsci_din[5]) ^ (pix_chan2_rsci_idat_mxwt[5])
      ^ (crc32_pix_in_rsci_din[8]) ^ (pix_chan2_rsci_idat_mxwt[8]);
  assign xor_cse_56 = xor_cse_57 ^ (crc32_pix_in_rsci_din[17]) ^ (pix_chan2_rsci_idat_mxwt[17])
      ^ xor_cse_59;
  assign xor_cse_61 = (crc32_pix_in_rsci_din[27]) ^ (pix_chan2_rsci_idat_mxwt[27])
      ^ (crc32_pix_in_rsci_din[11]) ^ (pix_chan2_rsci_idat_mxwt[11]);
  assign xor_cse_64 = (crc32_pix_in_rsci_din[3]) ^ (pix_chan2_rsci_idat_mxwt[3])
      ^ (crc32_pix_in_rsci_din[10]) ^ (pix_chan2_rsci_idat_mxwt[10]);
  assign xor_cse_66 = (crc32_pix_in_rsci_din[16]) ^ (pix_chan2_rsci_idat_mxwt[16])
      ^ (crc32_pix_in_rsci_din[21]) ^ (pix_chan2_rsci_idat_mxwt[21]);
  assign xor_cse_68 = (crc32_pix_in_rsci_din[25]) ^ (pix_chan2_rsci_idat_mxwt[25])
      ^ (crc32_pix_in_rsci_din[7]) ^ (pix_chan2_rsci_idat_mxwt[7]);
  assign xor_cse_71 = (crc32_pix_in_rsci_din[9]) ^ (pix_chan2_rsci_idat_mxwt[9])
      ^ (crc32_pix_in_rsci_din[21]) ^ (pix_chan2_rsci_idat_mxwt[21]);
  assign xor_cse_70 = xor_cse_57 ^ (crc32_pix_in_rsci_din[15]) ^ (pix_chan2_rsci_idat_mxwt[15])
      ^ xor_cse_71;
  assign xor_cse_72 = xor_cse_47 ^ (pix_chan2_rsci_idat_mxwt[18]) ^ xor_cse_53;
  assign xor_cse_74 = (crc32_pix_in_rsci_din[3]) ^ (pix_chan2_rsci_idat_mxwt[3])
      ^ (crc32_pix_in_rsci_din[6]) ^ (pix_chan2_rsci_idat_mxwt[6]);
  assign xor_cse_76 = (crc32_pix_in_rsci_din[28]) ^ (pix_chan2_rsci_idat_mxwt[28])
      ^ (crc32_pix_in_rsci_din[9]) ^ (pix_chan2_rsci_idat_mxwt[9]);
  assign xor_cse_80 = (crc32_pix_in_rsci_din[1]) ^ (pix_chan2_rsci_idat_mxwt[1])
      ^ (crc32_pix_in_rsci_din[4]) ^ (pix_chan2_rsci_idat_mxwt[4]);
  assign xor_cse_85 = xor_cse_1 ^ xor_cse_74 ^ (crc32_pix_in_rsci_din[16]) ^ (pix_chan2_rsci_idat_mxwt[16])
      ^ (crc32_pix_in_rsci_din[28]) ^ (pix_chan2_rsci_idat_mxwt[28]);
  assign xor_cse_88 = (crc32_pix_in_rsci_din[15]) ^ (pix_chan2_rsci_idat_mxwt[15])
      ^ (crc32_pix_in_rsci_din[5]) ^ (pix_chan2_rsci_idat_mxwt[5]);
  assign xor_cse_90 = (crc32_pix_in_rsci_din[30]) ^ (pix_chan2_rsci_idat_mxwt[30])
      ^ (crc32_pix_in_rsci_din[14]) ^ (pix_chan2_rsci_idat_mxwt[14]);
  assign xor_cse_91 = (crc32_pix_in_rsci_din[17]) ^ (pix_chan2_rsci_idat_mxwt[17]);
  assign xor_cse_92 = (crc32_pix_in_rsci_din[2]) ^ (pix_chan2_rsci_idat_mxwt[2])
      ^ (crc32_pix_in_rsci_din[26]) ^ (pix_chan2_rsci_idat_mxwt[26]);
  assign xor_cse_93 = (crc32_pix_in_rsci_din[7]) ^ (pix_chan2_rsci_idat_mxwt[7])
      ^ (crc32_pix_in_rsci_din[13]) ^ (pix_chan2_rsci_idat_mxwt[13]);
  assign xor_cse_95 = (pix_chan2_rsci_idat_mxwt[18]) ^ (crc32_pix_in_rsci_din[18])
      ^ (crc32_pix_in_rsci_din[29]) ^ (pix_chan2_rsci_idat_mxwt[29]);
  assign xor_cse_96 = (crc32_pix_in_rsci_din[17]) ^ (pix_chan2_rsci_idat_mxwt[17])
      ^ (crc32_pix_in_rsci_din[3]) ^ (pix_chan2_rsci_idat_mxwt[3]);
  assign xor_cse_98 = xor_cse_1 ^ (crc32_pix_in_rsci_din[15]) ^ (pix_chan2_rsci_idat_mxwt[15])
      ^ (crc32_pix_in_rsci_din[19]);
  assign xor_cse_101 = (crc32_pix_in_rsci_din[4]) ^ (pix_chan2_rsci_idat_mxwt[4])
      ^ (crc32_pix_in_rsci_din[20]) ^ (pix_chan2_rsci_idat_mxwt[20]);
  assign xor_cse_102 = (crc32_pix_in_rsci_din[2]) ^ (pix_chan2_rsci_idat_mxwt[2])
      ^ (crc32_pix_in_rsci_din[12]) ^ (pix_chan2_rsci_idat_mxwt[12]);
  assign xor_cse_103 = (crc32_pix_in_rsci_din[20]) ^ (pix_chan2_rsci_idat_mxwt[20])
      ^ (crc32_pix_in_rsci_din[8]) ^ (pix_chan2_rsci_idat_mxwt[8]);
  assign xor_cse_105 = xor_cse_40 ^ xor_cse_47 ^ xor_cse_4;
  assign xor_cse_110 = (crc32_pix_in_rsci_din[21]) ^ (pix_chan2_rsci_idat_mxwt[21]);
  assign xor_cse_113 = (crc32_pix_in_rsci_din[13]) ^ (pix_chan2_rsci_idat_mxwt[13])
      ^ (crc32_pix_in_rsci_din[0]) ^ (pix_chan2_rsci_idat_mxwt[0]);
  assign xor_cse_116 = (crc32_pix_in_rsci_din[6]) ^ (pix_chan2_rsci_idat_mxwt[6])
      ^ (crc32_pix_in_rsci_din[20]) ^ (pix_chan2_rsci_idat_mxwt[20]);
  assign xor_cse_118 = xor_cse_74 ^ (crc32_pix_in_rsci_din[25]) ^ (pix_chan2_rsci_idat_mxwt[25])
      ^ xor_cse_59;
  assign xor_cse_121 = (crc32_pix_in_rsci_din[2]) ^ (pix_chan2_rsci_idat_mxwt[2])
      ^ (crc32_pix_in_rsci_din[24]) ^ (crc32_pix_in_rsci_din[18]);
  assign xor_cse_123 = (crc32_pix_in_rsci_din[3]) ^ (pix_chan2_rsci_idat_mxwt[3])
      ^ (pix_chan2_rsci_idat_mxwt[24]);
  assign xor_cse_131 = (crc32_pix_in_rsci_din[5]) ^ (pix_chan2_rsci_idat_mxwt[5])
      ^ (crc32_pix_in_rsci_din[19]) ^ (pix_chan2_rsci_idat_mxwt[19]);
  assign xor_cse_148 = (crc32_dat_out_rsci_din[7]) ^ (streamin_pix_7_0_lpi_3_dfm_mx0[7])
      ^ (crc32_dat_out_rsci_din[31]) ^ (streamin_pix_31_24_lpi_3_dfm_mx0[7]);
  assign xor_cse_151 = (crc32_dat_out_rsci_din[14]) ^ (streamin_pix_15_8_lpi_3_dfm_mx0[6])
      ^ (crc32_dat_out_rsci_din[18]) ^ (streamin_pix_23_16_lpi_3_dfm_mx0[2]);
  assign xor_cse_154 = (crc32_dat_out_rsci_din[26]) ^ (streamin_pix_31_24_lpi_3_dfm_mx0[2])
      ^ (crc32_dat_out_rsci_din[10]) ^ (streamin_pix_15_8_lpi_3_dfm_mx0[2]);
  assign xor_cse_157 = (crc32_dat_out_rsci_din[27]) ^ (streamin_pix_31_24_lpi_3_dfm_mx0[3])
      ^ (crc32_dat_out_rsci_din[19]) ^ (streamin_pix_23_16_lpi_3_dfm_mx0[3]);
  assign xor_cse_147 = xor_cse_148 ^ xor_cse_151 ^ xor_cse_154 ^ xor_cse_157;
  assign xor_cse_161 = (crc32_dat_out_rsci_din[2]) ^ (streamin_pix_7_0_lpi_3_dfm_mx0[2])
      ^ (crc32_dat_out_rsci_din[23]) ^ (streamin_pix_23_16_lpi_3_dfm_mx0[7]);
  assign xor_cse_164 = (crc32_dat_out_rsci_din[1]) ^ (streamin_pix_7_0_lpi_3_dfm_mx0[1])
      ^ (crc32_dat_out_rsci_din[9]) ^ (streamin_pix_15_8_lpi_3_dfm_mx0[1]);
  assign xor_cse_171 = (crc32_dat_out_rsci_din[4]) ^ (streamin_pix_7_0_lpi_3_dfm_mx0[4])
      ^ (crc32_dat_out_rsci_din[11]) ^ (streamin_pix_15_8_lpi_3_dfm_mx0[3]);
  assign xor_cse_174 = (crc32_dat_out_rsci_din[24]) ^ (streamin_pix_31_24_lpi_3_dfm_mx0[0])
      ^ (crc32_dat_out_rsci_din[7]) ^ (streamin_pix_7_0_lpi_3_dfm_mx0[7]);
  assign xor_cse_170 = xor_cse_171 ^ xor_cse_154 ^ xor_cse_174;
  assign xor_cse_177 = (crc32_dat_out_rsci_din[15]) ^ (streamin_pix_15_8_lpi_3_dfm_mx0[7])
      ^ (crc32_dat_out_rsci_din[1]) ^ (streamin_pix_7_0_lpi_3_dfm_mx0[1]);
  assign xor_cse_176 = xor_cse_177 ^ (crc32_dat_out_rsci_din[22]) ^ (streamin_pix_23_16_lpi_3_dfm_mx0[6])
      ^ xor_cse_157;
  assign xor_cse_181 = (crc32_dat_out_rsci_din[28]) ^ (streamin_pix_31_24_lpi_3_dfm_mx0[4])
      ^ (crc32_dat_out_rsci_din[23]) ^ (streamin_pix_23_16_lpi_3_dfm_mx0[7]);
  assign xor_cse_187 = (crc32_dat_out_rsci_din[0]) ^ (streamin_pix_7_0_lpi_3_dfm_mx0[0])
      ^ (crc32_dat_out_rsci_din[22]) ^ (streamin_pix_23_16_lpi_3_dfm_mx0[6]);
  assign xor_cse_189 = (crc32_dat_out_rsci_din[13]) ^ (streamin_pix_15_8_lpi_3_dfm_mx0[5])
      ^ (crc32_dat_out_rsci_din[17]) ^ (streamin_pix_23_16_lpi_3_dfm_mx0[1]);
  assign xor_cse_186 = xor_cse_187 ^ xor_cse_189 ^ (crc32_dat_out_rsci_din[6]) ^
      (streamin_pix_7_0_lpi_3_dfm_mx0[6]);
  assign xor_cse_194 = (crc32_dat_out_rsci_din[30]) ^ (streamin_pix_31_24_lpi_3_dfm_mx0[6])
      ^ (crc32_dat_out_rsci_din[25]) ^ (streamin_pix_31_24_lpi_3_dfm_mx0[1]);
  assign xor_cse_200 = (crc32_dat_out_rsci_din[28]) ^ (streamin_pix_31_24_lpi_3_dfm_mx0[4])
      ^ (crc32_dat_out_rsci_din[12]) ^ (streamin_pix_15_8_lpi_3_dfm_mx0[4]);
  assign xor_cse_201 = (crc32_dat_out_rsci_din[16]) ^ (streamin_pix_23_16_lpi_3_dfm_mx0[0])
      ^ (crc32_dat_out_rsci_din[20]) ^ (streamin_pix_23_16_lpi_3_dfm_mx0[4]);
  assign xor_cse_199 = xor_cse_200 ^ xor_cse_161 ^ xor_cse_201 ^ (crc32_dat_out_rsci_din[25]);
  assign xor_cse_204 = (crc32_dat_out_rsci_din[24]) ^ (streamin_pix_31_24_lpi_3_dfm_mx0[0])
      ^ (crc32_dat_out_rsci_din[29]) ^ (streamin_pix_31_24_lpi_3_dfm_mx0[5]);
  assign xor_cse_206 = (crc32_dat_out_rsci_din[5]) ^ (streamin_pix_7_0_lpi_3_dfm_mx0[5])
      ^ (crc32_dat_out_rsci_din[8]) ^ (streamin_pix_15_8_lpi_3_dfm_mx0[0]);
  assign xor_cse_203 = xor_cse_204 ^ (crc32_dat_out_rsci_din[17]) ^ (streamin_pix_23_16_lpi_3_dfm_mx0[1])
      ^ xor_cse_206;
  assign xor_cse_208 = (crc32_dat_out_rsci_din[27]) ^ (streamin_pix_31_24_lpi_3_dfm_mx0[3])
      ^ (crc32_dat_out_rsci_din[11]) ^ (streamin_pix_15_8_lpi_3_dfm_mx0[3]);
  assign xor_cse_211 = (crc32_dat_out_rsci_din[3]) ^ (streamin_pix_7_0_lpi_3_dfm_mx0[3])
      ^ (crc32_dat_out_rsci_din[10]) ^ (streamin_pix_15_8_lpi_3_dfm_mx0[2]);
  assign xor_cse_213 = (crc32_dat_out_rsci_din[16]) ^ (streamin_pix_23_16_lpi_3_dfm_mx0[0])
      ^ (crc32_dat_out_rsci_din[21]) ^ (streamin_pix_23_16_lpi_3_dfm_mx0[5]);
  assign xor_cse_215 = (crc32_dat_out_rsci_din[25]) ^ (streamin_pix_31_24_lpi_3_dfm_mx0[1])
      ^ (crc32_dat_out_rsci_din[7]) ^ (streamin_pix_7_0_lpi_3_dfm_mx0[7]);
  assign xor_cse_218 = (crc32_dat_out_rsci_din[9]) ^ (streamin_pix_15_8_lpi_3_dfm_mx0[1])
      ^ (crc32_dat_out_rsci_din[21]) ^ (streamin_pix_23_16_lpi_3_dfm_mx0[5]);
  assign xor_cse_217 = xor_cse_204 ^ (crc32_dat_out_rsci_din[15]) ^ (streamin_pix_15_8_lpi_3_dfm_mx0[7])
      ^ xor_cse_218;
  assign xor_cse_219 = xor_cse_194 ^ (streamin_pix_23_16_lpi_3_dfm_mx0[2]) ^ xor_cse_200;
  assign xor_cse_221 = (crc32_dat_out_rsci_din[3]) ^ (streamin_pix_7_0_lpi_3_dfm_mx0[3])
      ^ (crc32_dat_out_rsci_din[6]) ^ (streamin_pix_7_0_lpi_3_dfm_mx0[6]);
  assign xor_cse_223 = (crc32_dat_out_rsci_din[28]) ^ (streamin_pix_31_24_lpi_3_dfm_mx0[4])
      ^ (crc32_dat_out_rsci_din[9]) ^ (streamin_pix_15_8_lpi_3_dfm_mx0[1]);
  assign xor_cse_227 = (crc32_dat_out_rsci_din[1]) ^ (streamin_pix_7_0_lpi_3_dfm_mx0[1])
      ^ (crc32_dat_out_rsci_din[4]) ^ (streamin_pix_7_0_lpi_3_dfm_mx0[4]);
  assign xor_cse_232 = xor_cse_148 ^ xor_cse_221 ^ (crc32_dat_out_rsci_din[16]) ^
      (streamin_pix_23_16_lpi_3_dfm_mx0[0]) ^ (crc32_dat_out_rsci_din[28]) ^ (streamin_pix_31_24_lpi_3_dfm_mx0[4]);
  assign xor_cse_235 = (crc32_dat_out_rsci_din[15]) ^ (streamin_pix_15_8_lpi_3_dfm_mx0[7])
      ^ (crc32_dat_out_rsci_din[5]) ^ (streamin_pix_7_0_lpi_3_dfm_mx0[5]);
  assign xor_cse_237 = (crc32_dat_out_rsci_din[30]) ^ (streamin_pix_31_24_lpi_3_dfm_mx0[6])
      ^ (crc32_dat_out_rsci_din[14]) ^ (streamin_pix_15_8_lpi_3_dfm_mx0[6]);
  assign xor_cse_238 = (crc32_dat_out_rsci_din[17]) ^ (streamin_pix_23_16_lpi_3_dfm_mx0[1]);
  assign xor_cse_239 = (crc32_dat_out_rsci_din[2]) ^ (streamin_pix_7_0_lpi_3_dfm_mx0[2])
      ^ (crc32_dat_out_rsci_din[26]) ^ (streamin_pix_31_24_lpi_3_dfm_mx0[2]);
  assign xor_cse_240 = (crc32_dat_out_rsci_din[7]) ^ (streamin_pix_7_0_lpi_3_dfm_mx0[7])
      ^ (crc32_dat_out_rsci_din[13]) ^ (streamin_pix_15_8_lpi_3_dfm_mx0[5]);
  assign xor_cse_242 = (streamin_pix_23_16_lpi_3_dfm_mx0[2]) ^ (crc32_dat_out_rsci_din[18])
      ^ (crc32_dat_out_rsci_din[29]) ^ (streamin_pix_31_24_lpi_3_dfm_mx0[5]);
  assign xor_cse_243 = (crc32_dat_out_rsci_din[17]) ^ (streamin_pix_23_16_lpi_3_dfm_mx0[1])
      ^ (crc32_dat_out_rsci_din[3]) ^ (streamin_pix_7_0_lpi_3_dfm_mx0[3]);
  assign xor_cse_245 = xor_cse_148 ^ (crc32_dat_out_rsci_din[15]) ^ (streamin_pix_15_8_lpi_3_dfm_mx0[7])
      ^ (crc32_dat_out_rsci_din[19]);
  assign xor_cse_248 = (crc32_dat_out_rsci_din[4]) ^ (streamin_pix_7_0_lpi_3_dfm_mx0[4])
      ^ (crc32_dat_out_rsci_din[20]) ^ (streamin_pix_23_16_lpi_3_dfm_mx0[4]);
  assign xor_cse_249 = (crc32_dat_out_rsci_din[2]) ^ (streamin_pix_7_0_lpi_3_dfm_mx0[2])
      ^ (crc32_dat_out_rsci_din[12]) ^ (streamin_pix_15_8_lpi_3_dfm_mx0[4]);
  assign xor_cse_250 = (crc32_dat_out_rsci_din[20]) ^ (streamin_pix_23_16_lpi_3_dfm_mx0[4])
      ^ (crc32_dat_out_rsci_din[8]) ^ (streamin_pix_15_8_lpi_3_dfm_mx0[0]);
  assign xor_cse_252 = xor_cse_187 ^ xor_cse_194 ^ xor_cse_151;
  assign xor_cse_257 = (crc32_dat_out_rsci_din[21]) ^ (streamin_pix_23_16_lpi_3_dfm_mx0[5]);
  assign xor_cse_260 = (crc32_dat_out_rsci_din[13]) ^ (streamin_pix_15_8_lpi_3_dfm_mx0[5])
      ^ (crc32_dat_out_rsci_din[0]) ^ (streamin_pix_7_0_lpi_3_dfm_mx0[0]);
  assign xor_cse_263 = (crc32_dat_out_rsci_din[6]) ^ (streamin_pix_7_0_lpi_3_dfm_mx0[6])
      ^ (crc32_dat_out_rsci_din[20]) ^ (streamin_pix_23_16_lpi_3_dfm_mx0[4]);
  assign xor_cse_265 = xor_cse_221 ^ (crc32_dat_out_rsci_din[25]) ^ (streamin_pix_31_24_lpi_3_dfm_mx0[1])
      ^ xor_cse_206;
  assign xor_cse_268 = (crc32_dat_out_rsci_din[2]) ^ (streamin_pix_7_0_lpi_3_dfm_mx0[2])
      ^ (crc32_dat_out_rsci_din[24]) ^ (crc32_dat_out_rsci_din[18]);
  assign xor_cse_270 = (crc32_dat_out_rsci_din[3]) ^ (streamin_pix_7_0_lpi_3_dfm_mx0[3])
      ^ (streamin_pix_31_24_lpi_3_dfm_mx0[0]);
  assign xor_cse_278 = (crc32_dat_out_rsci_din[5]) ^ (streamin_pix_7_0_lpi_3_dfm_mx0[5])
      ^ (crc32_dat_out_rsci_din[19]) ^ (streamin_pix_23_16_lpi_3_dfm_mx0[3]);
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      reg_dx_chan_rsci_oswt_cse <= 1'b0;
      reg_dat_out_rsci_oswt_cse <= 1'b0;
      reg_crc32_pix_in_triosy_obj_iswt0_cse <= 1'b0;
      MCOL_stage_0 <= 1'b0;
    end
    else if ( rst ) begin
      reg_dx_chan_rsci_oswt_cse <= 1'b0;
      reg_dat_out_rsci_oswt_cse <= 1'b0;
      reg_crc32_pix_in_triosy_obj_iswt0_cse <= 1'b0;
      MCOL_stage_0 <= 1'b0;
    end
    else if ( run_wen ) begin
      reg_dx_chan_rsci_oswt_cse <= (nand_cse & MCOL_stage_0 & (fsm_output[3])) |
          (fsm_output[2]) | ((~ MROW_equal_tmp) & (fsm_output[4]));
      reg_dat_out_rsci_oswt_cse <= and_17_cse;
      reg_crc32_pix_in_triosy_obj_iswt0_cse <= and_20_cse;
      MCOL_stage_0 <= (MCOL_stage_0 & nand_cse) | MROW_y_or_cse;
    end
  end
  always @(posedge clk) begin
    if ( MCOL_and_cse ) begin
      dat_out_rsci_idat_23_16 <= MUX_v_8_2_2(MCOL_MCOL_or_3_mx0w0, (pix_chan2_rsci_idat_mxwt[23:16]),
          or_tmp_199);
      dat_out_rsci_idat_31_24 <= MUX_v_8_2_2(MCOL_MCOL_or_4_mx0w0, (pix_chan2_rsci_idat_mxwt[31:24]),
          or_tmp_199);
      dat_out_rsci_idat_15_8 <= MUX_v_8_2_2(MCOL_MCOL_or_2_mx0w0, (pix_chan2_rsci_idat_mxwt[15:8]),
          or_tmp_199);
      dat_out_rsci_idat_7_0 <= MUX_v_8_2_2(MCOL_MCOL_or_1_mx0w0, (pix_chan2_rsci_idat_mxwt[7:0]),
          or_tmp_199);
    end
  end
  always @(posedge clk) begin
    if ( MCOL_and_3_cse ) begin
      dat_out_rsci_idat_32 <= ~((MROW_y_sva!=10'b0000000000) | (MCOL_x_10_2_sva!=9'b000000000));
      dat_out_rsci_idat_33 <= (MCOL_x_10_2_sva == (z_out[10:2])) & (z_out[1:0]==2'b00);
    end
  end
  always @(posedge clk) begin
    if ( run_wen & MROW_y_or_cse ) begin
      MROW_y_sva <= MUX_v_10_2_2(10'b0000000000, (z_out[9:0]), MROW_y_not_1_nl);
    end
  end
  always @(posedge clk) begin
    if ( run_wen & (MCOL_stage_0 | MROW_y_or_cse) ) begin
      MCOL_x_10_2_sva <= MUX_v_9_2_2(9'b000000000, operator_11_false_acc_nl, MROW_y_not_nl);
    end
  end
  assign MROW_y_not_1_nl = ~ (fsm_output[2]);
  assign nl_operator_11_false_acc_nl = MCOL_x_10_2_sva + 9'b000000001;
  assign operator_11_false_acc_nl = nl_operator_11_false_acc_nl[8:0];
  assign MROW_y_not_nl = ~ MROW_y_or_cse;
  assign MROW_MROW_and_1_nl = (widthIn[10]) & (fsm_output[3]);
  assign MROW_mux_3_nl = MUX_v_10_2_2(MROW_y_sva, (widthIn[9:0]), fsm_output[3]);
  assign nl_z_out = ({MROW_MROW_and_1_nl , MROW_mux_3_nl}) + conv_s2u_2_11({(fsm_output[3])
      , 1'b1});
  assign z_out = nl_z_out[10:0];
  assign operator_11_false_1_operator_11_false_1_and_1_nl = (heightIn[9]) & (fsm_output[4]);
  assign operator_11_false_1_mux_2_nl = MUX_v_9_2_2((widthIn[10:2]), (heightIn[8:0]),
      fsm_output[4]);
  assign nl_z_out_1 = ({operator_11_false_1_operator_11_false_1_and_1_nl , operator_11_false_1_mux_2_nl})
      + 10'b1111111111;
  assign z_out_1 = nl_z_out_1[9:0];

  function automatic  MUX_s_1_2_2;
    input  input_0;
    input  input_1;
    input  sel;
    reg  result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_s_1_2_2 = result;
  end
  endfunction


  function automatic [9:0] MUX_v_10_2_2;
    input [9:0] input_0;
    input [9:0] input_1;
    input  sel;
    reg [9:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_10_2_2 = result;
  end
  endfunction


  function automatic [7:0] MUX_v_8_2_2;
    input [7:0] input_0;
    input [7:0] input_1;
    input  sel;
    reg [7:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_8_2_2 = result;
  end
  endfunction


  function automatic [8:0] MUX_v_9_2_2;
    input [8:0] input_0;
    input [8:0] input_1;
    input  sel;
    reg [8:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_9_2_2 = result;
  end
  endfunction


  function automatic [0:0] readslicef_9_1_8;
    input [8:0] vector;
    reg [8:0] tmp;
  begin
    tmp = vector >> 8;
    readslicef_9_1_8 = tmp[0:0];
  end
  endfunction


  function automatic [10:0] conv_s2u_2_11 ;
    input [1:0]  vector ;
  begin
    conv_s2u_2_11 = {{9{vector[1]}}, vector};
  end
  endfunction


  function automatic [8:0] conv_u2s_8_9 ;
    input [7:0]  vector ;
  begin
    conv_u2s_8_9 =  {1'b0, vector};
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_MagAng_struct
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_MagAng_struct (
  clk, rst, arst_n, dx_chan_rsc_dat, dx_chan_rsc_vld, dx_chan_rsc_rdy, dy_chan_rsc_dat,
      dy_chan_rsc_vld, dy_chan_rsc_rdy, pix_chan2_rsc_dat_eol, pix_chan2_rsc_dat_sof,
      pix_chan2_rsc_dat_pix, pix_chan2_rsc_vld, pix_chan2_rsc_rdy, widthIn, heightIn,
      sw_in, crc32_pix_in_rsc_zout, crc32_pix_in_rsc_lzout, crc32_pix_in_rsc_zin,
      crc32_pix_in_triosy_lz, crc32_dat_out_rsc_zout, crc32_dat_out_rsc_lzout, crc32_dat_out_rsc_zin,
      crc32_dat_out_triosy_lz, dat_out_rsc_dat_eol, dat_out_rsc_dat_sof, dat_out_rsc_dat_pix,
      dat_out_rsc_vld, dat_out_rsc_rdy
);
  input clk;
  input rst;
  input arst_n;
  input [35:0] dx_chan_rsc_dat;
  input dx_chan_rsc_vld;
  output dx_chan_rsc_rdy;
  input [35:0] dy_chan_rsc_dat;
  input dy_chan_rsc_vld;
  output dy_chan_rsc_rdy;
  input pix_chan2_rsc_dat_eol;
  input pix_chan2_rsc_dat_sof;
  input [31:0] pix_chan2_rsc_dat_pix;
  input pix_chan2_rsc_vld;
  output pix_chan2_rsc_rdy;
  input [10:0] widthIn;
  input [9:0] heightIn;
  input sw_in;
  output [31:0] crc32_pix_in_rsc_zout;
  output crc32_pix_in_rsc_lzout;
  input [31:0] crc32_pix_in_rsc_zin;
  output crc32_pix_in_triosy_lz;
  output [31:0] crc32_dat_out_rsc_zout;
  output crc32_dat_out_rsc_lzout;
  input [31:0] crc32_dat_out_rsc_zin;
  output crc32_dat_out_triosy_lz;
  output dat_out_rsc_dat_eol;
  output dat_out_rsc_dat_sof;
  output [31:0] dat_out_rsc_dat_pix;
  output dat_out_rsc_vld;
  input dat_out_rsc_rdy;


  // Interconnect Declarations
  wire [33:0] dat_out_rsc_dat;


  // Interconnect Declarations for Component Instantiations 
  wire [33:0] nl_EdgeDetect_IP_EdgeDetect_MagAng_run_inst_pix_chan2_rsc_dat;
  assign nl_EdgeDetect_IP_EdgeDetect_MagAng_run_inst_pix_chan2_rsc_dat = {pix_chan2_rsc_dat_eol
      , pix_chan2_rsc_dat_sof , pix_chan2_rsc_dat_pix};
  EdgeDetect_IP_EdgeDetect_MagAng_run EdgeDetect_IP_EdgeDetect_MagAng_run_inst (
      .clk(clk),
      .rst(rst),
      .arst_n(arst_n),
      .dx_chan_rsc_dat(dx_chan_rsc_dat),
      .dx_chan_rsc_vld(dx_chan_rsc_vld),
      .dx_chan_rsc_rdy(dx_chan_rsc_rdy),
      .dy_chan_rsc_dat(dy_chan_rsc_dat),
      .dy_chan_rsc_vld(dy_chan_rsc_vld),
      .dy_chan_rsc_rdy(dy_chan_rsc_rdy),
      .pix_chan2_rsc_dat(nl_EdgeDetect_IP_EdgeDetect_MagAng_run_inst_pix_chan2_rsc_dat[33:0]),
      .pix_chan2_rsc_vld(pix_chan2_rsc_vld),
      .pix_chan2_rsc_rdy(pix_chan2_rsc_rdy),
      .widthIn(widthIn),
      .heightIn(heightIn),
      .sw_in(sw_in),
      .crc32_pix_in_rsc_zout(crc32_pix_in_rsc_zout),
      .crc32_pix_in_rsc_lzout(crc32_pix_in_rsc_lzout),
      .crc32_pix_in_rsc_zin(crc32_pix_in_rsc_zin),
      .crc32_pix_in_triosy_lz(crc32_pix_in_triosy_lz),
      .crc32_dat_out_rsc_zout(crc32_dat_out_rsc_zout),
      .crc32_dat_out_rsc_lzout(crc32_dat_out_rsc_lzout),
      .crc32_dat_out_rsc_zin(crc32_dat_out_rsc_zin),
      .crc32_dat_out_triosy_lz(crc32_dat_out_triosy_lz),
      .dat_out_rsc_dat(dat_out_rsc_dat),
      .dat_out_rsc_vld(dat_out_rsc_vld),
      .dat_out_rsc_rdy(dat_out_rsc_rdy)
    );
  assign dat_out_rsc_dat_pix = dat_out_rsc_dat[31:0];
  assign dat_out_rsc_dat_sof = dat_out_rsc_dat[32];
  assign dat_out_rsc_dat_eol = dat_out_rsc_dat[33];
endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_MagAng
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_MagAng (
  clk, rst, arst_n, dx_chan_rsc_dat, dx_chan_rsc_vld, dx_chan_rsc_rdy, dy_chan_rsc_dat,
      dy_chan_rsc_vld, dy_chan_rsc_rdy, pix_chan2_rsc_dat, pix_chan2_rsc_vld, pix_chan2_rsc_rdy,
      widthIn, heightIn, sw_in, crc32_pix_in_rsc_zout, crc32_pix_in_rsc_lzout, crc32_pix_in_rsc_zin,
      crc32_pix_in_triosy_lz, crc32_dat_out_rsc_zout, crc32_dat_out_rsc_lzout, crc32_dat_out_rsc_zin,
      crc32_dat_out_triosy_lz, dat_out_rsc_dat, dat_out_rsc_vld, dat_out_rsc_rdy
);
  input clk;
  input rst;
  input arst_n;
  input [35:0] dx_chan_rsc_dat;
  input dx_chan_rsc_vld;
  output dx_chan_rsc_rdy;
  input [35:0] dy_chan_rsc_dat;
  input dy_chan_rsc_vld;
  output dy_chan_rsc_rdy;
  input [33:0] pix_chan2_rsc_dat;
  input pix_chan2_rsc_vld;
  output pix_chan2_rsc_rdy;
  input [10:0] widthIn;
  input [9:0] heightIn;
  input sw_in;
  output [31:0] crc32_pix_in_rsc_zout;
  output crc32_pix_in_rsc_lzout;
  input [31:0] crc32_pix_in_rsc_zin;
  output crc32_pix_in_triosy_lz;
  output [31:0] crc32_dat_out_rsc_zout;
  output crc32_dat_out_rsc_lzout;
  input [31:0] crc32_dat_out_rsc_zin;
  output crc32_dat_out_triosy_lz;
  output [33:0] dat_out_rsc_dat;
  output dat_out_rsc_vld;
  input dat_out_rsc_rdy;


  // Interconnect Declarations
  wire dat_out_rsc_dat_eol;
  wire dat_out_rsc_dat_sof;
  wire [31:0] dat_out_rsc_dat_pix;


  // Interconnect Declarations for Component Instantiations 
  wire  nl_EdgeDetect_IP_EdgeDetect_MagAng_struct_inst_pix_chan2_rsc_dat_eol;
  assign nl_EdgeDetect_IP_EdgeDetect_MagAng_struct_inst_pix_chan2_rsc_dat_eol = pix_chan2_rsc_dat[33];
  wire  nl_EdgeDetect_IP_EdgeDetect_MagAng_struct_inst_pix_chan2_rsc_dat_sof;
  assign nl_EdgeDetect_IP_EdgeDetect_MagAng_struct_inst_pix_chan2_rsc_dat_sof = pix_chan2_rsc_dat[32];
  wire [31:0] nl_EdgeDetect_IP_EdgeDetect_MagAng_struct_inst_pix_chan2_rsc_dat_pix;
  assign nl_EdgeDetect_IP_EdgeDetect_MagAng_struct_inst_pix_chan2_rsc_dat_pix = pix_chan2_rsc_dat[31:0];
  EdgeDetect_IP_EdgeDetect_MagAng_struct EdgeDetect_IP_EdgeDetect_MagAng_struct_inst
      (
      .clk(clk),
      .rst(rst),
      .arst_n(arst_n),
      .dx_chan_rsc_dat(dx_chan_rsc_dat),
      .dx_chan_rsc_vld(dx_chan_rsc_vld),
      .dx_chan_rsc_rdy(dx_chan_rsc_rdy),
      .dy_chan_rsc_dat(dy_chan_rsc_dat),
      .dy_chan_rsc_vld(dy_chan_rsc_vld),
      .dy_chan_rsc_rdy(dy_chan_rsc_rdy),
      .pix_chan2_rsc_dat_eol(nl_EdgeDetect_IP_EdgeDetect_MagAng_struct_inst_pix_chan2_rsc_dat_eol),
      .pix_chan2_rsc_dat_sof(nl_EdgeDetect_IP_EdgeDetect_MagAng_struct_inst_pix_chan2_rsc_dat_sof),
      .pix_chan2_rsc_dat_pix(nl_EdgeDetect_IP_EdgeDetect_MagAng_struct_inst_pix_chan2_rsc_dat_pix[31:0]),
      .pix_chan2_rsc_vld(pix_chan2_rsc_vld),
      .pix_chan2_rsc_rdy(pix_chan2_rsc_rdy),
      .widthIn(widthIn),
      .heightIn(heightIn),
      .sw_in(sw_in),
      .crc32_pix_in_rsc_zout(crc32_pix_in_rsc_zout),
      .crc32_pix_in_rsc_lzout(crc32_pix_in_rsc_lzout),
      .crc32_pix_in_rsc_zin(crc32_pix_in_rsc_zin),
      .crc32_pix_in_triosy_lz(crc32_pix_in_triosy_lz),
      .crc32_dat_out_rsc_zout(crc32_dat_out_rsc_zout),
      .crc32_dat_out_rsc_lzout(crc32_dat_out_rsc_lzout),
      .crc32_dat_out_rsc_zin(crc32_dat_out_rsc_zin),
      .crc32_dat_out_triosy_lz(crc32_dat_out_triosy_lz),
      .dat_out_rsc_dat_eol(dat_out_rsc_dat_eol),
      .dat_out_rsc_dat_sof(dat_out_rsc_dat_sof),
      .dat_out_rsc_dat_pix(dat_out_rsc_dat_pix),
      .dat_out_rsc_vld(dat_out_rsc_vld),
      .dat_out_rsc_rdy(dat_out_rsc_rdy)
    );
  assign dat_out_rsc_dat = {dat_out_rsc_dat_eol , dat_out_rsc_dat_sof , dat_out_rsc_dat_pix};
endmodule





//------> ./rtl.v 
// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    2023.2/1059873 Production Release
//  HLS Date:       Mon Aug  7 10:54:31 PDT 2023
// 
//  Generated by:   r12016@cad40
//  Generated date: Tue Apr  9 16:23:43 2024
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_HorDer_run_run_fsm
//  FSM Module
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_HorDer_run_run_fsm (
  clk, rst, arst_n, run_wen, fsm_output, HCOL_C_0_tr0, HROW_C_0_tr0
);
  input clk;
  input rst;
  input arst_n;
  input run_wen;
  output [3:0] fsm_output;
  reg [3:0] fsm_output;
  input HCOL_C_0_tr0;
  input HROW_C_0_tr0;


  // FSM State Type Declaration for EdgeDetect_IP_EdgeDetect_HorDer_run_run_fsm_1
  parameter
    main_C_0 = 2'd0,
    HCOL_C_0 = 2'd1,
    HROW_C_0 = 2'd2,
    main_C_1 = 2'd3;

  reg [1:0] state_var;
  reg [1:0] state_var_NS;


  // Interconnect Declarations for Component Instantiations 
  always @(*)
  begin : EdgeDetect_IP_EdgeDetect_HorDer_run_run_fsm_1
    case (state_var)
      HCOL_C_0 : begin
        fsm_output = 4'b0010;
        if ( HCOL_C_0_tr0 ) begin
          state_var_NS = HROW_C_0;
        end
        else begin
          state_var_NS = HCOL_C_0;
        end
      end
      HROW_C_0 : begin
        fsm_output = 4'b0100;
        if ( HROW_C_0_tr0 ) begin
          state_var_NS = main_C_1;
        end
        else begin
          state_var_NS = HCOL_C_0;
        end
      end
      main_C_1 : begin
        fsm_output = 4'b1000;
        state_var_NS = main_C_0;
      end
      // main_C_0
      default : begin
        fsm_output = 4'b0001;
        state_var_NS = HCOL_C_0;
      end
    endcase
  end

  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      state_var <= main_C_0;
    end
    else if ( rst ) begin
      state_var <= main_C_0;
    end
    else if ( run_wen ) begin
      state_var <= state_var_NS;
    end
  end

endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_HorDer_run_staller
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_HorDer_run_staller (
  run_wen, pix_chan1_rsci_wen_comp, pix_chan2_rsci_wen_comp, dx_chan_rsci_wen_comp
);
  output run_wen;
  input pix_chan1_rsci_wen_comp;
  input pix_chan2_rsci_wen_comp;
  input dx_chan_rsci_wen_comp;



  // Interconnect Declarations for Component Instantiations 
  assign run_wen = pix_chan1_rsci_wen_comp & pix_chan2_rsci_wen_comp & dx_chan_rsci_wen_comp;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_HorDer_run_dx_chan_rsci_dx_chan_wait_dp
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_HorDer_run_dx_chan_rsci_dx_chan_wait_dp (
  clk, rst, arst_n, dx_chan_rsci_oswt, dx_chan_rsci_wen_comp, dx_chan_rsci_biwt,
      dx_chan_rsci_bdwt, dx_chan_rsci_bcwt
);
  input clk;
  input rst;
  input arst_n;
  input dx_chan_rsci_oswt;
  output dx_chan_rsci_wen_comp;
  input dx_chan_rsci_biwt;
  input dx_chan_rsci_bdwt;
  output dx_chan_rsci_bcwt;
  reg dx_chan_rsci_bcwt;



  // Interconnect Declarations for Component Instantiations 
  assign dx_chan_rsci_wen_comp = (~ dx_chan_rsci_oswt) | dx_chan_rsci_biwt | dx_chan_rsci_bcwt;
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      dx_chan_rsci_bcwt <= 1'b0;
    end
    else if ( rst ) begin
      dx_chan_rsci_bcwt <= 1'b0;
    end
    else begin
      dx_chan_rsci_bcwt <= ~((~(dx_chan_rsci_bcwt | dx_chan_rsci_biwt)) | dx_chan_rsci_bdwt);
    end
  end
endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_HorDer_run_dx_chan_rsci_dx_chan_wait_ctrl
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_HorDer_run_dx_chan_rsci_dx_chan_wait_ctrl (
  run_wen, dx_chan_rsci_oswt, dx_chan_rsci_biwt, dx_chan_rsci_bdwt, dx_chan_rsci_bcwt,
      dx_chan_rsci_irdy, dx_chan_rsci_ivld_run_sct
);
  input run_wen;
  input dx_chan_rsci_oswt;
  output dx_chan_rsci_biwt;
  output dx_chan_rsci_bdwt;
  input dx_chan_rsci_bcwt;
  input dx_chan_rsci_irdy;
  output dx_chan_rsci_ivld_run_sct;


  // Interconnect Declarations
  wire dx_chan_rsci_ogwt;


  // Interconnect Declarations for Component Instantiations 
  assign dx_chan_rsci_bdwt = dx_chan_rsci_oswt & run_wen;
  assign dx_chan_rsci_biwt = dx_chan_rsci_ogwt & dx_chan_rsci_irdy;
  assign dx_chan_rsci_ogwt = dx_chan_rsci_oswt & (~ dx_chan_rsci_bcwt);
  assign dx_chan_rsci_ivld_run_sct = dx_chan_rsci_ogwt;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_HorDer_run_pix_chan2_rsci_pix_chan2_wait_dp
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_HorDer_run_pix_chan2_rsci_pix_chan2_wait_dp (
  clk, rst, arst_n, pix_chan2_rsci_oswt, pix_chan2_rsci_wen_comp, pix_chan2_rsci_biwt,
      pix_chan2_rsci_bdwt, pix_chan2_rsci_bcwt
);
  input clk;
  input rst;
  input arst_n;
  input pix_chan2_rsci_oswt;
  output pix_chan2_rsci_wen_comp;
  input pix_chan2_rsci_biwt;
  input pix_chan2_rsci_bdwt;
  output pix_chan2_rsci_bcwt;
  reg pix_chan2_rsci_bcwt;



  // Interconnect Declarations for Component Instantiations 
  assign pix_chan2_rsci_wen_comp = (~ pix_chan2_rsci_oswt) | pix_chan2_rsci_biwt
      | pix_chan2_rsci_bcwt;
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      pix_chan2_rsci_bcwt <= 1'b0;
    end
    else if ( rst ) begin
      pix_chan2_rsci_bcwt <= 1'b0;
    end
    else begin
      pix_chan2_rsci_bcwt <= ~((~(pix_chan2_rsci_bcwt | pix_chan2_rsci_biwt)) | pix_chan2_rsci_bdwt);
    end
  end
endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_HorDer_run_pix_chan2_rsci_pix_chan2_wait_ctrl
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_HorDer_run_pix_chan2_rsci_pix_chan2_wait_ctrl (
  run_wen, pix_chan2_rsci_oswt, pix_chan2_rsci_biwt, pix_chan2_rsci_bdwt, pix_chan2_rsci_bcwt,
      pix_chan2_rsci_irdy, pix_chan2_rsci_ivld_run_sct
);
  input run_wen;
  input pix_chan2_rsci_oswt;
  output pix_chan2_rsci_biwt;
  output pix_chan2_rsci_bdwt;
  input pix_chan2_rsci_bcwt;
  input pix_chan2_rsci_irdy;
  output pix_chan2_rsci_ivld_run_sct;


  // Interconnect Declarations
  wire pix_chan2_rsci_ogwt;


  // Interconnect Declarations for Component Instantiations 
  assign pix_chan2_rsci_bdwt = pix_chan2_rsci_oswt & run_wen;
  assign pix_chan2_rsci_biwt = pix_chan2_rsci_ogwt & pix_chan2_rsci_irdy;
  assign pix_chan2_rsci_ogwt = pix_chan2_rsci_oswt & (~ pix_chan2_rsci_bcwt);
  assign pix_chan2_rsci_ivld_run_sct = pix_chan2_rsci_ogwt;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_HorDer_run_pix_chan1_rsci_pix_chan1_wait_dp
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_HorDer_run_pix_chan1_rsci_pix_chan1_wait_dp (
  clk, rst, arst_n, pix_chan1_rsci_oswt, pix_chan1_rsci_wen_comp, pix_chan1_rsci_idat_mxwt,
      pix_chan1_rsci_biwt, pix_chan1_rsci_bdwt, pix_chan1_rsci_bcwt, pix_chan1_rsci_idat
);
  input clk;
  input rst;
  input arst_n;
  input pix_chan1_rsci_oswt;
  output pix_chan1_rsci_wen_comp;
  output [31:0] pix_chan1_rsci_idat_mxwt;
  input pix_chan1_rsci_biwt;
  input pix_chan1_rsci_bdwt;
  output pix_chan1_rsci_bcwt;
  reg pix_chan1_rsci_bcwt;
  input [33:0] pix_chan1_rsci_idat;


  // Interconnect Declarations
  reg [31:0] pix_chan1_rsci_idat_bfwt_31_0;


  // Interconnect Declarations for Component Instantiations 
  assign pix_chan1_rsci_wen_comp = (~ pix_chan1_rsci_oswt) | pix_chan1_rsci_biwt
      | pix_chan1_rsci_bcwt;
  assign pix_chan1_rsci_idat_mxwt = MUX_v_32_2_2((pix_chan1_rsci_idat[31:0]), pix_chan1_rsci_idat_bfwt_31_0,
      pix_chan1_rsci_bcwt);
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      pix_chan1_rsci_bcwt <= 1'b0;
    end
    else if ( rst ) begin
      pix_chan1_rsci_bcwt <= 1'b0;
    end
    else begin
      pix_chan1_rsci_bcwt <= ~((~(pix_chan1_rsci_bcwt | pix_chan1_rsci_biwt)) | pix_chan1_rsci_bdwt);
    end
  end
  always @(posedge clk) begin
    if ( pix_chan1_rsci_biwt ) begin
      pix_chan1_rsci_idat_bfwt_31_0 <= pix_chan1_rsci_idat[31:0];
    end
  end

  function automatic [31:0] MUX_v_32_2_2;
    input [31:0] input_0;
    input [31:0] input_1;
    input  sel;
    reg [31:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_32_2_2 = result;
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_HorDer_run_pix_chan1_rsci_pix_chan1_wait_ctrl
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_HorDer_run_pix_chan1_rsci_pix_chan1_wait_ctrl (
  run_wen, pix_chan1_rsci_oswt, pix_chan1_rsci_biwt, pix_chan1_rsci_bdwt, pix_chan1_rsci_bcwt,
      pix_chan1_rsci_irdy_run_sct, pix_chan1_rsci_ivld
);
  input run_wen;
  input pix_chan1_rsci_oswt;
  output pix_chan1_rsci_biwt;
  output pix_chan1_rsci_bdwt;
  input pix_chan1_rsci_bcwt;
  output pix_chan1_rsci_irdy_run_sct;
  input pix_chan1_rsci_ivld;


  // Interconnect Declarations
  wire pix_chan1_rsci_ogwt;


  // Interconnect Declarations for Component Instantiations 
  assign pix_chan1_rsci_bdwt = pix_chan1_rsci_oswt & run_wen;
  assign pix_chan1_rsci_biwt = pix_chan1_rsci_ogwt & pix_chan1_rsci_ivld;
  assign pix_chan1_rsci_ogwt = pix_chan1_rsci_oswt & (~ pix_chan1_rsci_bcwt);
  assign pix_chan1_rsci_irdy_run_sct = pix_chan1_rsci_ogwt;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_HorDer_run_dx_chan_rsci
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_HorDer_run_dx_chan_rsci (
  clk, rst, arst_n, dx_chan_rsc_dat, dx_chan_rsc_vld, dx_chan_rsc_rdy, run_wen, dx_chan_rsci_oswt,
      dx_chan_rsci_wen_comp, dx_chan_rsci_idat
);
  input clk;
  input rst;
  input arst_n;
  output [35:0] dx_chan_rsc_dat;
  output dx_chan_rsc_vld;
  input dx_chan_rsc_rdy;
  input run_wen;
  input dx_chan_rsci_oswt;
  output dx_chan_rsci_wen_comp;
  input [35:0] dx_chan_rsci_idat;


  // Interconnect Declarations
  wire dx_chan_rsci_biwt;
  wire dx_chan_rsci_bdwt;
  wire dx_chan_rsci_bcwt;
  wire dx_chan_rsci_irdy;
  wire dx_chan_rsci_ivld_run_sct;


  // Interconnect Declarations for Component Instantiations 
  ccs_out_wait_v1 #(.rscid(32'sd5),
  .width(32'sd36)) dx_chan_rsci (
      .irdy(dx_chan_rsci_irdy),
      .ivld(dx_chan_rsci_ivld_run_sct),
      .idat(dx_chan_rsci_idat),
      .rdy(dx_chan_rsc_rdy),
      .vld(dx_chan_rsc_vld),
      .dat(dx_chan_rsc_dat)
    );
  EdgeDetect_IP_EdgeDetect_HorDer_run_dx_chan_rsci_dx_chan_wait_ctrl EdgeDetect_IP_EdgeDetect_HorDer_run_dx_chan_rsci_dx_chan_wait_ctrl_inst
      (
      .run_wen(run_wen),
      .dx_chan_rsci_oswt(dx_chan_rsci_oswt),
      .dx_chan_rsci_biwt(dx_chan_rsci_biwt),
      .dx_chan_rsci_bdwt(dx_chan_rsci_bdwt),
      .dx_chan_rsci_bcwt(dx_chan_rsci_bcwt),
      .dx_chan_rsci_irdy(dx_chan_rsci_irdy),
      .dx_chan_rsci_ivld_run_sct(dx_chan_rsci_ivld_run_sct)
    );
  EdgeDetect_IP_EdgeDetect_HorDer_run_dx_chan_rsci_dx_chan_wait_dp EdgeDetect_IP_EdgeDetect_HorDer_run_dx_chan_rsci_dx_chan_wait_dp_inst
      (
      .clk(clk),
      .rst(rst),
      .arst_n(arst_n),
      .dx_chan_rsci_oswt(dx_chan_rsci_oswt),
      .dx_chan_rsci_wen_comp(dx_chan_rsci_wen_comp),
      .dx_chan_rsci_biwt(dx_chan_rsci_biwt),
      .dx_chan_rsci_bdwt(dx_chan_rsci_bdwt),
      .dx_chan_rsci_bcwt(dx_chan_rsci_bcwt)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_HorDer_run_pix_chan2_rsci
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_HorDer_run_pix_chan2_rsci (
  clk, rst, arst_n, pix_chan2_rsc_dat, pix_chan2_rsc_vld, pix_chan2_rsc_rdy, run_wen,
      pix_chan2_rsci_oswt, pix_chan2_rsci_wen_comp, pix_chan2_rsci_idat
);
  input clk;
  input rst;
  input arst_n;
  output [33:0] pix_chan2_rsc_dat;
  output pix_chan2_rsc_vld;
  input pix_chan2_rsc_rdy;
  input run_wen;
  input pix_chan2_rsci_oswt;
  output pix_chan2_rsci_wen_comp;
  input [33:0] pix_chan2_rsci_idat;


  // Interconnect Declarations
  wire pix_chan2_rsci_biwt;
  wire pix_chan2_rsci_bdwt;
  wire pix_chan2_rsci_bcwt;
  wire pix_chan2_rsci_irdy;
  wire pix_chan2_rsci_ivld_run_sct;


  // Interconnect Declarations for Component Instantiations 
  ccs_out_wait_v1 #(.rscid(32'sd4),
  .width(32'sd34)) pix_chan2_rsci (
      .irdy(pix_chan2_rsci_irdy),
      .ivld(pix_chan2_rsci_ivld_run_sct),
      .idat(pix_chan2_rsci_idat),
      .rdy(pix_chan2_rsc_rdy),
      .vld(pix_chan2_rsc_vld),
      .dat(pix_chan2_rsc_dat)
    );
  EdgeDetect_IP_EdgeDetect_HorDer_run_pix_chan2_rsci_pix_chan2_wait_ctrl EdgeDetect_IP_EdgeDetect_HorDer_run_pix_chan2_rsci_pix_chan2_wait_ctrl_inst
      (
      .run_wen(run_wen),
      .pix_chan2_rsci_oswt(pix_chan2_rsci_oswt),
      .pix_chan2_rsci_biwt(pix_chan2_rsci_biwt),
      .pix_chan2_rsci_bdwt(pix_chan2_rsci_bdwt),
      .pix_chan2_rsci_bcwt(pix_chan2_rsci_bcwt),
      .pix_chan2_rsci_irdy(pix_chan2_rsci_irdy),
      .pix_chan2_rsci_ivld_run_sct(pix_chan2_rsci_ivld_run_sct)
    );
  EdgeDetect_IP_EdgeDetect_HorDer_run_pix_chan2_rsci_pix_chan2_wait_dp EdgeDetect_IP_EdgeDetect_HorDer_run_pix_chan2_rsci_pix_chan2_wait_dp_inst
      (
      .clk(clk),
      .rst(rst),
      .arst_n(arst_n),
      .pix_chan2_rsci_oswt(pix_chan2_rsci_oswt),
      .pix_chan2_rsci_wen_comp(pix_chan2_rsci_wen_comp),
      .pix_chan2_rsci_biwt(pix_chan2_rsci_biwt),
      .pix_chan2_rsci_bdwt(pix_chan2_rsci_bdwt),
      .pix_chan2_rsci_bcwt(pix_chan2_rsci_bcwt)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_HorDer_run_pix_chan1_rsci
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_HorDer_run_pix_chan1_rsci (
  clk, rst, arst_n, pix_chan1_rsc_dat, pix_chan1_rsc_vld, pix_chan1_rsc_rdy, run_wen,
      pix_chan1_rsci_oswt, pix_chan1_rsci_wen_comp, pix_chan1_rsci_idat_mxwt
);
  input clk;
  input rst;
  input arst_n;
  input [33:0] pix_chan1_rsc_dat;
  input pix_chan1_rsc_vld;
  output pix_chan1_rsc_rdy;
  input run_wen;
  input pix_chan1_rsci_oswt;
  output pix_chan1_rsci_wen_comp;
  output [31:0] pix_chan1_rsci_idat_mxwt;


  // Interconnect Declarations
  wire pix_chan1_rsci_biwt;
  wire pix_chan1_rsci_bdwt;
  wire pix_chan1_rsci_bcwt;
  wire pix_chan1_rsci_irdy_run_sct;
  wire pix_chan1_rsci_ivld;
  wire [33:0] pix_chan1_rsci_idat;
  wire [31:0] pix_chan1_rsci_idat_mxwt_pconst;


  // Interconnect Declarations for Component Instantiations 
  ccs_in_wait_v1 #(.rscid(32'sd1),
  .width(32'sd34)) pix_chan1_rsci (
      .rdy(pix_chan1_rsc_rdy),
      .vld(pix_chan1_rsc_vld),
      .dat(pix_chan1_rsc_dat),
      .irdy(pix_chan1_rsci_irdy_run_sct),
      .ivld(pix_chan1_rsci_ivld),
      .idat(pix_chan1_rsci_idat)
    );
  EdgeDetect_IP_EdgeDetect_HorDer_run_pix_chan1_rsci_pix_chan1_wait_ctrl EdgeDetect_IP_EdgeDetect_HorDer_run_pix_chan1_rsci_pix_chan1_wait_ctrl_inst
      (
      .run_wen(run_wen),
      .pix_chan1_rsci_oswt(pix_chan1_rsci_oswt),
      .pix_chan1_rsci_biwt(pix_chan1_rsci_biwt),
      .pix_chan1_rsci_bdwt(pix_chan1_rsci_bdwt),
      .pix_chan1_rsci_bcwt(pix_chan1_rsci_bcwt),
      .pix_chan1_rsci_irdy_run_sct(pix_chan1_rsci_irdy_run_sct),
      .pix_chan1_rsci_ivld(pix_chan1_rsci_ivld)
    );
  EdgeDetect_IP_EdgeDetect_HorDer_run_pix_chan1_rsci_pix_chan1_wait_dp EdgeDetect_IP_EdgeDetect_HorDer_run_pix_chan1_rsci_pix_chan1_wait_dp_inst
      (
      .clk(clk),
      .rst(rst),
      .arst_n(arst_n),
      .pix_chan1_rsci_oswt(pix_chan1_rsci_oswt),
      .pix_chan1_rsci_wen_comp(pix_chan1_rsci_wen_comp),
      .pix_chan1_rsci_idat_mxwt(pix_chan1_rsci_idat_mxwt_pconst),
      .pix_chan1_rsci_biwt(pix_chan1_rsci_biwt),
      .pix_chan1_rsci_bdwt(pix_chan1_rsci_bdwt),
      .pix_chan1_rsci_bcwt(pix_chan1_rsci_bcwt),
      .pix_chan1_rsci_idat(pix_chan1_rsci_idat)
    );
  assign pix_chan1_rsci_idat_mxwt = pix_chan1_rsci_idat_mxwt_pconst;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_HorDer_run
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_HorDer_run (
  clk, rst, arst_n, pix_chan1_rsc_dat, pix_chan1_rsc_vld, pix_chan1_rsc_rdy, widthIn,
      heightIn, pix_chan2_rsc_dat, pix_chan2_rsc_vld, pix_chan2_rsc_rdy, dx_chan_rsc_dat,
      dx_chan_rsc_vld, dx_chan_rsc_rdy
);
  input clk;
  input rst;
  input arst_n;
  input [33:0] pix_chan1_rsc_dat;
  input pix_chan1_rsc_vld;
  output pix_chan1_rsc_rdy;
  input [10:0] widthIn;
  input [9:0] heightIn;
  output [33:0] pix_chan2_rsc_dat;
  output pix_chan2_rsc_vld;
  input pix_chan2_rsc_rdy;
  output [35:0] dx_chan_rsc_dat;
  output dx_chan_rsc_vld;
  input dx_chan_rsc_rdy;


  // Interconnect Declarations
  wire run_wen;
  wire pix_chan1_rsci_wen_comp;
  wire [31:0] pix_chan1_rsci_idat_mxwt;
  wire pix_chan2_rsci_wen_comp;
  wire dx_chan_rsci_wen_comp;
  reg pix_chan2_rsci_idat_33;
  reg pix_chan2_rsci_idat_32;
  reg [23:0] pix_chan2_rsci_idat_31_8;
  reg [7:0] pix_chan2_rsci_idat_7_0;
  reg [8:0] dx_chan_rsci_idat_35_27;
  wire [9:0] nl_dx_chan_rsci_idat_35_27;
  reg [8:0] dx_chan_rsci_idat_26_18;
  reg [8:0] dx_chan_rsci_idat_17_9;
  reg [8:0] dx_chan_rsci_idat_8_0;
  wire [3:0] fsm_output;
  wire HROW_equal_tmp;
  wire [8:0] operator_11_false_acc_tmp;
  wire [9:0] nl_operator_11_false_acc_tmp;
  wire HCOL_HCOL_if_2_and_tmp;
  reg HCOL_stage_0_2;
  reg HCOL_stage_0_1;
  reg [8:0] HCOL_x_10_2_sva;
  reg [8:0] HCOL_asn_2_itm_1;
  reg HCOL_if_slc_operator_11_false_acc_9_svs_1;
  wire HCOL_if_3_and_cse;
  reg reg_pix_chan1_rsci_oswt_cse;
  reg reg_pix_chan2_rsci_oswt_cse;
  wire [8:0] HCOL_x_mux_2_cse;
  wire nand_cse;
  wire HCOL_if_3_aelse_HCOL_if_3_aelse_and_cse;
  reg [9:0] HROW_y_sva;
  reg [7:0] pix0_7_0_lpi_3;
  reg [23:0] pix0_31_8_lpi_3;
  reg [7:0] pix_buf0_31_24_lpi_3;
  reg HCOL_if_3_HCOL_if_3_and_itm_1;
  reg [8:0] operator_8_false_8_acc_1_itm_1;
  wire [9:0] nl_operator_8_false_8_acc_1_itm_1;
  reg [8:0] operator_8_false_5_acc_1_itm_1;
  wire [9:0] nl_operator_8_false_5_acc_1_itm_1;
  reg [8:0] operator_8_false_2_acc_1_itm_1;
  wire [9:0] nl_operator_8_false_2_acc_1_itm_1;
  wire [7:0] pix0_7_0_lpi_3_dfm_1_mx1w1;
  wire operator_11_false_operator_11_false_and_cse_sva_1;
  wire [7:0] pix0_31_8_lpi_3_mx1_7_0;
  wire [15:0] pix0_31_8_lpi_3_mx2_23_8;
  wire operator_8_false_2_and_cse;
  wire HROW_y_or_cse;
  wire HCOL_if_2_equal_tmp;
  wire [23:0] pix0_mux_8_cse;
  wire operator_11_false_acc_itm_9_1;

  wire[9:0] HROW_acc_nl;
  wire[10:0] nl_HROW_acc_nl;
  wire HROW_y_not_1_nl;
  wire not_nl;
  wire[23:0] pix0_mux_nl;
  wire and_69_nl;
  wire pix0_not_2_nl;
  wire mux_nl;
  wire or_4_nl;
  wire nor_nl;
  wire[7:0] HCOL_mux_3_nl;
  wire[7:0] pix0_mux_4_nl;
  wire pix0_nor_1_nl;
  wire HCOL_HCOL_nor_nl;
  wire HCOL_and_1_nl;
  wire[9:0] operator_11_false_acc_nl;
  wire[10:0] nl_operator_11_false_acc_nl;
  wire[9:0] operator_10_false_acc_1_nl;
  wire[10:0] nl_operator_10_false_acc_1_nl;

  // Interconnect Declarations for Component Instantiations 
  wire [33:0] nl_EdgeDetect_IP_EdgeDetect_HorDer_run_pix_chan2_rsci_inst_pix_chan2_rsci_idat;
  assign nl_EdgeDetect_IP_EdgeDetect_HorDer_run_pix_chan2_rsci_inst_pix_chan2_rsci_idat
      = {pix_chan2_rsci_idat_33 , pix_chan2_rsci_idat_32 , pix_chan2_rsci_idat_31_8
      , pix_chan2_rsci_idat_7_0};
  wire [35:0] nl_EdgeDetect_IP_EdgeDetect_HorDer_run_dx_chan_rsci_inst_dx_chan_rsci_idat;
  assign nl_EdgeDetect_IP_EdgeDetect_HorDer_run_dx_chan_rsci_inst_dx_chan_rsci_idat
      = {dx_chan_rsci_idat_35_27 , dx_chan_rsci_idat_26_18 , dx_chan_rsci_idat_17_9
      , dx_chan_rsci_idat_8_0};
  wire  nl_EdgeDetect_IP_EdgeDetect_HorDer_run_run_fsm_inst_HCOL_C_0_tr0;
  assign nl_EdgeDetect_IP_EdgeDetect_HorDer_run_run_fsm_inst_HCOL_C_0_tr0 = ~(HCOL_stage_0_1
      | HCOL_stage_0_2);
  EdgeDetect_IP_EdgeDetect_HorDer_run_pix_chan1_rsci EdgeDetect_IP_EdgeDetect_HorDer_run_pix_chan1_rsci_inst
      (
      .clk(clk),
      .rst(rst),
      .arst_n(arst_n),
      .pix_chan1_rsc_dat(pix_chan1_rsc_dat),
      .pix_chan1_rsc_vld(pix_chan1_rsc_vld),
      .pix_chan1_rsc_rdy(pix_chan1_rsc_rdy),
      .run_wen(run_wen),
      .pix_chan1_rsci_oswt(reg_pix_chan1_rsci_oswt_cse),
      .pix_chan1_rsci_wen_comp(pix_chan1_rsci_wen_comp),
      .pix_chan1_rsci_idat_mxwt(pix_chan1_rsci_idat_mxwt)
    );
  EdgeDetect_IP_EdgeDetect_HorDer_run_pix_chan2_rsci EdgeDetect_IP_EdgeDetect_HorDer_run_pix_chan2_rsci_inst
      (
      .clk(clk),
      .rst(rst),
      .arst_n(arst_n),
      .pix_chan2_rsc_dat(pix_chan2_rsc_dat),
      .pix_chan2_rsc_vld(pix_chan2_rsc_vld),
      .pix_chan2_rsc_rdy(pix_chan2_rsc_rdy),
      .run_wen(run_wen),
      .pix_chan2_rsci_oswt(reg_pix_chan2_rsci_oswt_cse),
      .pix_chan2_rsci_wen_comp(pix_chan2_rsci_wen_comp),
      .pix_chan2_rsci_idat(nl_EdgeDetect_IP_EdgeDetect_HorDer_run_pix_chan2_rsci_inst_pix_chan2_rsci_idat[33:0])
    );
  EdgeDetect_IP_EdgeDetect_HorDer_run_dx_chan_rsci EdgeDetect_IP_EdgeDetect_HorDer_run_dx_chan_rsci_inst
      (
      .clk(clk),
      .rst(rst),
      .arst_n(arst_n),
      .dx_chan_rsc_dat(dx_chan_rsc_dat),
      .dx_chan_rsc_vld(dx_chan_rsc_vld),
      .dx_chan_rsc_rdy(dx_chan_rsc_rdy),
      .run_wen(run_wen),
      .dx_chan_rsci_oswt(reg_pix_chan2_rsci_oswt_cse),
      .dx_chan_rsci_wen_comp(dx_chan_rsci_wen_comp),
      .dx_chan_rsci_idat(nl_EdgeDetect_IP_EdgeDetect_HorDer_run_dx_chan_rsci_inst_dx_chan_rsci_idat[35:0])
    );
  EdgeDetect_IP_EdgeDetect_HorDer_run_staller EdgeDetect_IP_EdgeDetect_HorDer_run_staller_inst
      (
      .run_wen(run_wen),
      .pix_chan1_rsci_wen_comp(pix_chan1_rsci_wen_comp),
      .pix_chan2_rsci_wen_comp(pix_chan2_rsci_wen_comp),
      .dx_chan_rsci_wen_comp(dx_chan_rsci_wen_comp)
    );
  EdgeDetect_IP_EdgeDetect_HorDer_run_run_fsm EdgeDetect_IP_EdgeDetect_HorDer_run_run_fsm_inst
      (
      .clk(clk),
      .rst(rst),
      .arst_n(arst_n),
      .run_wen(run_wen),
      .fsm_output(fsm_output),
      .HCOL_C_0_tr0(nl_EdgeDetect_IP_EdgeDetect_HorDer_run_run_fsm_inst_HCOL_C_0_tr0),
      .HROW_C_0_tr0(HROW_equal_tmp)
    );
  assign HCOL_if_3_and_cse = run_wen & (fsm_output[1]) & (~((HCOL_asn_2_itm_1==9'b000000000)))
      & HCOL_stage_0_2;
  assign HROW_y_or_cse = (fsm_output[0]) | (fsm_output[2]);
  assign pix0_mux_8_cse = MUX_v_24_2_2((pix_chan1_rsci_idat_mxwt[31:8]), pix0_31_8_lpi_3,
      HCOL_if_slc_operator_11_false_acc_9_svs_1);
  assign or_4_nl = (HCOL_x_10_2_sva!=9'b000000000);
  assign nor_nl = ~(HCOL_HCOL_if_2_and_tmp | (~((operator_11_false_acc_tmp!=9'b000000000))));
  assign mux_nl = MUX_s_1_2_2(or_4_nl, nor_nl, HCOL_stage_0_2);
  assign operator_8_false_2_and_cse = run_wen & mux_nl & HCOL_stage_0_1;
  assign HCOL_x_mux_2_cse = MUX_v_9_2_2(HCOL_x_10_2_sva, operator_11_false_acc_tmp,
      HCOL_stage_0_2);
  assign nl_operator_11_false_acc_tmp = HCOL_x_10_2_sva + 9'b000000001;
  assign operator_11_false_acc_tmp = nl_operator_11_false_acc_tmp[8:0];
  assign HCOL_if_3_aelse_HCOL_if_3_aelse_and_cse = HCOL_stage_0_1 & nand_cse;
  assign pix0_31_8_lpi_3_mx1_7_0 = MUX_v_8_2_2((pix0_31_8_lpi_3[7:0]), (pix0_mux_8_cse[7:0]),
      HCOL_stage_0_2);
  assign pix0_31_8_lpi_3_mx2_23_8 = MUX_v_16_2_2((pix0_31_8_lpi_3[23:8]), (pix0_mux_8_cse[23:8]),
      HCOL_stage_0_2);
  assign HCOL_HCOL_nor_nl = ~(HCOL_if_slc_operator_11_false_acc_9_svs_1 | HCOL_HCOL_if_2_and_tmp);
  assign HCOL_and_1_nl = HCOL_if_slc_operator_11_false_acc_9_svs_1 & (~ HCOL_HCOL_if_2_and_tmp);
  assign pix0_7_0_lpi_3_dfm_1_mx1w1 = MUX1HOT_v_8_3_2((pix_chan1_rsci_idat_mxwt[7:0]),
      pix0_7_0_lpi_3, (pix0_31_8_lpi_3[15:8]), {HCOL_HCOL_nor_nl , HCOL_and_1_nl
      , HCOL_HCOL_if_2_and_tmp});
  assign nl_operator_11_false_acc_nl = ({1'b1 , (widthIn[10:2])}) + conv_u2u_9_10(~
      HCOL_x_mux_2_cse);
  assign operator_11_false_acc_nl = nl_operator_11_false_acc_nl[9:0];
  assign operator_11_false_acc_itm_9_1 = readslicef_10_1_9(operator_11_false_acc_nl);
  assign nl_operator_10_false_acc_1_nl = heightIn + 10'b1111111111;
  assign operator_10_false_acc_1_nl = nl_operator_10_false_acc_1_nl[9:0];
  assign HROW_equal_tmp = HROW_y_sva == operator_10_false_acc_1_nl;
  assign HCOL_if_2_equal_tmp = HCOL_x_10_2_sva == (widthIn[10:2]);
  assign HCOL_HCOL_if_2_and_tmp = HCOL_if_2_equal_tmp & (widthIn[1:0]==2'b00);
  assign operator_11_false_operator_11_false_and_cse_sva_1 = (HCOL_x_mux_2_cse==9'b000000001);
  assign nand_cse = ~(HCOL_HCOL_if_2_and_tmp & HCOL_stage_0_2);
  always @(posedge clk) begin
    if ( HCOL_if_3_and_cse ) begin
      dx_chan_rsci_idat_35_27 <= nl_dx_chan_rsci_idat_35_27[8:0];
      dx_chan_rsci_idat_8_0 <= operator_8_false_2_acc_1_itm_1;
      dx_chan_rsci_idat_26_18 <= operator_8_false_8_acc_1_itm_1;
      dx_chan_rsci_idat_17_9 <= operator_8_false_5_acc_1_itm_1;
      pix_chan2_rsci_idat_33 <= HROW_equal_tmp & HCOL_HCOL_if_2_and_tmp;
      pix_chan2_rsci_idat_7_0 <= pix0_7_0_lpi_3;
      pix_chan2_rsci_idat_32 <= HCOL_if_3_HCOL_if_3_and_itm_1;
      pix_chan2_rsci_idat_31_8 <= pix0_31_8_lpi_3;
    end
  end
  always @(posedge clk) begin
    if ( run_wen & HROW_y_or_cse ) begin
      HROW_y_sva <= MUX_v_10_2_2(10'b0000000000, HROW_acc_nl, HROW_y_not_1_nl);
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      HCOL_x_10_2_sva <= 9'b000000000;
    end
    else if ( rst ) begin
      HCOL_x_10_2_sva <= 9'b000000000;
    end
    else if ( (HCOL_stage_0_2 | (fsm_output[2]) | (fsm_output[0])) & run_wen ) begin
      HCOL_x_10_2_sva <= MUX_v_9_2_2(9'b000000000, HCOL_x_mux_2_cse, not_nl);
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      HCOL_stage_0_1 <= 1'b0;
      HCOL_asn_2_itm_1 <= 9'b000000000;
      HCOL_stage_0_2 <= 1'b0;
      reg_pix_chan1_rsci_oswt_cse <= 1'b0;
      reg_pix_chan2_rsci_oswt_cse <= 1'b0;
    end
    else if ( rst ) begin
      HCOL_stage_0_1 <= 1'b0;
      HCOL_asn_2_itm_1 <= 9'b000000000;
      HCOL_stage_0_2 <= 1'b0;
      reg_pix_chan1_rsci_oswt_cse <= 1'b0;
      reg_pix_chan2_rsci_oswt_cse <= 1'b0;
    end
    else if ( run_wen ) begin
      HCOL_stage_0_1 <= HCOL_if_3_aelse_HCOL_if_3_aelse_and_cse | HROW_y_or_cse;
      HCOL_asn_2_itm_1 <= HCOL_x_mux_2_cse;
      HCOL_stage_0_2 <= HCOL_if_3_aelse_HCOL_if_3_aelse_and_cse & (~ HROW_y_or_cse);
      reg_pix_chan1_rsci_oswt_cse <= nand_cse & HCOL_stage_0_1 & (~ operator_11_false_acc_itm_9_1)
          & (fsm_output[1]);
      reg_pix_chan2_rsci_oswt_cse <= ((HCOL_asn_2_itm_1!=9'b000000000)) & HCOL_stage_0_2
          & (fsm_output[1]);
    end
  end
  always @(posedge clk) begin
    if ( ((HCOL_stage_0_2 & (fsm_output[1]) & (~ HCOL_if_slc_operator_11_false_acc_9_svs_1))
        | (fsm_output[0])) & run_wen ) begin
      pix0_31_8_lpi_3 <= MUX_v_24_2_2(24'b000000000000000000000000, pix0_mux_nl,
          pix0_not_2_nl);
    end
  end
  always @(posedge clk) begin
    if ( operator_8_false_2_and_cse ) begin
      operator_8_false_2_acc_1_itm_1 <= nl_operator_8_false_2_acc_1_itm_1[8:0];
      operator_8_false_8_acc_1_itm_1 <= nl_operator_8_false_8_acc_1_itm_1[8:0];
      operator_8_false_5_acc_1_itm_1 <= nl_operator_8_false_5_acc_1_itm_1[8:0];
      HCOL_if_3_HCOL_if_3_and_itm_1 <= (HROW_y_sva==10'b0000000000) & operator_11_false_operator_11_false_and_cse_sva_1;
    end
  end
  always @(posedge clk) begin
    if ( (((~((~(HCOL_if_2_equal_tmp & (widthIn[1:0]==2'b00))) & HCOL_if_slc_operator_11_false_acc_9_svs_1))
        & (~ (fsm_output[2])) & HCOL_stage_0_2) | (fsm_output[0]) | (fsm_output[3]))
        & run_wen ) begin
      pix0_7_0_lpi_3 <= MUX_v_8_2_2(8'b00000000, pix0_7_0_lpi_3_dfm_1_mx1w1, pix0_nor_1_nl);
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      HCOL_if_slc_operator_11_false_acc_9_svs_1 <= 1'b0;
    end
    else if ( rst ) begin
      HCOL_if_slc_operator_11_false_acc_9_svs_1 <= 1'b0;
    end
    else if ( run_wen & HCOL_if_3_aelse_HCOL_if_3_aelse_and_cse ) begin
      HCOL_if_slc_operator_11_false_acc_9_svs_1 <= operator_11_false_acc_itm_9_1;
    end
  end
  always @(posedge clk) begin
    if ( run_wen & (HCOL_stage_0_2 | HROW_y_or_cse) ) begin
      pix_buf0_31_24_lpi_3 <= MUX_v_8_2_2((pix0_mux_8_cse[23:16]), (pix0_31_8_lpi_3[23:16]),
          HROW_y_or_cse);
    end
  end
  assign nl_dx_chan_rsci_idat_35_27  = ({1'b1 , (pix0_31_8_lpi_3[15:8])}) + conv_u2s_8_9(~
      pix0_7_0_lpi_3_dfm_1_mx1w1) + 9'b000000001;
  assign nl_HROW_acc_nl = HROW_y_sva + 10'b0000000001;
  assign HROW_acc_nl = nl_HROW_acc_nl[9:0];
  assign HROW_y_not_1_nl = ~ (fsm_output[0]);
  assign not_nl = ~ HROW_y_or_cse;
  assign and_69_nl = (HCOL_HCOL_if_2_and_tmp | (~ HCOL_stage_0_1)) & HCOL_stage_0_2
      & (~ HCOL_if_slc_operator_11_false_acc_9_svs_1) & (fsm_output[1]);
  assign pix0_mux_nl = MUX_v_24_2_2(pix0_mux_8_cse, (pix_chan1_rsci_idat_mxwt[31:8]),
      and_69_nl);
  assign pix0_not_2_nl = ~ (fsm_output[0]);
  assign HCOL_mux_3_nl = MUX_v_8_2_2(pix_buf0_31_24_lpi_3, pix0_31_8_lpi_3_mx1_7_0,
      operator_11_false_operator_11_false_and_cse_sva_1);
  assign nl_operator_8_false_2_acc_1_itm_1  = ({1'b1 , HCOL_mux_3_nl}) + conv_u2s_8_9(~
      pix0_31_8_lpi_3_mx1_7_0) + 9'b000000001;
  assign nl_operator_8_false_8_acc_1_itm_1  = ({1'b1 , pix0_31_8_lpi_3_mx1_7_0})
      + conv_u2s_8_9(~ (pix0_31_8_lpi_3_mx2_23_8[15:8])) + 9'b000000001;
  assign pix0_mux_4_nl = MUX_v_8_2_2(pix0_7_0_lpi_3, pix0_7_0_lpi_3_dfm_1_mx1w1,
      HCOL_stage_0_2);
  assign nl_operator_8_false_5_acc_1_itm_1  = ({1'b1 , pix0_mux_4_nl}) + conv_u2s_8_9(~
      (pix0_31_8_lpi_3_mx2_23_8[7:0])) + 9'b000000001;
  assign pix0_nor_1_nl = ~((fsm_output[3]) | (fsm_output[0]));

  function automatic [7:0] MUX1HOT_v_8_3_2;
    input [7:0] input_2;
    input [7:0] input_1;
    input [7:0] input_0;
    input [2:0] sel;
    reg [7:0] result;
  begin
    result = input_0 & {8{sel[0]}};
    result = result | (input_1 & {8{sel[1]}});
    result = result | (input_2 & {8{sel[2]}});
    MUX1HOT_v_8_3_2 = result;
  end
  endfunction


  function automatic  MUX_s_1_2_2;
    input  input_0;
    input  input_1;
    input  sel;
    reg  result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_s_1_2_2 = result;
  end
  endfunction


  function automatic [9:0] MUX_v_10_2_2;
    input [9:0] input_0;
    input [9:0] input_1;
    input  sel;
    reg [9:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_10_2_2 = result;
  end
  endfunction


  function automatic [15:0] MUX_v_16_2_2;
    input [15:0] input_0;
    input [15:0] input_1;
    input  sel;
    reg [15:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_16_2_2 = result;
  end
  endfunction


  function automatic [23:0] MUX_v_24_2_2;
    input [23:0] input_0;
    input [23:0] input_1;
    input  sel;
    reg [23:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_24_2_2 = result;
  end
  endfunction


  function automatic [7:0] MUX_v_8_2_2;
    input [7:0] input_0;
    input [7:0] input_1;
    input  sel;
    reg [7:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_8_2_2 = result;
  end
  endfunction


  function automatic [8:0] MUX_v_9_2_2;
    input [8:0] input_0;
    input [8:0] input_1;
    input  sel;
    reg [8:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_9_2_2 = result;
  end
  endfunction


  function automatic [0:0] readslicef_10_1_9;
    input [9:0] vector;
    reg [9:0] tmp;
  begin
    tmp = vector >> 9;
    readslicef_10_1_9 = tmp[0:0];
  end
  endfunction


  function automatic [8:0] conv_u2s_8_9 ;
    input [7:0]  vector ;
  begin
    conv_u2s_8_9 =  {1'b0, vector};
  end
  endfunction


  function automatic [9:0] conv_u2u_9_10 ;
    input [8:0]  vector ;
  begin
    conv_u2u_9_10 = {1'b0, vector};
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_HorDer_struct
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_HorDer_struct (
  clk, rst, arst_n, pix_chan1_rsc_dat_eol, pix_chan1_rsc_dat_sof, pix_chan1_rsc_dat_pix,
      pix_chan1_rsc_vld, pix_chan1_rsc_rdy, widthIn, heightIn, pix_chan2_rsc_dat_eol,
      pix_chan2_rsc_dat_sof, pix_chan2_rsc_dat_pix, pix_chan2_rsc_vld, pix_chan2_rsc_rdy,
      dx_chan_rsc_dat, dx_chan_rsc_vld, dx_chan_rsc_rdy
);
  input clk;
  input rst;
  input arst_n;
  input pix_chan1_rsc_dat_eol;
  input pix_chan1_rsc_dat_sof;
  input [31:0] pix_chan1_rsc_dat_pix;
  input pix_chan1_rsc_vld;
  output pix_chan1_rsc_rdy;
  input [10:0] widthIn;
  input [9:0] heightIn;
  output pix_chan2_rsc_dat_eol;
  output pix_chan2_rsc_dat_sof;
  output [31:0] pix_chan2_rsc_dat_pix;
  output pix_chan2_rsc_vld;
  input pix_chan2_rsc_rdy;
  output [35:0] dx_chan_rsc_dat;
  output dx_chan_rsc_vld;
  input dx_chan_rsc_rdy;


  // Interconnect Declarations
  wire [33:0] pix_chan2_rsc_dat;


  // Interconnect Declarations for Component Instantiations 
  wire [33:0] nl_EdgeDetect_IP_EdgeDetect_HorDer_run_inst_pix_chan1_rsc_dat;
  assign nl_EdgeDetect_IP_EdgeDetect_HorDer_run_inst_pix_chan1_rsc_dat = {pix_chan1_rsc_dat_eol
      , pix_chan1_rsc_dat_sof , pix_chan1_rsc_dat_pix};
  EdgeDetect_IP_EdgeDetect_HorDer_run EdgeDetect_IP_EdgeDetect_HorDer_run_inst (
      .clk(clk),
      .rst(rst),
      .arst_n(arst_n),
      .pix_chan1_rsc_dat(nl_EdgeDetect_IP_EdgeDetect_HorDer_run_inst_pix_chan1_rsc_dat[33:0]),
      .pix_chan1_rsc_vld(pix_chan1_rsc_vld),
      .pix_chan1_rsc_rdy(pix_chan1_rsc_rdy),
      .widthIn(widthIn),
      .heightIn(heightIn),
      .pix_chan2_rsc_dat(pix_chan2_rsc_dat),
      .pix_chan2_rsc_vld(pix_chan2_rsc_vld),
      .pix_chan2_rsc_rdy(pix_chan2_rsc_rdy),
      .dx_chan_rsc_dat(dx_chan_rsc_dat),
      .dx_chan_rsc_vld(dx_chan_rsc_vld),
      .dx_chan_rsc_rdy(dx_chan_rsc_rdy)
    );
  assign pix_chan2_rsc_dat_pix = pix_chan2_rsc_dat[31:0];
  assign pix_chan2_rsc_dat_sof = pix_chan2_rsc_dat[32];
  assign pix_chan2_rsc_dat_eol = pix_chan2_rsc_dat[33];
endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_HorDer
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_HorDer (
  clk, rst, arst_n, pix_chan1_rsc_dat, pix_chan1_rsc_vld, pix_chan1_rsc_rdy, widthIn,
      heightIn, pix_chan2_rsc_dat, pix_chan2_rsc_vld, pix_chan2_rsc_rdy, dx_chan_rsc_dat,
      dx_chan_rsc_vld, dx_chan_rsc_rdy
);
  input clk;
  input rst;
  input arst_n;
  input [33:0] pix_chan1_rsc_dat;
  input pix_chan1_rsc_vld;
  output pix_chan1_rsc_rdy;
  input [10:0] widthIn;
  input [9:0] heightIn;
  output [33:0] pix_chan2_rsc_dat;
  output pix_chan2_rsc_vld;
  input pix_chan2_rsc_rdy;
  output [35:0] dx_chan_rsc_dat;
  output dx_chan_rsc_vld;
  input dx_chan_rsc_rdy;


  // Interconnect Declarations
  wire pix_chan2_rsc_dat_eol;
  wire pix_chan2_rsc_dat_sof;
  wire [31:0] pix_chan2_rsc_dat_pix;


  // Interconnect Declarations for Component Instantiations 
  wire  nl_EdgeDetect_IP_EdgeDetect_HorDer_struct_inst_pix_chan1_rsc_dat_eol;
  assign nl_EdgeDetect_IP_EdgeDetect_HorDer_struct_inst_pix_chan1_rsc_dat_eol = pix_chan1_rsc_dat[33];
  wire  nl_EdgeDetect_IP_EdgeDetect_HorDer_struct_inst_pix_chan1_rsc_dat_sof;
  assign nl_EdgeDetect_IP_EdgeDetect_HorDer_struct_inst_pix_chan1_rsc_dat_sof = pix_chan1_rsc_dat[32];
  wire [31:0] nl_EdgeDetect_IP_EdgeDetect_HorDer_struct_inst_pix_chan1_rsc_dat_pix;
  assign nl_EdgeDetect_IP_EdgeDetect_HorDer_struct_inst_pix_chan1_rsc_dat_pix = pix_chan1_rsc_dat[31:0];
  EdgeDetect_IP_EdgeDetect_HorDer_struct EdgeDetect_IP_EdgeDetect_HorDer_struct_inst
      (
      .clk(clk),
      .rst(rst),
      .arst_n(arst_n),
      .pix_chan1_rsc_dat_eol(nl_EdgeDetect_IP_EdgeDetect_HorDer_struct_inst_pix_chan1_rsc_dat_eol),
      .pix_chan1_rsc_dat_sof(nl_EdgeDetect_IP_EdgeDetect_HorDer_struct_inst_pix_chan1_rsc_dat_sof),
      .pix_chan1_rsc_dat_pix(nl_EdgeDetect_IP_EdgeDetect_HorDer_struct_inst_pix_chan1_rsc_dat_pix[31:0]),
      .pix_chan1_rsc_vld(pix_chan1_rsc_vld),
      .pix_chan1_rsc_rdy(pix_chan1_rsc_rdy),
      .widthIn(widthIn),
      .heightIn(heightIn),
      .pix_chan2_rsc_dat_eol(pix_chan2_rsc_dat_eol),
      .pix_chan2_rsc_dat_sof(pix_chan2_rsc_dat_sof),
      .pix_chan2_rsc_dat_pix(pix_chan2_rsc_dat_pix),
      .pix_chan2_rsc_vld(pix_chan2_rsc_vld),
      .pix_chan2_rsc_rdy(pix_chan2_rsc_rdy),
      .dx_chan_rsc_dat(dx_chan_rsc_dat),
      .dx_chan_rsc_vld(dx_chan_rsc_vld),
      .dx_chan_rsc_rdy(dx_chan_rsc_rdy)
    );
  assign pix_chan2_rsc_dat = {pix_chan2_rsc_dat_eol , pix_chan2_rsc_dat_sof , pix_chan2_rsc_dat_pix};
endmodule








//------> /home/raid7_4/raid1_1/linux/mentor/Catapult/2023.2/Mgc_home/pkgs/siflibs/ccs_in_wait_coupled_v1.v 
//------------------------------------------------------------------------------
// Catapult Synthesis - Sample I/O Port Library
//
// Copyright (c) 2003-2017 Mentor Graphics Corp.
//       All Rights Reserved
//
// This document may be used and distributed without restriction provided that
// this copyright statement is not removed from the file and that any derivative
// work contains this copyright notice.
//
// The design information contained in this file is intended to be an example
// of the functionality which the end user may study in preparation for creating
// their own custom interfaces. This design does not necessarily present a 
// complete implementation of the named protocol or standard.
//
//------------------------------------------------------------------------------


module ccs_in_wait_coupled_v1 (idat, rdy, ivld, dat, irdy, vld);

  parameter integer rscid = 1;
  parameter integer width = 8;

  output [width-1:0] idat;
  output             rdy;
  output             ivld;
  input  [width-1:0] dat;
  input              irdy;
  input              vld;

  wire   [width-1:0] idat;
  wire               rdy;
  wire               ivld;

  assign idat = dat;
  assign rdy = irdy;
  assign ivld = vld;

endmodule


//------> ../EdgeDetect_IP_EdgeDetect_VerDer.v1/rtl.v 
// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    2023.2/1059873 Production Release
//  HLS Date:       Mon Aug  7 10:54:31 PDT 2023
// 
//  Generated by:   r12016@cad40
//  Generated date: Sun Apr  7 20:50:33 2024
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_VerDer_ccs_sample_mem_ccs_ram_sync_singleport_rwport_en_7_64_10_963_963_64_5_gen
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_VerDer_ccs_sample_mem_ccs_ram_sync_singleport_rwport_en_7_64_10_963_963_64_5_gen
    (
  en, q, we, d, adr, adr_d, d_d, en_d, we_d, q_d, port_0_rw_ram_ir_internal_RMASK_B_d,
      port_0_rw_ram_ir_internal_WMASK_B_d
);
  output en;
  input [63:0] q;
  output we;
  output [63:0] d;
  output [9:0] adr;
  input [9:0] adr_d;
  input [63:0] d_d;
  input en_d;
  input we_d;
  output [63:0] q_d;
  input port_0_rw_ram_ir_internal_RMASK_B_d;
  input port_0_rw_ram_ir_internal_WMASK_B_d;



  // Interconnect Declarations for Component Instantiations 
  assign en = (en_d);
  assign q_d = q;
  assign we = (port_0_rw_ram_ir_internal_WMASK_B_d);
  assign d = (d_d);
  assign adr = (adr_d);
endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_VerDer_ccs_sample_mem_ccs_ram_sync_singleport_rwport_en_6_64_10_963_963_64_5_gen
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_VerDer_ccs_sample_mem_ccs_ram_sync_singleport_rwport_en_6_64_10_963_963_64_5_gen
    (
  en, q, we, d, adr, adr_d, d_d, en_d, we_d, q_d, port_0_rw_ram_ir_internal_RMASK_B_d,
      port_0_rw_ram_ir_internal_WMASK_B_d
);
  output en;
  input [63:0] q;
  output we;
  output [63:0] d;
  output [9:0] adr;
  input [9:0] adr_d;
  input [63:0] d_d;
  input en_d;
  input we_d;
  output [63:0] q_d;
  input port_0_rw_ram_ir_internal_RMASK_B_d;
  input port_0_rw_ram_ir_internal_WMASK_B_d;



  // Interconnect Declarations for Component Instantiations 
  assign en = (en_d);
  assign q_d = q;
  assign we = (port_0_rw_ram_ir_internal_WMASK_B_d);
  assign d = (d_d);
  assign adr = (adr_d);
endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_VerDer_run_run_fsm
//  FSM Module
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_VerDer_run_run_fsm (
  clk, rst, arst_n, run_wen, fsm_output, VCOL_C_0_tr0, VROW_C_0_tr0
);
  input clk;
  input rst;
  input arst_n;
  input run_wen;
  output [3:0] fsm_output;
  reg [3:0] fsm_output;
  input VCOL_C_0_tr0;
  input VROW_C_0_tr0;


  // FSM State Type Declaration for EdgeDetect_IP_EdgeDetect_VerDer_run_run_fsm_1
  parameter
    main_C_0 = 2'd0,
    VCOL_C_0 = 2'd1,
    VROW_C_0 = 2'd2,
    main_C_1 = 2'd3;

  reg [1:0] state_var;
  reg [1:0] state_var_NS;


  // Interconnect Declarations for Component Instantiations 
  always @(*)
  begin : EdgeDetect_IP_EdgeDetect_VerDer_run_run_fsm_1
    case (state_var)
      VCOL_C_0 : begin
        fsm_output = 4'b0010;
        if ( VCOL_C_0_tr0 ) begin
          state_var_NS = VROW_C_0;
        end
        else begin
          state_var_NS = VCOL_C_0;
        end
      end
      VROW_C_0 : begin
        fsm_output = 4'b0100;
        if ( VROW_C_0_tr0 ) begin
          state_var_NS = main_C_1;
        end
        else begin
          state_var_NS = VCOL_C_0;
        end
      end
      main_C_1 : begin
        fsm_output = 4'b1000;
        state_var_NS = main_C_0;
      end
      // main_C_0
      default : begin
        fsm_output = 4'b0001;
        state_var_NS = VCOL_C_0;
      end
    endcase
  end

  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      state_var <= main_C_0;
    end
    else if ( rst ) begin
      state_var <= main_C_0;
    end
    else if ( run_wen ) begin
      state_var <= state_var_NS;
    end
  end

endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_VerDer_run_staller
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_VerDer_run_staller (
  run_wen, dat_in_rsci_wen_comp, pix_chan1_rsci_wen_comp, dy_chan_rsci_wen_comp
);
  output run_wen;
  input dat_in_rsci_wen_comp;
  input pix_chan1_rsci_wen_comp;
  input dy_chan_rsci_wen_comp;



  // Interconnect Declarations for Component Instantiations 
  assign run_wen = dat_in_rsci_wen_comp & pix_chan1_rsci_wen_comp & dy_chan_rsci_wen_comp;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_VerDer_run_wait_dp
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_VerDer_run_wait_dp (
  line_buf0_rsci_en_d, run_wen, line_buf0_rsci_cgo, line_buf0_rsci_cgo_ir_unreg
);
  output line_buf0_rsci_en_d;
  input run_wen;
  input line_buf0_rsci_cgo;
  input line_buf0_rsci_cgo_ir_unreg;



  // Interconnect Declarations for Component Instantiations 
  assign line_buf0_rsci_en_d = run_wen & (line_buf0_rsci_cgo | line_buf0_rsci_cgo_ir_unreg);
endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_VerDer_run_dy_chan_rsci_dy_chan_wait_dp
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_VerDer_run_dy_chan_rsci_dy_chan_wait_dp (
  clk, rst, arst_n, dy_chan_rsci_oswt, dy_chan_rsci_wen_comp, dy_chan_rsci_biwt,
      dy_chan_rsci_bdwt, dy_chan_rsci_bcwt
);
  input clk;
  input rst;
  input arst_n;
  input dy_chan_rsci_oswt;
  output dy_chan_rsci_wen_comp;
  input dy_chan_rsci_biwt;
  input dy_chan_rsci_bdwt;
  output dy_chan_rsci_bcwt;
  reg dy_chan_rsci_bcwt;



  // Interconnect Declarations for Component Instantiations 
  assign dy_chan_rsci_wen_comp = (~ dy_chan_rsci_oswt) | dy_chan_rsci_biwt | dy_chan_rsci_bcwt;
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      dy_chan_rsci_bcwt <= 1'b0;
    end
    else if ( rst ) begin
      dy_chan_rsci_bcwt <= 1'b0;
    end
    else begin
      dy_chan_rsci_bcwt <= ~((~(dy_chan_rsci_bcwt | dy_chan_rsci_biwt)) | dy_chan_rsci_bdwt);
    end
  end
endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_VerDer_run_dy_chan_rsci_dy_chan_wait_ctrl
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_VerDer_run_dy_chan_rsci_dy_chan_wait_ctrl (
  run_wen, dy_chan_rsci_oswt, dy_chan_rsci_biwt, dy_chan_rsci_bdwt, dy_chan_rsci_bcwt,
      dy_chan_rsci_irdy, dy_chan_rsci_ivld_run_sct
);
  input run_wen;
  input dy_chan_rsci_oswt;
  output dy_chan_rsci_biwt;
  output dy_chan_rsci_bdwt;
  input dy_chan_rsci_bcwt;
  input dy_chan_rsci_irdy;
  output dy_chan_rsci_ivld_run_sct;


  // Interconnect Declarations
  wire dy_chan_rsci_ogwt;


  // Interconnect Declarations for Component Instantiations 
  assign dy_chan_rsci_bdwt = dy_chan_rsci_oswt & run_wen;
  assign dy_chan_rsci_biwt = dy_chan_rsci_ogwt & dy_chan_rsci_irdy;
  assign dy_chan_rsci_ogwt = dy_chan_rsci_oswt & (~ dy_chan_rsci_bcwt);
  assign dy_chan_rsci_ivld_run_sct = dy_chan_rsci_ogwt;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_VerDer_run_pix_chan1_rsci_pix_chan1_wait_dp
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_VerDer_run_pix_chan1_rsci_pix_chan1_wait_dp (
  clk, rst, arst_n, pix_chan1_rsci_oswt, pix_chan1_rsci_wen_comp, pix_chan1_rsci_biwt,
      pix_chan1_rsci_bdwt, pix_chan1_rsci_bcwt
);
  input clk;
  input rst;
  input arst_n;
  input pix_chan1_rsci_oswt;
  output pix_chan1_rsci_wen_comp;
  input pix_chan1_rsci_biwt;
  input pix_chan1_rsci_bdwt;
  output pix_chan1_rsci_bcwt;
  reg pix_chan1_rsci_bcwt;



  // Interconnect Declarations for Component Instantiations 
  assign pix_chan1_rsci_wen_comp = (~ pix_chan1_rsci_oswt) | pix_chan1_rsci_biwt
      | pix_chan1_rsci_bcwt;
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      pix_chan1_rsci_bcwt <= 1'b0;
    end
    else if ( rst ) begin
      pix_chan1_rsci_bcwt <= 1'b0;
    end
    else begin
      pix_chan1_rsci_bcwt <= ~((~(pix_chan1_rsci_bcwt | pix_chan1_rsci_biwt)) | pix_chan1_rsci_bdwt);
    end
  end
endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_VerDer_run_pix_chan1_rsci_pix_chan1_wait_ctrl
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_VerDer_run_pix_chan1_rsci_pix_chan1_wait_ctrl (
  run_wen, pix_chan1_rsci_oswt, pix_chan1_rsci_biwt, pix_chan1_rsci_bdwt, pix_chan1_rsci_bcwt,
      pix_chan1_rsci_irdy, pix_chan1_rsci_ivld_run_sct
);
  input run_wen;
  input pix_chan1_rsci_oswt;
  output pix_chan1_rsci_biwt;
  output pix_chan1_rsci_bdwt;
  input pix_chan1_rsci_bcwt;
  input pix_chan1_rsci_irdy;
  output pix_chan1_rsci_ivld_run_sct;


  // Interconnect Declarations
  wire pix_chan1_rsci_ogwt;


  // Interconnect Declarations for Component Instantiations 
  assign pix_chan1_rsci_bdwt = pix_chan1_rsci_oswt & run_wen;
  assign pix_chan1_rsci_biwt = pix_chan1_rsci_ogwt & pix_chan1_rsci_irdy;
  assign pix_chan1_rsci_ogwt = pix_chan1_rsci_oswt & (~ pix_chan1_rsci_bcwt);
  assign pix_chan1_rsci_ivld_run_sct = pix_chan1_rsci_ogwt;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_VerDer_run_dat_in_rsci_dat_in_wait_ctrl
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_VerDer_run_dat_in_rsci_dat_in_wait_ctrl (
  run_wen, dat_in_rsci_iswt0, dat_in_rsci_irdy_run_sct
);
  input run_wen;
  input dat_in_rsci_iswt0;
  output dat_in_rsci_irdy_run_sct;



  // Interconnect Declarations for Component Instantiations 
  assign dat_in_rsci_irdy_run_sct = dat_in_rsci_iswt0 & run_wen;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_VerDer_run_dy_chan_rsci
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_VerDer_run_dy_chan_rsci (
  clk, rst, arst_n, dy_chan_rsc_dat, dy_chan_rsc_vld, dy_chan_rsc_rdy, run_wen, dy_chan_rsci_oswt,
      dy_chan_rsci_wen_comp, dy_chan_rsci_idat
);
  input clk;
  input rst;
  input arst_n;
  output [35:0] dy_chan_rsc_dat;
  output dy_chan_rsc_vld;
  input dy_chan_rsc_rdy;
  input run_wen;
  input dy_chan_rsci_oswt;
  output dy_chan_rsci_wen_comp;
  input [35:0] dy_chan_rsci_idat;


  // Interconnect Declarations
  wire dy_chan_rsci_biwt;
  wire dy_chan_rsci_bdwt;
  wire dy_chan_rsci_bcwt;
  wire dy_chan_rsci_irdy;
  wire dy_chan_rsci_ivld_run_sct;


  // Interconnect Declarations for Component Instantiations 
  ccs_out_wait_v1 #(.rscid(32'sd5),
  .width(32'sd36)) dy_chan_rsci (
      .irdy(dy_chan_rsci_irdy),
      .ivld(dy_chan_rsci_ivld_run_sct),
      .idat(dy_chan_rsci_idat),
      .rdy(dy_chan_rsc_rdy),
      .vld(dy_chan_rsc_vld),
      .dat(dy_chan_rsc_dat)
    );
  EdgeDetect_IP_EdgeDetect_VerDer_run_dy_chan_rsci_dy_chan_wait_ctrl EdgeDetect_IP_EdgeDetect_VerDer_run_dy_chan_rsci_dy_chan_wait_ctrl_inst
      (
      .run_wen(run_wen),
      .dy_chan_rsci_oswt(dy_chan_rsci_oswt),
      .dy_chan_rsci_biwt(dy_chan_rsci_biwt),
      .dy_chan_rsci_bdwt(dy_chan_rsci_bdwt),
      .dy_chan_rsci_bcwt(dy_chan_rsci_bcwt),
      .dy_chan_rsci_irdy(dy_chan_rsci_irdy),
      .dy_chan_rsci_ivld_run_sct(dy_chan_rsci_ivld_run_sct)
    );
  EdgeDetect_IP_EdgeDetect_VerDer_run_dy_chan_rsci_dy_chan_wait_dp EdgeDetect_IP_EdgeDetect_VerDer_run_dy_chan_rsci_dy_chan_wait_dp_inst
      (
      .clk(clk),
      .rst(rst),
      .arst_n(arst_n),
      .dy_chan_rsci_oswt(dy_chan_rsci_oswt),
      .dy_chan_rsci_wen_comp(dy_chan_rsci_wen_comp),
      .dy_chan_rsci_biwt(dy_chan_rsci_biwt),
      .dy_chan_rsci_bdwt(dy_chan_rsci_bdwt),
      .dy_chan_rsci_bcwt(dy_chan_rsci_bcwt)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_VerDer_run_pix_chan1_rsci
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_VerDer_run_pix_chan1_rsci (
  clk, rst, arst_n, pix_chan1_rsc_dat, pix_chan1_rsc_vld, pix_chan1_rsc_rdy, run_wen,
      pix_chan1_rsci_oswt, pix_chan1_rsci_wen_comp, pix_chan1_rsci_idat
);
  input clk;
  input rst;
  input arst_n;
  output [33:0] pix_chan1_rsc_dat;
  output pix_chan1_rsc_vld;
  input pix_chan1_rsc_rdy;
  input run_wen;
  input pix_chan1_rsci_oswt;
  output pix_chan1_rsci_wen_comp;
  input [33:0] pix_chan1_rsci_idat;


  // Interconnect Declarations
  wire pix_chan1_rsci_biwt;
  wire pix_chan1_rsci_bdwt;
  wire pix_chan1_rsci_bcwt;
  wire pix_chan1_rsci_irdy;
  wire pix_chan1_rsci_ivld_run_sct;


  // Interconnect Declarations for Component Instantiations 
  ccs_out_wait_v1 #(.rscid(32'sd4),
  .width(32'sd34)) pix_chan1_rsci (
      .irdy(pix_chan1_rsci_irdy),
      .ivld(pix_chan1_rsci_ivld_run_sct),
      .idat(pix_chan1_rsci_idat),
      .rdy(pix_chan1_rsc_rdy),
      .vld(pix_chan1_rsc_vld),
      .dat(pix_chan1_rsc_dat)
    );
  EdgeDetect_IP_EdgeDetect_VerDer_run_pix_chan1_rsci_pix_chan1_wait_ctrl EdgeDetect_IP_EdgeDetect_VerDer_run_pix_chan1_rsci_pix_chan1_wait_ctrl_inst
      (
      .run_wen(run_wen),
      .pix_chan1_rsci_oswt(pix_chan1_rsci_oswt),
      .pix_chan1_rsci_biwt(pix_chan1_rsci_biwt),
      .pix_chan1_rsci_bdwt(pix_chan1_rsci_bdwt),
      .pix_chan1_rsci_bcwt(pix_chan1_rsci_bcwt),
      .pix_chan1_rsci_irdy(pix_chan1_rsci_irdy),
      .pix_chan1_rsci_ivld_run_sct(pix_chan1_rsci_ivld_run_sct)
    );
  EdgeDetect_IP_EdgeDetect_VerDer_run_pix_chan1_rsci_pix_chan1_wait_dp EdgeDetect_IP_EdgeDetect_VerDer_run_pix_chan1_rsci_pix_chan1_wait_dp_inst
      (
      .clk(clk),
      .rst(rst),
      .arst_n(arst_n),
      .pix_chan1_rsci_oswt(pix_chan1_rsci_oswt),
      .pix_chan1_rsci_wen_comp(pix_chan1_rsci_wen_comp),
      .pix_chan1_rsci_biwt(pix_chan1_rsci_biwt),
      .pix_chan1_rsci_bdwt(pix_chan1_rsci_bdwt),
      .pix_chan1_rsci_bcwt(pix_chan1_rsci_bcwt)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_VerDer_run_dat_in_rsci
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_VerDer_run_dat_in_rsci (
  dat_in_rsc_dat, dat_in_rsc_vld, dat_in_rsc_rdy, run_wen, dat_in_rsci_oswt, dat_in_rsci_wen_comp,
      dat_in_rsci_idat_mxwt
);
  input [33:0] dat_in_rsc_dat;
  input dat_in_rsc_vld;
  output dat_in_rsc_rdy;
  input run_wen;
  input dat_in_rsci_oswt;
  output dat_in_rsci_wen_comp;
  output [31:0] dat_in_rsci_idat_mxwt;


  // Interconnect Declarations
  wire dat_in_rsci_irdy_run_sct;
  wire dat_in_rsci_ivld;
  wire [33:0] dat_in_rsci_idat;


  // Interconnect Declarations for Component Instantiations 
  ccs_in_wait_coupled_v1 #(.rscid(32'sd1),
  .width(32'sd34)) dat_in_rsci (
      .rdy(dat_in_rsc_rdy),
      .vld(dat_in_rsc_vld),
      .dat(dat_in_rsc_dat),
      .irdy(dat_in_rsci_irdy_run_sct),
      .ivld(dat_in_rsci_ivld),
      .idat(dat_in_rsci_idat)
    );
  EdgeDetect_IP_EdgeDetect_VerDer_run_dat_in_rsci_dat_in_wait_ctrl EdgeDetect_IP_EdgeDetect_VerDer_run_dat_in_rsci_dat_in_wait_ctrl_inst
      (
      .run_wen(run_wen),
      .dat_in_rsci_iswt0(dat_in_rsci_oswt),
      .dat_in_rsci_irdy_run_sct(dat_in_rsci_irdy_run_sct)
    );
  assign dat_in_rsci_idat_mxwt = dat_in_rsci_idat[31:0];
  assign dat_in_rsci_wen_comp = (~ dat_in_rsci_oswt) | dat_in_rsci_ivld;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_VerDer_run
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_VerDer_run (
  clk, rst, arst_n, dat_in_rsc_dat, dat_in_rsc_vld, dat_in_rsc_rdy, widthIn, heightIn,
      pix_chan1_rsc_dat, pix_chan1_rsc_vld, pix_chan1_rsc_rdy, dy_chan_rsc_dat, dy_chan_rsc_vld,
      dy_chan_rsc_rdy, line_buf0_rsci_d_d, line_buf0_rsci_en_d, line_buf0_rsci_q_d,
      line_buf1_rsci_d_d, line_buf1_rsci_q_d, line_buf0_rsci_adr_d_pff, line_buf0_rsci_we_d_pff,
      line_buf0_rsci_port_0_rw_ram_ir_internal_RMASK_B_d_pff
);
  input clk;
  input rst;
  input arst_n;
  input [33:0] dat_in_rsc_dat;
  input dat_in_rsc_vld;
  output dat_in_rsc_rdy;
  input [10:0] widthIn;
  input [9:0] heightIn;
  output [33:0] pix_chan1_rsc_dat;
  output pix_chan1_rsc_vld;
  input pix_chan1_rsc_rdy;
  output [35:0] dy_chan_rsc_dat;
  output dy_chan_rsc_vld;
  input dy_chan_rsc_rdy;
  output [63:0] line_buf0_rsci_d_d;
  output line_buf0_rsci_en_d;
  input [63:0] line_buf0_rsci_q_d;
  output [63:0] line_buf1_rsci_d_d;
  input [63:0] line_buf1_rsci_q_d;
  output [9:0] line_buf0_rsci_adr_d_pff;
  output line_buf0_rsci_we_d_pff;
  output line_buf0_rsci_port_0_rw_ram_ir_internal_RMASK_B_d_pff;


  // Interconnect Declarations
  wire run_wen;
  wire dat_in_rsci_wen_comp;
  wire [31:0] dat_in_rsci_idat_mxwt;
  wire pix_chan1_rsci_wen_comp;
  wire dy_chan_rsci_wen_comp;
  reg pix_chan1_rsci_idat_33;
  reg pix_chan1_rsci_idat_32;
  reg [31:0] pix_chan1_rsci_idat_31_0;
  reg [8:0] dy_chan_rsci_idat_35_27;
  wire [9:0] nl_dy_chan_rsci_idat_35_27;
  reg [8:0] dy_chan_rsci_idat_26_18;
  wire [9:0] nl_dy_chan_rsci_idat_26_18;
  reg [8:0] dy_chan_rsci_idat_17_9;
  wire [9:0] nl_dy_chan_rsci_idat_17_9;
  reg [8:0] dy_chan_rsci_idat_8_0;
  wire [9:0] nl_dy_chan_rsci_idat_8_0;
  reg [31:0] pix0_lpi_3_dfm;
  wire [3:0] fsm_output;
  wire VROW_equal_tmp;
  wire VCOL_VCOL_if_6_and_tmp;
  wire or_dcpl_9;
  wire or_dcpl_43;
  wire or_dcpl_48;
  wire and_dcpl_29;
  reg [9:0] VROW_y_sva;
  reg operator_10_false_nor_itm_2;
  wire [8:0] VCOL_x_10_2_sva_2;
  wire [9:0] nl_VCOL_x_10_2_sva_2;
  reg VCOL_stage_0_2;
  reg VCOL_stage_0_1;
  reg [9:0] VCOL_asn_4_itm_1;
  reg [8:0] VCOL_x_10_2_sva;
  reg operator_10_false_nor_itm_1;
  reg VCOL_stage_0_3;
  reg VCOL_x_slc_VCOL_x_10_2_0_4_itm_1;
  reg [9:0] VCOL_asn_4_itm;
  reg [9:0] VCOL_asn_4_itm_2;
  reg VCOL_if_slc_operator_10_false_acc_10_svs_1;
  reg VCOL_asn_5_itm_1;
  wire VCOL_if_5_and_cse;
  reg reg_dat_in_rsci_oswt_cse;
  reg reg_pix_chan1_rsci_oswt_cse;
  reg reg_line_buf0_rsci_cgo_cse;
  reg reg_VCOL_x_slc_VCOL_x_10_2_0_7_itm_1_cse;
  reg [31:0] reg_VCOL_qelse_slc_rdbuf1_pix_63_32_itm_1_cse;
  wire [31:0] VCOL_mux_6_cse;
  wire nand_cse;
  reg [63:0] reg_line_buf1_rsci_d_d_cse;
  wire VCOL_if_5_aelse_VCOL_if_5_aelse_and_cse;
  wire and_38_m1c;
  wire rdbuf0_pix_or_cse;
  wire and_89_rmff;
  reg [31:0] wrbuf0_pix_31_0_lpi_4;
  wire [63:0] rdbuf0_pix_mux_itm;
  wire [10:0] z_out;
  wire [11:0] nl_z_out;
  reg [31:0] pix0_lpi_3;
  reg VCOL_if_5_equal_itm_1;
  reg VCOL_if_5_nor_itm_1;
  reg VCOL_if_5_VCOL_if_5_nor_itm_1;
  reg VCOL_if_5_VCOL_if_5_nor_itm_2;
  wire pix_chan1_rsci_idat_31_0_mx0c1;
  wire [8:0] VCOL_x_10_2_sva_mx2;
  wire [31:0] pix0_lpi_3_dfm_2_mx0;
  wire [31:0] pix2_lpi_3_dfm_1;
  wire [31:0] VCOL_qr_1_lpi_3_dfm_mx0;
  wire operator_10_false_operator_10_false_and_cse_sva_1;
  wire VCOL_x_10_2_sva_mx1_0;
  wire pix0_or_1_rgt;
  wire VCOL_and_3_cse;
  wire VCOL_and_5_cse;
  wire VCOL_if_5_and_7_cse;
  wire VCOL_if_5_and_10_cse;
  wire VROW_y_or_cse;
  wire operator_10_false_acc_itm_10_1;

  wire VROW_y_not_2_nl;
  wire not_nl;
  wire[9:0] VROW_y_mux_nl;
  wire VCOL_nor_nl;
  wire mux_nl;
  wire nand_3_nl;
  wire VCOL_and_nl;
  wire VCOL_and_2_nl;
  wire[8:0] operator_11_false_1_acc_nl;
  wire[9:0] nl_operator_11_false_1_acc_nl;
  wire[10:0] operator_10_false_acc_nl;
  wire[11:0] nl_operator_10_false_acc_nl;
  wire VCOL_VCOL_nor_nl;
  wire VCOL_and_1_nl;
  wire operator_10_false_operator_10_false_and_1_nl;
  wire[9:0] operator_10_false_mux_3_nl;

  // Interconnect Declarations for Component Instantiations 
  wire [33:0] nl_EdgeDetect_IP_EdgeDetect_VerDer_run_pix_chan1_rsci_inst_pix_chan1_rsci_idat;
  assign nl_EdgeDetect_IP_EdgeDetect_VerDer_run_pix_chan1_rsci_inst_pix_chan1_rsci_idat
      = {pix_chan1_rsci_idat_33 , pix_chan1_rsci_idat_32 , pix_chan1_rsci_idat_31_0};
  wire [35:0] nl_EdgeDetect_IP_EdgeDetect_VerDer_run_dy_chan_rsci_inst_dy_chan_rsci_idat;
  assign nl_EdgeDetect_IP_EdgeDetect_VerDer_run_dy_chan_rsci_inst_dy_chan_rsci_idat
      = {dy_chan_rsci_idat_35_27 , dy_chan_rsci_idat_26_18 , dy_chan_rsci_idat_17_9
      , dy_chan_rsci_idat_8_0};
  wire  nl_EdgeDetect_IP_EdgeDetect_VerDer_run_run_fsm_inst_VCOL_C_0_tr0;
  assign nl_EdgeDetect_IP_EdgeDetect_VerDer_run_run_fsm_inst_VCOL_C_0_tr0 = ~(VCOL_stage_0_3
      | VCOL_stage_0_1 | VCOL_stage_0_2);
  EdgeDetect_IP_EdgeDetect_VerDer_run_dat_in_rsci EdgeDetect_IP_EdgeDetect_VerDer_run_dat_in_rsci_inst
      (
      .dat_in_rsc_dat(dat_in_rsc_dat),
      .dat_in_rsc_vld(dat_in_rsc_vld),
      .dat_in_rsc_rdy(dat_in_rsc_rdy),
      .run_wen(run_wen),
      .dat_in_rsci_oswt(reg_dat_in_rsci_oswt_cse),
      .dat_in_rsci_wen_comp(dat_in_rsci_wen_comp),
      .dat_in_rsci_idat_mxwt(dat_in_rsci_idat_mxwt)
    );
  EdgeDetect_IP_EdgeDetect_VerDer_run_pix_chan1_rsci EdgeDetect_IP_EdgeDetect_VerDer_run_pix_chan1_rsci_inst
      (
      .clk(clk),
      .rst(rst),
      .arst_n(arst_n),
      .pix_chan1_rsc_dat(pix_chan1_rsc_dat),
      .pix_chan1_rsc_vld(pix_chan1_rsc_vld),
      .pix_chan1_rsc_rdy(pix_chan1_rsc_rdy),
      .run_wen(run_wen),
      .pix_chan1_rsci_oswt(reg_pix_chan1_rsci_oswt_cse),
      .pix_chan1_rsci_wen_comp(pix_chan1_rsci_wen_comp),
      .pix_chan1_rsci_idat(nl_EdgeDetect_IP_EdgeDetect_VerDer_run_pix_chan1_rsci_inst_pix_chan1_rsci_idat[33:0])
    );
  EdgeDetect_IP_EdgeDetect_VerDer_run_dy_chan_rsci EdgeDetect_IP_EdgeDetect_VerDer_run_dy_chan_rsci_inst
      (
      .clk(clk),
      .rst(rst),
      .arst_n(arst_n),
      .dy_chan_rsc_dat(dy_chan_rsc_dat),
      .dy_chan_rsc_vld(dy_chan_rsc_vld),
      .dy_chan_rsc_rdy(dy_chan_rsc_rdy),
      .run_wen(run_wen),
      .dy_chan_rsci_oswt(reg_pix_chan1_rsci_oswt_cse),
      .dy_chan_rsci_wen_comp(dy_chan_rsci_wen_comp),
      .dy_chan_rsci_idat(nl_EdgeDetect_IP_EdgeDetect_VerDer_run_dy_chan_rsci_inst_dy_chan_rsci_idat[35:0])
    );
  EdgeDetect_IP_EdgeDetect_VerDer_run_wait_dp EdgeDetect_IP_EdgeDetect_VerDer_run_wait_dp_inst
      (
      .line_buf0_rsci_en_d(line_buf0_rsci_en_d),
      .run_wen(run_wen),
      .line_buf0_rsci_cgo(reg_line_buf0_rsci_cgo_cse),
      .line_buf0_rsci_cgo_ir_unreg(and_89_rmff)
    );
  EdgeDetect_IP_EdgeDetect_VerDer_run_staller EdgeDetect_IP_EdgeDetect_VerDer_run_staller_inst
      (
      .run_wen(run_wen),
      .dat_in_rsci_wen_comp(dat_in_rsci_wen_comp),
      .pix_chan1_rsci_wen_comp(pix_chan1_rsci_wen_comp),
      .dy_chan_rsci_wen_comp(dy_chan_rsci_wen_comp)
    );
  EdgeDetect_IP_EdgeDetect_VerDer_run_run_fsm EdgeDetect_IP_EdgeDetect_VerDer_run_run_fsm_inst
      (
      .clk(clk),
      .rst(rst),
      .arst_n(arst_n),
      .run_wen(run_wen),
      .fsm_output(fsm_output),
      .VCOL_C_0_tr0(nl_EdgeDetect_IP_EdgeDetect_VerDer_run_run_fsm_inst_VCOL_C_0_tr0),
      .VROW_C_0_tr0(VROW_equal_tmp)
    );
  assign VCOL_if_5_and_cse = run_wen & (fsm_output[1]) & (~((VCOL_asn_4_itm_2==10'b0000000000)))
      & VCOL_stage_0_3;
  assign VROW_y_or_cse = (fsm_output[0]) | (fsm_output[2]);
  assign VCOL_and_3_cse = run_wen & VCOL_stage_0_2;
  assign VCOL_and_5_cse = run_wen & VCOL_if_5_aelse_VCOL_if_5_aelse_and_cse;
  assign and_89_rmff = (VCOL_stage_0_3 | VCOL_stage_0_2) & (fsm_output[1]);
  assign rdbuf0_pix_or_cse = reg_VCOL_x_slc_VCOL_x_10_2_0_7_itm_1_cse | or_dcpl_48;
  assign rdbuf0_pix_mux_itm = MUX_v_64_2_2(line_buf0_rsci_q_d, reg_line_buf1_rsci_d_d_cse,
      rdbuf0_pix_or_cse);
  assign and_38_m1c = VCOL_stage_0_3 & (~ VCOL_asn_5_itm_1) & VCOL_stage_0_1;
  assign pix0_or_1_rgt = (VROW_equal_tmp & and_38_m1c) | (and_dcpl_29 & VROW_equal_tmp);
  assign VCOL_if_5_and_7_cse = run_wen & or_dcpl_9 & VCOL_stage_0_2;
  assign VCOL_and_nl = (~ or_dcpl_48) & VCOL_if_slc_operator_10_false_acc_10_svs_1;
  assign VCOL_and_2_nl = or_dcpl_48 & VCOL_if_slc_operator_10_false_acc_10_svs_1;
  assign VCOL_mux_6_cse = MUX1HOT_v_32_3_2(dat_in_rsci_idat_mxwt, pix0_lpi_3_dfm_2_mx0,
      pix0_lpi_3, {(~ VCOL_if_slc_operator_10_false_acc_10_svs_1) , VCOL_and_nl ,
      VCOL_and_2_nl});
  assign VCOL_if_5_and_10_cse = run_wen & ((VCOL_asn_4_itm!=10'b0000000000)) & VCOL_if_5_aelse_VCOL_if_5_aelse_and_cse;
  assign nl_operator_11_false_1_acc_nl = (widthIn[10:2]) + 9'b111111111;
  assign operator_11_false_1_acc_nl = nl_operator_11_false_1_acc_nl[8:0];
  assign VCOL_VCOL_if_6_and_tmp = (VCOL_x_10_2_sva == operator_11_false_1_acc_nl)
      & (widthIn[1:0]==2'b00);
  assign VCOL_if_5_aelse_VCOL_if_5_aelse_and_cse = VCOL_stage_0_1 & nand_cse;
  assign VCOL_x_10_2_sva_mx1_0 = MUX_s_1_2_2((VCOL_x_10_2_sva[0]), (VCOL_x_10_2_sva_2[0]),
      VCOL_stage_0_2);
  assign VCOL_x_10_2_sva_mx2 = MUX_v_9_2_2(VCOL_x_10_2_sva, VCOL_x_10_2_sva_2, VCOL_stage_0_2);
  assign nl_operator_10_false_acc_nl = ({1'b1 , heightIn}) + conv_u2s_10_11(~ VROW_y_sva);
  assign operator_10_false_acc_nl = nl_operator_10_false_acc_nl[10:0];
  assign operator_10_false_acc_itm_10_1 = readslicef_11_1_10(operator_10_false_acc_nl);
  assign pix0_lpi_3_dfm_2_mx0 = MUX_v_32_2_2(pix0_lpi_3_dfm, VCOL_qr_1_lpi_3_dfm_mx0,
      VROW_equal_tmp);
  assign VCOL_VCOL_nor_nl = ~(reg_VCOL_x_slc_VCOL_x_10_2_0_7_itm_1_cse | operator_10_false_operator_10_false_and_cse_sva_1);
  assign VCOL_and_1_nl = reg_VCOL_x_slc_VCOL_x_10_2_0_7_itm_1_cse & (~ operator_10_false_operator_10_false_and_cse_sva_1);
  assign pix2_lpi_3_dfm_1 = MUX1HOT_v_32_3_2((line_buf1_rsci_q_d[31:0]), reg_VCOL_qelse_slc_rdbuf1_pix_63_32_itm_1_cse,
      VCOL_qr_1_lpi_3_dfm_mx0, {VCOL_VCOL_nor_nl , VCOL_and_1_nl , operator_10_false_operator_10_false_and_cse_sva_1});
  assign VROW_equal_tmp = VROW_y_sva == heightIn;
  assign VCOL_qr_1_lpi_3_dfm_mx0 = MUX_v_32_2_2((line_buf0_rsci_q_d[31:0]), (reg_line_buf1_rsci_d_d_cse[63:32]),
      reg_VCOL_x_slc_VCOL_x_10_2_0_7_itm_1_cse);
  assign operator_10_false_operator_10_false_and_cse_sva_1 = (VROW_y_sva[0]) & operator_10_false_nor_itm_2;
  assign nl_VCOL_x_10_2_sva_2 = VCOL_x_10_2_sva + 9'b000000001;
  assign VCOL_x_10_2_sva_2 = nl_VCOL_x_10_2_sva_2[8:0];
  assign or_dcpl_9 = (VCOL_asn_4_itm_1!=10'b0000000000);
  assign nand_cse = ~(VCOL_VCOL_if_6_and_tmp & VCOL_stage_0_2);
  assign or_dcpl_43 = (VCOL_asn_4_itm_2!=10'b0000000000);
  assign or_dcpl_48 = (~ VCOL_stage_0_3) | VCOL_asn_5_itm_1;
  assign and_dcpl_29 = VCOL_stage_0_3 & (~ VCOL_stage_0_1);
  assign pix_chan1_rsci_idat_31_0_mx0c1 = or_dcpl_43 & VCOL_stage_0_3 & (~ reg_VCOL_x_slc_VCOL_x_10_2_0_7_itm_1_cse)
      & (fsm_output[1]);
  assign line_buf0_rsci_adr_d_pff = {2'b00 , (VCOL_x_10_2_sva[8:1])};
  assign line_buf0_rsci_d_d = {VCOL_mux_6_cse , wrbuf0_pix_31_0_lpi_4};
  assign line_buf0_rsci_we_d_pff = VCOL_stage_0_2 & VCOL_x_slc_VCOL_x_10_2_0_4_itm_1
      & (fsm_output[1]);
  assign line_buf0_rsci_port_0_rw_ram_ir_internal_RMASK_B_d_pff = VCOL_stage_0_2
      & (~ VCOL_x_slc_VCOL_x_10_2_0_4_itm_1) & (fsm_output[1]);
  assign line_buf1_rsci_d_d = rdbuf0_pix_mux_itm;
  always @(posedge clk) begin
    if ( VCOL_if_5_and_cse ) begin
      dy_chan_rsci_idat_35_27 <= nl_dy_chan_rsci_idat_35_27[8:0];
      dy_chan_rsci_idat_8_0 <= nl_dy_chan_rsci_idat_8_0[8:0];
      dy_chan_rsci_idat_26_18 <= nl_dy_chan_rsci_idat_26_18[8:0];
      dy_chan_rsci_idat_17_9 <= nl_dy_chan_rsci_idat_17_9[8:0];
      pix_chan1_rsci_idat_33 <= VROW_equal_tmp & VCOL_if_5_equal_itm_1 & VCOL_if_5_nor_itm_1;
      pix_chan1_rsci_idat_32 <= operator_10_false_operator_10_false_and_cse_sva_1
          & VCOL_if_5_VCOL_if_5_nor_itm_2;
    end
  end
  always @(posedge clk) begin
    if ( run_wen & ((or_dcpl_43 & VCOL_stage_0_3 & reg_VCOL_x_slc_VCOL_x_10_2_0_7_itm_1_cse
        & (fsm_output[1])) | pix_chan1_rsci_idat_31_0_mx0c1) ) begin
      pix_chan1_rsci_idat_31_0 <= MUX_v_32_2_2((reg_line_buf1_rsci_d_d_cse[63:32]),
          (line_buf0_rsci_q_d[31:0]), pix_chan1_rsci_idat_31_0_mx0c1);
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      VROW_y_sva <= 10'b0000000000;
    end
    else if ( rst ) begin
      VROW_y_sva <= 10'b0000000000;
    end
    else if ( run_wen & VROW_y_or_cse ) begin
      VROW_y_sva <= MUX_v_10_2_2(10'b0000000000, (z_out[9:0]), VROW_y_not_2_nl);
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      VCOL_asn_5_itm_1 <= 1'b0;
      VCOL_asn_4_itm_2 <= 10'b0000000000;
      reg_VCOL_x_slc_VCOL_x_10_2_0_7_itm_1_cse <= 1'b0;
    end
    else if ( rst ) begin
      VCOL_asn_5_itm_1 <= 1'b0;
      VCOL_asn_4_itm_2 <= 10'b0000000000;
      reg_VCOL_x_slc_VCOL_x_10_2_0_7_itm_1_cse <= 1'b0;
    end
    else if ( VCOL_and_3_cse ) begin
      VCOL_asn_5_itm_1 <= VCOL_VCOL_if_6_and_tmp;
      VCOL_asn_4_itm_2 <= VCOL_asn_4_itm_1;
      reg_VCOL_x_slc_VCOL_x_10_2_0_7_itm_1_cse <= VCOL_x_10_2_sva[0];
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      VCOL_stage_0_1 <= 1'b0;
      VCOL_stage_0_2 <= 1'b0;
      VCOL_stage_0_3 <= 1'b0;
      reg_dat_in_rsci_oswt_cse <= 1'b0;
      reg_pix_chan1_rsci_oswt_cse <= 1'b0;
      reg_line_buf0_rsci_cgo_cse <= 1'b0;
      VCOL_asn_4_itm <= 10'b0000000000;
    end
    else if ( rst ) begin
      VCOL_stage_0_1 <= 1'b0;
      VCOL_stage_0_2 <= 1'b0;
      VCOL_stage_0_3 <= 1'b0;
      reg_dat_in_rsci_oswt_cse <= 1'b0;
      reg_pix_chan1_rsci_oswt_cse <= 1'b0;
      reg_line_buf0_rsci_cgo_cse <= 1'b0;
      VCOL_asn_4_itm <= 10'b0000000000;
    end
    else if ( run_wen ) begin
      VCOL_stage_0_1 <= VCOL_if_5_aelse_VCOL_if_5_aelse_and_cse | VROW_y_or_cse;
      VCOL_stage_0_2 <= VCOL_if_5_aelse_VCOL_if_5_aelse_and_cse & (~ VROW_y_or_cse);
      VCOL_stage_0_3 <= VCOL_stage_0_2 & (~ VROW_y_or_cse);
      reg_dat_in_rsci_oswt_cse <= nand_cse & VCOL_stage_0_1 & (~ operator_10_false_acc_itm_10_1)
          & (fsm_output[1]);
      reg_pix_chan1_rsci_oswt_cse <= or_dcpl_43 & VCOL_stage_0_3 & (fsm_output[1]);
      reg_line_buf0_rsci_cgo_cse <= and_89_rmff;
      VCOL_asn_4_itm <= MUX_v_10_2_2(10'b0000000000, VROW_y_mux_nl, VCOL_nor_nl);
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      VCOL_x_10_2_sva <= 9'b000000000;
    end
    else if ( rst ) begin
      VCOL_x_10_2_sva <= 9'b000000000;
    end
    else if ( (VCOL_stage_0_2 | (fsm_output[2]) | (fsm_output[0])) & run_wen ) begin
      VCOL_x_10_2_sva <= MUX_v_9_2_2(9'b000000000, VCOL_x_10_2_sva_mx2, not_nl);
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      VCOL_asn_4_itm_1 <= 10'b0000000000;
      VCOL_x_slc_VCOL_x_10_2_0_4_itm_1 <= 1'b0;
      VCOL_if_slc_operator_10_false_acc_10_svs_1 <= 1'b0;
    end
    else if ( rst ) begin
      VCOL_asn_4_itm_1 <= 10'b0000000000;
      VCOL_x_slc_VCOL_x_10_2_0_4_itm_1 <= 1'b0;
      VCOL_if_slc_operator_10_false_acc_10_svs_1 <= 1'b0;
    end
    else if ( VCOL_and_5_cse ) begin
      VCOL_asn_4_itm_1 <= VCOL_asn_4_itm;
      VCOL_x_slc_VCOL_x_10_2_0_4_itm_1 <= VCOL_x_10_2_sva_mx1_0;
      VCOL_if_slc_operator_10_false_acc_10_svs_1 <= operator_10_false_acc_itm_10_1;
    end
  end
  always @(posedge clk) begin
    if ( (VROW_equal_tmp | VCOL_asn_5_itm_1 | (~(VCOL_if_slc_operator_10_false_acc_10_svs_1
        & VCOL_stage_0_3))) & run_wen ) begin
      pix0_lpi_3_dfm <= VCOL_mux_6_cse;
    end
  end
  always @(posedge clk) begin
    if ( VCOL_stage_0_3 & (~ VCOL_asn_5_itm_1) & (~ reg_VCOL_x_slc_VCOL_x_10_2_0_7_itm_1_cse)
        & run_wen ) begin
      reg_line_buf1_rsci_d_d_cse <= rdbuf0_pix_mux_itm;
    end
  end
  always @(posedge clk) begin
    if ( run_wen & (fsm_output[1]) & (~((~((~ VCOL_stage_0_1) | operator_10_false_acc_itm_10_1))
        | VCOL_stage_0_2)) & (((~ VROW_equal_tmp) & and_38_m1c) | (and_dcpl_29 &
        (~ VROW_equal_tmp)) | pix0_or_1_rgt) ) begin
      pix0_lpi_3 <= MUX_v_32_2_2(pix0_lpi_3_dfm, VCOL_qr_1_lpi_3_dfm_mx0, pix0_or_1_rgt);
    end
  end
  always @(posedge clk) begin
    if ( VCOL_if_5_and_7_cse ) begin
      VCOL_if_5_equal_itm_1 <= VCOL_x_10_2_sva == (z_out[10:2]);
      VCOL_if_5_nor_itm_1 <= ~((z_out[1:0]!=2'b00));
      VCOL_if_5_VCOL_if_5_nor_itm_2 <= VCOL_if_5_VCOL_if_5_nor_itm_1;
    end
  end
  always @(posedge clk) begin
    if ( run_wen & mux_nl & (VCOL_x_10_2_sva[0]) & (~ rdbuf0_pix_or_cse) ) begin
      reg_VCOL_qelse_slc_rdbuf1_pix_63_32_itm_1_cse <= line_buf1_rsci_q_d[63:32];
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      operator_10_false_nor_itm_2 <= 1'b0;
    end
    else if ( rst ) begin
      operator_10_false_nor_itm_2 <= 1'b0;
    end
    else if ( VCOL_if_5_and_7_cse ) begin
      operator_10_false_nor_itm_2 <= operator_10_false_nor_itm_1;
    end
  end
  always @(posedge clk) begin
    if ( run_wen & (~((~ (VCOL_x_10_2_sva_2[0])) | VCOL_VCOL_if_6_and_tmp)) & VCOL_stage_0_2
        & VCOL_stage_0_1 & (~ (VCOL_x_10_2_sva[0])) ) begin
      wrbuf0_pix_31_0_lpi_4 <= VCOL_mux_6_cse;
    end
  end
  always @(posedge clk) begin
    if ( VCOL_if_5_and_10_cse ) begin
      VCOL_if_5_VCOL_if_5_nor_itm_1 <= ~((VCOL_x_10_2_sva_mx2[8:1]!=8'b00000000)
          | VCOL_x_10_2_sva_mx1_0);
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      operator_10_false_nor_itm_1 <= 1'b0;
    end
    else if ( rst ) begin
      operator_10_false_nor_itm_1 <= 1'b0;
    end
    else if ( VCOL_if_5_and_10_cse ) begin
      operator_10_false_nor_itm_1 <= ~((VROW_y_sva[9:1]!=9'b000000000));
    end
  end
  assign nl_dy_chan_rsci_idat_35_27  = ({1'b1 , (~ (pix0_lpi_3_dfm_2_mx0[31:24]))})
      + conv_u2s_8_9(pix2_lpi_3_dfm_1[31:24]) + 9'b000000001;
  assign nl_dy_chan_rsci_idat_8_0  = ({1'b1 , (~ (pix0_lpi_3_dfm_2_mx0[7:0]))}) +
      conv_u2s_8_9(pix2_lpi_3_dfm_1[7:0]) + 9'b000000001;
  assign nl_dy_chan_rsci_idat_26_18  = ({1'b1 , (~ (pix0_lpi_3_dfm_2_mx0[23:16]))})
      + conv_u2s_8_9(pix2_lpi_3_dfm_1[23:16]) + 9'b000000001;
  assign nl_dy_chan_rsci_idat_17_9  = ({1'b1 , (~ (pix0_lpi_3_dfm_2_mx0[15:8]))})
      + conv_u2s_8_9(pix2_lpi_3_dfm_1[15:8]) + 9'b000000001;
  assign VROW_y_not_2_nl = ~ (fsm_output[0]);
  assign VROW_y_mux_nl = MUX_v_10_2_2(VROW_y_sva, (z_out[9:0]), fsm_output[2]);
  assign VCOL_nor_nl = ~((fsm_output[0]) | (fsm_output[3]));
  assign not_nl = ~ VROW_y_or_cse;
  assign nand_3_nl = ~(((~ (VCOL_x_10_2_sva_2[0])) | VCOL_VCOL_if_6_and_tmp) & (~((~((VROW_y_sva[0])
      & operator_10_false_nor_itm_1)) & or_dcpl_9)));
  assign mux_nl = MUX_s_1_2_2(VCOL_stage_0_1, nand_3_nl, VCOL_stage_0_2);
  assign operator_10_false_operator_10_false_and_1_nl = (widthIn[10]) & (fsm_output[1]);
  assign operator_10_false_mux_3_nl = MUX_v_10_2_2(VROW_y_sva, (widthIn[9:0]), fsm_output[1]);
  assign nl_z_out = ({operator_10_false_operator_10_false_and_1_nl , operator_10_false_mux_3_nl})
      + conv_s2u_2_11({(fsm_output[1]) , 1'b1});
  assign z_out = nl_z_out[10:0];

  function automatic [31:0] MUX1HOT_v_32_3_2;
    input [31:0] input_2;
    input [31:0] input_1;
    input [31:0] input_0;
    input [2:0] sel;
    reg [31:0] result;
  begin
    result = input_0 & {32{sel[0]}};
    result = result | (input_1 & {32{sel[1]}});
    result = result | (input_2 & {32{sel[2]}});
    MUX1HOT_v_32_3_2 = result;
  end
  endfunction


  function automatic  MUX_s_1_2_2;
    input  input_0;
    input  input_1;
    input  sel;
    reg  result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_s_1_2_2 = result;
  end
  endfunction


  function automatic [9:0] MUX_v_10_2_2;
    input [9:0] input_0;
    input [9:0] input_1;
    input  sel;
    reg [9:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_10_2_2 = result;
  end
  endfunction


  function automatic [31:0] MUX_v_32_2_2;
    input [31:0] input_0;
    input [31:0] input_1;
    input  sel;
    reg [31:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_32_2_2 = result;
  end
  endfunction


  function automatic [63:0] MUX_v_64_2_2;
    input [63:0] input_0;
    input [63:0] input_1;
    input  sel;
    reg [63:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_64_2_2 = result;
  end
  endfunction


  function automatic [8:0] MUX_v_9_2_2;
    input [8:0] input_0;
    input [8:0] input_1;
    input  sel;
    reg [8:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_9_2_2 = result;
  end
  endfunction


  function automatic [0:0] readslicef_11_1_10;
    input [10:0] vector;
    reg [10:0] tmp;
  begin
    tmp = vector >> 10;
    readslicef_11_1_10 = tmp[0:0];
  end
  endfunction


  function automatic [10:0] conv_s2u_2_11 ;
    input [1:0]  vector ;
  begin
    conv_s2u_2_11 = {{9{vector[1]}}, vector};
  end
  endfunction


  function automatic [8:0] conv_u2s_8_9 ;
    input [7:0]  vector ;
  begin
    conv_u2s_8_9 =  {1'b0, vector};
  end
  endfunction


  function automatic [10:0] conv_u2s_10_11 ;
    input [9:0]  vector ;
  begin
    conv_u2s_10_11 =  {1'b0, vector};
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_VerDer_struct
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_VerDer_struct (
  clk, rst, arst_n, dat_in_rsc_dat_eol, dat_in_rsc_dat_sof, dat_in_rsc_dat_pix, dat_in_rsc_vld,
      dat_in_rsc_rdy, widthIn, heightIn, pix_chan1_rsc_dat_eol, pix_chan1_rsc_dat_sof,
      pix_chan1_rsc_dat_pix, pix_chan1_rsc_vld, pix_chan1_rsc_rdy, dy_chan_rsc_dat,
      dy_chan_rsc_vld, dy_chan_rsc_rdy, line_buf0_rsc_en, line_buf0_rsc_q, line_buf0_rsc_we,
      line_buf0_rsc_d, line_buf0_rsc_adr, line_buf1_rsc_en, line_buf1_rsc_q, line_buf1_rsc_we,
      line_buf1_rsc_d, line_buf1_rsc_adr
);
  input clk;
  input rst;
  input arst_n;
  input dat_in_rsc_dat_eol;
  input dat_in_rsc_dat_sof;
  input [31:0] dat_in_rsc_dat_pix;
  input dat_in_rsc_vld;
  output dat_in_rsc_rdy;
  input [10:0] widthIn;
  input [9:0] heightIn;
  output pix_chan1_rsc_dat_eol;
  output pix_chan1_rsc_dat_sof;
  output [31:0] pix_chan1_rsc_dat_pix;
  output pix_chan1_rsc_vld;
  input pix_chan1_rsc_rdy;
  output [35:0] dy_chan_rsc_dat;
  output dy_chan_rsc_vld;
  input dy_chan_rsc_rdy;
  output line_buf0_rsc_en;
  input [63:0] line_buf0_rsc_q;
  output line_buf0_rsc_we;
  output [63:0] line_buf0_rsc_d;
  output [9:0] line_buf0_rsc_adr;
  output line_buf1_rsc_en;
  input [63:0] line_buf1_rsc_q;
  output line_buf1_rsc_we;
  output [63:0] line_buf1_rsc_d;
  output [9:0] line_buf1_rsc_adr;


  // Interconnect Declarations
  wire [63:0] line_buf0_rsci_d_d;
  wire line_buf0_rsci_en_d;
  wire [63:0] line_buf0_rsci_q_d;
  wire [63:0] line_buf1_rsci_d_d;
  wire [63:0] line_buf1_rsci_q_d;
  wire [33:0] pix_chan1_rsc_dat;
  wire [9:0] line_buf0_rsci_adr_d_iff;
  wire line_buf0_rsci_we_d_iff;
  wire line_buf0_rsci_port_0_rw_ram_ir_internal_RMASK_B_d_iff;


  // Interconnect Declarations for Component Instantiations 
  wire [33:0] nl_EdgeDetect_IP_EdgeDetect_VerDer_run_inst_dat_in_rsc_dat;
  assign nl_EdgeDetect_IP_EdgeDetect_VerDer_run_inst_dat_in_rsc_dat = {dat_in_rsc_dat_eol
      , dat_in_rsc_dat_sof , dat_in_rsc_dat_pix};
  EdgeDetect_IP_EdgeDetect_VerDer_ccs_sample_mem_ccs_ram_sync_singleport_rwport_en_6_64_10_963_963_64_5_gen
      line_buf0_rsci (
      .en(line_buf0_rsc_en),
      .q(line_buf0_rsc_q),
      .we(line_buf0_rsc_we),
      .d(line_buf0_rsc_d),
      .adr(line_buf0_rsc_adr),
      .adr_d(line_buf0_rsci_adr_d_iff),
      .d_d(line_buf0_rsci_d_d),
      .en_d(line_buf0_rsci_en_d),
      .we_d(line_buf0_rsci_we_d_iff),
      .q_d(line_buf0_rsci_q_d),
      .port_0_rw_ram_ir_internal_RMASK_B_d(line_buf0_rsci_port_0_rw_ram_ir_internal_RMASK_B_d_iff),
      .port_0_rw_ram_ir_internal_WMASK_B_d(line_buf0_rsci_we_d_iff)
    );
  EdgeDetect_IP_EdgeDetect_VerDer_ccs_sample_mem_ccs_ram_sync_singleport_rwport_en_7_64_10_963_963_64_5_gen
      line_buf1_rsci (
      .en(line_buf1_rsc_en),
      .q(line_buf1_rsc_q),
      .we(line_buf1_rsc_we),
      .d(line_buf1_rsc_d),
      .adr(line_buf1_rsc_adr),
      .adr_d(line_buf0_rsci_adr_d_iff),
      .d_d(line_buf1_rsci_d_d),
      .en_d(line_buf0_rsci_en_d),
      .we_d(line_buf0_rsci_we_d_iff),
      .q_d(line_buf1_rsci_q_d),
      .port_0_rw_ram_ir_internal_RMASK_B_d(line_buf0_rsci_port_0_rw_ram_ir_internal_RMASK_B_d_iff),
      .port_0_rw_ram_ir_internal_WMASK_B_d(line_buf0_rsci_we_d_iff)
    );
  EdgeDetect_IP_EdgeDetect_VerDer_run EdgeDetect_IP_EdgeDetect_VerDer_run_inst (
      .clk(clk),
      .rst(rst),
      .arst_n(arst_n),
      .dat_in_rsc_dat(nl_EdgeDetect_IP_EdgeDetect_VerDer_run_inst_dat_in_rsc_dat[33:0]),
      .dat_in_rsc_vld(dat_in_rsc_vld),
      .dat_in_rsc_rdy(dat_in_rsc_rdy),
      .widthIn(widthIn),
      .heightIn(heightIn),
      .pix_chan1_rsc_dat(pix_chan1_rsc_dat),
      .pix_chan1_rsc_vld(pix_chan1_rsc_vld),
      .pix_chan1_rsc_rdy(pix_chan1_rsc_rdy),
      .dy_chan_rsc_dat(dy_chan_rsc_dat),
      .dy_chan_rsc_vld(dy_chan_rsc_vld),
      .dy_chan_rsc_rdy(dy_chan_rsc_rdy),
      .line_buf0_rsci_d_d(line_buf0_rsci_d_d),
      .line_buf0_rsci_en_d(line_buf0_rsci_en_d),
      .line_buf0_rsci_q_d(line_buf0_rsci_q_d),
      .line_buf1_rsci_d_d(line_buf1_rsci_d_d),
      .line_buf1_rsci_q_d(line_buf1_rsci_q_d),
      .line_buf0_rsci_adr_d_pff(line_buf0_rsci_adr_d_iff),
      .line_buf0_rsci_we_d_pff(line_buf0_rsci_we_d_iff),
      .line_buf0_rsci_port_0_rw_ram_ir_internal_RMASK_B_d_pff(line_buf0_rsci_port_0_rw_ram_ir_internal_RMASK_B_d_iff)
    );
  assign pix_chan1_rsc_dat_pix = pix_chan1_rsc_dat[31:0];
  assign pix_chan1_rsc_dat_sof = pix_chan1_rsc_dat[32];
  assign pix_chan1_rsc_dat_eol = pix_chan1_rsc_dat[33];
endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_VerDer
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_VerDer (
  clk, rst, arst_n, dat_in_rsc_dat, dat_in_rsc_vld, dat_in_rsc_rdy, widthIn, heightIn,
      pix_chan1_rsc_dat, pix_chan1_rsc_vld, pix_chan1_rsc_rdy, dy_chan_rsc_dat, dy_chan_rsc_vld,
      dy_chan_rsc_rdy, line_buf0_rsc_en, line_buf0_rsc_q, line_buf0_rsc_we, line_buf0_rsc_d,
      line_buf0_rsc_adr, line_buf1_rsc_en, line_buf1_rsc_q, line_buf1_rsc_we, line_buf1_rsc_d,
      line_buf1_rsc_adr
);
  input clk;
  input rst;
  input arst_n;
  input [33:0] dat_in_rsc_dat;
  input dat_in_rsc_vld;
  output dat_in_rsc_rdy;
  input [10:0] widthIn;
  input [9:0] heightIn;
  output [33:0] pix_chan1_rsc_dat;
  output pix_chan1_rsc_vld;
  input pix_chan1_rsc_rdy;
  output [35:0] dy_chan_rsc_dat;
  output dy_chan_rsc_vld;
  input dy_chan_rsc_rdy;
  output line_buf0_rsc_en;
  input [63:0] line_buf0_rsc_q;
  output line_buf0_rsc_we;
  output [63:0] line_buf0_rsc_d;
  output [9:0] line_buf0_rsc_adr;
  output line_buf1_rsc_en;
  input [63:0] line_buf1_rsc_q;
  output line_buf1_rsc_we;
  output [63:0] line_buf1_rsc_d;
  output [9:0] line_buf1_rsc_adr;


  // Interconnect Declarations
  wire pix_chan1_rsc_dat_eol;
  wire pix_chan1_rsc_dat_sof;
  wire [31:0] pix_chan1_rsc_dat_pix;


  // Interconnect Declarations for Component Instantiations 
  wire  nl_EdgeDetect_IP_EdgeDetect_VerDer_struct_inst_dat_in_rsc_dat_eol;
  assign nl_EdgeDetect_IP_EdgeDetect_VerDer_struct_inst_dat_in_rsc_dat_eol = dat_in_rsc_dat[33];
  wire  nl_EdgeDetect_IP_EdgeDetect_VerDer_struct_inst_dat_in_rsc_dat_sof;
  assign nl_EdgeDetect_IP_EdgeDetect_VerDer_struct_inst_dat_in_rsc_dat_sof = dat_in_rsc_dat[32];
  wire [31:0] nl_EdgeDetect_IP_EdgeDetect_VerDer_struct_inst_dat_in_rsc_dat_pix;
  assign nl_EdgeDetect_IP_EdgeDetect_VerDer_struct_inst_dat_in_rsc_dat_pix = dat_in_rsc_dat[31:0];
  EdgeDetect_IP_EdgeDetect_VerDer_struct EdgeDetect_IP_EdgeDetect_VerDer_struct_inst
      (
      .clk(clk),
      .rst(rst),
      .arst_n(arst_n),
      .dat_in_rsc_dat_eol(nl_EdgeDetect_IP_EdgeDetect_VerDer_struct_inst_dat_in_rsc_dat_eol),
      .dat_in_rsc_dat_sof(nl_EdgeDetect_IP_EdgeDetect_VerDer_struct_inst_dat_in_rsc_dat_sof),
      .dat_in_rsc_dat_pix(nl_EdgeDetect_IP_EdgeDetect_VerDer_struct_inst_dat_in_rsc_dat_pix[31:0]),
      .dat_in_rsc_vld(dat_in_rsc_vld),
      .dat_in_rsc_rdy(dat_in_rsc_rdy),
      .widthIn(widthIn),
      .heightIn(heightIn),
      .pix_chan1_rsc_dat_eol(pix_chan1_rsc_dat_eol),
      .pix_chan1_rsc_dat_sof(pix_chan1_rsc_dat_sof),
      .pix_chan1_rsc_dat_pix(pix_chan1_rsc_dat_pix),
      .pix_chan1_rsc_vld(pix_chan1_rsc_vld),
      .pix_chan1_rsc_rdy(pix_chan1_rsc_rdy),
      .dy_chan_rsc_dat(dy_chan_rsc_dat),
      .dy_chan_rsc_vld(dy_chan_rsc_vld),
      .dy_chan_rsc_rdy(dy_chan_rsc_rdy),
      .line_buf0_rsc_en(line_buf0_rsc_en),
      .line_buf0_rsc_q(line_buf0_rsc_q),
      .line_buf0_rsc_we(line_buf0_rsc_we),
      .line_buf0_rsc_d(line_buf0_rsc_d),
      .line_buf0_rsc_adr(line_buf0_rsc_adr),
      .line_buf1_rsc_en(line_buf1_rsc_en),
      .line_buf1_rsc_q(line_buf1_rsc_q),
      .line_buf1_rsc_we(line_buf1_rsc_we),
      .line_buf1_rsc_d(line_buf1_rsc_d),
      .line_buf1_rsc_adr(line_buf1_rsc_adr)
    );
  assign pix_chan1_rsc_dat = {pix_chan1_rsc_dat_eol , pix_chan1_rsc_dat_sof , pix_chan1_rsc_dat_pix};
endmodule




//------> /home/raid7_4/raid1_1/linux/mentor/Catapult/2023.2/Mgc_home/pkgs/siflibs/ccs_genreg_v1.v 
//------------------------------------------------------------------------------
// Catapult Synthesis - Sample I/O Port Library
//
// Copyright (c) 2003-2017 Mentor Graphics Corp.
//       All Rights Reserved
//
// This document may be used and distributed without restriction provided that
// this copyright statement is not removed from the file and that any derivative
// work contains this copyright notice.
//
// The design information contained in this file is intended to be an example
// of the functionality which the end user may study in preparation for creating
// their own custom interfaces. This design does not necessarily present a 
// complete implementation of the named protocol or standard.
//
//------------------------------------------------------------------------------

module ccs_genreg_v1 (clk, en, arst, srst, d, z);
    parameter integer width   = 1;
    parameter integer ph_clk  = 1;
    parameter integer ph_en   = 1;
    parameter integer ph_arst = 0;
    parameter integer ph_srst = 1;
    parameter         has_en  = 1'b1;

    input clk;
    input en;
    input arst;
    input srst;
    input      [width-1:0] d;
    output reg [width-1:0] z;

    //  Generate parameters
    //  ph_clk | ph_arst | has_en     Label:
    //    1        1          1       GEN_CLK1_ARST1_EN1
    //    1        1          0       GEN_CLK1_ARST1_EN0
    //    1        0          1       GEN_CLK1_ARST0_EN1
    //    1        0          0       GEN_CLK1_ARST0_EN0
    //    0        1          1       GEN_CLK0_ARST1_EN1
    //    0        1          0       GEN_CLK0_ARST1_EN0
    //    0        0          1       GEN_CLK0_ARST0_EN1
    //    0        0          0       GEN_CLK0_ARST0_EN0
    
    generate 
      // Pos edge clock, pos edge async reset, has enable
      if (ph_clk == 1 & ph_arst == 1 & has_en == 1)
      begin: GEN_CLK1_ARST1_EN1
        always @(posedge clk or posedge arst)
          if (arst == 1'b1)
            z <= {width{1'b0}};
          else if (srst == $unsigned(ph_srst))
            z <= {width{1'b0}};
          else if (en == $unsigned(ph_en))
            z <= d;
      end  //GEN_CLK1_ARST1_EN1

      // Pos edge clock, pos edge async reset, no enable
      else if (ph_clk == 1 & ph_arst == 1 & has_en == 0)
      begin: GEN_CLK1_ARST1_EN0
        always @(posedge clk or posedge arst)
          if (arst == 1'b1)
            z <= {width{1'b0}};
          else if (srst == $unsigned(ph_srst))
            z <= {width{1'b0}};
          else
            z <= d;
      end  //GEN_CLK1_ARST1_EN0

      // Pos edge clock, neg edge async reset, has enable
      else if (ph_clk == 1 & ph_arst == 0 & has_en == 1)
      begin: GEN_CLK1_ARST0_EN1
        always @(posedge clk or negedge arst)
          if (arst == 1'b0)
            z <= {width{1'b0}};
          else if (srst == $unsigned(ph_srst))
            z <= {width{1'b0}};
          else if (en == $unsigned(ph_en))
            z <= d;
      end  //GEN_CLK1_ARST0_EN1

      // Pos edge clock, neg edge async reset, no enable
      else if (ph_clk == 1 & ph_arst == 0 & has_en == 0)
      begin: GEN_CLK1_ARST0_EN0
        always @(posedge clk or negedge arst)
          if (arst == 1'b0)
            z <= {width{1'b0}};
          else if (srst == $unsigned(ph_srst))
            z <= {width{1'b0}};
          else
            z <= d;
      end  //GEN_CLK1_ARST0_EN0


      // Neg edge clock, pos edge async reset, has enable
      if (ph_clk == 0 & ph_arst == 1 & has_en == 1)
      begin: GEN_CLK0_ARST1_EN1
        always @(negedge clk or posedge arst)
          if (arst == 1'b1)
            z <= {width{1'b0}};
          else if (srst == $unsigned(ph_srst))
            z <= {width{1'b0}};
          else if (en == $unsigned(ph_en))
            z <= d;
      end  //GEN_CLK0_ARST1_EN1

      // Neg edge clock, pos edge async reset, no enable
      else if (ph_clk == 0 & ph_arst == 1 & has_en == 0)
      begin: GEN_CLK0_ARST1_EN0
        always @(negedge clk or posedge arst)
          if (arst == 1'b1)
            z <= {width{1'b0}};
          else if (srst == $unsigned(ph_srst))
            z <= {width{1'b0}};
          else
            z <= d;
      end  //GEN_CLK0_ARST1_EN0

      // Neg edge clock, neg edge async reset, has enable
      else if (ph_clk == 0 & ph_arst == 0 & has_en == 1)
      begin: GEN_CLK0_ARST0_EN1
        always @(negedge clk or negedge arst)
          if (arst == 1'b0)
            z <= {width{1'b0}};
          else if (srst == $unsigned(ph_srst))
            z <= {width{1'b0}};
          else if (en == $unsigned(ph_en))
            z <= d;
      end  //GEN_CLK0_ARST0_EN1

      // Neg edge clock, neg edge async reset, no enable
      else if (ph_clk == 0 & ph_arst == 0 & has_en == 0)
      begin: GEN_CLK0_ARST0_EN0
        always @(negedge clk or negedge arst)
          if (arst == 1'b0)
            z <= {width{1'b0}};
          else if (srst == $unsigned(ph_srst))
            z <= {width{1'b0}};
          else
            z <= d;
      end  //GEN_CLK0_ARST0_EN0
    endgenerate
endmodule


//------> /home/raid7_4/raid1_1/linux/mentor/Catapult/2023.2/Mgc_home/pkgs/siflibs/ccs_fifo_wait_core_v5.v 
//------------------------------------------------------------------------------
// Catapult Synthesis - Sample I/O Port Library
//
// Copyright (c) 2003-2017 Mentor Graphics Corp.
//       All Rights Reserved
//
// This document may be used and distributed without restriction provided that
// this copyright statement is not removed from the file and that any derivative
// work contains this copyright notice.
//
// The design information contained in this file is intended to be an example
// of the functionality which the end user may study in preparation for creating
// their own custom interfaces. This design does not necessarily present a 
// complete implementation of the named protocol or standard.
//
//------------------------------------------------------------------------------

/*
 *            _________________________________________________
 * WRITER    |                                                 |   READER
 *           |               ccs_fifo_wait_core                |
 *           |             _____________________               |
 *        --<|  din_rdy --<|  ---------------- <|--- dout_rdy <|---
 *           |             |       FIFO         |              |
 *        ---|> din_vld ---|> ----------------  |>-- dout_vld  |>--
 *        ---|>     din ---|> ----------------  |>-- dout      |>--
 *           |             |____________________|              |
 *           |_________________________________________________|
 *
 *    rdy    - can be considered as a notFULL signal
 *    vld    - can be considered as a notEMPTY signal
 *    is_idle - clk can be safely gated
 *
 * Change History:
 *    2019-01-24 - Add assertion to verify rdy signal behavior under reset.
 *                 Fix bug in that behavior.
 */

module ccs_fifo_wait_core_v5 (clk, en, arst, srst, din_vld, din_rdy, din, dout_vld, dout_rdy, dout, sd, is_idle);

    parameter integer rscid    = 0;     // resource ID
    parameter integer width    = 8;     // fifo width
    parameter integer sz_width = 8;     // size of port for elements in fifo
    parameter integer fifo_sz  = 8;     // fifo depth
    parameter integer ph_clk   = 1;     // clock polarity 1=rising edge, 0=falling edge
    parameter integer ph_en    = 1;     // clock enable polarity
    parameter integer ph_arst  = 1;     // async reset polarity
    parameter integer ph_srst  = 1;     // sync reset polarity
    parameter integer ph_log2  = 3;     // log2(fifo_sz)

    input                 clk;
    input                 en;
    input                 arst;
    input                 srst;
    input                 din_vld;    // writer has valid data
    output                din_rdy;    // fifo ready for data (not full)
    input  [width-1:0]    din;
    output                dout_vld;   // fifo has valid data (not empty)
    input                 dout_rdy;   // reader ready for data
    output [width-1:0]    dout;
    output [sz_width-1:0] sd;
    output                is_idle;

    localparam integer fifo_b  = width * fifo_sz;
    localparam integer fifo_mx = (fifo_sz > 0) ? (fifo_sz-1) : 0 ;
    localparam integer fifo_mx_over_8 = fifo_mx / 8 ;

    reg      [fifo_mx:0] stat_pre;
    wire     [fifo_mx:0] stat;
    reg      [( (fifo_b > 0) ? fifo_b : 1)-1:0] buff_pre;
    wire     [( (fifo_b > 0) ? fifo_b : 1)-1:0] buff;
    reg      [fifo_mx:0] en_l;
    reg      [fifo_mx_over_8:0] en_l_s;

    reg      [width-1:0] buff_nxt;

    reg                  stat_nxt;
    reg                  stat_behind;
    reg                  stat_ahead;
    reg                  stat_tail;
    reg                  en_l_var;

    integer              i;
    genvar               eni;

    wire [32:0]          size_t;
    reg  [31:0]          count;
    reg  [31:0]          count_t;
    reg  [32:0]          n_elem;
    wire                 din_rdy_drv;
    wire                 dout_vld_drv;
    wire                 din_vld_int;
    wire                 hs_init;
    wire                 active;
    wire                 is_idle_drv;

    // synopsys translate_off
    reg  [31:0]          peak;
    initial
    begin
      peak  = 32'b0;
    end
    // synopsys translate_on

    assign din_rdy = din_rdy_drv;
    assign dout_vld = dout_vld_drv;
    assign is_idle = is_idle_drv;

    generate
    if ( fifo_sz > 0 )
    begin: FIFO_REG
      assign din_vld_int = din_vld & hs_init;
      assign din_rdy_drv = (dout_rdy | (~stat[0])) & hs_init;
      assign dout_vld_drv = din_vld_int | stat[fifo_sz-1];

      assign active = (din_vld_int & din_rdy_drv) | (dout_rdy & dout_vld_drv);
      assign is_idle_drv = (~active) & hs_init;

      assign size_t = (count - {31'b0, (dout_rdy & stat[fifo_sz-1])}) + {31'b0, din_vld_int};
      assign sd = size_t[sz_width-1:0];

      assign dout = (stat[fifo_sz-1]) ? buff[fifo_b-1:width*(fifo_sz-1)] : din;

      always @(*)
      begin: FIFOPROC
        n_elem = 33'b0;
        for (i = fifo_sz-1; i >= 0; i = i - 1)
        begin
          stat_behind = (i != 0) ? stat[i-1] : 1'b0;
          stat_ahead  = (i != (fifo_sz-1)) ? stat[i+1] : 1'b1;

          // Determine if this buffer element will have data
          stat_nxt = stat_ahead &                       // valid element ahead of this one (or head)
                       (stat_behind                     // valid element behind this one
                         | (stat[i] & (~dout_rdy))      // valid element and output not ready (in use and not shifted)
                         | (stat[i] & din_vld_int)      // valid element and input has data
                         | (din_vld_int & (~dout_rdy))  // input has data and output not ready
                       );
          stat_pre[i] = stat_nxt;

          // First empty elem when not shifting or last valid elem after shifting (assumes stat_behind == 0)
          stat_tail = stat_ahead & (((~stat[i]) & (~dout_rdy)) | (stat[i] & dout_rdy));

          if (dout_rdy & stat_behind)
          begin
            // shift valid element
            buff_nxt[0+:width] = buff[width*(i-1)+:width];
            en_l_var = 1'b1;
          end
          else if (din_vld_int & stat_tail)
          begin
            // update tail with input data
            buff_nxt = din;
            en_l_var = 1'b1;
          end
          else
          begin
            // no-op, disable register
            buff_nxt = din; // Don't care input to disabled flop
            en_l_var = 1'b0;
          end
          buff_pre[width*i+:width] = buff_nxt[0+:width];

          if (ph_en != 0)
            en_l[i] = en & en_l_var;
          else
            en_l[i] = en | ~en_l_var;

          if ((stat_ahead == 1'b1) & (stat[i] == 1'b0))
            //found tail, update the number of elements for count
            n_elem = ($unsigned(fifo_sz) - 1) - $unsigned(i);
        end //for loop

        // Enable for stat registers (partitioned into banks of eight)
        // Take care of the head first
        if (ph_en != 0)
          en_l_s[(((fifo_sz > 0) ? fifo_sz : 1)-1)/8] = en & active;
        else
          en_l_s[(((fifo_sz > 0) ? fifo_sz : 1)-1)/8] = en | ~active;

        // Now every eight
        for (i = fifo_sz-1; i >= 7; i = i - 1)
        begin
          if (($unsigned(i) % 32'd8) == 0)
          begin
            if (ph_en != 0)
              en_l_s[(i/8)-1] = en & (stat[i]) & (active);
            else
              en_l_s[(i/8)-1] = (en) | (~stat[i]) | (~active);
          end
        end

        // Update count and peak
        if ( stat[fifo_sz-1] == 1'b0 )
          count_t = 32'b0;
        else if ( stat[0] == 1'b1 )
          count_t = fifo_sz;
        else
          count_t = n_elem[31:0];
        count = count_t;
        // synopsys translate_off
        peak = (peak < count) ? count : peak;
        // synopsys translate_on
      end //FIFOPROC

      // Handshake valid after reset
      ccs_genreg_v1
      #(
        .width   (1),
        .ph_clk  (ph_clk),
        .ph_en   (1),
        .ph_arst (ph_arst),
        .ph_srst (ph_srst),
        .has_en  (1'b0)
      )
      HS_INIT_REG
      (
        .clk     (clk),
        .en      (1'b1),
        .arst    (arst),
        .srst    (srst),
        .d       (1'b1),
        .z       (hs_init)
      );

      // Buffer and status registers
      for (eni = fifo_sz-1; eni >= 0; eni = eni - 1)
      begin: GEN_REGS
        ccs_genreg_v1
        #(
          .width   (1),
          .ph_clk  (ph_clk),
          .ph_en   (ph_en),
          .ph_arst (ph_arst),
          .ph_srst (ph_srst),
          .has_en  (1'b1)
        )
        STATREG
        (
          .clk     (clk),
          .en      (en_l_s[eni/8]),
          .arst    (arst),
          .srst    (srst),
          .d       (stat_pre[eni]),
          .z       (stat[eni])
        );

        ccs_genreg_v1
        #(
          .width   (width),
          .ph_clk  (ph_clk),
          .ph_en   (ph_en),
          .ph_arst (ph_arst),
          .ph_srst (ph_srst),
          .has_en  (1'b1)
        )
        BUFREG
        (
          .clk     (clk),
          .en      (en_l[eni]),
          .arst    (arst),
          .srst    (srst),
          .d       (buff_pre[width*eni+:width]),
          .z       (buff[width*eni+:width])
        );
      end

    end
    else
    begin: FEED_THRU
      assign din_rdy_drv  = dout_rdy;
      assign dout_vld_drv = din_vld;
      assign dout     = din;
      // non-blocking is not II=1 when fifo_sz=0
      assign sd = {{(sz_width-1){1'b0}}, (din_vld & ~dout_rdy)};
      assign is_idle_drv = ~(din_vld & dout_rdy);
    end
    endgenerate

`ifdef RDY_ASRT
    generate
    if (ph_clk==1)
    begin: POS_CLK_ASSERT

       property rdyAsrt ;
         @(posedge clk) (srst==ph_srst) |=> (din_rdy==0);
       endproperty
       a1Pos: assert property(rdyAsrt);

       property rdyAsrtASync ;
         @(posedge clk) (arst==ph_arst) |-> (din_rdy==0);
       endproperty
       a2Pos: assert property(rdyAsrtASync);

    end else if (ph_clk==0)
    begin: NEG_CLK_ASSERT

       property rdyAsrt ;
         @(negedge clk) ((srst==ph_srst) || (arst==ph_arst)) |=> (din_rdy==0);
       endproperty
       a1Neg: assert property(rdyAsrt);

       property rdyAsrtASync ;
         @(negedge clk) (arst==ph_arst) |-> (din_rdy==0);
       endproperty
       a2Neg: assert property(rdyAsrtASync);

    end
    endgenerate
`endif

endmodule

//------> /home/raid7_4/raid1_1/linux/mentor/Catapult/2023.2/Mgc_home/pkgs/siflibs/ccs_pipe_v6.v 
//------------------------------------------------------------------------------
// Catapult Synthesis - Sample I/O Port Library
//
// Copyright (c) 2003-2017 Mentor Graphics Corp.
//       All Rights Reserved
//
// This document may be used and distributed without restriction provided that
// this copyright statement is not removed from the file and that any derivative
// work contains this copyright notice.
//
// The design information contained in this file is intended to be an example
// of the functionality which the end user may study in preparation for creating
// their own custom interfaces. This design does not necessarily present a 
// complete implementation of the named protocol or standard.
//
//------------------------------------------------------------------------------
/*
 *
 *            _______________________________________________
 * WRITER    |                                              |          READER
 *           |                 ccs_pipe                     |
 *           |            ______________________            |
 *        --<| din_rdy --<|  ---------------- <|---dout_rdy<|---
 *           |            |       FIFO         |            |
 *        ---|>din_vld ---|> ----------------  |>--dout_vld |>--
 *        ---|>din -------|> ----------------  |> -----dout |>--
 *           |            |____________________|            |
 *           |______________________________________________|
 *
 *    din_rdy     - can be considered as a notFULL signal
 *    dout_vld    - can be considered as a notEMPTY signal
 *    write_stall - an internal debug signal formed from din_vld & !din_rdy
 *    read_stall  - an internal debug signal formed from dout_rdy & !dout_vld
 *    is_idle     - indicates the clock can be safely gated
 *    stall_ctrl  - Stall the pipe(fifo).  Used by STALL_FLAG_SV directive
 */

module ccs_pipe_v6 (clk, en, arst, srst, din_rdy, din_vld, din, dout_rdy, dout_vld, dout, 
                    sz, sz_req, is_idle);

    parameter integer rscid    = 0; // resource ID
    parameter integer width    = 8; // fifo width
    parameter integer sz_width = 8; // width of size of elements in fifo
    parameter integer fifo_sz  = 8; // fifo depth
    parameter integer log2_sz  = 3; // log2(fifo_sz)
    parameter integer ph_clk   = 1; // clock polarity 1=rising edge, 0=falling edge
    parameter integer ph_en    = 1; // clock enable polarity
    parameter integer ph_arst  = 1; // async reset polarity
    parameter integer ph_srst  = 1; // sync reset polarity

    // clock 
    input              clk;
    input              en;
    input              arst;
    input              srst;

    // writer
    output             din_rdy;
    input              din_vld;
    input  [width-1:0] din;

    // reader
    input              dout_rdy;
    output             dout_vld;
    output [width-1:0] dout;

    // size
    output [sz_width-1:0] sz;
    input                 sz_req;
    output                is_idle;

    localparam stallOff = 0; 
    wire                  stall_ctrl;
    assign stall_ctrl = stallOff;
   
    // synopsys translate_off
    wire   write_stall;
    wire   read_stall;
    assign write_stall = (din_vld & !din_rdy) | stall_ctrl;
    assign read_stall  = (dout_rdy & !dout_vld) | stall_ctrl;
    // synopsys translate_on

    wire    tmp_din_rdy;
    assign  din_rdy = tmp_din_rdy & !stall_ctrl;
    wire    tmp_dout_vld;
    assign  dout_vld = tmp_dout_vld & !stall_ctrl;
   
    ccs_fifo_wait_core_v5
    #(
        .rscid    (rscid),
        .width    (width),
        .sz_width (sz_width),
        .fifo_sz  (fifo_sz),
        .ph_clk   (ph_clk),
        .ph_en    (ph_en),
        .ph_arst  (ph_arst),
        .ph_srst  (ph_srst),
        .ph_log2  (log2_sz)
    )
    FIFO
    (
        .clk      (clk),
        .en       (en),
        .arst     (arst),
        .srst     (srst),
        .din_vld  (din_vld & !stall_ctrl),
        .din_rdy  (tmp_din_rdy),
        .din      (din),
        .dout_vld (tmp_dout_vld),
        .dout_rdy (dout_rdy & !stall_ctrl),
        .dout     (dout),
        .sd       (sz),
        .is_idle  (is_idle)
    );

endmodule


//------> ./rtl.v 
// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    2023.2/1059873 Production Release
//  HLS Date:       Mon Aug  7 10:54:31 PDT 2023
// 
//  Generated by:   r12016@cad40
//  Generated date: Sun Apr  7 21:13:01 2024
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_Top
// ------------------------------------------------------------------


module EdgeDetect_Top (
  clk, rst, arst_n, widthIn, heightIn, sw_in, crc32_pix_in_rsc_zout, crc32_pix_in_rsc_lzout,
      crc32_pix_in_rsc_zin, crc32_pix_in_triosy_lz, crc32_dat_out_rsc_zout, crc32_dat_out_rsc_lzout,
      crc32_dat_out_rsc_zin, crc32_dat_out_triosy_lz, dat_in_rsc_dat, dat_in_rsc_vld,
      dat_in_rsc_rdy, dat_out_rsc_dat, dat_out_rsc_vld, dat_out_rsc_rdy, line_buf0_rsc_en,
      line_buf0_rsc_q, line_buf0_rsc_we, line_buf0_rsc_d, line_buf0_rsc_adr, line_buf1_rsc_en,
      line_buf1_rsc_q, line_buf1_rsc_we, line_buf1_rsc_d, line_buf1_rsc_adr
);
  input clk;
  input rst;
  input arst_n;
  input [10:0] widthIn;
  input [9:0] heightIn;
  input sw_in;
  output [31:0] crc32_pix_in_rsc_zout;//no
  output crc32_pix_in_rsc_lzout;//no
  input [31:0] crc32_pix_in_rsc_zin;//no
  output crc32_pix_in_triosy_lz; //have
  output [31:0] crc32_dat_out_rsc_zout;//no
  output crc32_dat_out_rsc_lzout;//no
  input [31:0] crc32_dat_out_rsc_zin;//no
  output crc32_dat_out_triosy_lz;
  input [33:0] dat_in_rsc_dat;
  input dat_in_rsc_vld;
  output dat_in_rsc_rdy;
  output [33:0] dat_out_rsc_dat;
  output dat_out_rsc_vld;
  input dat_out_rsc_rdy;
  output line_buf0_rsc_en;
  input [63:0] line_buf0_rsc_q;
  output line_buf0_rsc_we;
  output [63:0] line_buf0_rsc_d;
  output [9:0] line_buf0_rsc_adr;
  output line_buf1_rsc_en;
  input [63:0] line_buf1_rsc_q;
  output line_buf1_rsc_we;
  output [63:0] line_buf1_rsc_d;
  output [9:0] line_buf1_rsc_adr;

// clk                    
// rst                    
// arst_n                 
// widthIn                
// heightIn               
// sw_in                  
// crc32_pix_in_rsc_zin   
// crc32_pix_in_rsc_zout  
// crc32_pix_in_rsc_lzout 
// crc32_dat_out_rsc_zin  
// crc32_dat_out_rsc_zout 
// crc32_dat_out_triosy_lz
// dat_in_rsc_dat         
// dat_in_rsc_vld         
// dat_in_rsc_rdy         
// dat_out_rsc_dat        
// dat_out_rsc_vld        
// dat_out_rsc_rdy        
// line_buf0_rsc_en       
// line_buf0_rsc_q        
// line_buf0_rsc_we       
// line_buf0_rsc_d        
// line_buf0_rsc_adr      
// line_buf1_rsc_en       
// line_buf1_rsc_q        
// line_buf1_rsc_we       
// line_buf1_rsc_d        
// line_buf1_rsc_adr      


  //output [31:0] crc32_pix_in_rsc_dat;

  //output [31:0] crc32_dat_out_rsc_dat;




  // Interconnect Declarations
  wire [33:0] pix_chan1_rsc_dat_n_VerDer_inst;
  wire [35:0] dy_chan_rsc_dat_n_VerDer_inst;
  wire dy_chan_rsc_rdy_n_VerDer_inst;
  wire line_buf0_rsc_en_n_VerDer_inst;
  wire [63:0] line_buf0_rsc_d_n_VerDer_inst;
  wire [9:0] line_buf0_rsc_adr_n_VerDer_inst;
  wire line_buf1_rsc_en_n_VerDer_inst;
  wire [63:0] line_buf1_rsc_d_n_VerDer_inst;
  wire [9:0] line_buf1_rsc_adr_n_VerDer_inst;
  wire [33:0] pix_chan2_rsc_dat_n_HorDer_inst;
  wire [35:0] dx_chan_rsc_dat_n_HorDer_inst;
  wire [35:0] dy_chan_rsc_dat_n_MagAng_inst;
  wire dy_chan_rsc_vld_n_MagAng_inst;
  wire [31:0] crc32_pix_in_rsc_zout_n_MagAng_inst;
  wire [31:0] crc32_dat_out_rsc_zout_n_MagAng_inst;
  wire [33:0] dat_out_rsc_dat_n_MagAng_inst;
  wire dat_in_rsc_rdy_n_VerDer_inst_bud;
  wire pix_chan1_rsc_vld_n_VerDer_inst_bud;
  wire pix_chan1_rsc_rdy_n_HorDer_inst_bud;
  wire dy_chan_rsc_vld_n_VerDer_inst_bud;
  wire dy_chan_rsc_rdy_n_MagAng_inst_bud;
  wire line_buf0_rsc_we_n_VerDer_inst_bud;
  wire line_buf1_rsc_we_n_VerDer_inst_bud;
  wire pix_chan2_rsc_vld_n_HorDer_inst_bud;
  wire pix_chan2_rsc_rdy_n_MagAng_inst_bud;
  wire dx_chan_rsc_vld_n_HorDer_inst_bud;
  wire dx_chan_rsc_rdy_n_MagAng_inst_bud;
  wire dat_out_rsc_vld_n_MagAng_inst_bud;
  wire crc32_pix_in_rsc_lzout_n_MagAng_inst_bud;
  wire crc32_pix_in_triosy_lz_n_MagAng_inst_bud;
  wire crc32_dat_out_rsc_lzout_n_MagAng_inst_bud;
  wire crc32_dat_out_triosy_lz_n_MagAng_inst_bud;
  wire dy_chan_unc_1;
  wire dy_chan_idle;


  // Interconnect Declarations for Component Instantiations 
  ccs_pipe_v6 #(.rscid(32'sd29),
  .width(32'sd36),
  .sz_width(32'sd1),
  .fifo_sz(32'sd2),
  .log2_sz(32'sd1),
  .ph_clk(32'sd1),
  .ph_en(32'sd0),
  .ph_arst(32'sd0),
  .ph_srst(32'sd1)) dy_chan_cns_pipe (
      .clk(clk),
      .en(1'b0),
      .arst(arst_n),
      .srst(rst),
      .din_rdy(dy_chan_rsc_rdy_n_VerDer_inst),
      .din_vld(dy_chan_rsc_vld_n_VerDer_inst_bud),
      .din(dy_chan_rsc_dat_n_VerDer_inst),
      .dout_rdy(dy_chan_rsc_rdy_n_MagAng_inst_bud),
      .dout_vld(dy_chan_rsc_vld_n_MagAng_inst),
      .dout(dy_chan_rsc_dat_n_MagAng_inst),
      .sz(dy_chan_unc_1),
      .sz_req(1'b0),
      .is_idle(dy_chan_idle)
    );
  EdgeDetect_IP_EdgeDetect_VerDer VerDer_inst (
      .clk(clk),
      .rst(rst),
      .arst_n(arst_n),
      .dat_in_rsc_dat(dat_in_rsc_dat),
      .dat_in_rsc_vld(dat_in_rsc_vld),
      .dat_in_rsc_rdy(dat_in_rsc_rdy_n_VerDer_inst_bud),
      .widthIn(widthIn),
      .heightIn(heightIn),
      .pix_chan1_rsc_dat(pix_chan1_rsc_dat_n_VerDer_inst),
      .pix_chan1_rsc_vld(pix_chan1_rsc_vld_n_VerDer_inst_bud),
      .pix_chan1_rsc_rdy(pix_chan1_rsc_rdy_n_HorDer_inst_bud),
      .dy_chan_rsc_dat(dy_chan_rsc_dat_n_VerDer_inst),
      .dy_chan_rsc_vld(dy_chan_rsc_vld_n_VerDer_inst_bud),
      .dy_chan_rsc_rdy(dy_chan_rsc_rdy_n_VerDer_inst),
      .line_buf0_rsc_en(line_buf0_rsc_en_n_VerDer_inst),
      .line_buf0_rsc_q(line_buf0_rsc_q),
      .line_buf0_rsc_we(line_buf0_rsc_we_n_VerDer_inst_bud),
      .line_buf0_rsc_d(line_buf0_rsc_d_n_VerDer_inst),
      .line_buf0_rsc_adr(line_buf0_rsc_adr_n_VerDer_inst),
      .line_buf1_rsc_en(line_buf1_rsc_en_n_VerDer_inst),
      .line_buf1_rsc_q(line_buf1_rsc_q),
      .line_buf1_rsc_we(line_buf1_rsc_we_n_VerDer_inst_bud),
      .line_buf1_rsc_d(line_buf1_rsc_d_n_VerDer_inst),
      .line_buf1_rsc_adr(line_buf1_rsc_adr_n_VerDer_inst)
    );
  EdgeDetect_IP_EdgeDetect_HorDer HorDer_inst (
      .clk(clk),
      .rst(rst),
      .arst_n(arst_n),
      .pix_chan1_rsc_dat(pix_chan1_rsc_dat_n_VerDer_inst),
      .pix_chan1_rsc_vld(pix_chan1_rsc_vld_n_VerDer_inst_bud),
      .pix_chan1_rsc_rdy(pix_chan1_rsc_rdy_n_HorDer_inst_bud),
      .widthIn(widthIn),
      .heightIn(heightIn),
      .pix_chan2_rsc_dat(pix_chan2_rsc_dat_n_HorDer_inst),
      .pix_chan2_rsc_vld(pix_chan2_rsc_vld_n_HorDer_inst_bud),
      .pix_chan2_rsc_rdy(pix_chan2_rsc_rdy_n_MagAng_inst_bud),
      .dx_chan_rsc_dat(dx_chan_rsc_dat_n_HorDer_inst),
      .dx_chan_rsc_vld(dx_chan_rsc_vld_n_HorDer_inst_bud),
      .dx_chan_rsc_rdy(dx_chan_rsc_rdy_n_MagAng_inst_bud)
    );
  EdgeDetect_IP_EdgeDetect_MagAng MagAng_inst (
      .clk(clk),
      .rst(rst),
      .arst_n(arst_n),
      .dx_chan_rsc_dat(dx_chan_rsc_dat_n_HorDer_inst),
      .dx_chan_rsc_vld(dx_chan_rsc_vld_n_HorDer_inst_bud),
      .dx_chan_rsc_rdy(dx_chan_rsc_rdy_n_MagAng_inst_bud),
      .dy_chan_rsc_dat(dy_chan_rsc_dat_n_MagAng_inst),
      .dy_chan_rsc_vld(dy_chan_rsc_vld_n_MagAng_inst),
      .dy_chan_rsc_rdy(dy_chan_rsc_rdy_n_MagAng_inst_bud),
      .pix_chan2_rsc_dat(pix_chan2_rsc_dat_n_HorDer_inst),
      .pix_chan2_rsc_vld(pix_chan2_rsc_vld_n_HorDer_inst_bud),
      .pix_chan2_rsc_rdy(pix_chan2_rsc_rdy_n_MagAng_inst_bud),
      .widthIn(widthIn),
      .heightIn(heightIn),
      .sw_in(sw_in),
      .crc32_pix_in_rsc_zout(crc32_pix_in_rsc_zout_n_MagAng_inst),
      .crc32_pix_in_rsc_lzout(crc32_pix_in_rsc_lzout_n_MagAng_inst_bud),
      .crc32_pix_in_rsc_zin(crc32_pix_in_rsc_zin),
      .crc32_pix_in_triosy_lz(crc32_pix_in_triosy_lz_n_MagAng_inst_bud),
      .crc32_dat_out_rsc_zout(crc32_dat_out_rsc_zout_n_MagAng_inst),
      .crc32_dat_out_rsc_lzout(crc32_dat_out_rsc_lzout_n_MagAng_inst_bud),
      .crc32_dat_out_rsc_zin(crc32_dat_out_rsc_zin),
      .crc32_dat_out_triosy_lz(crc32_dat_out_triosy_lz_n_MagAng_inst_bud),
      .dat_out_rsc_dat(dat_out_rsc_dat_n_MagAng_inst),
      .dat_out_rsc_vld(dat_out_rsc_vld_n_MagAng_inst_bud),
      .dat_out_rsc_rdy(dat_out_rsc_rdy)
    );
  assign dat_in_rsc_rdy = dat_in_rsc_rdy_n_VerDer_inst_bud;
  assign line_buf0_rsc_en = line_buf0_rsc_en_n_VerDer_inst;
  assign line_buf0_rsc_we = line_buf0_rsc_we_n_VerDer_inst_bud;
  assign line_buf0_rsc_d = line_buf0_rsc_d_n_VerDer_inst;
  assign line_buf0_rsc_adr = line_buf0_rsc_adr_n_VerDer_inst;
  assign line_buf1_rsc_en = line_buf1_rsc_en_n_VerDer_inst;
  assign line_buf1_rsc_we = line_buf1_rsc_we_n_VerDer_inst_bud;
  assign line_buf1_rsc_d = line_buf1_rsc_d_n_VerDer_inst;
  assign line_buf1_rsc_adr = line_buf1_rsc_adr_n_VerDer_inst;
  assign dat_out_rsc_vld = dat_out_rsc_vld_n_MagAng_inst_bud;
  assign dat_out_rsc_dat = dat_out_rsc_dat_n_MagAng_inst;
  assign crc32_pix_in_rsc_lzout = crc32_pix_in_rsc_lzout_n_MagAng_inst_bud;
  assign crc32_pix_in_rsc_zout = crc32_pix_in_rsc_zout_n_MagAng_inst;
  assign crc32_pix_in_triosy_lz = crc32_pix_in_triosy_lz_n_MagAng_inst_bud;
  assign crc32_dat_out_rsc_lzout = crc32_dat_out_rsc_lzout_n_MagAng_inst_bud;
  assign crc32_dat_out_rsc_zout = crc32_dat_out_rsc_zout_n_MagAng_inst;
  assign crc32_dat_out_triosy_lz = crc32_dat_out_triosy_lz_n_MagAng_inst_bud;
endmodule






