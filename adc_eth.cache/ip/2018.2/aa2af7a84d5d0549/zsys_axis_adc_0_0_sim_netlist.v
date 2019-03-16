// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Sat Feb 23 11:37:29 2019
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
   (m00_axis_tdata,
    m00_axis_tvalid,
    m00_axis_tlast,
    irq,
    m00_axis_aclk,
    wr_data,
    wr_clk,
    wr_sync,
    wr_ena,
    m00_axis_aresetn,
    m00_axis_tready);
  output [31:0]m00_axis_tdata;
  output m00_axis_tvalid;
  output m00_axis_tlast;
  output irq;
  input m00_axis_aclk;
  input [31:0]wr_data;
  input wr_clk;
  input wr_sync;
  input wr_ena;
  input m00_axis_aresetn;
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
   (m00_axis_tdata,
    m00_axis_tvalid,
    m00_axis_tlast,
    irq,
    m00_axis_aclk,
    wr_data,
    wr_clk,
    wr_sync,
    wr_ena,
    m00_axis_aresetn,
    m00_axis_tready);
  output [31:0]m00_axis_tdata;
  output m00_axis_tvalid;
  output m00_axis_tlast;
  output irq;
  input m00_axis_aclk;
  input [31:0]wr_data;
  input wr_clk;
  input wr_sync;
  input wr_ena;
  input m00_axis_aresetn;
  input m00_axis_tready;

  wire \FSM_onehot_mst_exec_state[0]_i_1_n_0 ;
  wire \FSM_onehot_mst_exec_state[1]_i_1_n_0 ;
  wire \FSM_onehot_mst_exec_state[2]_i_1_n_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_mst_exec_state_reg_n_0_[0] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_mst_exec_state_reg_n_0_[1] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_mst_exec_state_reg_n_0_[2] ;
  wire axis_tlast;
  wire axis_tlast_delay_i_1_n_0;
  wire axis_tvalid;
  wire axis_tvalid_delay_i_2_n_0;
  wire axis_tvalid_delay_i_3_n_0;
  wire data_fifo_reg_1_i_2_n_0;
  wire data_fifo_reg_1_i_3_n_0;
  wire data_fifo_reg_2_i_1_n_0;
  wire data_fifo_reg_2_i_2_n_0;
  wire irq;
  wire irq_INST_0_i_1_n_0;
  wire irq_INST_0_i_2_n_0;
  wire m00_axis_aclk;
  wire m00_axis_aresetn;
  wire [31:0]m00_axis_tdata;
  wire m00_axis_tlast;
  wire m00_axis_tready;
  wire m00_axis_tvalid;
  wire [1:0]mst_exec_state;
  wire \mst_exec_state[0]_i_1_n_0 ;
  wire \mst_exec_state[1]_i_1_n_0 ;
  wire mst_wr_state_i_1_n_0;
  wire mst_wr_state_i_2_n_0;
  wire mst_wr_state_i_3_n_0;
  wire mst_wr_state_reg_n_0;
  wire [8:1]p_0_in;
  wire rx_done_d1;
  wire rx_done_i_1_n_0;
  wire rx_done_i_2_n_0;
  wire rx_done_i_3_n_0;
  wire rx_done_i_4_n_0;
  wire rx_done_reg_n_0;
  wire [8:0]sel0;
  wire stream_data_out;
  wire sys_enable;
  wire \v_read_pointer[0]__0_i_1_n_0 ;
  wire \v_read_pointer[0]__0_i_2_n_0 ;
  wire \v_read_pointer[0]__0_i_3_n_0 ;
  wire \v_read_pointer[0]__0_i_4_n_0 ;
  wire \v_read_pointer[0]__0_i_5_n_0 ;
  wire \v_read_pointer[0]_i_1_n_0 ;
  wire \v_read_pointer[0]_i_2_n_0 ;
  wire \v_read_pointer[0]_i_3_n_0 ;
  wire \v_read_pointer[0]_i_4_n_0 ;
  wire \v_read_pointer[1]__0_i_1_n_0 ;
  wire \v_read_pointer[1]_i_1_n_0 ;
  wire \v_read_pointer[2]__0_i_1_n_0 ;
  wire \v_read_pointer[2]_i_1_n_0 ;
  wire \v_read_pointer[3]__0_i_1_n_0 ;
  wire \v_read_pointer[3]__0_i_2_n_0 ;
  wire \v_read_pointer[3]__0_i_3_n_0 ;
  wire \v_read_pointer[3]_i_1_n_0 ;
  wire \v_read_pointer[4]__0_i_1_n_0 ;
  wire \v_read_pointer[4]_i_1_n_0 ;
  wire \v_read_pointer[5]__0_i_1_n_0 ;
  wire \v_read_pointer[5]_i_1_n_0 ;
  wire \v_read_pointer[6]__0_i_1_n_0 ;
  wire \v_read_pointer[6]_i_1_n_0 ;
  wire \v_read_pointer[6]_i_2_n_0 ;
  wire \v_read_pointer[7]__0_i_1_n_0 ;
  wire \v_read_pointer[7]__0_i_2_n_0 ;
  wire \v_read_pointer[7]_i_1_n_0 ;
  wire \v_read_pointer[7]_i_2_n_0 ;
  wire \v_read_pointer[8]__0_i_1_n_0 ;
  wire \v_read_pointer[8]__0_i_2_n_0 ;
  wire \v_read_pointer[8]__0_i_3_n_0 ;
  wire \v_read_pointer[8]_i_1_n_0 ;
  wire \v_read_pointer[8]_i_2_n_0 ;
  wire [8:0]v_read_pointer_reg;
  wire \v_write_pointer[0]_i_1_n_0 ;
  wire \v_write_pointer[8]_i_1_n_0 ;
  wire \v_write_pointer[8]_i_3_n_0 ;
  wire [8:0]v_write_pointer_reg__0;
  wire wr_clk;
  wire wr_clk_d1;
  wire wr_clk_d2;
  wire [31:0]wr_data;
  wire wr_ena;
  wire wr_sync;
  wire wr_sync_d1;
  wire wr_sync_d2;
  wire [1:0]NLW_data_fifo_reg_1_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_data_fifo_reg_1_DOPBDOP_UNCONNECTED;
  wire [1:0]NLW_data_fifo_reg_2_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_data_fifo_reg_2_DOPBDOP_UNCONNECTED;

  LUT4 #(
    .INIT(16'hFF8A)) 
    \FSM_onehot_mst_exec_state[0]_i_1 
       (.I0(\FSM_onehot_mst_exec_state_reg_n_0_[0] ),
        .I1(rx_done_d1),
        .I2(rx_done_reg_n_0),
        .I3(\FSM_onehot_mst_exec_state_reg_n_0_[2] ),
        .O(\FSM_onehot_mst_exec_state[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \FSM_onehot_mst_exec_state[1]_i_1 
       (.I0(\FSM_onehot_mst_exec_state_reg_n_0_[0] ),
        .I1(rx_done_reg_n_0),
        .I2(rx_done_d1),
        .O(\FSM_onehot_mst_exec_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBBFBBB)) 
    \FSM_onehot_mst_exec_state[2]_i_1 
       (.I0(mst_exec_state[0]),
        .I1(mst_exec_state[1]),
        .I2(sel0[0]),
        .I3(sel0[3]),
        .I4(data_fifo_reg_1_i_3_n_0),
        .I5(sel0[1]),
        .O(\FSM_onehot_mst_exec_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "send_stream:100,idle:001,init_send:010" *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_mst_exec_state_reg[0] 
       (.C(m00_axis_aclk),
        .CE(\FSM_onehot_mst_exec_state[2]_i_1_n_0 ),
        .D(\FSM_onehot_mst_exec_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_mst_exec_state_reg_n_0_[0] ),
        .S(axis_tlast_delay_i_1_n_0));
  (* FSM_ENCODED_STATES = "send_stream:100,idle:001,init_send:010" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_mst_exec_state_reg[1] 
       (.C(m00_axis_aclk),
        .CE(\FSM_onehot_mst_exec_state[2]_i_1_n_0 ),
        .D(\FSM_onehot_mst_exec_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_mst_exec_state_reg_n_0_[1] ),
        .R(axis_tlast_delay_i_1_n_0));
  (* FSM_ENCODED_STATES = "send_stream:100,idle:001,init_send:010" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_mst_exec_state_reg[2] 
       (.C(m00_axis_aclk),
        .CE(\FSM_onehot_mst_exec_state[2]_i_1_n_0 ),
        .D(\FSM_onehot_mst_exec_state_reg_n_0_[1] ),
        .Q(\FSM_onehot_mst_exec_state_reg_n_0_[2] ),
        .R(axis_tlast_delay_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    axis_tlast_delay_i_1
       (.I0(m00_axis_aresetn),
        .I1(wr_ena),
        .O(axis_tlast_delay_i_1_n_0));
  LUT4 #(
    .INIT(16'h0004)) 
    axis_tlast_delay_i_2
       (.I0(sel0[0]),
        .I1(sel0[3]),
        .I2(sel0[1]),
        .I3(data_fifo_reg_1_i_3_n_0),
        .O(axis_tlast));
  FDRE axis_tlast_delay_reg
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(axis_tlast),
        .Q(m00_axis_tlast),
        .R(axis_tlast_delay_i_1_n_0));
  LUT6 #(
    .INIT(64'hDDCCDDCCDDCCDFCC)) 
    axis_tvalid_delay_i_1
       (.I0(sel0[8]),
        .I1(axis_tvalid_delay_i_2_n_0),
        .I2(sel0[0]),
        .I3(\FSM_onehot_mst_exec_state_reg_n_0_[2] ),
        .I4(sel0[1]),
        .I5(axis_tvalid_delay_i_3_n_0),
        .O(axis_tvalid));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    axis_tvalid_delay_i_2
       (.I0(sel0[3]),
        .I1(\FSM_onehot_mst_exec_state_reg_n_0_[2] ),
        .I2(sel0[6]),
        .I3(sel0[7]),
        .I4(sel0[4]),
        .I5(sel0[5]),
        .O(axis_tvalid_delay_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    axis_tvalid_delay_i_3
       (.I0(sel0[6]),
        .I1(sel0[7]),
        .I2(sel0[4]),
        .I3(sel0[5]),
        .I4(sel0[2]),
        .O(axis_tvalid_delay_i_3_n_0));
  FDRE axis_tvalid_delay_reg
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(axis_tvalid),
        .Q(m00_axis_tvalid),
        .R(axis_tlast_delay_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d32" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d32" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8480" *) 
  (* RTL_RAM_NAME = "data_fifo" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "511" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "31" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("SDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(36)) 
    data_fifo_reg_1
       (.ADDRARDADDR({sel0,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({v_write_pointer_reg__0,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(m00_axis_aclk),
        .CLKBWRCLK(m00_axis_aclk),
        .DIADI(wr_data[15:0]),
        .DIBDI(wr_data[31:16]),
        .DIPADIP({1'b1,1'b1}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO(m00_axis_tdata[15:0]),
        .DOBDO(m00_axis_tdata[31:16]),
        .DOPADOP(NLW_data_fifo_reg_1_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_data_fifo_reg_1_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(stream_data_out),
        .ENBWREN(data_fifo_reg_2_i_2_n_0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({sys_enable,sys_enable,sys_enable,sys_enable}));
  LUT6 #(
    .INIT(64'h0404040404040400)) 
    data_fifo_reg_1_i_1
       (.I0(axis_tlast_delay_i_1_n_0),
        .I1(mst_exec_state[1]),
        .I2(mst_exec_state[0]),
        .I3(data_fifo_reg_1_i_2_n_0),
        .I4(data_fifo_reg_1_i_3_n_0),
        .I5(sel0[1]),
        .O(stream_data_out));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h7)) 
    data_fifo_reg_1_i_2
       (.I0(sel0[0]),
        .I1(sel0[3]),
        .O(data_fifo_reg_1_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    data_fifo_reg_1_i_3
       (.I0(sel0[2]),
        .I1(sel0[5]),
        .I2(sel0[4]),
        .I3(sel0[7]),
        .I4(sel0[6]),
        .I5(sel0[8]),
        .O(data_fifo_reg_1_i_3_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d32" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d32" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8480" *) 
  (* RTL_RAM_NAME = "data_fifo" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "511" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "31" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("SDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(36)) 
    data_fifo_reg_2
       (.ADDRARDADDR({v_read_pointer_reg,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({v_write_pointer_reg__0,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(m00_axis_aclk),
        .CLKBWRCLK(m00_axis_aclk),
        .DIADI(wr_data[15:0]),
        .DIBDI(wr_data[31:16]),
        .DIPADIP({1'b1,1'b1}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO(m00_axis_tdata[15:0]),
        .DOBDO(m00_axis_tdata[31:16]),
        .DOPADOP(NLW_data_fifo_reg_2_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_data_fifo_reg_2_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(data_fifo_reg_2_i_1_n_0),
        .ENBWREN(data_fifo_reg_2_i_2_n_0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({sys_enable,sys_enable,sys_enable,sys_enable}));
  LUT3 #(
    .INIT(8'h80)) 
    data_fifo_reg_2_i_1
       (.I0(\v_read_pointer[0]__0_i_1_n_0 ),
        .I1(wr_ena),
        .I2(m00_axis_aresetn),
        .O(data_fifo_reg_2_i_1_n_0));
  LUT6 #(
    .INIT(64'h00000000F7000000)) 
    data_fifo_reg_2_i_2
       (.I0(v_write_pointer_reg__0[0]),
        .I1(v_write_pointer_reg__0[3]),
        .I2(irq_INST_0_i_1_n_0),
        .I3(mst_wr_state_reg_n_0),
        .I4(wr_clk_d1),
        .I5(wr_clk_d2),
        .O(data_fifo_reg_2_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    data_fifo_reg_2_i_3
       (.I0(wr_ena),
        .I1(m00_axis_aresetn),
        .O(sys_enable));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h04)) 
    irq_INST_0
       (.I0(v_write_pointer_reg__0[0]),
        .I1(v_write_pointer_reg__0[3]),
        .I2(irq_INST_0_i_1_n_0),
        .O(irq));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    irq_INST_0_i_1
       (.I0(v_write_pointer_reg__0[5]),
        .I1(v_write_pointer_reg__0[6]),
        .I2(v_write_pointer_reg__0[2]),
        .I3(v_write_pointer_reg__0[4]),
        .I4(v_write_pointer_reg__0[1]),
        .I5(irq_INST_0_i_2_n_0),
        .O(irq_INST_0_i_1_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    irq_INST_0_i_2
       (.I0(v_write_pointer_reg__0[7]),
        .I1(v_write_pointer_reg__0[8]),
        .O(irq_INST_0_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \mst_exec_state[0]_i_1 
       (.I0(mst_exec_state[1]),
        .I1(mst_exec_state[0]),
        .I2(rx_done_reg_n_0),
        .I3(rx_done_d1),
        .O(\mst_exec_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \mst_exec_state[1]_i_1 
       (.I0(mst_exec_state[0]),
        .I1(mst_exec_state[1]),
        .O(\mst_exec_state[1]_i_1_n_0 ));
  FDRE \mst_exec_state_reg[0] 
       (.C(m00_axis_aclk),
        .CE(\FSM_onehot_mst_exec_state[2]_i_1_n_0 ),
        .D(\mst_exec_state[0]_i_1_n_0 ),
        .Q(mst_exec_state[0]),
        .R(axis_tlast_delay_i_1_n_0));
  FDRE \mst_exec_state_reg[1] 
       (.C(m00_axis_aclk),
        .CE(\FSM_onehot_mst_exec_state[2]_i_1_n_0 ),
        .D(\mst_exec_state[1]_i_1_n_0 ),
        .Q(mst_exec_state[1]),
        .R(axis_tlast_delay_i_1_n_0));
  LUT6 #(
    .INIT(64'hEFEF00FFEFEF0000)) 
    mst_wr_state_i_1
       (.I0(mst_wr_state_i_2_n_0),
        .I1(wr_clk_d2),
        .I2(wr_clk_d1),
        .I3(wr_sync_d2),
        .I4(mst_wr_state_reg_n_0),
        .I5(wr_sync_d1),
        .O(mst_wr_state_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFDFFFFFFFFFFFF)) 
    mst_wr_state_i_2
       (.I0(v_write_pointer_reg__0[8]),
        .I1(v_write_pointer_reg__0[7]),
        .I2(v_write_pointer_reg__0[1]),
        .I3(mst_wr_state_i_3_n_0),
        .I4(v_write_pointer_reg__0[3]),
        .I5(v_write_pointer_reg__0[0]),
        .O(mst_wr_state_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    mst_wr_state_i_3
       (.I0(v_write_pointer_reg__0[4]),
        .I1(v_write_pointer_reg__0[2]),
        .I2(v_write_pointer_reg__0[6]),
        .I3(v_write_pointer_reg__0[5]),
        .O(mst_wr_state_i_3_n_0));
  FDRE mst_wr_state_reg
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(mst_wr_state_i_1_n_0),
        .Q(mst_wr_state_reg_n_0),
        .R(axis_tlast_delay_i_1_n_0));
  FDRE rx_done_d1_reg
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(rx_done_reg_n_0),
        .Q(rx_done_d1),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h5454540054545454)) 
    rx_done_i_1
       (.I0(axis_tlast_delay_i_1_n_0),
        .I1(rx_done_i_2_n_0),
        .I2(rx_done_reg_n_0),
        .I3(wr_sync_d2),
        .I4(mst_wr_state_reg_n_0),
        .I5(wr_sync_d1),
        .O(rx_done_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    rx_done_i_2
       (.I0(rx_done_i_3_n_0),
        .I1(rx_done_i_4_n_0),
        .I2(mst_wr_state_i_3_n_0),
        .I3(v_write_pointer_reg__0[1]),
        .I4(v_write_pointer_reg__0[7]),
        .I5(v_write_pointer_reg__0[8]),
        .O(rx_done_i_2_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    rx_done_i_3
       (.I0(wr_clk_d2),
        .I1(wr_clk_d1),
        .I2(mst_wr_state_reg_n_0),
        .O(rx_done_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h7)) 
    rx_done_i_4
       (.I0(v_write_pointer_reg__0[0]),
        .I1(v_write_pointer_reg__0[3]),
        .O(rx_done_i_4_n_0));
  FDRE rx_done_reg
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(rx_done_i_1_n_0),
        .Q(rx_done_reg_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hF8888888)) 
    \v_read_pointer[0]__0_i_1 
       (.I0(\v_read_pointer[0]__0_i_3_n_0 ),
        .I1(\v_read_pointer[0]__0_i_4_n_0 ),
        .I2(\v_read_pointer[0]__0_i_5_n_0 ),
        .I3(m00_axis_tready),
        .I4(m00_axis_tvalid),
        .O(\v_read_pointer[0]__0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \v_read_pointer[0]__0_i_2 
       (.I0(\v_read_pointer[0]__0_i_5_n_0 ),
        .I1(v_read_pointer_reg[0]),
        .O(\v_read_pointer[0]__0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \v_read_pointer[0]__0_i_3 
       (.I0(v_read_pointer_reg[2]),
        .I1(v_read_pointer_reg[1]),
        .I2(v_read_pointer_reg[0]),
        .O(\v_read_pointer[0]__0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \v_read_pointer[0]__0_i_4 
       (.I0(v_read_pointer_reg[3]),
        .I1(v_read_pointer_reg[4]),
        .I2(v_read_pointer_reg[5]),
        .I3(v_read_pointer_reg[6]),
        .I4(v_read_pointer_reg[7]),
        .I5(v_read_pointer_reg[8]),
        .O(\v_read_pointer[0]__0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    \v_read_pointer[0]__0_i_5 
       (.I0(v_read_pointer_reg[6]),
        .I1(v_read_pointer_reg[7]),
        .I2(v_read_pointer_reg[5]),
        .I3(v_read_pointer_reg[4]),
        .I4(v_read_pointer_reg[3]),
        .I5(v_read_pointer_reg[8]),
        .O(\v_read_pointer[0]__0_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \v_read_pointer[0]_i_1 
       (.I0(\FSM_onehot_mst_exec_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_mst_exec_state_reg_n_0_[2] ),
        .O(\v_read_pointer[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h22222202)) 
    \v_read_pointer[0]_i_2 
       (.I0(\FSM_onehot_mst_exec_state_reg_n_0_[2] ),
        .I1(sel0[0]),
        .I2(sel0[3]),
        .I3(\v_read_pointer[0]_i_3_n_0 ),
        .I4(\v_read_pointer[0]_i_4_n_0 ),
        .O(\v_read_pointer[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \v_read_pointer[0]_i_3 
       (.I0(sel0[2]),
        .I1(sel0[5]),
        .I2(sel0[6]),
        .I3(sel0[1]),
        .O(\v_read_pointer[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    \v_read_pointer[0]_i_4 
       (.I0(sel0[0]),
        .I1(sel0[8]),
        .I2(sel0[4]),
        .I3(sel0[7]),
        .O(\v_read_pointer[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \v_read_pointer[1]__0_i_1 
       (.I0(v_read_pointer_reg[1]),
        .I1(v_read_pointer_reg[0]),
        .I2(\v_read_pointer[0]__0_i_5_n_0 ),
        .O(\v_read_pointer[1]__0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0B00F000)) 
    \v_read_pointer[1]_i_1 
       (.I0(data_fifo_reg_1_i_3_n_0),
        .I1(sel0[3]),
        .I2(sel0[1]),
        .I3(\FSM_onehot_mst_exec_state_reg_n_0_[2] ),
        .I4(sel0[0]),
        .O(\v_read_pointer[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \v_read_pointer[2]__0_i_1 
       (.I0(v_read_pointer_reg[2]),
        .I1(v_read_pointer_reg[0]),
        .I2(v_read_pointer_reg[1]),
        .I3(\v_read_pointer[0]__0_i_5_n_0 ),
        .O(\v_read_pointer[2]__0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h60C0)) 
    \v_read_pointer[2]_i_1 
       (.I0(sel0[1]),
        .I1(sel0[2]),
        .I2(\FSM_onehot_mst_exec_state_reg_n_0_[2] ),
        .I3(sel0[0]),
        .O(\v_read_pointer[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000002FF0000FF)) 
    \v_read_pointer[3]__0_i_1 
       (.I0(\v_read_pointer[3]__0_i_2_n_0 ),
        .I1(v_read_pointer_reg[4]),
        .I2(v_read_pointer_reg[5]),
        .I3(\v_read_pointer[3]__0_i_3_n_0 ),
        .I4(v_read_pointer_reg[3]),
        .I5(v_read_pointer_reg[8]),
        .O(\v_read_pointer[3]__0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \v_read_pointer[3]__0_i_2 
       (.I0(v_read_pointer_reg[6]),
        .I1(v_read_pointer_reg[7]),
        .O(\v_read_pointer[3]__0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \v_read_pointer[3]__0_i_3 
       (.I0(v_read_pointer_reg[1]),
        .I1(v_read_pointer_reg[0]),
        .I2(v_read_pointer_reg[2]),
        .O(\v_read_pointer[3]__0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4840888888808888)) 
    \v_read_pointer[3]_i_1 
       (.I0(sel0[3]),
        .I1(\FSM_onehot_mst_exec_state_reg_n_0_[2] ),
        .I2(sel0[1]),
        .I3(data_fifo_reg_1_i_3_n_0),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(\v_read_pointer[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000006AAAAAAA)) 
    \v_read_pointer[4]__0_i_1 
       (.I0(v_read_pointer_reg[4]),
        .I1(v_read_pointer_reg[2]),
        .I2(v_read_pointer_reg[0]),
        .I3(v_read_pointer_reg[1]),
        .I4(v_read_pointer_reg[3]),
        .I5(v_read_pointer_reg[8]),
        .O(\v_read_pointer[4]__0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6CCCCCCC00000000)) 
    \v_read_pointer[4]_i_1 
       (.I0(sel0[2]),
        .I1(sel0[4]),
        .I2(sel0[0]),
        .I3(sel0[3]),
        .I4(sel0[1]),
        .I5(\FSM_onehot_mst_exec_state_reg_n_0_[2] ),
        .O(\v_read_pointer[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000A6AA)) 
    \v_read_pointer[5]__0_i_1 
       (.I0(v_read_pointer_reg[5]),
        .I1(v_read_pointer_reg[3]),
        .I2(\v_read_pointer[3]__0_i_3_n_0 ),
        .I3(v_read_pointer_reg[4]),
        .I4(v_read_pointer_reg[8]),
        .O(\v_read_pointer[5]__0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF078F0F000000000)) 
    \v_read_pointer[5]_i_1 
       (.I0(sel0[2]),
        .I1(sel0[4]),
        .I2(sel0[5]),
        .I3(data_fifo_reg_1_i_2_n_0),
        .I4(sel0[1]),
        .I5(\FSM_onehot_mst_exec_state_reg_n_0_[2] ),
        .O(\v_read_pointer[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000A6AAAAAA)) 
    \v_read_pointer[6]__0_i_1 
       (.I0(v_read_pointer_reg[6]),
        .I1(v_read_pointer_reg[4]),
        .I2(\v_read_pointer[3]__0_i_3_n_0 ),
        .I3(v_read_pointer_reg[3]),
        .I4(v_read_pointer_reg[5]),
        .I5(v_read_pointer_reg[8]),
        .O(\v_read_pointer[6]__0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9CCCCCCC00000000)) 
    \v_read_pointer[6]_i_1 
       (.I0(\v_read_pointer[6]_i_2_n_0 ),
        .I1(sel0[6]),
        .I2(sel0[0]),
        .I3(sel0[3]),
        .I4(sel0[1]),
        .I5(\FSM_onehot_mst_exec_state_reg_n_0_[2] ),
        .O(\v_read_pointer[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \v_read_pointer[6]_i_2 
       (.I0(sel0[4]),
        .I1(sel0[2]),
        .I2(sel0[5]),
        .O(\v_read_pointer[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h009A)) 
    \v_read_pointer[7]__0_i_1 
       (.I0(v_read_pointer_reg[7]),
        .I1(\v_read_pointer[7]__0_i_2_n_0 ),
        .I2(v_read_pointer_reg[6]),
        .I3(v_read_pointer_reg[8]),
        .O(\v_read_pointer[7]__0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \v_read_pointer[7]__0_i_2 
       (.I0(v_read_pointer_reg[4]),
        .I1(v_read_pointer_reg[2]),
        .I2(v_read_pointer_reg[0]),
        .I3(v_read_pointer_reg[1]),
        .I4(v_read_pointer_reg[3]),
        .I5(v_read_pointer_reg[5]),
        .O(\v_read_pointer[7]__0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9CCCCCCC00000000)) 
    \v_read_pointer[7]_i_1 
       (.I0(\v_read_pointer[7]_i_2_n_0 ),
        .I1(sel0[7]),
        .I2(sel0[0]),
        .I3(sel0[3]),
        .I4(sel0[1]),
        .I5(\FSM_onehot_mst_exec_state_reg_n_0_[2] ),
        .O(\v_read_pointer[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \v_read_pointer[7]_i_2 
       (.I0(sel0[5]),
        .I1(sel0[2]),
        .I2(sel0[4]),
        .I3(sel0[6]),
        .O(\v_read_pointer[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000020200FF0000)) 
    \v_read_pointer[8]__0_i_1 
       (.I0(\v_read_pointer[8]__0_i_2_n_0 ),
        .I1(v_read_pointer_reg[4]),
        .I2(v_read_pointer_reg[3]),
        .I3(\v_read_pointer[8]__0_i_3_n_0 ),
        .I4(v_read_pointer_reg[7]),
        .I5(v_read_pointer_reg[8]),
        .O(\v_read_pointer[8]__0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \v_read_pointer[8]__0_i_2 
       (.I0(v_read_pointer_reg[5]),
        .I1(v_read_pointer_reg[6]),
        .O(\v_read_pointer[8]__0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hF7FFFFFF)) 
    \v_read_pointer[8]__0_i_3 
       (.I0(v_read_pointer_reg[5]),
        .I1(v_read_pointer_reg[3]),
        .I2(\v_read_pointer[3]__0_i_3_n_0 ),
        .I3(v_read_pointer_reg[4]),
        .I4(v_read_pointer_reg[6]),
        .O(\v_read_pointer[8]__0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hC0C0C00CC080C080)) 
    \v_read_pointer[8]_i_1 
       (.I0(axis_tvalid_delay_i_3_n_0),
        .I1(\FSM_onehot_mst_exec_state_reg_n_0_[2] ),
        .I2(sel0[8]),
        .I3(data_fifo_reg_1_i_2_n_0),
        .I4(\v_read_pointer[8]_i_2_n_0 ),
        .I5(sel0[1]),
        .O(\v_read_pointer[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \v_read_pointer[8]_i_2 
       (.I0(sel0[6]),
        .I1(sel0[4]),
        .I2(sel0[2]),
        .I3(sel0[5]),
        .I4(sel0[7]),
        .O(\v_read_pointer[8]_i_2_n_0 ));
  FDRE \v_read_pointer_reg[0] 
       (.C(m00_axis_aclk),
        .CE(\v_read_pointer[0]_i_1_n_0 ),
        .D(\v_read_pointer[0]_i_2_n_0 ),
        .Q(sel0[0]),
        .R(axis_tlast_delay_i_1_n_0));
  FDRE \v_read_pointer_reg[0]__0 
       (.C(m00_axis_aclk),
        .CE(\v_read_pointer[0]__0_i_1_n_0 ),
        .D(\v_read_pointer[0]__0_i_2_n_0 ),
        .Q(v_read_pointer_reg[0]),
        .R(axis_tlast_delay_i_1_n_0));
  FDRE \v_read_pointer_reg[1] 
       (.C(m00_axis_aclk),
        .CE(\v_read_pointer[0]_i_1_n_0 ),
        .D(\v_read_pointer[1]_i_1_n_0 ),
        .Q(sel0[1]),
        .R(axis_tlast_delay_i_1_n_0));
  FDRE \v_read_pointer_reg[1]__0 
       (.C(m00_axis_aclk),
        .CE(\v_read_pointer[0]__0_i_1_n_0 ),
        .D(\v_read_pointer[1]__0_i_1_n_0 ),
        .Q(v_read_pointer_reg[1]),
        .R(axis_tlast_delay_i_1_n_0));
  FDRE \v_read_pointer_reg[2] 
       (.C(m00_axis_aclk),
        .CE(\v_read_pointer[0]_i_1_n_0 ),
        .D(\v_read_pointer[2]_i_1_n_0 ),
        .Q(sel0[2]),
        .R(axis_tlast_delay_i_1_n_0));
  FDRE \v_read_pointer_reg[2]__0 
       (.C(m00_axis_aclk),
        .CE(\v_read_pointer[0]__0_i_1_n_0 ),
        .D(\v_read_pointer[2]__0_i_1_n_0 ),
        .Q(v_read_pointer_reg[2]),
        .R(axis_tlast_delay_i_1_n_0));
  FDRE \v_read_pointer_reg[3] 
       (.C(m00_axis_aclk),
        .CE(\v_read_pointer[0]_i_1_n_0 ),
        .D(\v_read_pointer[3]_i_1_n_0 ),
        .Q(sel0[3]),
        .R(axis_tlast_delay_i_1_n_0));
  FDRE \v_read_pointer_reg[3]__0 
       (.C(m00_axis_aclk),
        .CE(\v_read_pointer[0]__0_i_1_n_0 ),
        .D(\v_read_pointer[3]__0_i_1_n_0 ),
        .Q(v_read_pointer_reg[3]),
        .R(axis_tlast_delay_i_1_n_0));
  FDRE \v_read_pointer_reg[4] 
       (.C(m00_axis_aclk),
        .CE(\v_read_pointer[0]_i_1_n_0 ),
        .D(\v_read_pointer[4]_i_1_n_0 ),
        .Q(sel0[4]),
        .R(axis_tlast_delay_i_1_n_0));
  FDRE \v_read_pointer_reg[4]__0 
       (.C(m00_axis_aclk),
        .CE(\v_read_pointer[0]__0_i_1_n_0 ),
        .D(\v_read_pointer[4]__0_i_1_n_0 ),
        .Q(v_read_pointer_reg[4]),
        .R(axis_tlast_delay_i_1_n_0));
  FDRE \v_read_pointer_reg[5] 
       (.C(m00_axis_aclk),
        .CE(\v_read_pointer[0]_i_1_n_0 ),
        .D(\v_read_pointer[5]_i_1_n_0 ),
        .Q(sel0[5]),
        .R(axis_tlast_delay_i_1_n_0));
  FDRE \v_read_pointer_reg[5]__0 
       (.C(m00_axis_aclk),
        .CE(\v_read_pointer[0]__0_i_1_n_0 ),
        .D(\v_read_pointer[5]__0_i_1_n_0 ),
        .Q(v_read_pointer_reg[5]),
        .R(axis_tlast_delay_i_1_n_0));
  FDRE \v_read_pointer_reg[6] 
       (.C(m00_axis_aclk),
        .CE(\v_read_pointer[0]_i_1_n_0 ),
        .D(\v_read_pointer[6]_i_1_n_0 ),
        .Q(sel0[6]),
        .R(axis_tlast_delay_i_1_n_0));
  FDRE \v_read_pointer_reg[6]__0 
       (.C(m00_axis_aclk),
        .CE(\v_read_pointer[0]__0_i_1_n_0 ),
        .D(\v_read_pointer[6]__0_i_1_n_0 ),
        .Q(v_read_pointer_reg[6]),
        .R(axis_tlast_delay_i_1_n_0));
  FDRE \v_read_pointer_reg[7] 
       (.C(m00_axis_aclk),
        .CE(\v_read_pointer[0]_i_1_n_0 ),
        .D(\v_read_pointer[7]_i_1_n_0 ),
        .Q(sel0[7]),
        .R(axis_tlast_delay_i_1_n_0));
  FDRE \v_read_pointer_reg[7]__0 
       (.C(m00_axis_aclk),
        .CE(\v_read_pointer[0]__0_i_1_n_0 ),
        .D(\v_read_pointer[7]__0_i_1_n_0 ),
        .Q(v_read_pointer_reg[7]),
        .R(axis_tlast_delay_i_1_n_0));
  FDRE \v_read_pointer_reg[8] 
       (.C(m00_axis_aclk),
        .CE(\v_read_pointer[0]_i_1_n_0 ),
        .D(\v_read_pointer[8]_i_1_n_0 ),
        .Q(sel0[8]),
        .R(axis_tlast_delay_i_1_n_0));
  FDRE \v_read_pointer_reg[8]__0 
       (.C(m00_axis_aclk),
        .CE(\v_read_pointer[0]__0_i_1_n_0 ),
        .D(\v_read_pointer[8]__0_i_1_n_0 ),
        .Q(v_read_pointer_reg[8]),
        .R(axis_tlast_delay_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \v_write_pointer[0]_i_1 
       (.I0(v_write_pointer_reg__0[0]),
        .O(\v_write_pointer[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \v_write_pointer[1]_i_1 
       (.I0(v_write_pointer_reg__0[0]),
        .I1(v_write_pointer_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \v_write_pointer[2]_i_1 
       (.I0(v_write_pointer_reg__0[1]),
        .I1(v_write_pointer_reg__0[0]),
        .I2(v_write_pointer_reg__0[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \v_write_pointer[3]_i_1 
       (.I0(v_write_pointer_reg__0[0]),
        .I1(v_write_pointer_reg__0[1]),
        .I2(v_write_pointer_reg__0[2]),
        .I3(v_write_pointer_reg__0[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \v_write_pointer[4]_i_1 
       (.I0(v_write_pointer_reg__0[0]),
        .I1(v_write_pointer_reg__0[3]),
        .I2(v_write_pointer_reg__0[1]),
        .I3(v_write_pointer_reg__0[2]),
        .I4(v_write_pointer_reg__0[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \v_write_pointer[5]_i_1 
       (.I0(v_write_pointer_reg__0[4]),
        .I1(v_write_pointer_reg__0[2]),
        .I2(v_write_pointer_reg__0[1]),
        .I3(v_write_pointer_reg__0[3]),
        .I4(v_write_pointer_reg__0[0]),
        .I5(v_write_pointer_reg__0[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \v_write_pointer[6]_i_1 
       (.I0(\v_write_pointer[8]_i_3_n_0 ),
        .I1(v_write_pointer_reg__0[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \v_write_pointer[7]_i_1 
       (.I0(v_write_pointer_reg__0[6]),
        .I1(\v_write_pointer[8]_i_3_n_0 ),
        .I2(v_write_pointer_reg__0[7]),
        .O(p_0_in[7]));
  LUT5 #(
    .INIT(32'h777F7777)) 
    \v_write_pointer[8]_i_1 
       (.I0(wr_ena),
        .I1(m00_axis_aresetn),
        .I2(wr_sync_d2),
        .I3(mst_wr_state_reg_n_0),
        .I4(wr_sync_d1),
        .O(\v_write_pointer[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hC6CC)) 
    \v_write_pointer[8]_i_2 
       (.I0(v_write_pointer_reg__0[7]),
        .I1(v_write_pointer_reg__0[8]),
        .I2(\v_write_pointer[8]_i_3_n_0 ),
        .I3(v_write_pointer_reg__0[6]),
        .O(p_0_in[8]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \v_write_pointer[8]_i_3 
       (.I0(v_write_pointer_reg__0[4]),
        .I1(v_write_pointer_reg__0[2]),
        .I2(v_write_pointer_reg__0[1]),
        .I3(v_write_pointer_reg__0[3]),
        .I4(v_write_pointer_reg__0[0]),
        .I5(v_write_pointer_reg__0[5]),
        .O(\v_write_pointer[8]_i_3_n_0 ));
  FDRE \v_write_pointer_reg[0] 
       (.C(m00_axis_aclk),
        .CE(data_fifo_reg_2_i_2_n_0),
        .D(\v_write_pointer[0]_i_1_n_0 ),
        .Q(v_write_pointer_reg__0[0]),
        .R(\v_write_pointer[8]_i_1_n_0 ));
  FDRE \v_write_pointer_reg[1] 
       (.C(m00_axis_aclk),
        .CE(data_fifo_reg_2_i_2_n_0),
        .D(p_0_in[1]),
        .Q(v_write_pointer_reg__0[1]),
        .R(\v_write_pointer[8]_i_1_n_0 ));
  FDRE \v_write_pointer_reg[2] 
       (.C(m00_axis_aclk),
        .CE(data_fifo_reg_2_i_2_n_0),
        .D(p_0_in[2]),
        .Q(v_write_pointer_reg__0[2]),
        .R(\v_write_pointer[8]_i_1_n_0 ));
  FDRE \v_write_pointer_reg[3] 
       (.C(m00_axis_aclk),
        .CE(data_fifo_reg_2_i_2_n_0),
        .D(p_0_in[3]),
        .Q(v_write_pointer_reg__0[3]),
        .R(\v_write_pointer[8]_i_1_n_0 ));
  FDRE \v_write_pointer_reg[4] 
       (.C(m00_axis_aclk),
        .CE(data_fifo_reg_2_i_2_n_0),
        .D(p_0_in[4]),
        .Q(v_write_pointer_reg__0[4]),
        .R(\v_write_pointer[8]_i_1_n_0 ));
  FDRE \v_write_pointer_reg[5] 
       (.C(m00_axis_aclk),
        .CE(data_fifo_reg_2_i_2_n_0),
        .D(p_0_in[5]),
        .Q(v_write_pointer_reg__0[5]),
        .R(\v_write_pointer[8]_i_1_n_0 ));
  FDRE \v_write_pointer_reg[6] 
       (.C(m00_axis_aclk),
        .CE(data_fifo_reg_2_i_2_n_0),
        .D(p_0_in[6]),
        .Q(v_write_pointer_reg__0[6]),
        .R(\v_write_pointer[8]_i_1_n_0 ));
  FDRE \v_write_pointer_reg[7] 
       (.C(m00_axis_aclk),
        .CE(data_fifo_reg_2_i_2_n_0),
        .D(p_0_in[7]),
        .Q(v_write_pointer_reg__0[7]),
        .R(\v_write_pointer[8]_i_1_n_0 ));
  FDRE \v_write_pointer_reg[8] 
       (.C(m00_axis_aclk),
        .CE(data_fifo_reg_2_i_2_n_0),
        .D(p_0_in[8]),
        .Q(v_write_pointer_reg__0[8]),
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
