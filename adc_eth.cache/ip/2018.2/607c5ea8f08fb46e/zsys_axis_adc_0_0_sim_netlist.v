// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Fri Feb 22 23:33:36 2019
// Host        : kdichpc running 64-bit Ubuntu 16.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ zsys_axis_adc_0_0_sim_netlist.v
// Design      : zsys_axis_adc_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_adc_v1_0
   (m00_axis_tvalid,
    m00_axis_tlast,
    m00_axis_tdata,
    irq,
    m00_axis_aresetn,
    wr_ena,
    wr_clk,
    m00_axis_aclk,
    wr_sync,
    wr_data,
    m00_axis_tready);
  output m00_axis_tvalid;
  output m00_axis_tlast;
  output [31:0]m00_axis_tdata;
  output irq;
  input m00_axis_aresetn;
  input wr_ena;
  input wr_clk;
  input m00_axis_aclk;
  input wr_sync;
  input [31:0]wr_data;
  input m00_axis_tready;

  wire irq;
  wire m00_axis_aclk;
  wire m00_axis_aresetn;
  wire [31:0]m00_axis_tdata;
  wire m00_axis_tlast;
  wire m00_axis_tready;
  wire m00_axis_tvalid;
  wire wr_clk;
  wire [31:0]wr_data;
  wire wr_ena;
  wire wr_sync;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_adc_v1_0_M00_AXIS axis_adc_v1_0_M00_AXIS_inst
       (.irq(irq),
        .m00_axis_aclk(m00_axis_aclk),
        .m00_axis_aresetn(m00_axis_aresetn),
        .m00_axis_tdata(m00_axis_tdata),
        .m00_axis_tlast(m00_axis_tlast),
        .m00_axis_tready(m00_axis_tready),
        .m00_axis_tvalid(m00_axis_tvalid),
        .wr_clk(wr_clk),
        .wr_data(wr_data),
        .wr_ena(wr_ena),
        .wr_sync(wr_sync));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_adc_v1_0_M00_AXIS
   (m00_axis_tvalid,
    m00_axis_tlast,
    m00_axis_tdata,
    irq,
    m00_axis_aresetn,
    wr_ena,
    wr_clk,
    m00_axis_aclk,
    wr_sync,
    wr_data,
    m00_axis_tready);
  output m00_axis_tvalid;
  output m00_axis_tlast;
  output [31:0]m00_axis_tdata;
  output irq;
  input m00_axis_aresetn;
  input wr_ena;
  input wr_clk;
  input m00_axis_aclk;
  input wr_sync;
  input [31:0]wr_data;
  input m00_axis_tready;

  wire axis_tlast_delay_i_1_n_0;
  wire axis_tlast_delay_i_3_n_0;
  wire axis_tvalid;
  wire axis_tvalid_delay_i_2_n_0;
  wire data_fifo_reg_0_63_0_2_i_1_n_0;
  wire data_fifo_reg_0_63_0_2_i_2_n_0;
  wire data_fifo_reg_0_63_0_2_i_3_n_0;
  wire data_fifo_reg_0_63_0_2_n_0;
  wire data_fifo_reg_0_63_0_2_n_1;
  wire data_fifo_reg_0_63_0_2_n_2;
  wire data_fifo_reg_0_63_12_14_n_0;
  wire data_fifo_reg_0_63_12_14_n_1;
  wire data_fifo_reg_0_63_12_14_n_2;
  wire data_fifo_reg_0_63_15_17_n_0;
  wire data_fifo_reg_0_63_15_17_n_1;
  wire data_fifo_reg_0_63_15_17_n_2;
  wire data_fifo_reg_0_63_18_20_n_0;
  wire data_fifo_reg_0_63_18_20_n_1;
  wire data_fifo_reg_0_63_18_20_n_2;
  wire data_fifo_reg_0_63_21_23_n_0;
  wire data_fifo_reg_0_63_21_23_n_1;
  wire data_fifo_reg_0_63_21_23_n_2;
  wire data_fifo_reg_0_63_24_26_n_0;
  wire data_fifo_reg_0_63_24_26_n_1;
  wire data_fifo_reg_0_63_24_26_n_2;
  wire data_fifo_reg_0_63_27_29_n_0;
  wire data_fifo_reg_0_63_27_29_n_1;
  wire data_fifo_reg_0_63_27_29_n_2;
  wire data_fifo_reg_0_63_30_30_n_0;
  wire data_fifo_reg_0_63_31_31_n_0;
  wire data_fifo_reg_0_63_3_5_n_0;
  wire data_fifo_reg_0_63_3_5_n_1;
  wire data_fifo_reg_0_63_3_5_n_2;
  wire data_fifo_reg_0_63_6_8_n_0;
  wire data_fifo_reg_0_63_6_8_n_1;
  wire data_fifo_reg_0_63_6_8_n_2;
  wire data_fifo_reg_0_63_9_11_n_0;
  wire data_fifo_reg_0_63_9_11_n_1;
  wire data_fifo_reg_0_63_9_11_n_2;
  wire data_fifo_reg_128_191_0_2_i_1_n_0;
  wire data_fifo_reg_128_191_0_2_n_0;
  wire data_fifo_reg_128_191_0_2_n_1;
  wire data_fifo_reg_128_191_0_2_n_2;
  wire data_fifo_reg_128_191_12_14_n_0;
  wire data_fifo_reg_128_191_12_14_n_1;
  wire data_fifo_reg_128_191_12_14_n_2;
  wire data_fifo_reg_128_191_15_17_n_0;
  wire data_fifo_reg_128_191_15_17_n_1;
  wire data_fifo_reg_128_191_15_17_n_2;
  wire data_fifo_reg_128_191_18_20_n_0;
  wire data_fifo_reg_128_191_18_20_n_1;
  wire data_fifo_reg_128_191_18_20_n_2;
  wire data_fifo_reg_128_191_21_23_n_0;
  wire data_fifo_reg_128_191_21_23_n_1;
  wire data_fifo_reg_128_191_21_23_n_2;
  wire data_fifo_reg_128_191_24_26_n_0;
  wire data_fifo_reg_128_191_24_26_n_1;
  wire data_fifo_reg_128_191_24_26_n_2;
  wire data_fifo_reg_128_191_27_29_n_0;
  wire data_fifo_reg_128_191_27_29_n_1;
  wire data_fifo_reg_128_191_27_29_n_2;
  wire data_fifo_reg_128_191_30_30_n_0;
  wire data_fifo_reg_128_191_31_31_n_0;
  wire data_fifo_reg_128_191_3_5_n_0;
  wire data_fifo_reg_128_191_3_5_n_1;
  wire data_fifo_reg_128_191_3_5_n_2;
  wire data_fifo_reg_128_191_6_8_n_0;
  wire data_fifo_reg_128_191_6_8_n_1;
  wire data_fifo_reg_128_191_6_8_n_2;
  wire data_fifo_reg_128_191_9_11_n_0;
  wire data_fifo_reg_128_191_9_11_n_1;
  wire data_fifo_reg_128_191_9_11_n_2;
  wire data_fifo_reg_192_255_0_2_i_1_n_0;
  wire data_fifo_reg_192_255_0_2_n_0;
  wire data_fifo_reg_192_255_0_2_n_1;
  wire data_fifo_reg_192_255_0_2_n_2;
  wire data_fifo_reg_192_255_12_14_n_0;
  wire data_fifo_reg_192_255_12_14_n_1;
  wire data_fifo_reg_192_255_12_14_n_2;
  wire data_fifo_reg_192_255_15_17_n_0;
  wire data_fifo_reg_192_255_15_17_n_1;
  wire data_fifo_reg_192_255_15_17_n_2;
  wire data_fifo_reg_192_255_18_20_n_0;
  wire data_fifo_reg_192_255_18_20_n_1;
  wire data_fifo_reg_192_255_18_20_n_2;
  wire data_fifo_reg_192_255_21_23_n_0;
  wire data_fifo_reg_192_255_21_23_n_1;
  wire data_fifo_reg_192_255_21_23_n_2;
  wire data_fifo_reg_192_255_24_26_n_0;
  wire data_fifo_reg_192_255_24_26_n_1;
  wire data_fifo_reg_192_255_24_26_n_2;
  wire data_fifo_reg_192_255_27_29_n_0;
  wire data_fifo_reg_192_255_27_29_n_1;
  wire data_fifo_reg_192_255_27_29_n_2;
  wire data_fifo_reg_192_255_30_30_n_0;
  wire data_fifo_reg_192_255_31_31_n_0;
  wire data_fifo_reg_192_255_3_5_n_0;
  wire data_fifo_reg_192_255_3_5_n_1;
  wire data_fifo_reg_192_255_3_5_n_2;
  wire data_fifo_reg_192_255_6_8_n_0;
  wire data_fifo_reg_192_255_6_8_n_1;
  wire data_fifo_reg_192_255_6_8_n_2;
  wire data_fifo_reg_192_255_9_11_n_0;
  wire data_fifo_reg_192_255_9_11_n_1;
  wire data_fifo_reg_192_255_9_11_n_2;
  wire data_fifo_reg_256_319_0_2_i_1_n_0;
  wire data_fifo_reg_256_319_0_2_n_0;
  wire data_fifo_reg_256_319_0_2_n_1;
  wire data_fifo_reg_256_319_0_2_n_2;
  wire data_fifo_reg_256_319_12_14_n_0;
  wire data_fifo_reg_256_319_12_14_n_1;
  wire data_fifo_reg_256_319_12_14_n_2;
  wire data_fifo_reg_256_319_15_17_n_0;
  wire data_fifo_reg_256_319_15_17_n_1;
  wire data_fifo_reg_256_319_15_17_n_2;
  wire data_fifo_reg_256_319_18_20_n_0;
  wire data_fifo_reg_256_319_18_20_n_1;
  wire data_fifo_reg_256_319_18_20_n_2;
  wire data_fifo_reg_256_319_21_23_n_0;
  wire data_fifo_reg_256_319_21_23_n_1;
  wire data_fifo_reg_256_319_21_23_n_2;
  wire data_fifo_reg_256_319_24_26_n_0;
  wire data_fifo_reg_256_319_24_26_n_1;
  wire data_fifo_reg_256_319_24_26_n_2;
  wire data_fifo_reg_256_319_27_29_n_0;
  wire data_fifo_reg_256_319_27_29_n_1;
  wire data_fifo_reg_256_319_27_29_n_2;
  wire data_fifo_reg_256_319_30_30_n_0;
  wire data_fifo_reg_256_319_31_31_n_0;
  wire data_fifo_reg_256_319_3_5_n_0;
  wire data_fifo_reg_256_319_3_5_n_1;
  wire data_fifo_reg_256_319_3_5_n_2;
  wire data_fifo_reg_256_319_6_8_n_0;
  wire data_fifo_reg_256_319_6_8_n_1;
  wire data_fifo_reg_256_319_6_8_n_2;
  wire data_fifo_reg_256_319_9_11_n_0;
  wire data_fifo_reg_256_319_9_11_n_1;
  wire data_fifo_reg_256_319_9_11_n_2;
  wire data_fifo_reg_64_127_0_2_i_1_n_0;
  wire data_fifo_reg_64_127_0_2_n_0;
  wire data_fifo_reg_64_127_0_2_n_1;
  wire data_fifo_reg_64_127_0_2_n_2;
  wire data_fifo_reg_64_127_12_14_n_0;
  wire data_fifo_reg_64_127_12_14_n_1;
  wire data_fifo_reg_64_127_12_14_n_2;
  wire data_fifo_reg_64_127_15_17_n_0;
  wire data_fifo_reg_64_127_15_17_n_1;
  wire data_fifo_reg_64_127_15_17_n_2;
  wire data_fifo_reg_64_127_18_20_n_0;
  wire data_fifo_reg_64_127_18_20_n_1;
  wire data_fifo_reg_64_127_18_20_n_2;
  wire data_fifo_reg_64_127_21_23_n_0;
  wire data_fifo_reg_64_127_21_23_n_1;
  wire data_fifo_reg_64_127_21_23_n_2;
  wire data_fifo_reg_64_127_24_26_n_0;
  wire data_fifo_reg_64_127_24_26_n_1;
  wire data_fifo_reg_64_127_24_26_n_2;
  wire data_fifo_reg_64_127_27_29_n_0;
  wire data_fifo_reg_64_127_27_29_n_1;
  wire data_fifo_reg_64_127_27_29_n_2;
  wire data_fifo_reg_64_127_30_30_n_0;
  wire data_fifo_reg_64_127_31_31_n_0;
  wire data_fifo_reg_64_127_3_5_n_0;
  wire data_fifo_reg_64_127_3_5_n_1;
  wire data_fifo_reg_64_127_3_5_n_2;
  wire data_fifo_reg_64_127_6_8_n_0;
  wire data_fifo_reg_64_127_6_8_n_1;
  wire data_fifo_reg_64_127_6_8_n_2;
  wire data_fifo_reg_64_127_9_11_n_0;
  wire data_fifo_reg_64_127_9_11_n_1;
  wire data_fifo_reg_64_127_9_11_n_2;
  wire irq;
  wire irq_INST_0_i_1_n_0;
  wire m00_axis_aclk;
  wire m00_axis_aresetn;
  wire [31:0]m00_axis_tdata;
  wire \m00_axis_tdata[0]_INST_0_i_1_n_0 ;
  wire \m00_axis_tdata[10]_INST_0_i_1_n_0 ;
  wire \m00_axis_tdata[11]_INST_0_i_1_n_0 ;
  wire \m00_axis_tdata[12]_INST_0_i_1_n_0 ;
  wire \m00_axis_tdata[13]_INST_0_i_1_n_0 ;
  wire \m00_axis_tdata[14]_INST_0_i_1_n_0 ;
  wire \m00_axis_tdata[15]_INST_0_i_1_n_0 ;
  wire \m00_axis_tdata[16]_INST_0_i_1_n_0 ;
  wire \m00_axis_tdata[17]_INST_0_i_1_n_0 ;
  wire \m00_axis_tdata[18]_INST_0_i_1_n_0 ;
  wire \m00_axis_tdata[19]_INST_0_i_1_n_0 ;
  wire \m00_axis_tdata[1]_INST_0_i_1_n_0 ;
  wire \m00_axis_tdata[20]_INST_0_i_1_n_0 ;
  wire \m00_axis_tdata[21]_INST_0_i_1_n_0 ;
  wire \m00_axis_tdata[22]_INST_0_i_1_n_0 ;
  wire \m00_axis_tdata[23]_INST_0_i_1_n_0 ;
  wire \m00_axis_tdata[24]_INST_0_i_1_n_0 ;
  wire \m00_axis_tdata[25]_INST_0_i_1_n_0 ;
  wire \m00_axis_tdata[26]_INST_0_i_1_n_0 ;
  wire \m00_axis_tdata[27]_INST_0_i_1_n_0 ;
  wire \m00_axis_tdata[28]_INST_0_i_1_n_0 ;
  wire \m00_axis_tdata[29]_INST_0_i_1_n_0 ;
  wire \m00_axis_tdata[2]_INST_0_i_1_n_0 ;
  wire \m00_axis_tdata[30]_INST_0_i_1_n_0 ;
  wire \m00_axis_tdata[31]_INST_0_i_1_n_0 ;
  wire \m00_axis_tdata[31]_INST_0_i_2_n_0 ;
  wire \m00_axis_tdata[3]_INST_0_i_1_n_0 ;
  wire \m00_axis_tdata[4]_INST_0_i_1_n_0 ;
  wire \m00_axis_tdata[5]_INST_0_i_1_n_0 ;
  wire \m00_axis_tdata[6]_INST_0_i_1_n_0 ;
  wire \m00_axis_tdata[7]_INST_0_i_1_n_0 ;
  wire \m00_axis_tdata[8]_INST_0_i_1_n_0 ;
  wire \m00_axis_tdata[9]_INST_0_i_1_n_0 ;
  wire m00_axis_tlast;
  wire m00_axis_tready;
  wire m00_axis_tvalid;
  wire [1:0]mst_exec_state;
  wire \mst_exec_state_reg_n_0_[0] ;
  wire \mst_exec_state_reg_n_0_[1] ;
  wire mst_wr_state_i_1_n_0;
  wire mst_wr_state_reg_n_0;
  wire [8:1]p_0_in;
  wire [8:6]read_pointer;
  wire \read_pointer[0]_i_1_n_0 ;
  wire \read_pointer[1]_i_1_n_0 ;
  wire \read_pointer[2]_i_1_n_0 ;
  wire \read_pointer[3]_i_1_n_0 ;
  wire \read_pointer[4]_i_1_n_0 ;
  wire \read_pointer[5]_i_1_n_0 ;
  wire \read_pointer[5]_i_2_n_0 ;
  wire \read_pointer[5]_i_3_n_0 ;
  wire \read_pointer[6]_i_1_n_0 ;
  wire \read_pointer[7]_i_1_n_0 ;
  wire \read_pointer[8]_i_1_n_0 ;
  wire \read_pointer[8]_i_2_n_0 ;
  wire \read_pointer[8]_i_3_n_0 ;
  wire [5:0]read_pointer_reg;
  wire rx_done_d1;
  wire rx_done_i_1_n_0;
  wire rx_done_reg_n_0;
  wire sys_enable;
  wire tx_done3_out;
  wire tx_done_i_1_n_0;
  wire tx_done_reg_n_0;
  wire \v_write_pointer[0]_i_1_n_0 ;
  wire \v_write_pointer[8]_i_1_n_0 ;
  wire \v_write_pointer[8]_i_2_n_0 ;
  wire \v_write_pointer[8]_i_4_n_0 ;
  wire [8:0]v_write_pointer_reg;
  wire wr_clk;
  wire wr_clk_d1;
  wire wr_clk_d2;
  wire [31:0]wr_data;
  wire wr_ena;
  wire wr_sync;
  wire wr_sync_d1;
  wire wr_sync_d2;
  wire NLW_data_fifo_reg_0_63_0_2_DOD_UNCONNECTED;
  wire NLW_data_fifo_reg_0_63_12_14_DOD_UNCONNECTED;
  wire NLW_data_fifo_reg_0_63_15_17_DOD_UNCONNECTED;
  wire NLW_data_fifo_reg_0_63_18_20_DOD_UNCONNECTED;
  wire NLW_data_fifo_reg_0_63_21_23_DOD_UNCONNECTED;
  wire NLW_data_fifo_reg_0_63_24_26_DOD_UNCONNECTED;
  wire NLW_data_fifo_reg_0_63_27_29_DOD_UNCONNECTED;
  wire NLW_data_fifo_reg_0_63_30_30_SPO_UNCONNECTED;
  wire NLW_data_fifo_reg_0_63_31_31_SPO_UNCONNECTED;
  wire NLW_data_fifo_reg_0_63_3_5_DOD_UNCONNECTED;
  wire NLW_data_fifo_reg_0_63_6_8_DOD_UNCONNECTED;
  wire NLW_data_fifo_reg_0_63_9_11_DOD_UNCONNECTED;
  wire NLW_data_fifo_reg_128_191_0_2_DOD_UNCONNECTED;
  wire NLW_data_fifo_reg_128_191_12_14_DOD_UNCONNECTED;
  wire NLW_data_fifo_reg_128_191_15_17_DOD_UNCONNECTED;
  wire NLW_data_fifo_reg_128_191_18_20_DOD_UNCONNECTED;
  wire NLW_data_fifo_reg_128_191_21_23_DOD_UNCONNECTED;
  wire NLW_data_fifo_reg_128_191_24_26_DOD_UNCONNECTED;
  wire NLW_data_fifo_reg_128_191_27_29_DOD_UNCONNECTED;
  wire NLW_data_fifo_reg_128_191_30_30_SPO_UNCONNECTED;
  wire NLW_data_fifo_reg_128_191_31_31_SPO_UNCONNECTED;
  wire NLW_data_fifo_reg_128_191_3_5_DOD_UNCONNECTED;
  wire NLW_data_fifo_reg_128_191_6_8_DOD_UNCONNECTED;
  wire NLW_data_fifo_reg_128_191_9_11_DOD_UNCONNECTED;
  wire NLW_data_fifo_reg_192_255_0_2_DOD_UNCONNECTED;
  wire NLW_data_fifo_reg_192_255_12_14_DOD_UNCONNECTED;
  wire NLW_data_fifo_reg_192_255_15_17_DOD_UNCONNECTED;
  wire NLW_data_fifo_reg_192_255_18_20_DOD_UNCONNECTED;
  wire NLW_data_fifo_reg_192_255_21_23_DOD_UNCONNECTED;
  wire NLW_data_fifo_reg_192_255_24_26_DOD_UNCONNECTED;
  wire NLW_data_fifo_reg_192_255_27_29_DOD_UNCONNECTED;
  wire NLW_data_fifo_reg_192_255_30_30_SPO_UNCONNECTED;
  wire NLW_data_fifo_reg_192_255_31_31_SPO_UNCONNECTED;
  wire NLW_data_fifo_reg_192_255_3_5_DOD_UNCONNECTED;
  wire NLW_data_fifo_reg_192_255_6_8_DOD_UNCONNECTED;
  wire NLW_data_fifo_reg_192_255_9_11_DOD_UNCONNECTED;
  wire NLW_data_fifo_reg_256_319_0_2_DOD_UNCONNECTED;
  wire NLW_data_fifo_reg_256_319_12_14_DOD_UNCONNECTED;
  wire NLW_data_fifo_reg_256_319_15_17_DOD_UNCONNECTED;
  wire NLW_data_fifo_reg_256_319_18_20_DOD_UNCONNECTED;
  wire NLW_data_fifo_reg_256_319_21_23_DOD_UNCONNECTED;
  wire NLW_data_fifo_reg_256_319_24_26_DOD_UNCONNECTED;
  wire NLW_data_fifo_reg_256_319_27_29_DOD_UNCONNECTED;
  wire NLW_data_fifo_reg_256_319_30_30_SPO_UNCONNECTED;
  wire NLW_data_fifo_reg_256_319_31_31_SPO_UNCONNECTED;
  wire NLW_data_fifo_reg_256_319_3_5_DOD_UNCONNECTED;
  wire NLW_data_fifo_reg_256_319_6_8_DOD_UNCONNECTED;
  wire NLW_data_fifo_reg_256_319_9_11_DOD_UNCONNECTED;
  wire NLW_data_fifo_reg_64_127_0_2_DOD_UNCONNECTED;
  wire NLW_data_fifo_reg_64_127_12_14_DOD_UNCONNECTED;
  wire NLW_data_fifo_reg_64_127_15_17_DOD_UNCONNECTED;
  wire NLW_data_fifo_reg_64_127_18_20_DOD_UNCONNECTED;
  wire NLW_data_fifo_reg_64_127_21_23_DOD_UNCONNECTED;
  wire NLW_data_fifo_reg_64_127_24_26_DOD_UNCONNECTED;
  wire NLW_data_fifo_reg_64_127_27_29_DOD_UNCONNECTED;
  wire NLW_data_fifo_reg_64_127_30_30_SPO_UNCONNECTED;
  wire NLW_data_fifo_reg_64_127_31_31_SPO_UNCONNECTED;
  wire NLW_data_fifo_reg_64_127_3_5_DOD_UNCONNECTED;
  wire NLW_data_fifo_reg_64_127_6_8_DOD_UNCONNECTED;
  wire NLW_data_fifo_reg_64_127_9_11_DOD_UNCONNECTED;

  LUT2 #(
    .INIT(4'h7)) 
    axis_tlast_delay_i_1
       (.I0(m00_axis_aresetn),
        .I1(wr_ena),
        .O(axis_tlast_delay_i_1_n_0));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    axis_tlast_delay_i_2
       (.I0(read_pointer_reg[2]),
        .I1(read_pointer_reg[1]),
        .I2(read_pointer_reg[0]),
        .I3(axis_tlast_delay_i_3_n_0),
        .I4(read_pointer_reg[3]),
        .I5(read_pointer[8]),
        .O(tx_done3_out));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    axis_tlast_delay_i_3
       (.I0(read_pointer[6]),
        .I1(read_pointer_reg[5]),
        .I2(read_pointer[7]),
        .I3(read_pointer_reg[4]),
        .O(axis_tlast_delay_i_3_n_0));
  FDRE axis_tlast_delay_reg
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(tx_done3_out),
        .Q(m00_axis_tlast),
        .R(axis_tlast_delay_i_1_n_0));
  LUT6 #(
    .INIT(64'h000000005555555D)) 
    axis_tvalid_delay_i_1
       (.I0(axis_tvalid_delay_i_2_n_0),
        .I1(axis_tlast_delay_i_3_n_0),
        .I2(read_pointer_reg[0]),
        .I3(read_pointer_reg[1]),
        .I4(read_pointer_reg[2]),
        .I5(\m00_axis_tdata[31]_INST_0_i_2_n_0 ),
        .O(axis_tvalid));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    axis_tvalid_delay_i_2
       (.I0(read_pointer[8]),
        .I1(read_pointer_reg[3]),
        .I2(read_pointer[6]),
        .I3(read_pointer_reg[5]),
        .I4(read_pointer[7]),
        .I5(read_pointer_reg[4]),
        .O(axis_tvalid_delay_i_2_n_0));
  FDRE axis_tvalid_delay_reg
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(axis_tvalid),
        .Q(m00_axis_tvalid),
        .R(axis_tlast_delay_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M data_fifo_reg_0_63_0_2
       (.ADDRA(read_pointer_reg),
        .ADDRB(read_pointer_reg),
        .ADDRC(read_pointer_reg),
        .ADDRD(v_write_pointer_reg[5:0]),
        .DIA(wr_data[0]),
        .DIB(wr_data[1]),
        .DIC(wr_data[2]),
        .DID(1'b0),
        .DOA(data_fifo_reg_0_63_0_2_n_0),
        .DOB(data_fifo_reg_0_63_0_2_n_1),
        .DOC(data_fifo_reg_0_63_0_2_n_2),
        .DOD(NLW_data_fifo_reg_0_63_0_2_DOD_UNCONNECTED),
        .WCLK(m00_axis_aclk),
        .WE(data_fifo_reg_0_63_0_2_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    data_fifo_reg_0_63_0_2_i_1
       (.I0(data_fifo_reg_0_63_0_2_i_2_n_0),
        .I1(data_fifo_reg_0_63_0_2_i_3_n_0),
        .I2(sys_enable),
        .I3(v_write_pointer_reg[8]),
        .I4(v_write_pointer_reg[6]),
        .I5(v_write_pointer_reg[7]),
        .O(data_fifo_reg_0_63_0_2_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    data_fifo_reg_0_63_0_2_i_2
       (.I0(irq_INST_0_i_1_n_0),
        .I1(v_write_pointer_reg[1]),
        .I2(v_write_pointer_reg[0]),
        .I3(v_write_pointer_reg[2]),
        .I4(v_write_pointer_reg[4]),
        .I5(v_write_pointer_reg[7]),
        .O(data_fifo_reg_0_63_0_2_i_2_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    data_fifo_reg_0_63_0_2_i_3
       (.I0(mst_wr_state_reg_n_0),
        .I1(wr_clk_d1),
        .I2(wr_clk_d2),
        .O(data_fifo_reg_0_63_0_2_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    data_fifo_reg_0_63_0_2_i_4
       (.I0(wr_ena),
        .I1(m00_axis_aresetn),
        .O(sys_enable));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M data_fifo_reg_0_63_12_14
       (.ADDRA(read_pointer_reg),
        .ADDRB(read_pointer_reg),
        .ADDRC(read_pointer_reg),
        .ADDRD(v_write_pointer_reg[5:0]),
        .DIA(wr_data[12]),
        .DIB(wr_data[13]),
        .DIC(wr_data[14]),
        .DID(1'b0),
        .DOA(data_fifo_reg_0_63_12_14_n_0),
        .DOB(data_fifo_reg_0_63_12_14_n_1),
        .DOC(data_fifo_reg_0_63_12_14_n_2),
        .DOD(NLW_data_fifo_reg_0_63_12_14_DOD_UNCONNECTED),
        .WCLK(m00_axis_aclk),
        .WE(data_fifo_reg_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M data_fifo_reg_0_63_15_17
       (.ADDRA(read_pointer_reg),
        .ADDRB(read_pointer_reg),
        .ADDRC(read_pointer_reg),
        .ADDRD(v_write_pointer_reg[5:0]),
        .DIA(wr_data[15]),
        .DIB(wr_data[16]),
        .DIC(wr_data[17]),
        .DID(1'b0),
        .DOA(data_fifo_reg_0_63_15_17_n_0),
        .DOB(data_fifo_reg_0_63_15_17_n_1),
        .DOC(data_fifo_reg_0_63_15_17_n_2),
        .DOD(NLW_data_fifo_reg_0_63_15_17_DOD_UNCONNECTED),
        .WCLK(m00_axis_aclk),
        .WE(data_fifo_reg_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M data_fifo_reg_0_63_18_20
       (.ADDRA(read_pointer_reg),
        .ADDRB(read_pointer_reg),
        .ADDRC(read_pointer_reg),
        .ADDRD(v_write_pointer_reg[5:0]),
        .DIA(wr_data[18]),
        .DIB(wr_data[19]),
        .DIC(wr_data[20]),
        .DID(1'b0),
        .DOA(data_fifo_reg_0_63_18_20_n_0),
        .DOB(data_fifo_reg_0_63_18_20_n_1),
        .DOC(data_fifo_reg_0_63_18_20_n_2),
        .DOD(NLW_data_fifo_reg_0_63_18_20_DOD_UNCONNECTED),
        .WCLK(m00_axis_aclk),
        .WE(data_fifo_reg_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M data_fifo_reg_0_63_21_23
       (.ADDRA(read_pointer_reg),
        .ADDRB(read_pointer_reg),
        .ADDRC(read_pointer_reg),
        .ADDRD(v_write_pointer_reg[5:0]),
        .DIA(wr_data[21]),
        .DIB(wr_data[22]),
        .DIC(wr_data[23]),
        .DID(1'b0),
        .DOA(data_fifo_reg_0_63_21_23_n_0),
        .DOB(data_fifo_reg_0_63_21_23_n_1),
        .DOC(data_fifo_reg_0_63_21_23_n_2),
        .DOD(NLW_data_fifo_reg_0_63_21_23_DOD_UNCONNECTED),
        .WCLK(m00_axis_aclk),
        .WE(data_fifo_reg_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M data_fifo_reg_0_63_24_26
       (.ADDRA(read_pointer_reg),
        .ADDRB(read_pointer_reg),
        .ADDRC(read_pointer_reg),
        .ADDRD(v_write_pointer_reg[5:0]),
        .DIA(wr_data[24]),
        .DIB(wr_data[25]),
        .DIC(wr_data[26]),
        .DID(1'b0),
        .DOA(data_fifo_reg_0_63_24_26_n_0),
        .DOB(data_fifo_reg_0_63_24_26_n_1),
        .DOC(data_fifo_reg_0_63_24_26_n_2),
        .DOD(NLW_data_fifo_reg_0_63_24_26_DOD_UNCONNECTED),
        .WCLK(m00_axis_aclk),
        .WE(data_fifo_reg_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M data_fifo_reg_0_63_27_29
       (.ADDRA(read_pointer_reg),
        .ADDRB(read_pointer_reg),
        .ADDRC(read_pointer_reg),
        .ADDRD(v_write_pointer_reg[5:0]),
        .DIA(wr_data[27]),
        .DIB(wr_data[28]),
        .DIC(wr_data[29]),
        .DID(1'b0),
        .DOA(data_fifo_reg_0_63_27_29_n_0),
        .DOB(data_fifo_reg_0_63_27_29_n_1),
        .DOC(data_fifo_reg_0_63_27_29_n_2),
        .DOD(NLW_data_fifo_reg_0_63_27_29_DOD_UNCONNECTED),
        .WCLK(m00_axis_aclk),
        .WE(data_fifo_reg_0_63_0_2_i_1_n_0));
  RAM64X1D data_fifo_reg_0_63_30_30
       (.A0(v_write_pointer_reg[0]),
        .A1(v_write_pointer_reg[1]),
        .A2(v_write_pointer_reg[2]),
        .A3(v_write_pointer_reg[3]),
        .A4(v_write_pointer_reg[4]),
        .A5(v_write_pointer_reg[5]),
        .D(wr_data[30]),
        .DPO(data_fifo_reg_0_63_30_30_n_0),
        .DPRA0(read_pointer_reg[0]),
        .DPRA1(read_pointer_reg[1]),
        .DPRA2(read_pointer_reg[2]),
        .DPRA3(read_pointer_reg[3]),
        .DPRA4(read_pointer_reg[4]),
        .DPRA5(read_pointer_reg[5]),
        .SPO(NLW_data_fifo_reg_0_63_30_30_SPO_UNCONNECTED),
        .WCLK(m00_axis_aclk),
        .WE(data_fifo_reg_0_63_0_2_i_1_n_0));
  RAM64X1D data_fifo_reg_0_63_31_31
       (.A0(v_write_pointer_reg[0]),
        .A1(v_write_pointer_reg[1]),
        .A2(v_write_pointer_reg[2]),
        .A3(v_write_pointer_reg[3]),
        .A4(v_write_pointer_reg[4]),
        .A5(v_write_pointer_reg[5]),
        .D(wr_data[31]),
        .DPO(data_fifo_reg_0_63_31_31_n_0),
        .DPRA0(read_pointer_reg[0]),
        .DPRA1(read_pointer_reg[1]),
        .DPRA2(read_pointer_reg[2]),
        .DPRA3(read_pointer_reg[3]),
        .DPRA4(read_pointer_reg[4]),
        .DPRA5(read_pointer_reg[5]),
        .SPO(NLW_data_fifo_reg_0_63_31_31_SPO_UNCONNECTED),
        .WCLK(m00_axis_aclk),
        .WE(data_fifo_reg_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M data_fifo_reg_0_63_3_5
       (.ADDRA(read_pointer_reg),
        .ADDRB(read_pointer_reg),
        .ADDRC(read_pointer_reg),
        .ADDRD(v_write_pointer_reg[5:0]),
        .DIA(wr_data[3]),
        .DIB(wr_data[4]),
        .DIC(wr_data[5]),
        .DID(1'b0),
        .DOA(data_fifo_reg_0_63_3_5_n_0),
        .DOB(data_fifo_reg_0_63_3_5_n_1),
        .DOC(data_fifo_reg_0_63_3_5_n_2),
        .DOD(NLW_data_fifo_reg_0_63_3_5_DOD_UNCONNECTED),
        .WCLK(m00_axis_aclk),
        .WE(data_fifo_reg_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M data_fifo_reg_0_63_6_8
       (.ADDRA(read_pointer_reg),
        .ADDRB(read_pointer_reg),
        .ADDRC(read_pointer_reg),
        .ADDRD(v_write_pointer_reg[5:0]),
        .DIA(wr_data[6]),
        .DIB(wr_data[7]),
        .DIC(wr_data[8]),
        .DID(1'b0),
        .DOA(data_fifo_reg_0_63_6_8_n_0),
        .DOB(data_fifo_reg_0_63_6_8_n_1),
        .DOC(data_fifo_reg_0_63_6_8_n_2),
        .DOD(NLW_data_fifo_reg_0_63_6_8_DOD_UNCONNECTED),
        .WCLK(m00_axis_aclk),
        .WE(data_fifo_reg_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M data_fifo_reg_0_63_9_11
       (.ADDRA(read_pointer_reg),
        .ADDRB(read_pointer_reg),
        .ADDRC(read_pointer_reg),
        .ADDRD(v_write_pointer_reg[5:0]),
        .DIA(wr_data[9]),
        .DIB(wr_data[10]),
        .DIC(wr_data[11]),
        .DID(1'b0),
        .DOA(data_fifo_reg_0_63_9_11_n_0),
        .DOB(data_fifo_reg_0_63_9_11_n_1),
        .DOC(data_fifo_reg_0_63_9_11_n_2),
        .DOD(NLW_data_fifo_reg_0_63_9_11_DOD_UNCONNECTED),
        .WCLK(m00_axis_aclk),
        .WE(data_fifo_reg_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M data_fifo_reg_128_191_0_2
       (.ADDRA(read_pointer_reg),
        .ADDRB(read_pointer_reg),
        .ADDRC(read_pointer_reg),
        .ADDRD(v_write_pointer_reg[5:0]),
        .DIA(wr_data[0]),
        .DIB(wr_data[1]),
        .DIC(wr_data[2]),
        .DID(1'b0),
        .DOA(data_fifo_reg_128_191_0_2_n_0),
        .DOB(data_fifo_reg_128_191_0_2_n_1),
        .DOC(data_fifo_reg_128_191_0_2_n_2),
        .DOD(NLW_data_fifo_reg_128_191_0_2_DOD_UNCONNECTED),
        .WCLK(m00_axis_aclk),
        .WE(data_fifo_reg_128_191_0_2_i_1_n_0));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    data_fifo_reg_128_191_0_2_i_1
       (.I0(v_write_pointer_reg[6]),
        .I1(v_write_pointer_reg[8]),
        .I2(v_write_pointer_reg[7]),
        .I3(data_fifo_reg_0_63_0_2_i_2_n_0),
        .I4(data_fifo_reg_0_63_0_2_i_3_n_0),
        .I5(sys_enable),
        .O(data_fifo_reg_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M data_fifo_reg_128_191_12_14
       (.ADDRA(read_pointer_reg),
        .ADDRB(read_pointer_reg),
        .ADDRC(read_pointer_reg),
        .ADDRD(v_write_pointer_reg[5:0]),
        .DIA(wr_data[12]),
        .DIB(wr_data[13]),
        .DIC(wr_data[14]),
        .DID(1'b0),
        .DOA(data_fifo_reg_128_191_12_14_n_0),
        .DOB(data_fifo_reg_128_191_12_14_n_1),
        .DOC(data_fifo_reg_128_191_12_14_n_2),
        .DOD(NLW_data_fifo_reg_128_191_12_14_DOD_UNCONNECTED),
        .WCLK(m00_axis_aclk),
        .WE(data_fifo_reg_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M data_fifo_reg_128_191_15_17
       (.ADDRA(read_pointer_reg),
        .ADDRB(read_pointer_reg),
        .ADDRC(read_pointer_reg),
        .ADDRD(v_write_pointer_reg[5:0]),
        .DIA(wr_data[15]),
        .DIB(wr_data[16]),
        .DIC(wr_data[17]),
        .DID(1'b0),
        .DOA(data_fifo_reg_128_191_15_17_n_0),
        .DOB(data_fifo_reg_128_191_15_17_n_1),
        .DOC(data_fifo_reg_128_191_15_17_n_2),
        .DOD(NLW_data_fifo_reg_128_191_15_17_DOD_UNCONNECTED),
        .WCLK(m00_axis_aclk),
        .WE(data_fifo_reg_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M data_fifo_reg_128_191_18_20
       (.ADDRA(read_pointer_reg),
        .ADDRB(read_pointer_reg),
        .ADDRC(read_pointer_reg),
        .ADDRD(v_write_pointer_reg[5:0]),
        .DIA(wr_data[18]),
        .DIB(wr_data[19]),
        .DIC(wr_data[20]),
        .DID(1'b0),
        .DOA(data_fifo_reg_128_191_18_20_n_0),
        .DOB(data_fifo_reg_128_191_18_20_n_1),
        .DOC(data_fifo_reg_128_191_18_20_n_2),
        .DOD(NLW_data_fifo_reg_128_191_18_20_DOD_UNCONNECTED),
        .WCLK(m00_axis_aclk),
        .WE(data_fifo_reg_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M data_fifo_reg_128_191_21_23
       (.ADDRA(read_pointer_reg),
        .ADDRB(read_pointer_reg),
        .ADDRC(read_pointer_reg),
        .ADDRD(v_write_pointer_reg[5:0]),
        .DIA(wr_data[21]),
        .DIB(wr_data[22]),
        .DIC(wr_data[23]),
        .DID(1'b0),
        .DOA(data_fifo_reg_128_191_21_23_n_0),
        .DOB(data_fifo_reg_128_191_21_23_n_1),
        .DOC(data_fifo_reg_128_191_21_23_n_2),
        .DOD(NLW_data_fifo_reg_128_191_21_23_DOD_UNCONNECTED),
        .WCLK(m00_axis_aclk),
        .WE(data_fifo_reg_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M data_fifo_reg_128_191_24_26
       (.ADDRA(read_pointer_reg),
        .ADDRB(read_pointer_reg),
        .ADDRC(read_pointer_reg),
        .ADDRD(v_write_pointer_reg[5:0]),
        .DIA(wr_data[24]),
        .DIB(wr_data[25]),
        .DIC(wr_data[26]),
        .DID(1'b0),
        .DOA(data_fifo_reg_128_191_24_26_n_0),
        .DOB(data_fifo_reg_128_191_24_26_n_1),
        .DOC(data_fifo_reg_128_191_24_26_n_2),
        .DOD(NLW_data_fifo_reg_128_191_24_26_DOD_UNCONNECTED),
        .WCLK(m00_axis_aclk),
        .WE(data_fifo_reg_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M data_fifo_reg_128_191_27_29
       (.ADDRA(read_pointer_reg),
        .ADDRB(read_pointer_reg),
        .ADDRC(read_pointer_reg),
        .ADDRD(v_write_pointer_reg[5:0]),
        .DIA(wr_data[27]),
        .DIB(wr_data[28]),
        .DIC(wr_data[29]),
        .DID(1'b0),
        .DOA(data_fifo_reg_128_191_27_29_n_0),
        .DOB(data_fifo_reg_128_191_27_29_n_1),
        .DOC(data_fifo_reg_128_191_27_29_n_2),
        .DOD(NLW_data_fifo_reg_128_191_27_29_DOD_UNCONNECTED),
        .WCLK(m00_axis_aclk),
        .WE(data_fifo_reg_128_191_0_2_i_1_n_0));
  RAM64X1D data_fifo_reg_128_191_30_30
       (.A0(v_write_pointer_reg[0]),
        .A1(v_write_pointer_reg[1]),
        .A2(v_write_pointer_reg[2]),
        .A3(v_write_pointer_reg[3]),
        .A4(v_write_pointer_reg[4]),
        .A5(v_write_pointer_reg[5]),
        .D(wr_data[30]),
        .DPO(data_fifo_reg_128_191_30_30_n_0),
        .DPRA0(read_pointer_reg[0]),
        .DPRA1(read_pointer_reg[1]),
        .DPRA2(read_pointer_reg[2]),
        .DPRA3(read_pointer_reg[3]),
        .DPRA4(read_pointer_reg[4]),
        .DPRA5(read_pointer_reg[5]),
        .SPO(NLW_data_fifo_reg_128_191_30_30_SPO_UNCONNECTED),
        .WCLK(m00_axis_aclk),
        .WE(data_fifo_reg_128_191_0_2_i_1_n_0));
  RAM64X1D data_fifo_reg_128_191_31_31
       (.A0(v_write_pointer_reg[0]),
        .A1(v_write_pointer_reg[1]),
        .A2(v_write_pointer_reg[2]),
        .A3(v_write_pointer_reg[3]),
        .A4(v_write_pointer_reg[4]),
        .A5(v_write_pointer_reg[5]),
        .D(wr_data[31]),
        .DPO(data_fifo_reg_128_191_31_31_n_0),
        .DPRA0(read_pointer_reg[0]),
        .DPRA1(read_pointer_reg[1]),
        .DPRA2(read_pointer_reg[2]),
        .DPRA3(read_pointer_reg[3]),
        .DPRA4(read_pointer_reg[4]),
        .DPRA5(read_pointer_reg[5]),
        .SPO(NLW_data_fifo_reg_128_191_31_31_SPO_UNCONNECTED),
        .WCLK(m00_axis_aclk),
        .WE(data_fifo_reg_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M data_fifo_reg_128_191_3_5
       (.ADDRA(read_pointer_reg),
        .ADDRB(read_pointer_reg),
        .ADDRC(read_pointer_reg),
        .ADDRD(v_write_pointer_reg[5:0]),
        .DIA(wr_data[3]),
        .DIB(wr_data[4]),
        .DIC(wr_data[5]),
        .DID(1'b0),
        .DOA(data_fifo_reg_128_191_3_5_n_0),
        .DOB(data_fifo_reg_128_191_3_5_n_1),
        .DOC(data_fifo_reg_128_191_3_5_n_2),
        .DOD(NLW_data_fifo_reg_128_191_3_5_DOD_UNCONNECTED),
        .WCLK(m00_axis_aclk),
        .WE(data_fifo_reg_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M data_fifo_reg_128_191_6_8
       (.ADDRA(read_pointer_reg),
        .ADDRB(read_pointer_reg),
        .ADDRC(read_pointer_reg),
        .ADDRD(v_write_pointer_reg[5:0]),
        .DIA(wr_data[6]),
        .DIB(wr_data[7]),
        .DIC(wr_data[8]),
        .DID(1'b0),
        .DOA(data_fifo_reg_128_191_6_8_n_0),
        .DOB(data_fifo_reg_128_191_6_8_n_1),
        .DOC(data_fifo_reg_128_191_6_8_n_2),
        .DOD(NLW_data_fifo_reg_128_191_6_8_DOD_UNCONNECTED),
        .WCLK(m00_axis_aclk),
        .WE(data_fifo_reg_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M data_fifo_reg_128_191_9_11
       (.ADDRA(read_pointer_reg),
        .ADDRB(read_pointer_reg),
        .ADDRC(read_pointer_reg),
        .ADDRD(v_write_pointer_reg[5:0]),
        .DIA(wr_data[9]),
        .DIB(wr_data[10]),
        .DIC(wr_data[11]),
        .DID(1'b0),
        .DOA(data_fifo_reg_128_191_9_11_n_0),
        .DOB(data_fifo_reg_128_191_9_11_n_1),
        .DOC(data_fifo_reg_128_191_9_11_n_2),
        .DOD(NLW_data_fifo_reg_128_191_9_11_DOD_UNCONNECTED),
        .WCLK(m00_axis_aclk),
        .WE(data_fifo_reg_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M data_fifo_reg_192_255_0_2
       (.ADDRA(read_pointer_reg),
        .ADDRB(read_pointer_reg),
        .ADDRC(read_pointer_reg),
        .ADDRD(v_write_pointer_reg[5:0]),
        .DIA(wr_data[0]),
        .DIB(wr_data[1]),
        .DIC(wr_data[2]),
        .DID(1'b0),
        .DOA(data_fifo_reg_192_255_0_2_n_0),
        .DOB(data_fifo_reg_192_255_0_2_n_1),
        .DOC(data_fifo_reg_192_255_0_2_n_2),
        .DOD(NLW_data_fifo_reg_192_255_0_2_DOD_UNCONNECTED),
        .WCLK(m00_axis_aclk),
        .WE(data_fifo_reg_192_255_0_2_i_1_n_0));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    data_fifo_reg_192_255_0_2_i_1
       (.I0(data_fifo_reg_0_63_0_2_i_2_n_0),
        .I1(data_fifo_reg_0_63_0_2_i_3_n_0),
        .I2(sys_enable),
        .I3(v_write_pointer_reg[8]),
        .I4(v_write_pointer_reg[6]),
        .I5(v_write_pointer_reg[7]),
        .O(data_fifo_reg_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M data_fifo_reg_192_255_12_14
       (.ADDRA(read_pointer_reg),
        .ADDRB(read_pointer_reg),
        .ADDRC(read_pointer_reg),
        .ADDRD(v_write_pointer_reg[5:0]),
        .DIA(wr_data[12]),
        .DIB(wr_data[13]),
        .DIC(wr_data[14]),
        .DID(1'b0),
        .DOA(data_fifo_reg_192_255_12_14_n_0),
        .DOB(data_fifo_reg_192_255_12_14_n_1),
        .DOC(data_fifo_reg_192_255_12_14_n_2),
        .DOD(NLW_data_fifo_reg_192_255_12_14_DOD_UNCONNECTED),
        .WCLK(m00_axis_aclk),
        .WE(data_fifo_reg_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M data_fifo_reg_192_255_15_17
       (.ADDRA(read_pointer_reg),
        .ADDRB(read_pointer_reg),
        .ADDRC(read_pointer_reg),
        .ADDRD(v_write_pointer_reg[5:0]),
        .DIA(wr_data[15]),
        .DIB(wr_data[16]),
        .DIC(wr_data[17]),
        .DID(1'b0),
        .DOA(data_fifo_reg_192_255_15_17_n_0),
        .DOB(data_fifo_reg_192_255_15_17_n_1),
        .DOC(data_fifo_reg_192_255_15_17_n_2),
        .DOD(NLW_data_fifo_reg_192_255_15_17_DOD_UNCONNECTED),
        .WCLK(m00_axis_aclk),
        .WE(data_fifo_reg_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M data_fifo_reg_192_255_18_20
       (.ADDRA(read_pointer_reg),
        .ADDRB(read_pointer_reg),
        .ADDRC(read_pointer_reg),
        .ADDRD(v_write_pointer_reg[5:0]),
        .DIA(wr_data[18]),
        .DIB(wr_data[19]),
        .DIC(wr_data[20]),
        .DID(1'b0),
        .DOA(data_fifo_reg_192_255_18_20_n_0),
        .DOB(data_fifo_reg_192_255_18_20_n_1),
        .DOC(data_fifo_reg_192_255_18_20_n_2),
        .DOD(NLW_data_fifo_reg_192_255_18_20_DOD_UNCONNECTED),
        .WCLK(m00_axis_aclk),
        .WE(data_fifo_reg_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M data_fifo_reg_192_255_21_23
       (.ADDRA(read_pointer_reg),
        .ADDRB(read_pointer_reg),
        .ADDRC(read_pointer_reg),
        .ADDRD(v_write_pointer_reg[5:0]),
        .DIA(wr_data[21]),
        .DIB(wr_data[22]),
        .DIC(wr_data[23]),
        .DID(1'b0),
        .DOA(data_fifo_reg_192_255_21_23_n_0),
        .DOB(data_fifo_reg_192_255_21_23_n_1),
        .DOC(data_fifo_reg_192_255_21_23_n_2),
        .DOD(NLW_data_fifo_reg_192_255_21_23_DOD_UNCONNECTED),
        .WCLK(m00_axis_aclk),
        .WE(data_fifo_reg_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M data_fifo_reg_192_255_24_26
       (.ADDRA(read_pointer_reg),
        .ADDRB(read_pointer_reg),
        .ADDRC(read_pointer_reg),
        .ADDRD(v_write_pointer_reg[5:0]),
        .DIA(wr_data[24]),
        .DIB(wr_data[25]),
        .DIC(wr_data[26]),
        .DID(1'b0),
        .DOA(data_fifo_reg_192_255_24_26_n_0),
        .DOB(data_fifo_reg_192_255_24_26_n_1),
        .DOC(data_fifo_reg_192_255_24_26_n_2),
        .DOD(NLW_data_fifo_reg_192_255_24_26_DOD_UNCONNECTED),
        .WCLK(m00_axis_aclk),
        .WE(data_fifo_reg_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M data_fifo_reg_192_255_27_29
       (.ADDRA(read_pointer_reg),
        .ADDRB(read_pointer_reg),
        .ADDRC(read_pointer_reg),
        .ADDRD(v_write_pointer_reg[5:0]),
        .DIA(wr_data[27]),
        .DIB(wr_data[28]),
        .DIC(wr_data[29]),
        .DID(1'b0),
        .DOA(data_fifo_reg_192_255_27_29_n_0),
        .DOB(data_fifo_reg_192_255_27_29_n_1),
        .DOC(data_fifo_reg_192_255_27_29_n_2),
        .DOD(NLW_data_fifo_reg_192_255_27_29_DOD_UNCONNECTED),
        .WCLK(m00_axis_aclk),
        .WE(data_fifo_reg_192_255_0_2_i_1_n_0));
  RAM64X1D data_fifo_reg_192_255_30_30
       (.A0(v_write_pointer_reg[0]),
        .A1(v_write_pointer_reg[1]),
        .A2(v_write_pointer_reg[2]),
        .A3(v_write_pointer_reg[3]),
        .A4(v_write_pointer_reg[4]),
        .A5(v_write_pointer_reg[5]),
        .D(wr_data[30]),
        .DPO(data_fifo_reg_192_255_30_30_n_0),
        .DPRA0(read_pointer_reg[0]),
        .DPRA1(read_pointer_reg[1]),
        .DPRA2(read_pointer_reg[2]),
        .DPRA3(read_pointer_reg[3]),
        .DPRA4(read_pointer_reg[4]),
        .DPRA5(read_pointer_reg[5]),
        .SPO(NLW_data_fifo_reg_192_255_30_30_SPO_UNCONNECTED),
        .WCLK(m00_axis_aclk),
        .WE(data_fifo_reg_192_255_0_2_i_1_n_0));
  RAM64X1D data_fifo_reg_192_255_31_31
       (.A0(v_write_pointer_reg[0]),
        .A1(v_write_pointer_reg[1]),
        .A2(v_write_pointer_reg[2]),
        .A3(v_write_pointer_reg[3]),
        .A4(v_write_pointer_reg[4]),
        .A5(v_write_pointer_reg[5]),
        .D(wr_data[31]),
        .DPO(data_fifo_reg_192_255_31_31_n_0),
        .DPRA0(read_pointer_reg[0]),
        .DPRA1(read_pointer_reg[1]),
        .DPRA2(read_pointer_reg[2]),
        .DPRA3(read_pointer_reg[3]),
        .DPRA4(read_pointer_reg[4]),
        .DPRA5(read_pointer_reg[5]),
        .SPO(NLW_data_fifo_reg_192_255_31_31_SPO_UNCONNECTED),
        .WCLK(m00_axis_aclk),
        .WE(data_fifo_reg_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M data_fifo_reg_192_255_3_5
       (.ADDRA(read_pointer_reg),
        .ADDRB(read_pointer_reg),
        .ADDRC(read_pointer_reg),
        .ADDRD(v_write_pointer_reg[5:0]),
        .DIA(wr_data[3]),
        .DIB(wr_data[4]),
        .DIC(wr_data[5]),
        .DID(1'b0),
        .DOA(data_fifo_reg_192_255_3_5_n_0),
        .DOB(data_fifo_reg_192_255_3_5_n_1),
        .DOC(data_fifo_reg_192_255_3_5_n_2),
        .DOD(NLW_data_fifo_reg_192_255_3_5_DOD_UNCONNECTED),
        .WCLK(m00_axis_aclk),
        .WE(data_fifo_reg_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M data_fifo_reg_192_255_6_8
       (.ADDRA(read_pointer_reg),
        .ADDRB(read_pointer_reg),
        .ADDRC(read_pointer_reg),
        .ADDRD(v_write_pointer_reg[5:0]),
        .DIA(wr_data[6]),
        .DIB(wr_data[7]),
        .DIC(wr_data[8]),
        .DID(1'b0),
        .DOA(data_fifo_reg_192_255_6_8_n_0),
        .DOB(data_fifo_reg_192_255_6_8_n_1),
        .DOC(data_fifo_reg_192_255_6_8_n_2),
        .DOD(NLW_data_fifo_reg_192_255_6_8_DOD_UNCONNECTED),
        .WCLK(m00_axis_aclk),
        .WE(data_fifo_reg_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M data_fifo_reg_192_255_9_11
       (.ADDRA(read_pointer_reg),
        .ADDRB(read_pointer_reg),
        .ADDRC(read_pointer_reg),
        .ADDRD(v_write_pointer_reg[5:0]),
        .DIA(wr_data[9]),
        .DIB(wr_data[10]),
        .DIC(wr_data[11]),
        .DID(1'b0),
        .DOA(data_fifo_reg_192_255_9_11_n_0),
        .DOB(data_fifo_reg_192_255_9_11_n_1),
        .DOC(data_fifo_reg_192_255_9_11_n_2),
        .DOD(NLW_data_fifo_reg_192_255_9_11_DOD_UNCONNECTED),
        .WCLK(m00_axis_aclk),
        .WE(data_fifo_reg_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M data_fifo_reg_256_319_0_2
       (.ADDRA(read_pointer_reg),
        .ADDRB(read_pointer_reg),
        .ADDRC(read_pointer_reg),
        .ADDRD(v_write_pointer_reg[5:0]),
        .DIA(wr_data[0]),
        .DIB(wr_data[1]),
        .DIC(wr_data[2]),
        .DID(1'b0),
        .DOA(data_fifo_reg_256_319_0_2_n_0),
        .DOB(data_fifo_reg_256_319_0_2_n_1),
        .DOC(data_fifo_reg_256_319_0_2_n_2),
        .DOD(NLW_data_fifo_reg_256_319_0_2_DOD_UNCONNECTED),
        .WCLK(m00_axis_aclk),
        .WE(data_fifo_reg_256_319_0_2_i_1_n_0));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    data_fifo_reg_256_319_0_2_i_1
       (.I0(v_write_pointer_reg[6]),
        .I1(v_write_pointer_reg[7]),
        .I2(v_write_pointer_reg[8]),
        .I3(data_fifo_reg_0_63_0_2_i_2_n_0),
        .I4(data_fifo_reg_0_63_0_2_i_3_n_0),
        .I5(sys_enable),
        .O(data_fifo_reg_256_319_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M data_fifo_reg_256_319_12_14
       (.ADDRA(read_pointer_reg),
        .ADDRB(read_pointer_reg),
        .ADDRC(read_pointer_reg),
        .ADDRD(v_write_pointer_reg[5:0]),
        .DIA(wr_data[12]),
        .DIB(wr_data[13]),
        .DIC(wr_data[14]),
        .DID(1'b0),
        .DOA(data_fifo_reg_256_319_12_14_n_0),
        .DOB(data_fifo_reg_256_319_12_14_n_1),
        .DOC(data_fifo_reg_256_319_12_14_n_2),
        .DOD(NLW_data_fifo_reg_256_319_12_14_DOD_UNCONNECTED),
        .WCLK(m00_axis_aclk),
        .WE(data_fifo_reg_256_319_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M data_fifo_reg_256_319_15_17
       (.ADDRA(read_pointer_reg),
        .ADDRB(read_pointer_reg),
        .ADDRC(read_pointer_reg),
        .ADDRD(v_write_pointer_reg[5:0]),
        .DIA(wr_data[15]),
        .DIB(wr_data[16]),
        .DIC(wr_data[17]),
        .DID(1'b0),
        .DOA(data_fifo_reg_256_319_15_17_n_0),
        .DOB(data_fifo_reg_256_319_15_17_n_1),
        .DOC(data_fifo_reg_256_319_15_17_n_2),
        .DOD(NLW_data_fifo_reg_256_319_15_17_DOD_UNCONNECTED),
        .WCLK(m00_axis_aclk),
        .WE(data_fifo_reg_256_319_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M data_fifo_reg_256_319_18_20
       (.ADDRA(read_pointer_reg),
        .ADDRB(read_pointer_reg),
        .ADDRC(read_pointer_reg),
        .ADDRD(v_write_pointer_reg[5:0]),
        .DIA(wr_data[18]),
        .DIB(wr_data[19]),
        .DIC(wr_data[20]),
        .DID(1'b0),
        .DOA(data_fifo_reg_256_319_18_20_n_0),
        .DOB(data_fifo_reg_256_319_18_20_n_1),
        .DOC(data_fifo_reg_256_319_18_20_n_2),
        .DOD(NLW_data_fifo_reg_256_319_18_20_DOD_UNCONNECTED),
        .WCLK(m00_axis_aclk),
        .WE(data_fifo_reg_256_319_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M data_fifo_reg_256_319_21_23
       (.ADDRA(read_pointer_reg),
        .ADDRB(read_pointer_reg),
        .ADDRC(read_pointer_reg),
        .ADDRD(v_write_pointer_reg[5:0]),
        .DIA(wr_data[21]),
        .DIB(wr_data[22]),
        .DIC(wr_data[23]),
        .DID(1'b0),
        .DOA(data_fifo_reg_256_319_21_23_n_0),
        .DOB(data_fifo_reg_256_319_21_23_n_1),
        .DOC(data_fifo_reg_256_319_21_23_n_2),
        .DOD(NLW_data_fifo_reg_256_319_21_23_DOD_UNCONNECTED),
        .WCLK(m00_axis_aclk),
        .WE(data_fifo_reg_256_319_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M data_fifo_reg_256_319_24_26
       (.ADDRA(read_pointer_reg),
        .ADDRB(read_pointer_reg),
        .ADDRC(read_pointer_reg),
        .ADDRD(v_write_pointer_reg[5:0]),
        .DIA(wr_data[24]),
        .DIB(wr_data[25]),
        .DIC(wr_data[26]),
        .DID(1'b0),
        .DOA(data_fifo_reg_256_319_24_26_n_0),
        .DOB(data_fifo_reg_256_319_24_26_n_1),
        .DOC(data_fifo_reg_256_319_24_26_n_2),
        .DOD(NLW_data_fifo_reg_256_319_24_26_DOD_UNCONNECTED),
        .WCLK(m00_axis_aclk),
        .WE(data_fifo_reg_256_319_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M data_fifo_reg_256_319_27_29
       (.ADDRA(read_pointer_reg),
        .ADDRB(read_pointer_reg),
        .ADDRC(read_pointer_reg),
        .ADDRD(v_write_pointer_reg[5:0]),
        .DIA(wr_data[27]),
        .DIB(wr_data[28]),
        .DIC(wr_data[29]),
        .DID(1'b0),
        .DOA(data_fifo_reg_256_319_27_29_n_0),
        .DOB(data_fifo_reg_256_319_27_29_n_1),
        .DOC(data_fifo_reg_256_319_27_29_n_2),
        .DOD(NLW_data_fifo_reg_256_319_27_29_DOD_UNCONNECTED),
        .WCLK(m00_axis_aclk),
        .WE(data_fifo_reg_256_319_0_2_i_1_n_0));
  RAM64X1D data_fifo_reg_256_319_30_30
       (.A0(v_write_pointer_reg[0]),
        .A1(v_write_pointer_reg[1]),
        .A2(v_write_pointer_reg[2]),
        .A3(v_write_pointer_reg[3]),
        .A4(v_write_pointer_reg[4]),
        .A5(v_write_pointer_reg[5]),
        .D(wr_data[30]),
        .DPO(data_fifo_reg_256_319_30_30_n_0),
        .DPRA0(read_pointer_reg[0]),
        .DPRA1(read_pointer_reg[1]),
        .DPRA2(read_pointer_reg[2]),
        .DPRA3(read_pointer_reg[3]),
        .DPRA4(read_pointer_reg[4]),
        .DPRA5(read_pointer_reg[5]),
        .SPO(NLW_data_fifo_reg_256_319_30_30_SPO_UNCONNECTED),
        .WCLK(m00_axis_aclk),
        .WE(data_fifo_reg_256_319_0_2_i_1_n_0));
  RAM64X1D data_fifo_reg_256_319_31_31
       (.A0(v_write_pointer_reg[0]),
        .A1(v_write_pointer_reg[1]),
        .A2(v_write_pointer_reg[2]),
        .A3(v_write_pointer_reg[3]),
        .A4(v_write_pointer_reg[4]),
        .A5(v_write_pointer_reg[5]),
        .D(wr_data[31]),
        .DPO(data_fifo_reg_256_319_31_31_n_0),
        .DPRA0(read_pointer_reg[0]),
        .DPRA1(read_pointer_reg[1]),
        .DPRA2(read_pointer_reg[2]),
        .DPRA3(read_pointer_reg[3]),
        .DPRA4(read_pointer_reg[4]),
        .DPRA5(read_pointer_reg[5]),
        .SPO(NLW_data_fifo_reg_256_319_31_31_SPO_UNCONNECTED),
        .WCLK(m00_axis_aclk),
        .WE(data_fifo_reg_256_319_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M data_fifo_reg_256_319_3_5
       (.ADDRA(read_pointer_reg),
        .ADDRB(read_pointer_reg),
        .ADDRC(read_pointer_reg),
        .ADDRD(v_write_pointer_reg[5:0]),
        .DIA(wr_data[3]),
        .DIB(wr_data[4]),
        .DIC(wr_data[5]),
        .DID(1'b0),
        .DOA(data_fifo_reg_256_319_3_5_n_0),
        .DOB(data_fifo_reg_256_319_3_5_n_1),
        .DOC(data_fifo_reg_256_319_3_5_n_2),
        .DOD(NLW_data_fifo_reg_256_319_3_5_DOD_UNCONNECTED),
        .WCLK(m00_axis_aclk),
        .WE(data_fifo_reg_256_319_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M data_fifo_reg_256_319_6_8
       (.ADDRA(read_pointer_reg),
        .ADDRB(read_pointer_reg),
        .ADDRC(read_pointer_reg),
        .ADDRD(v_write_pointer_reg[5:0]),
        .DIA(wr_data[6]),
        .DIB(wr_data[7]),
        .DIC(wr_data[8]),
        .DID(1'b0),
        .DOA(data_fifo_reg_256_319_6_8_n_0),
        .DOB(data_fifo_reg_256_319_6_8_n_1),
        .DOC(data_fifo_reg_256_319_6_8_n_2),
        .DOD(NLW_data_fifo_reg_256_319_6_8_DOD_UNCONNECTED),
        .WCLK(m00_axis_aclk),
        .WE(data_fifo_reg_256_319_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M data_fifo_reg_256_319_9_11
       (.ADDRA(read_pointer_reg),
        .ADDRB(read_pointer_reg),
        .ADDRC(read_pointer_reg),
        .ADDRD(v_write_pointer_reg[5:0]),
        .DIA(wr_data[9]),
        .DIB(wr_data[10]),
        .DIC(wr_data[11]),
        .DID(1'b0),
        .DOA(data_fifo_reg_256_319_9_11_n_0),
        .DOB(data_fifo_reg_256_319_9_11_n_1),
        .DOC(data_fifo_reg_256_319_9_11_n_2),
        .DOD(NLW_data_fifo_reg_256_319_9_11_DOD_UNCONNECTED),
        .WCLK(m00_axis_aclk),
        .WE(data_fifo_reg_256_319_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M data_fifo_reg_64_127_0_2
       (.ADDRA(read_pointer_reg),
        .ADDRB(read_pointer_reg),
        .ADDRC(read_pointer_reg),
        .ADDRD(v_write_pointer_reg[5:0]),
        .DIA(wr_data[0]),
        .DIB(wr_data[1]),
        .DIC(wr_data[2]),
        .DID(1'b0),
        .DOA(data_fifo_reg_64_127_0_2_n_0),
        .DOB(data_fifo_reg_64_127_0_2_n_1),
        .DOC(data_fifo_reg_64_127_0_2_n_2),
        .DOD(NLW_data_fifo_reg_64_127_0_2_DOD_UNCONNECTED),
        .WCLK(m00_axis_aclk),
        .WE(data_fifo_reg_64_127_0_2_i_1_n_0));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    data_fifo_reg_64_127_0_2_i_1
       (.I0(v_write_pointer_reg[7]),
        .I1(v_write_pointer_reg[8]),
        .I2(v_write_pointer_reg[6]),
        .I3(data_fifo_reg_0_63_0_2_i_2_n_0),
        .I4(data_fifo_reg_0_63_0_2_i_3_n_0),
        .I5(sys_enable),
        .O(data_fifo_reg_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M data_fifo_reg_64_127_12_14
       (.ADDRA(read_pointer_reg),
        .ADDRB(read_pointer_reg),
        .ADDRC(read_pointer_reg),
        .ADDRD(v_write_pointer_reg[5:0]),
        .DIA(wr_data[12]),
        .DIB(wr_data[13]),
        .DIC(wr_data[14]),
        .DID(1'b0),
        .DOA(data_fifo_reg_64_127_12_14_n_0),
        .DOB(data_fifo_reg_64_127_12_14_n_1),
        .DOC(data_fifo_reg_64_127_12_14_n_2),
        .DOD(NLW_data_fifo_reg_64_127_12_14_DOD_UNCONNECTED),
        .WCLK(m00_axis_aclk),
        .WE(data_fifo_reg_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M data_fifo_reg_64_127_15_17
       (.ADDRA(read_pointer_reg),
        .ADDRB(read_pointer_reg),
        .ADDRC(read_pointer_reg),
        .ADDRD(v_write_pointer_reg[5:0]),
        .DIA(wr_data[15]),
        .DIB(wr_data[16]),
        .DIC(wr_data[17]),
        .DID(1'b0),
        .DOA(data_fifo_reg_64_127_15_17_n_0),
        .DOB(data_fifo_reg_64_127_15_17_n_1),
        .DOC(data_fifo_reg_64_127_15_17_n_2),
        .DOD(NLW_data_fifo_reg_64_127_15_17_DOD_UNCONNECTED),
        .WCLK(m00_axis_aclk),
        .WE(data_fifo_reg_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M data_fifo_reg_64_127_18_20
       (.ADDRA(read_pointer_reg),
        .ADDRB(read_pointer_reg),
        .ADDRC(read_pointer_reg),
        .ADDRD(v_write_pointer_reg[5:0]),
        .DIA(wr_data[18]),
        .DIB(wr_data[19]),
        .DIC(wr_data[20]),
        .DID(1'b0),
        .DOA(data_fifo_reg_64_127_18_20_n_0),
        .DOB(data_fifo_reg_64_127_18_20_n_1),
        .DOC(data_fifo_reg_64_127_18_20_n_2),
        .DOD(NLW_data_fifo_reg_64_127_18_20_DOD_UNCONNECTED),
        .WCLK(m00_axis_aclk),
        .WE(data_fifo_reg_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M data_fifo_reg_64_127_21_23
       (.ADDRA(read_pointer_reg),
        .ADDRB(read_pointer_reg),
        .ADDRC(read_pointer_reg),
        .ADDRD(v_write_pointer_reg[5:0]),
        .DIA(wr_data[21]),
        .DIB(wr_data[22]),
        .DIC(wr_data[23]),
        .DID(1'b0),
        .DOA(data_fifo_reg_64_127_21_23_n_0),
        .DOB(data_fifo_reg_64_127_21_23_n_1),
        .DOC(data_fifo_reg_64_127_21_23_n_2),
        .DOD(NLW_data_fifo_reg_64_127_21_23_DOD_UNCONNECTED),
        .WCLK(m00_axis_aclk),
        .WE(data_fifo_reg_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M data_fifo_reg_64_127_24_26
       (.ADDRA(read_pointer_reg),
        .ADDRB(read_pointer_reg),
        .ADDRC(read_pointer_reg),
        .ADDRD(v_write_pointer_reg[5:0]),
        .DIA(wr_data[24]),
        .DIB(wr_data[25]),
        .DIC(wr_data[26]),
        .DID(1'b0),
        .DOA(data_fifo_reg_64_127_24_26_n_0),
        .DOB(data_fifo_reg_64_127_24_26_n_1),
        .DOC(data_fifo_reg_64_127_24_26_n_2),
        .DOD(NLW_data_fifo_reg_64_127_24_26_DOD_UNCONNECTED),
        .WCLK(m00_axis_aclk),
        .WE(data_fifo_reg_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M data_fifo_reg_64_127_27_29
       (.ADDRA(read_pointer_reg),
        .ADDRB(read_pointer_reg),
        .ADDRC(read_pointer_reg),
        .ADDRD(v_write_pointer_reg[5:0]),
        .DIA(wr_data[27]),
        .DIB(wr_data[28]),
        .DIC(wr_data[29]),
        .DID(1'b0),
        .DOA(data_fifo_reg_64_127_27_29_n_0),
        .DOB(data_fifo_reg_64_127_27_29_n_1),
        .DOC(data_fifo_reg_64_127_27_29_n_2),
        .DOD(NLW_data_fifo_reg_64_127_27_29_DOD_UNCONNECTED),
        .WCLK(m00_axis_aclk),
        .WE(data_fifo_reg_64_127_0_2_i_1_n_0));
  RAM64X1D data_fifo_reg_64_127_30_30
       (.A0(v_write_pointer_reg[0]),
        .A1(v_write_pointer_reg[1]),
        .A2(v_write_pointer_reg[2]),
        .A3(v_write_pointer_reg[3]),
        .A4(v_write_pointer_reg[4]),
        .A5(v_write_pointer_reg[5]),
        .D(wr_data[30]),
        .DPO(data_fifo_reg_64_127_30_30_n_0),
        .DPRA0(read_pointer_reg[0]),
        .DPRA1(read_pointer_reg[1]),
        .DPRA2(read_pointer_reg[2]),
        .DPRA3(read_pointer_reg[3]),
        .DPRA4(read_pointer_reg[4]),
        .DPRA5(read_pointer_reg[5]),
        .SPO(NLW_data_fifo_reg_64_127_30_30_SPO_UNCONNECTED),
        .WCLK(m00_axis_aclk),
        .WE(data_fifo_reg_64_127_0_2_i_1_n_0));
  RAM64X1D data_fifo_reg_64_127_31_31
       (.A0(v_write_pointer_reg[0]),
        .A1(v_write_pointer_reg[1]),
        .A2(v_write_pointer_reg[2]),
        .A3(v_write_pointer_reg[3]),
        .A4(v_write_pointer_reg[4]),
        .A5(v_write_pointer_reg[5]),
        .D(wr_data[31]),
        .DPO(data_fifo_reg_64_127_31_31_n_0),
        .DPRA0(read_pointer_reg[0]),
        .DPRA1(read_pointer_reg[1]),
        .DPRA2(read_pointer_reg[2]),
        .DPRA3(read_pointer_reg[3]),
        .DPRA4(read_pointer_reg[4]),
        .DPRA5(read_pointer_reg[5]),
        .SPO(NLW_data_fifo_reg_64_127_31_31_SPO_UNCONNECTED),
        .WCLK(m00_axis_aclk),
        .WE(data_fifo_reg_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M data_fifo_reg_64_127_3_5
       (.ADDRA(read_pointer_reg),
        .ADDRB(read_pointer_reg),
        .ADDRC(read_pointer_reg),
        .ADDRD(v_write_pointer_reg[5:0]),
        .DIA(wr_data[3]),
        .DIB(wr_data[4]),
        .DIC(wr_data[5]),
        .DID(1'b0),
        .DOA(data_fifo_reg_64_127_3_5_n_0),
        .DOB(data_fifo_reg_64_127_3_5_n_1),
        .DOC(data_fifo_reg_64_127_3_5_n_2),
        .DOD(NLW_data_fifo_reg_64_127_3_5_DOD_UNCONNECTED),
        .WCLK(m00_axis_aclk),
        .WE(data_fifo_reg_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M data_fifo_reg_64_127_6_8
       (.ADDRA(read_pointer_reg),
        .ADDRB(read_pointer_reg),
        .ADDRC(read_pointer_reg),
        .ADDRD(v_write_pointer_reg[5:0]),
        .DIA(wr_data[6]),
        .DIB(wr_data[7]),
        .DIC(wr_data[8]),
        .DID(1'b0),
        .DOA(data_fifo_reg_64_127_6_8_n_0),
        .DOB(data_fifo_reg_64_127_6_8_n_1),
        .DOC(data_fifo_reg_64_127_6_8_n_2),
        .DOD(NLW_data_fifo_reg_64_127_6_8_DOD_UNCONNECTED),
        .WCLK(m00_axis_aclk),
        .WE(data_fifo_reg_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M data_fifo_reg_64_127_9_11
       (.ADDRA(read_pointer_reg),
        .ADDRB(read_pointer_reg),
        .ADDRC(read_pointer_reg),
        .ADDRD(v_write_pointer_reg[5:0]),
        .DIA(wr_data[9]),
        .DIB(wr_data[10]),
        .DIC(wr_data[11]),
        .DID(1'b0),
        .DOA(data_fifo_reg_64_127_9_11_n_0),
        .DOB(data_fifo_reg_64_127_9_11_n_1),
        .DOC(data_fifo_reg_64_127_9_11_n_2),
        .DOD(NLW_data_fifo_reg_64_127_9_11_DOD_UNCONNECTED),
        .WCLK(m00_axis_aclk),
        .WE(data_fifo_reg_64_127_0_2_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    irq_INST_0
       (.I0(irq_INST_0_i_1_n_0),
        .I1(v_write_pointer_reg[2]),
        .I2(v_write_pointer_reg[7]),
        .I3(v_write_pointer_reg[4]),
        .I4(v_write_pointer_reg[1]),
        .I5(v_write_pointer_reg[0]),
        .O(irq));
  LUT4 #(
    .INIT(16'h0040)) 
    irq_INST_0_i_1
       (.I0(v_write_pointer_reg[6]),
        .I1(v_write_pointer_reg[3]),
        .I2(v_write_pointer_reg[8]),
        .I3(v_write_pointer_reg[5]),
        .O(irq_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF22222E22)) 
    \m00_axis_tdata[0]_INST_0 
       (.I0(\m00_axis_tdata[0]_INST_0_i_1_n_0 ),
        .I1(read_pointer[8]),
        .I2(read_pointer[7]),
        .I3(data_fifo_reg_256_319_0_2_n_0),
        .I4(read_pointer[6]),
        .I5(\m00_axis_tdata[31]_INST_0_i_2_n_0 ),
        .O(m00_axis_tdata[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m00_axis_tdata[0]_INST_0_i_1 
       (.I0(data_fifo_reg_192_255_0_2_n_0),
        .I1(data_fifo_reg_128_191_0_2_n_0),
        .I2(read_pointer[7]),
        .I3(data_fifo_reg_64_127_0_2_n_0),
        .I4(read_pointer[6]),
        .I5(data_fifo_reg_0_63_0_2_n_0),
        .O(\m00_axis_tdata[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF22222E22)) 
    \m00_axis_tdata[10]_INST_0 
       (.I0(\m00_axis_tdata[10]_INST_0_i_1_n_0 ),
        .I1(read_pointer[8]),
        .I2(read_pointer[7]),
        .I3(data_fifo_reg_256_319_9_11_n_1),
        .I4(read_pointer[6]),
        .I5(\m00_axis_tdata[31]_INST_0_i_2_n_0 ),
        .O(m00_axis_tdata[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m00_axis_tdata[10]_INST_0_i_1 
       (.I0(data_fifo_reg_192_255_9_11_n_1),
        .I1(data_fifo_reg_128_191_9_11_n_1),
        .I2(read_pointer[7]),
        .I3(data_fifo_reg_64_127_9_11_n_1),
        .I4(read_pointer[6]),
        .I5(data_fifo_reg_0_63_9_11_n_1),
        .O(\m00_axis_tdata[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF22222E22)) 
    \m00_axis_tdata[11]_INST_0 
       (.I0(\m00_axis_tdata[11]_INST_0_i_1_n_0 ),
        .I1(read_pointer[8]),
        .I2(read_pointer[7]),
        .I3(data_fifo_reg_256_319_9_11_n_2),
        .I4(read_pointer[6]),
        .I5(\m00_axis_tdata[31]_INST_0_i_2_n_0 ),
        .O(m00_axis_tdata[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m00_axis_tdata[11]_INST_0_i_1 
       (.I0(data_fifo_reg_192_255_9_11_n_2),
        .I1(data_fifo_reg_128_191_9_11_n_2),
        .I2(read_pointer[7]),
        .I3(data_fifo_reg_64_127_9_11_n_2),
        .I4(read_pointer[6]),
        .I5(data_fifo_reg_0_63_9_11_n_2),
        .O(\m00_axis_tdata[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF22222E22)) 
    \m00_axis_tdata[12]_INST_0 
       (.I0(\m00_axis_tdata[12]_INST_0_i_1_n_0 ),
        .I1(read_pointer[8]),
        .I2(read_pointer[7]),
        .I3(data_fifo_reg_256_319_12_14_n_0),
        .I4(read_pointer[6]),
        .I5(\m00_axis_tdata[31]_INST_0_i_2_n_0 ),
        .O(m00_axis_tdata[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m00_axis_tdata[12]_INST_0_i_1 
       (.I0(data_fifo_reg_192_255_12_14_n_0),
        .I1(data_fifo_reg_128_191_12_14_n_0),
        .I2(read_pointer[7]),
        .I3(data_fifo_reg_64_127_12_14_n_0),
        .I4(read_pointer[6]),
        .I5(data_fifo_reg_0_63_12_14_n_0),
        .O(\m00_axis_tdata[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF22222E22)) 
    \m00_axis_tdata[13]_INST_0 
       (.I0(\m00_axis_tdata[13]_INST_0_i_1_n_0 ),
        .I1(read_pointer[8]),
        .I2(read_pointer[7]),
        .I3(data_fifo_reg_256_319_12_14_n_1),
        .I4(read_pointer[6]),
        .I5(\m00_axis_tdata[31]_INST_0_i_2_n_0 ),
        .O(m00_axis_tdata[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m00_axis_tdata[13]_INST_0_i_1 
       (.I0(data_fifo_reg_192_255_12_14_n_1),
        .I1(data_fifo_reg_128_191_12_14_n_1),
        .I2(read_pointer[7]),
        .I3(data_fifo_reg_64_127_12_14_n_1),
        .I4(read_pointer[6]),
        .I5(data_fifo_reg_0_63_12_14_n_1),
        .O(\m00_axis_tdata[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF22222E22)) 
    \m00_axis_tdata[14]_INST_0 
       (.I0(\m00_axis_tdata[14]_INST_0_i_1_n_0 ),
        .I1(read_pointer[8]),
        .I2(read_pointer[7]),
        .I3(data_fifo_reg_256_319_12_14_n_2),
        .I4(read_pointer[6]),
        .I5(\m00_axis_tdata[31]_INST_0_i_2_n_0 ),
        .O(m00_axis_tdata[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m00_axis_tdata[14]_INST_0_i_1 
       (.I0(data_fifo_reg_192_255_12_14_n_2),
        .I1(data_fifo_reg_128_191_12_14_n_2),
        .I2(read_pointer[7]),
        .I3(data_fifo_reg_64_127_12_14_n_2),
        .I4(read_pointer[6]),
        .I5(data_fifo_reg_0_63_12_14_n_2),
        .O(\m00_axis_tdata[14]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF22222E22)) 
    \m00_axis_tdata[15]_INST_0 
       (.I0(\m00_axis_tdata[15]_INST_0_i_1_n_0 ),
        .I1(read_pointer[8]),
        .I2(read_pointer[7]),
        .I3(data_fifo_reg_256_319_15_17_n_0),
        .I4(read_pointer[6]),
        .I5(\m00_axis_tdata[31]_INST_0_i_2_n_0 ),
        .O(m00_axis_tdata[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m00_axis_tdata[15]_INST_0_i_1 
       (.I0(data_fifo_reg_192_255_15_17_n_0),
        .I1(data_fifo_reg_128_191_15_17_n_0),
        .I2(read_pointer[7]),
        .I3(data_fifo_reg_64_127_15_17_n_0),
        .I4(read_pointer[6]),
        .I5(data_fifo_reg_0_63_15_17_n_0),
        .O(\m00_axis_tdata[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF22222E22)) 
    \m00_axis_tdata[16]_INST_0 
       (.I0(\m00_axis_tdata[16]_INST_0_i_1_n_0 ),
        .I1(read_pointer[8]),
        .I2(read_pointer[7]),
        .I3(data_fifo_reg_256_319_15_17_n_1),
        .I4(read_pointer[6]),
        .I5(\m00_axis_tdata[31]_INST_0_i_2_n_0 ),
        .O(m00_axis_tdata[16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m00_axis_tdata[16]_INST_0_i_1 
       (.I0(data_fifo_reg_192_255_15_17_n_1),
        .I1(data_fifo_reg_128_191_15_17_n_1),
        .I2(read_pointer[7]),
        .I3(data_fifo_reg_64_127_15_17_n_1),
        .I4(read_pointer[6]),
        .I5(data_fifo_reg_0_63_15_17_n_1),
        .O(\m00_axis_tdata[16]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF22222E22)) 
    \m00_axis_tdata[17]_INST_0 
       (.I0(\m00_axis_tdata[17]_INST_0_i_1_n_0 ),
        .I1(read_pointer[8]),
        .I2(read_pointer[7]),
        .I3(data_fifo_reg_256_319_15_17_n_2),
        .I4(read_pointer[6]),
        .I5(\m00_axis_tdata[31]_INST_0_i_2_n_0 ),
        .O(m00_axis_tdata[17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m00_axis_tdata[17]_INST_0_i_1 
       (.I0(data_fifo_reg_192_255_15_17_n_2),
        .I1(data_fifo_reg_128_191_15_17_n_2),
        .I2(read_pointer[7]),
        .I3(data_fifo_reg_64_127_15_17_n_2),
        .I4(read_pointer[6]),
        .I5(data_fifo_reg_0_63_15_17_n_2),
        .O(\m00_axis_tdata[17]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF22222E22)) 
    \m00_axis_tdata[18]_INST_0 
       (.I0(\m00_axis_tdata[18]_INST_0_i_1_n_0 ),
        .I1(read_pointer[8]),
        .I2(read_pointer[7]),
        .I3(data_fifo_reg_256_319_18_20_n_0),
        .I4(read_pointer[6]),
        .I5(\m00_axis_tdata[31]_INST_0_i_2_n_0 ),
        .O(m00_axis_tdata[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m00_axis_tdata[18]_INST_0_i_1 
       (.I0(data_fifo_reg_192_255_18_20_n_0),
        .I1(data_fifo_reg_128_191_18_20_n_0),
        .I2(read_pointer[7]),
        .I3(data_fifo_reg_64_127_18_20_n_0),
        .I4(read_pointer[6]),
        .I5(data_fifo_reg_0_63_18_20_n_0),
        .O(\m00_axis_tdata[18]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF22222E22)) 
    \m00_axis_tdata[19]_INST_0 
       (.I0(\m00_axis_tdata[19]_INST_0_i_1_n_0 ),
        .I1(read_pointer[8]),
        .I2(read_pointer[7]),
        .I3(data_fifo_reg_256_319_18_20_n_1),
        .I4(read_pointer[6]),
        .I5(\m00_axis_tdata[31]_INST_0_i_2_n_0 ),
        .O(m00_axis_tdata[19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m00_axis_tdata[19]_INST_0_i_1 
       (.I0(data_fifo_reg_192_255_18_20_n_1),
        .I1(data_fifo_reg_128_191_18_20_n_1),
        .I2(read_pointer[7]),
        .I3(data_fifo_reg_64_127_18_20_n_1),
        .I4(read_pointer[6]),
        .I5(data_fifo_reg_0_63_18_20_n_1),
        .O(\m00_axis_tdata[19]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF22222E22)) 
    \m00_axis_tdata[1]_INST_0 
       (.I0(\m00_axis_tdata[1]_INST_0_i_1_n_0 ),
        .I1(read_pointer[8]),
        .I2(read_pointer[7]),
        .I3(data_fifo_reg_256_319_0_2_n_1),
        .I4(read_pointer[6]),
        .I5(\m00_axis_tdata[31]_INST_0_i_2_n_0 ),
        .O(m00_axis_tdata[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m00_axis_tdata[1]_INST_0_i_1 
       (.I0(data_fifo_reg_192_255_0_2_n_1),
        .I1(data_fifo_reg_128_191_0_2_n_1),
        .I2(read_pointer[7]),
        .I3(data_fifo_reg_64_127_0_2_n_1),
        .I4(read_pointer[6]),
        .I5(data_fifo_reg_0_63_0_2_n_1),
        .O(\m00_axis_tdata[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF22222E22)) 
    \m00_axis_tdata[20]_INST_0 
       (.I0(\m00_axis_tdata[20]_INST_0_i_1_n_0 ),
        .I1(read_pointer[8]),
        .I2(read_pointer[7]),
        .I3(data_fifo_reg_256_319_18_20_n_2),
        .I4(read_pointer[6]),
        .I5(\m00_axis_tdata[31]_INST_0_i_2_n_0 ),
        .O(m00_axis_tdata[20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m00_axis_tdata[20]_INST_0_i_1 
       (.I0(data_fifo_reg_192_255_18_20_n_2),
        .I1(data_fifo_reg_128_191_18_20_n_2),
        .I2(read_pointer[7]),
        .I3(data_fifo_reg_64_127_18_20_n_2),
        .I4(read_pointer[6]),
        .I5(data_fifo_reg_0_63_18_20_n_2),
        .O(\m00_axis_tdata[20]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF22222E22)) 
    \m00_axis_tdata[21]_INST_0 
       (.I0(\m00_axis_tdata[21]_INST_0_i_1_n_0 ),
        .I1(read_pointer[8]),
        .I2(read_pointer[7]),
        .I3(data_fifo_reg_256_319_21_23_n_0),
        .I4(read_pointer[6]),
        .I5(\m00_axis_tdata[31]_INST_0_i_2_n_0 ),
        .O(m00_axis_tdata[21]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m00_axis_tdata[21]_INST_0_i_1 
       (.I0(data_fifo_reg_192_255_21_23_n_0),
        .I1(data_fifo_reg_128_191_21_23_n_0),
        .I2(read_pointer[7]),
        .I3(data_fifo_reg_64_127_21_23_n_0),
        .I4(read_pointer[6]),
        .I5(data_fifo_reg_0_63_21_23_n_0),
        .O(\m00_axis_tdata[21]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF22222E22)) 
    \m00_axis_tdata[22]_INST_0 
       (.I0(\m00_axis_tdata[22]_INST_0_i_1_n_0 ),
        .I1(read_pointer[8]),
        .I2(read_pointer[7]),
        .I3(data_fifo_reg_256_319_21_23_n_1),
        .I4(read_pointer[6]),
        .I5(\m00_axis_tdata[31]_INST_0_i_2_n_0 ),
        .O(m00_axis_tdata[22]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m00_axis_tdata[22]_INST_0_i_1 
       (.I0(data_fifo_reg_192_255_21_23_n_1),
        .I1(data_fifo_reg_128_191_21_23_n_1),
        .I2(read_pointer[7]),
        .I3(data_fifo_reg_64_127_21_23_n_1),
        .I4(read_pointer[6]),
        .I5(data_fifo_reg_0_63_21_23_n_1),
        .O(\m00_axis_tdata[22]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF22222E22)) 
    \m00_axis_tdata[23]_INST_0 
       (.I0(\m00_axis_tdata[23]_INST_0_i_1_n_0 ),
        .I1(read_pointer[8]),
        .I2(read_pointer[7]),
        .I3(data_fifo_reg_256_319_21_23_n_2),
        .I4(read_pointer[6]),
        .I5(\m00_axis_tdata[31]_INST_0_i_2_n_0 ),
        .O(m00_axis_tdata[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m00_axis_tdata[23]_INST_0_i_1 
       (.I0(data_fifo_reg_192_255_21_23_n_2),
        .I1(data_fifo_reg_128_191_21_23_n_2),
        .I2(read_pointer[7]),
        .I3(data_fifo_reg_64_127_21_23_n_2),
        .I4(read_pointer[6]),
        .I5(data_fifo_reg_0_63_21_23_n_2),
        .O(\m00_axis_tdata[23]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF22222E22)) 
    \m00_axis_tdata[24]_INST_0 
       (.I0(\m00_axis_tdata[24]_INST_0_i_1_n_0 ),
        .I1(read_pointer[8]),
        .I2(read_pointer[7]),
        .I3(data_fifo_reg_256_319_24_26_n_0),
        .I4(read_pointer[6]),
        .I5(\m00_axis_tdata[31]_INST_0_i_2_n_0 ),
        .O(m00_axis_tdata[24]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m00_axis_tdata[24]_INST_0_i_1 
       (.I0(data_fifo_reg_192_255_24_26_n_0),
        .I1(data_fifo_reg_128_191_24_26_n_0),
        .I2(read_pointer[7]),
        .I3(data_fifo_reg_64_127_24_26_n_0),
        .I4(read_pointer[6]),
        .I5(data_fifo_reg_0_63_24_26_n_0),
        .O(\m00_axis_tdata[24]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF22222E22)) 
    \m00_axis_tdata[25]_INST_0 
       (.I0(\m00_axis_tdata[25]_INST_0_i_1_n_0 ),
        .I1(read_pointer[8]),
        .I2(read_pointer[7]),
        .I3(data_fifo_reg_256_319_24_26_n_1),
        .I4(read_pointer[6]),
        .I5(\m00_axis_tdata[31]_INST_0_i_2_n_0 ),
        .O(m00_axis_tdata[25]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m00_axis_tdata[25]_INST_0_i_1 
       (.I0(data_fifo_reg_192_255_24_26_n_1),
        .I1(data_fifo_reg_128_191_24_26_n_1),
        .I2(read_pointer[7]),
        .I3(data_fifo_reg_64_127_24_26_n_1),
        .I4(read_pointer[6]),
        .I5(data_fifo_reg_0_63_24_26_n_1),
        .O(\m00_axis_tdata[25]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF22222E22)) 
    \m00_axis_tdata[26]_INST_0 
       (.I0(\m00_axis_tdata[26]_INST_0_i_1_n_0 ),
        .I1(read_pointer[8]),
        .I2(read_pointer[7]),
        .I3(data_fifo_reg_256_319_24_26_n_2),
        .I4(read_pointer[6]),
        .I5(\m00_axis_tdata[31]_INST_0_i_2_n_0 ),
        .O(m00_axis_tdata[26]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m00_axis_tdata[26]_INST_0_i_1 
       (.I0(data_fifo_reg_192_255_24_26_n_2),
        .I1(data_fifo_reg_128_191_24_26_n_2),
        .I2(read_pointer[7]),
        .I3(data_fifo_reg_64_127_24_26_n_2),
        .I4(read_pointer[6]),
        .I5(data_fifo_reg_0_63_24_26_n_2),
        .O(\m00_axis_tdata[26]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF22222E22)) 
    \m00_axis_tdata[27]_INST_0 
       (.I0(\m00_axis_tdata[27]_INST_0_i_1_n_0 ),
        .I1(read_pointer[8]),
        .I2(read_pointer[7]),
        .I3(data_fifo_reg_256_319_27_29_n_0),
        .I4(read_pointer[6]),
        .I5(\m00_axis_tdata[31]_INST_0_i_2_n_0 ),
        .O(m00_axis_tdata[27]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m00_axis_tdata[27]_INST_0_i_1 
       (.I0(data_fifo_reg_192_255_27_29_n_0),
        .I1(data_fifo_reg_128_191_27_29_n_0),
        .I2(read_pointer[7]),
        .I3(data_fifo_reg_64_127_27_29_n_0),
        .I4(read_pointer[6]),
        .I5(data_fifo_reg_0_63_27_29_n_0),
        .O(\m00_axis_tdata[27]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF22222E22)) 
    \m00_axis_tdata[28]_INST_0 
       (.I0(\m00_axis_tdata[28]_INST_0_i_1_n_0 ),
        .I1(read_pointer[8]),
        .I2(read_pointer[7]),
        .I3(data_fifo_reg_256_319_27_29_n_1),
        .I4(read_pointer[6]),
        .I5(\m00_axis_tdata[31]_INST_0_i_2_n_0 ),
        .O(m00_axis_tdata[28]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m00_axis_tdata[28]_INST_0_i_1 
       (.I0(data_fifo_reg_192_255_27_29_n_1),
        .I1(data_fifo_reg_128_191_27_29_n_1),
        .I2(read_pointer[7]),
        .I3(data_fifo_reg_64_127_27_29_n_1),
        .I4(read_pointer[6]),
        .I5(data_fifo_reg_0_63_27_29_n_1),
        .O(\m00_axis_tdata[28]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF22222E22)) 
    \m00_axis_tdata[29]_INST_0 
       (.I0(\m00_axis_tdata[29]_INST_0_i_1_n_0 ),
        .I1(read_pointer[8]),
        .I2(read_pointer[7]),
        .I3(data_fifo_reg_256_319_27_29_n_2),
        .I4(read_pointer[6]),
        .I5(\m00_axis_tdata[31]_INST_0_i_2_n_0 ),
        .O(m00_axis_tdata[29]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m00_axis_tdata[29]_INST_0_i_1 
       (.I0(data_fifo_reg_192_255_27_29_n_2),
        .I1(data_fifo_reg_128_191_27_29_n_2),
        .I2(read_pointer[7]),
        .I3(data_fifo_reg_64_127_27_29_n_2),
        .I4(read_pointer[6]),
        .I5(data_fifo_reg_0_63_27_29_n_2),
        .O(\m00_axis_tdata[29]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF22222E22)) 
    \m00_axis_tdata[2]_INST_0 
       (.I0(\m00_axis_tdata[2]_INST_0_i_1_n_0 ),
        .I1(read_pointer[8]),
        .I2(read_pointer[7]),
        .I3(data_fifo_reg_256_319_0_2_n_2),
        .I4(read_pointer[6]),
        .I5(\m00_axis_tdata[31]_INST_0_i_2_n_0 ),
        .O(m00_axis_tdata[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m00_axis_tdata[2]_INST_0_i_1 
       (.I0(data_fifo_reg_192_255_0_2_n_2),
        .I1(data_fifo_reg_128_191_0_2_n_2),
        .I2(read_pointer[7]),
        .I3(data_fifo_reg_64_127_0_2_n_2),
        .I4(read_pointer[6]),
        .I5(data_fifo_reg_0_63_0_2_n_2),
        .O(\m00_axis_tdata[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF22222E22)) 
    \m00_axis_tdata[30]_INST_0 
       (.I0(\m00_axis_tdata[30]_INST_0_i_1_n_0 ),
        .I1(read_pointer[8]),
        .I2(read_pointer[7]),
        .I3(data_fifo_reg_256_319_30_30_n_0),
        .I4(read_pointer[6]),
        .I5(\m00_axis_tdata[31]_INST_0_i_2_n_0 ),
        .O(m00_axis_tdata[30]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m00_axis_tdata[30]_INST_0_i_1 
       (.I0(data_fifo_reg_192_255_30_30_n_0),
        .I1(data_fifo_reg_128_191_30_30_n_0),
        .I2(read_pointer[7]),
        .I3(data_fifo_reg_64_127_30_30_n_0),
        .I4(read_pointer[6]),
        .I5(data_fifo_reg_0_63_30_30_n_0),
        .O(\m00_axis_tdata[30]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF22222E22)) 
    \m00_axis_tdata[31]_INST_0 
       (.I0(\m00_axis_tdata[31]_INST_0_i_1_n_0 ),
        .I1(read_pointer[8]),
        .I2(read_pointer[7]),
        .I3(data_fifo_reg_256_319_31_31_n_0),
        .I4(read_pointer[6]),
        .I5(\m00_axis_tdata[31]_INST_0_i_2_n_0 ),
        .O(m00_axis_tdata[31]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m00_axis_tdata[31]_INST_0_i_1 
       (.I0(data_fifo_reg_192_255_31_31_n_0),
        .I1(data_fifo_reg_128_191_31_31_n_0),
        .I2(read_pointer[7]),
        .I3(data_fifo_reg_64_127_31_31_n_0),
        .I4(read_pointer[6]),
        .I5(data_fifo_reg_0_63_31_31_n_0),
        .O(\m00_axis_tdata[31]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \m00_axis_tdata[31]_INST_0_i_2 
       (.I0(\mst_exec_state_reg_n_0_[0] ),
        .I1(\mst_exec_state_reg_n_0_[1] ),
        .O(\m00_axis_tdata[31]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF22222E22)) 
    \m00_axis_tdata[3]_INST_0 
       (.I0(\m00_axis_tdata[3]_INST_0_i_1_n_0 ),
        .I1(read_pointer[8]),
        .I2(read_pointer[7]),
        .I3(data_fifo_reg_256_319_3_5_n_0),
        .I4(read_pointer[6]),
        .I5(\m00_axis_tdata[31]_INST_0_i_2_n_0 ),
        .O(m00_axis_tdata[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m00_axis_tdata[3]_INST_0_i_1 
       (.I0(data_fifo_reg_192_255_3_5_n_0),
        .I1(data_fifo_reg_128_191_3_5_n_0),
        .I2(read_pointer[7]),
        .I3(data_fifo_reg_64_127_3_5_n_0),
        .I4(read_pointer[6]),
        .I5(data_fifo_reg_0_63_3_5_n_0),
        .O(\m00_axis_tdata[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF22222E22)) 
    \m00_axis_tdata[4]_INST_0 
       (.I0(\m00_axis_tdata[4]_INST_0_i_1_n_0 ),
        .I1(read_pointer[8]),
        .I2(read_pointer[7]),
        .I3(data_fifo_reg_256_319_3_5_n_1),
        .I4(read_pointer[6]),
        .I5(\m00_axis_tdata[31]_INST_0_i_2_n_0 ),
        .O(m00_axis_tdata[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m00_axis_tdata[4]_INST_0_i_1 
       (.I0(data_fifo_reg_192_255_3_5_n_1),
        .I1(data_fifo_reg_128_191_3_5_n_1),
        .I2(read_pointer[7]),
        .I3(data_fifo_reg_64_127_3_5_n_1),
        .I4(read_pointer[6]),
        .I5(data_fifo_reg_0_63_3_5_n_1),
        .O(\m00_axis_tdata[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF22222E22)) 
    \m00_axis_tdata[5]_INST_0 
       (.I0(\m00_axis_tdata[5]_INST_0_i_1_n_0 ),
        .I1(read_pointer[8]),
        .I2(read_pointer[7]),
        .I3(data_fifo_reg_256_319_3_5_n_2),
        .I4(read_pointer[6]),
        .I5(\m00_axis_tdata[31]_INST_0_i_2_n_0 ),
        .O(m00_axis_tdata[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m00_axis_tdata[5]_INST_0_i_1 
       (.I0(data_fifo_reg_192_255_3_5_n_2),
        .I1(data_fifo_reg_128_191_3_5_n_2),
        .I2(read_pointer[7]),
        .I3(data_fifo_reg_64_127_3_5_n_2),
        .I4(read_pointer[6]),
        .I5(data_fifo_reg_0_63_3_5_n_2),
        .O(\m00_axis_tdata[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF22222E22)) 
    \m00_axis_tdata[6]_INST_0 
       (.I0(\m00_axis_tdata[6]_INST_0_i_1_n_0 ),
        .I1(read_pointer[8]),
        .I2(read_pointer[7]),
        .I3(data_fifo_reg_256_319_6_8_n_0),
        .I4(read_pointer[6]),
        .I5(\m00_axis_tdata[31]_INST_0_i_2_n_0 ),
        .O(m00_axis_tdata[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m00_axis_tdata[6]_INST_0_i_1 
       (.I0(data_fifo_reg_192_255_6_8_n_0),
        .I1(data_fifo_reg_128_191_6_8_n_0),
        .I2(read_pointer[7]),
        .I3(data_fifo_reg_64_127_6_8_n_0),
        .I4(read_pointer[6]),
        .I5(data_fifo_reg_0_63_6_8_n_0),
        .O(\m00_axis_tdata[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF22222E22)) 
    \m00_axis_tdata[7]_INST_0 
       (.I0(\m00_axis_tdata[7]_INST_0_i_1_n_0 ),
        .I1(read_pointer[8]),
        .I2(read_pointer[7]),
        .I3(data_fifo_reg_256_319_6_8_n_1),
        .I4(read_pointer[6]),
        .I5(\m00_axis_tdata[31]_INST_0_i_2_n_0 ),
        .O(m00_axis_tdata[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m00_axis_tdata[7]_INST_0_i_1 
       (.I0(data_fifo_reg_192_255_6_8_n_1),
        .I1(data_fifo_reg_128_191_6_8_n_1),
        .I2(read_pointer[7]),
        .I3(data_fifo_reg_64_127_6_8_n_1),
        .I4(read_pointer[6]),
        .I5(data_fifo_reg_0_63_6_8_n_1),
        .O(\m00_axis_tdata[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF22222E22)) 
    \m00_axis_tdata[8]_INST_0 
       (.I0(\m00_axis_tdata[8]_INST_0_i_1_n_0 ),
        .I1(read_pointer[8]),
        .I2(read_pointer[7]),
        .I3(data_fifo_reg_256_319_6_8_n_2),
        .I4(read_pointer[6]),
        .I5(\m00_axis_tdata[31]_INST_0_i_2_n_0 ),
        .O(m00_axis_tdata[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m00_axis_tdata[8]_INST_0_i_1 
       (.I0(data_fifo_reg_192_255_6_8_n_2),
        .I1(data_fifo_reg_128_191_6_8_n_2),
        .I2(read_pointer[7]),
        .I3(data_fifo_reg_64_127_6_8_n_2),
        .I4(read_pointer[6]),
        .I5(data_fifo_reg_0_63_6_8_n_2),
        .O(\m00_axis_tdata[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF22222E22)) 
    \m00_axis_tdata[9]_INST_0 
       (.I0(\m00_axis_tdata[9]_INST_0_i_1_n_0 ),
        .I1(read_pointer[8]),
        .I2(read_pointer[7]),
        .I3(data_fifo_reg_256_319_9_11_n_0),
        .I4(read_pointer[6]),
        .I5(\m00_axis_tdata[31]_INST_0_i_2_n_0 ),
        .O(m00_axis_tdata[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m00_axis_tdata[9]_INST_0_i_1 
       (.I0(data_fifo_reg_192_255_9_11_n_0),
        .I1(data_fifo_reg_128_191_9_11_n_0),
        .I2(read_pointer[7]),
        .I3(data_fifo_reg_64_127_9_11_n_0),
        .I4(read_pointer[6]),
        .I5(data_fifo_reg_0_63_9_11_n_0),
        .O(\m00_axis_tdata[9]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \mst_exec_state[0]_i_1 
       (.I0(\mst_exec_state_reg_n_0_[1] ),
        .I1(\mst_exec_state_reg_n_0_[0] ),
        .I2(rx_done_reg_n_0),
        .I3(rx_done_d1),
        .O(mst_exec_state[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h34)) 
    \mst_exec_state[1]_i_1 
       (.I0(tx_done_reg_n_0),
        .I1(\mst_exec_state_reg_n_0_[1] ),
        .I2(\mst_exec_state_reg_n_0_[0] ),
        .O(mst_exec_state[1]));
  FDRE \mst_exec_state_reg[0] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(mst_exec_state[0]),
        .Q(\mst_exec_state_reg_n_0_[0] ),
        .R(axis_tlast_delay_i_1_n_0));
  FDRE \mst_exec_state_reg[1] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(mst_exec_state[1]),
        .Q(\mst_exec_state_reg_n_0_[1] ),
        .R(axis_tlast_delay_i_1_n_0));
  LUT6 #(
    .INIT(64'hFF22FF220F22FF22)) 
    mst_wr_state_i_1
       (.I0(wr_sync_d1),
        .I1(wr_sync_d2),
        .I2(data_fifo_reg_0_63_0_2_i_2_n_0),
        .I3(mst_wr_state_reg_n_0),
        .I4(wr_clk_d1),
        .I5(wr_clk_d2),
        .O(mst_wr_state_i_1_n_0));
  FDRE mst_wr_state_reg
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(mst_wr_state_i_1_n_0),
        .Q(mst_wr_state_reg_n_0),
        .R(axis_tlast_delay_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \read_pointer[0]_i_1 
       (.I0(read_pointer_reg[0]),
        .I1(axis_tvalid_delay_i_2_n_0),
        .O(\read_pointer[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \read_pointer[1]_i_1 
       (.I0(read_pointer_reg[1]),
        .I1(read_pointer_reg[0]),
        .I2(axis_tvalid_delay_i_2_n_0),
        .O(\read_pointer[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h1540)) 
    \read_pointer[2]_i_1 
       (.I0(axis_tvalid_delay_i_2_n_0),
        .I1(read_pointer_reg[0]),
        .I2(read_pointer_reg[1]),
        .I3(read_pointer_reg[2]),
        .O(\read_pointer[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h15554000)) 
    \read_pointer[3]_i_1 
       (.I0(axis_tvalid_delay_i_2_n_0),
        .I1(read_pointer_reg[1]),
        .I2(read_pointer_reg[0]),
        .I3(read_pointer_reg[2]),
        .I4(read_pointer_reg[3]),
        .O(\read_pointer[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1555555540000000)) 
    \read_pointer[4]_i_1 
       (.I0(axis_tvalid_delay_i_2_n_0),
        .I1(read_pointer_reg[2]),
        .I2(read_pointer_reg[0]),
        .I3(read_pointer_reg[1]),
        .I4(read_pointer_reg[3]),
        .I5(read_pointer_reg[4]),
        .O(\read_pointer[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAEAA)) 
    \read_pointer[5]_i_1 
       (.I0(tx_done3_out),
        .I1(\mst_exec_state_reg_n_0_[1] ),
        .I2(\mst_exec_state_reg_n_0_[0] ),
        .I3(m00_axis_tready),
        .I4(axis_tvalid_delay_i_2_n_0),
        .O(\read_pointer[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h41)) 
    \read_pointer[5]_i_2 
       (.I0(axis_tvalid_delay_i_2_n_0),
        .I1(\read_pointer[5]_i_3_n_0 ),
        .I2(read_pointer_reg[5]),
        .O(\read_pointer[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \read_pointer[5]_i_3 
       (.I0(read_pointer_reg[3]),
        .I1(read_pointer_reg[1]),
        .I2(read_pointer_reg[0]),
        .I3(read_pointer_reg[2]),
        .I4(read_pointer_reg[4]),
        .O(\read_pointer[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h14)) 
    \read_pointer[6]_i_1 
       (.I0(axis_tvalid_delay_i_2_n_0),
        .I1(\read_pointer[8]_i_2_n_0 ),
        .I2(read_pointer[6]),
        .O(\read_pointer[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0078)) 
    \read_pointer[7]_i_1 
       (.I0(\read_pointer[8]_i_2_n_0 ),
        .I1(read_pointer[6]),
        .I2(read_pointer[7]),
        .I3(axis_tvalid_delay_i_2_n_0),
        .O(\read_pointer[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF00800)) 
    \read_pointer[8]_i_1 
       (.I0(\read_pointer[8]_i_2_n_0 ),
        .I1(read_pointer[6]),
        .I2(read_pointer[8]),
        .I3(read_pointer[7]),
        .I4(\read_pointer[8]_i_3_n_0 ),
        .O(\read_pointer[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \read_pointer[8]_i_2 
       (.I0(read_pointer_reg[5]),
        .I1(read_pointer_reg[4]),
        .I2(read_pointer_reg[2]),
        .I3(read_pointer_reg[0]),
        .I4(read_pointer_reg[1]),
        .I5(read_pointer_reg[3]),
        .O(\read_pointer[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \read_pointer[8]_i_3 
       (.I0(read_pointer_reg[4]),
        .I1(read_pointer[7]),
        .I2(read_pointer_reg[5]),
        .I3(read_pointer[6]),
        .I4(read_pointer_reg[3]),
        .O(\read_pointer[8]_i_3_n_0 ));
  FDRE \read_pointer_reg[0] 
       (.C(m00_axis_aclk),
        .CE(\read_pointer[5]_i_1_n_0 ),
        .D(\read_pointer[0]_i_1_n_0 ),
        .Q(read_pointer_reg[0]),
        .R(axis_tlast_delay_i_1_n_0));
  FDRE \read_pointer_reg[1] 
       (.C(m00_axis_aclk),
        .CE(\read_pointer[5]_i_1_n_0 ),
        .D(\read_pointer[1]_i_1_n_0 ),
        .Q(read_pointer_reg[1]),
        .R(axis_tlast_delay_i_1_n_0));
  FDRE \read_pointer_reg[2] 
       (.C(m00_axis_aclk),
        .CE(\read_pointer[5]_i_1_n_0 ),
        .D(\read_pointer[2]_i_1_n_0 ),
        .Q(read_pointer_reg[2]),
        .R(axis_tlast_delay_i_1_n_0));
  FDRE \read_pointer_reg[3] 
       (.C(m00_axis_aclk),
        .CE(\read_pointer[5]_i_1_n_0 ),
        .D(\read_pointer[3]_i_1_n_0 ),
        .Q(read_pointer_reg[3]),
        .R(axis_tlast_delay_i_1_n_0));
  FDRE \read_pointer_reg[4] 
       (.C(m00_axis_aclk),
        .CE(\read_pointer[5]_i_1_n_0 ),
        .D(\read_pointer[4]_i_1_n_0 ),
        .Q(read_pointer_reg[4]),
        .R(axis_tlast_delay_i_1_n_0));
  FDRE \read_pointer_reg[5] 
       (.C(m00_axis_aclk),
        .CE(\read_pointer[5]_i_1_n_0 ),
        .D(\read_pointer[5]_i_2_n_0 ),
        .Q(read_pointer_reg[5]),
        .R(axis_tlast_delay_i_1_n_0));
  FDRE \read_pointer_reg[6] 
       (.C(m00_axis_aclk),
        .CE(\read_pointer[5]_i_1_n_0 ),
        .D(\read_pointer[6]_i_1_n_0 ),
        .Q(read_pointer[6]),
        .R(axis_tlast_delay_i_1_n_0));
  FDRE \read_pointer_reg[7] 
       (.C(m00_axis_aclk),
        .CE(\read_pointer[5]_i_1_n_0 ),
        .D(\read_pointer[7]_i_1_n_0 ),
        .Q(read_pointer[7]),
        .R(axis_tlast_delay_i_1_n_0));
  FDRE \read_pointer_reg[8] 
       (.C(m00_axis_aclk),
        .CE(\read_pointer[5]_i_1_n_0 ),
        .D(\read_pointer[8]_i_1_n_0 ),
        .Q(read_pointer[8]),
        .R(axis_tlast_delay_i_1_n_0));
  FDRE rx_done_d1_reg
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(rx_done_reg_n_0),
        .Q(rx_done_d1),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000BAAAAAAA)) 
    rx_done_i_1
       (.I0(rx_done_reg_n_0),
        .I1(wr_clk_d2),
        .I2(wr_clk_d1),
        .I3(mst_wr_state_reg_n_0),
        .I4(data_fifo_reg_0_63_0_2_i_2_n_0),
        .I5(\v_write_pointer[8]_i_1_n_0 ),
        .O(rx_done_i_1_n_0));
  FDRE rx_done_reg
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(rx_done_i_1_n_0),
        .Q(rx_done_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFB00FB00FB000000)) 
    tx_done_i_1
       (.I0(\m00_axis_tdata[31]_INST_0_i_2_n_0 ),
        .I1(m00_axis_tready),
        .I2(axis_tvalid_delay_i_2_n_0),
        .I3(sys_enable),
        .I4(tx_done3_out),
        .I5(tx_done_reg_n_0),
        .O(tx_done_i_1_n_0));
  FDRE tx_done_reg
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(tx_done_i_1_n_0),
        .Q(tx_done_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \v_write_pointer[0]_i_1 
       (.I0(v_write_pointer_reg[0]),
        .O(\v_write_pointer[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \v_write_pointer[1]_i_1 
       (.I0(v_write_pointer_reg[1]),
        .I1(v_write_pointer_reg[0]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \v_write_pointer[2]_i_1 
       (.I0(v_write_pointer_reg[2]),
        .I1(v_write_pointer_reg[1]),
        .I2(v_write_pointer_reg[0]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \v_write_pointer[3]_i_1 
       (.I0(v_write_pointer_reg[0]),
        .I1(v_write_pointer_reg[1]),
        .I2(v_write_pointer_reg[2]),
        .I3(v_write_pointer_reg[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \v_write_pointer[4]_i_1 
       (.I0(v_write_pointer_reg[4]),
        .I1(v_write_pointer_reg[0]),
        .I2(v_write_pointer_reg[1]),
        .I3(v_write_pointer_reg[2]),
        .I4(v_write_pointer_reg[3]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \v_write_pointer[5]_i_1 
       (.I0(v_write_pointer_reg[5]),
        .I1(v_write_pointer_reg[3]),
        .I2(v_write_pointer_reg[2]),
        .I3(v_write_pointer_reg[1]),
        .I4(v_write_pointer_reg[0]),
        .I5(v_write_pointer_reg[4]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \v_write_pointer[6]_i_1 
       (.I0(v_write_pointer_reg[6]),
        .I1(v_write_pointer_reg[4]),
        .I2(\v_write_pointer[8]_i_4_n_0 ),
        .I3(v_write_pointer_reg[5]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \v_write_pointer[7]_i_1 
       (.I0(v_write_pointer_reg[7]),
        .I1(v_write_pointer_reg[5]),
        .I2(\v_write_pointer[8]_i_4_n_0 ),
        .I3(v_write_pointer_reg[4]),
        .I4(v_write_pointer_reg[6]),
        .O(p_0_in[7]));
  LUT5 #(
    .INIT(32'h04FFFFFF)) 
    \v_write_pointer[8]_i_1 
       (.I0(mst_wr_state_reg_n_0),
        .I1(wr_sync_d1),
        .I2(wr_sync_d2),
        .I3(m00_axis_aresetn),
        .I4(wr_ena),
        .O(\v_write_pointer[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \v_write_pointer[8]_i_2 
       (.I0(wr_clk_d2),
        .I1(wr_clk_d1),
        .I2(mst_wr_state_reg_n_0),
        .I3(data_fifo_reg_0_63_0_2_i_2_n_0),
        .O(\v_write_pointer[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \v_write_pointer[8]_i_3 
       (.I0(v_write_pointer_reg[8]),
        .I1(v_write_pointer_reg[6]),
        .I2(v_write_pointer_reg[4]),
        .I3(\v_write_pointer[8]_i_4_n_0 ),
        .I4(v_write_pointer_reg[5]),
        .I5(v_write_pointer_reg[7]),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \v_write_pointer[8]_i_4 
       (.I0(v_write_pointer_reg[3]),
        .I1(v_write_pointer_reg[2]),
        .I2(v_write_pointer_reg[1]),
        .I3(v_write_pointer_reg[0]),
        .O(\v_write_pointer[8]_i_4_n_0 ));
  FDRE \v_write_pointer_reg[0] 
       (.C(m00_axis_aclk),
        .CE(\v_write_pointer[8]_i_2_n_0 ),
        .D(\v_write_pointer[0]_i_1_n_0 ),
        .Q(v_write_pointer_reg[0]),
        .R(\v_write_pointer[8]_i_1_n_0 ));
  FDRE \v_write_pointer_reg[1] 
       (.C(m00_axis_aclk),
        .CE(\v_write_pointer[8]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(v_write_pointer_reg[1]),
        .R(\v_write_pointer[8]_i_1_n_0 ));
  FDRE \v_write_pointer_reg[2] 
       (.C(m00_axis_aclk),
        .CE(\v_write_pointer[8]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(v_write_pointer_reg[2]),
        .R(\v_write_pointer[8]_i_1_n_0 ));
  FDRE \v_write_pointer_reg[3] 
       (.C(m00_axis_aclk),
        .CE(\v_write_pointer[8]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(v_write_pointer_reg[3]),
        .R(\v_write_pointer[8]_i_1_n_0 ));
  FDRE \v_write_pointer_reg[4] 
       (.C(m00_axis_aclk),
        .CE(\v_write_pointer[8]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(v_write_pointer_reg[4]),
        .R(\v_write_pointer[8]_i_1_n_0 ));
  FDRE \v_write_pointer_reg[5] 
       (.C(m00_axis_aclk),
        .CE(\v_write_pointer[8]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(v_write_pointer_reg[5]),
        .R(\v_write_pointer[8]_i_1_n_0 ));
  FDRE \v_write_pointer_reg[6] 
       (.C(m00_axis_aclk),
        .CE(\v_write_pointer[8]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(v_write_pointer_reg[6]),
        .R(\v_write_pointer[8]_i_1_n_0 ));
  FDRE \v_write_pointer_reg[7] 
       (.C(m00_axis_aclk),
        .CE(\v_write_pointer[8]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(v_write_pointer_reg[7]),
        .R(\v_write_pointer[8]_i_1_n_0 ));
  FDRE \v_write_pointer_reg[8] 
       (.C(m00_axis_aclk),
        .CE(\v_write_pointer[8]_i_2_n_0 ),
        .D(p_0_in[8]),
        .Q(v_write_pointer_reg[8]),
        .R(\v_write_pointer[8]_i_1_n_0 ));
  FDRE wr_clk_d1_reg
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(wr_clk),
        .Q(wr_clk_d1),
        .R(axis_tlast_delay_i_1_n_0));
  FDRE wr_clk_d2_reg
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(wr_clk_d1),
        .Q(wr_clk_d2),
        .R(axis_tlast_delay_i_1_n_0));
  FDRE wr_sync_d1_reg
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(wr_sync),
        .Q(wr_sync_d1),
        .R(axis_tlast_delay_i_1_n_0));
  FDRE wr_sync_d2_reg
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(wr_sync_d1),
        .Q(wr_sync_d2),
        .R(axis_tlast_delay_i_1_n_0));
endmodule

(* CHECK_LICENSE_TYPE = "zsys_axis_adc_0_0,axis_adc_v1_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "axis_adc_v1_0,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (wr_ena,
    wr_clk,
    wr_sync,
    wr_data,
    irq,
    m00_axis_tdata,
    m00_axis_tlast,
    m00_axis_tvalid,
    m00_axis_tready,
    m00_axis_aclk,
    m00_axis_aresetn);
  input wr_ena;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 wr_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME wr_clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN zsys_wr_clk_0" *) input wr_clk;
  input wr_sync;
  input [31:0]wr_data;
  (* x_interface_info = "xilinx.com:signal:interrupt:1.0 irq INTERRUPT" *) (* x_interface_parameter = "XIL_INTERFACENAME irq, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output irq;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M00_AXIS TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME M00_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN zsys_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef" *) output [31:0]m00_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M00_AXIS TLAST" *) output m00_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M00_AXIS TVALID" *) output m00_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M00_AXIS TREADY" *) input m00_axis_tready;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 M00_AXIS_CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME M00_AXIS_CLK, ASSOCIATED_BUSIF M00_AXIS, ASSOCIATED_RESET m00_axis_aresetn, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN zsys_processing_system7_0_0_FCLK_CLK0" *) input m00_axis_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 M00_AXIS_RST RST" *) (* x_interface_parameter = "XIL_INTERFACENAME M00_AXIS_RST, POLARITY ACTIVE_LOW" *) input m00_axis_aresetn;

  wire irq;
  wire m00_axis_aclk;
  wire m00_axis_aresetn;
  wire [31:0]m00_axis_tdata;
  wire m00_axis_tlast;
  wire m00_axis_tready;
  wire m00_axis_tvalid;
  wire wr_clk;
  wire [31:0]wr_data;
  wire wr_ena;
  wire wr_sync;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_adc_v1_0 U0
       (.irq(irq),
        .m00_axis_aclk(m00_axis_aclk),
        .m00_axis_aresetn(m00_axis_aresetn),
        .m00_axis_tdata(m00_axis_tdata),
        .m00_axis_tlast(m00_axis_tlast),
        .m00_axis_tready(m00_axis_tready),
        .m00_axis_tvalid(m00_axis_tvalid),
        .wr_clk(wr_clk),
        .wr_data(wr_data),
        .wr_ena(wr_ena),
        .wr_sync(wr_sync));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
