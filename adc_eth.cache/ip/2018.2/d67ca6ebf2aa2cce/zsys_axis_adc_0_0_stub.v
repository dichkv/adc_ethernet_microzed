// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Sat Feb 23 11:40:34 2019
// Host        : kdichpc running 64-bit Ubuntu 16.04.5 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ zsys_axis_adc_0_0_stub.v
// Design      : zsys_axis_adc_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "axis_adc_v1_0,Vivado 2018.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(wr_ena, wr_clk, wr_sync, wr_data, irq, 
  m00_axis_tdata, m00_axis_tlast, m00_axis_tvalid, m00_axis_tready, m00_axis_aclk, 
  m00_axis_aresetn)
/* synthesis syn_black_box black_box_pad_pin="wr_ena,wr_clk,wr_sync,wr_data[31:0],irq,m00_axis_tdata[31:0],m00_axis_tlast,m00_axis_tvalid,m00_axis_tready,m00_axis_aclk,m00_axis_aresetn" */;
  input wr_ena;
  input wr_clk;
  input wr_sync;
  input [31:0]wr_data;
  output irq;
  output [31:0]m00_axis_tdata;
  output m00_axis_tlast;
  output m00_axis_tvalid;
  input m00_axis_tready;
  input m00_axis_aclk;
  input m00_axis_aresetn;
endmodule
