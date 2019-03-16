// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Fri Nov  9 00:51:50 2018
// Host        : kdichpc running 64-bit Ubuntu 16.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ zsys_axi_dmac_0_0_sim_netlist.v
// Design      : zsys_axi_dmac_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ad_mem
   (m_dest_axi_wdata,
    E,
    m_dest_axi_aclk,
    s_axis_aclk,
    ADDRARDADDR,
    ADDRBWRADDR,
    src_mem_data,
    src_beat,
    dest_valid,
    m_dest_axi_wready,
    dest_mem_data_valid_reg);
  output [63:0]m_dest_axi_wdata;
  output [0:0]E;
  input m_dest_axi_aclk;
  input s_axis_aclk;
  input [6:0]ADDRARDADDR;
  input [6:0]ADDRBWRADDR;
  input [63:0]src_mem_data;
  input src_beat;
  input dest_valid;
  input m_dest_axi_wready;
  input dest_mem_data_valid_reg;

  wire [6:0]ADDRARDADDR;
  wire [6:0]ADDRBWRADDR;
  wire [0:0]E;
  wire dest_mem_data_valid_reg;
  wire dest_valid;
  wire m_dest_axi_aclk;
  wire [63:0]m_dest_axi_wdata;
  wire m_dest_axi_wready;
  wire s_axis_aclk;
  wire src_beat;
  wire [63:0]src_mem_data;
  wire NLW_m_ram_reg_CASCADEOUTA_UNCONNECTED;
  wire NLW_m_ram_reg_CASCADEOUTB_UNCONNECTED;
  wire NLW_m_ram_reg_DBITERR_UNCONNECTED;
  wire NLW_m_ram_reg_SBITERR_UNCONNECTED;
  wire [3:0]NLW_m_ram_reg_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_m_ram_reg_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_m_ram_reg_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_m_ram_reg_RDADDRECC_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d64" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d64" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "m_ram" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "511" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "63" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("SDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(72),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(72)) 
    m_ram_reg
       (.ADDRARDADDR({1'b1,1'b1,1'b1,ADDRARDADDR,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,ADDRBWRADDR,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_m_ram_reg_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_m_ram_reg_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(m_dest_axi_aclk),
        .CLKBWRCLK(s_axis_aclk),
        .DBITERR(NLW_m_ram_reg_DBITERR_UNCONNECTED),
        .DIADI(src_mem_data[31:0]),
        .DIBDI(src_mem_data[63:32]),
        .DIPADIP({1'b1,1'b1,1'b1,1'b1}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO(m_dest_axi_wdata[31:0]),
        .DOBDO(m_dest_axi_wdata[63:32]),
        .DOPADOP(NLW_m_ram_reg_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_m_ram_reg_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_m_ram_reg_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(E),
        .ENBWREN(1'b1),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_m_ram_reg_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_m_ram_reg_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({src_beat,src_beat,src_beat,src_beat,src_beat,src_beat,src_beat,src_beat}));
  LUT3 #(
    .INIT(8'h8A)) 
    m_ram_reg_i_1
       (.I0(dest_valid),
        .I1(m_dest_axi_wready),
        .I2(dest_mem_data_valid_reg),
        .O(E));
endmodule

(* ASYNC_CLK_DEST_REQ = "1'b0" *) (* ASYNC_CLK_REQ_SRC = "1'b0" *) (* ASYNC_CLK_SRC_DEST = "1'b0" *) 
(* AXI_ID_WIDTH_DEST = "4" *) (* AXI_ID_WIDTH_SRC = "4" *) (* AXI_SLICE_DEST = "1'b0" *) 
(* AXI_SLICE_SRC = "1'b0" *) (* BEATS_PER_BURST_LIMIT_DEST = "256" *) (* BEATS_PER_BURST_LIMIT_SRC = "1024" *) 
(* BYTES_PER_BEAT_WIDTH_DEST = "3" *) (* BYTES_PER_BEAT_WIDTH_SRC = "2" *) (* BYTES_PER_BURST_LIMIT = "2048" *) 
(* BYTES_PER_BURST_LIMIT_DEST = "2048" *) (* BYTES_PER_BURST_LIMIT_SRC = "4096" *) (* CYCLIC = "1'b0" *) 
(* DBG_ID_PADDING = "4" *) (* DISABLE_DEBUG_REGISTERS = "1'b0" *) (* DMA_2D_TRANSFER = "1'b0" *) 
(* DMA_AXI_ADDR_WIDTH = "32" *) (* DMA_AXI_PROTOCOL_DEST = "0" *) (* DMA_AXI_PROTOCOL_SRC = "1" *) 
(* DMA_DATA_WIDTH_DEST = "64" *) (* DMA_DATA_WIDTH_SRC = "32" *) (* DMA_LENGTH_ALIGN = "3" *) 
(* DMA_LENGTH_WIDTH = "24" *) (* DMA_TYPE_AXI_MM = "0" *) (* DMA_TYPE_AXI_STREAM = "1" *) 
(* DMA_TYPE_DEST = "0" *) (* DMA_TYPE_FIFO = "2" *) (* DMA_TYPE_SRC = "1" *) 
(* FIFO_SIZE = "8" *) (* HAS_DEST_ADDR = "1'b1" *) (* HAS_SRC_ADDR = "1'b0" *) 
(* ID = "0" *) (* ID_WIDTH = "4" *) (* MAX_BYTES_PER_BURST = "128" *) 
(* REAL_MAX_BYTES_PER_BURST = "128" *) (* SYNC_TRANSFER_START = "1'b0" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awvalid,
    s_axi_awaddr,
    s_axi_awready,
    s_axi_awprot,
    s_axi_wvalid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wready,
    s_axi_bvalid,
    s_axi_bresp,
    s_axi_bready,
    s_axi_arvalid,
    s_axi_araddr,
    s_axi_arready,
    s_axi_arprot,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_rresp,
    s_axi_rdata,
    irq,
    m_dest_axi_aclk,
    m_dest_axi_aresetn,
    m_dest_axi_awaddr,
    m_dest_axi_awlen,
    m_dest_axi_awsize,
    m_dest_axi_awburst,
    m_dest_axi_awprot,
    m_dest_axi_awcache,
    m_dest_axi_awvalid,
    m_dest_axi_awready,
    m_dest_axi_awid,
    m_dest_axi_awlock,
    m_dest_axi_wdata,
    m_dest_axi_wstrb,
    m_dest_axi_wready,
    m_dest_axi_wvalid,
    m_dest_axi_wlast,
    m_dest_axi_wid,
    m_dest_axi_bvalid,
    m_dest_axi_bresp,
    m_dest_axi_bready,
    m_dest_axi_bid,
    m_dest_axi_arvalid,
    m_dest_axi_araddr,
    m_dest_axi_arlen,
    m_dest_axi_arsize,
    m_dest_axi_arburst,
    m_dest_axi_arcache,
    m_dest_axi_arprot,
    m_dest_axi_arready,
    m_dest_axi_rvalid,
    m_dest_axi_rresp,
    m_dest_axi_rdata,
    m_dest_axi_rready,
    m_dest_axi_arid,
    m_dest_axi_arlock,
    m_dest_axi_rid,
    m_dest_axi_rlast,
    m_src_axi_aclk,
    m_src_axi_aresetn,
    m_src_axi_arready,
    m_src_axi_arvalid,
    m_src_axi_araddr,
    m_src_axi_arlen,
    m_src_axi_arsize,
    m_src_axi_arburst,
    m_src_axi_arprot,
    m_src_axi_arcache,
    m_src_axi_arid,
    m_src_axi_arlock,
    m_src_axi_rdata,
    m_src_axi_rready,
    m_src_axi_rvalid,
    m_src_axi_rresp,
    m_src_axi_rid,
    m_src_axi_rlast,
    m_src_axi_awvalid,
    m_src_axi_awaddr,
    m_src_axi_awlen,
    m_src_axi_awsize,
    m_src_axi_awburst,
    m_src_axi_awcache,
    m_src_axi_awprot,
    m_src_axi_awready,
    m_src_axi_wvalid,
    m_src_axi_wdata,
    m_src_axi_wstrb,
    m_src_axi_wlast,
    m_src_axi_wready,
    m_src_axi_bvalid,
    m_src_axi_bresp,
    m_src_axi_bready,
    m_src_axi_awid,
    m_src_axi_awlock,
    m_src_axi_wid,
    m_src_axi_bid,
    s_axis_aclk,
    s_axis_ready,
    s_axis_valid,
    s_axis_data,
    s_axis_user,
    s_axis_last,
    s_axis_xfer_req,
    m_axis_aclk,
    m_axis_ready,
    m_axis_valid,
    m_axis_data,
    m_axis_last,
    m_axis_xfer_req,
    fifo_wr_clk,
    fifo_wr_en,
    fifo_wr_din,
    fifo_wr_overflow,
    fifo_wr_sync,
    fifo_wr_xfer_req,
    fifo_rd_clk,
    fifo_rd_en,
    fifo_rd_valid,
    fifo_rd_dout,
    fifo_rd_underflow,
    fifo_rd_xfer_req);
  input s_axi_aclk;
  input s_axi_aresetn;
  input s_axi_awvalid;
  input [11:0]s_axi_awaddr;
  output s_axi_awready;
  input [2:0]s_axi_awprot;
  input s_axi_wvalid;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  output s_axi_wready;
  output s_axi_bvalid;
  output [1:0]s_axi_bresp;
  input s_axi_bready;
  input s_axi_arvalid;
  input [11:0]s_axi_araddr;
  output s_axi_arready;
  input [2:0]s_axi_arprot;
  output s_axi_rvalid;
  input s_axi_rready;
  output [1:0]s_axi_rresp;
  output [31:0]s_axi_rdata;
  output irq;
  input m_dest_axi_aclk;
  input m_dest_axi_aresetn;
  output [31:0]m_dest_axi_awaddr;
  output [7:0]m_dest_axi_awlen;
  output [2:0]m_dest_axi_awsize;
  output [1:0]m_dest_axi_awburst;
  output [2:0]m_dest_axi_awprot;
  output [3:0]m_dest_axi_awcache;
  output m_dest_axi_awvalid;
  input m_dest_axi_awready;
  output [3:0]m_dest_axi_awid;
  output [0:0]m_dest_axi_awlock;
  output [63:0]m_dest_axi_wdata;
  output [7:0]m_dest_axi_wstrb;
  input m_dest_axi_wready;
  output m_dest_axi_wvalid;
  output m_dest_axi_wlast;
  output [3:0]m_dest_axi_wid;
  input m_dest_axi_bvalid;
  input [1:0]m_dest_axi_bresp;
  output m_dest_axi_bready;
  input [3:0]m_dest_axi_bid;
  output m_dest_axi_arvalid;
  output [31:0]m_dest_axi_araddr;
  output [7:0]m_dest_axi_arlen;
  output [2:0]m_dest_axi_arsize;
  output [1:0]m_dest_axi_arburst;
  output [3:0]m_dest_axi_arcache;
  output [2:0]m_dest_axi_arprot;
  input m_dest_axi_arready;
  input m_dest_axi_rvalid;
  input [1:0]m_dest_axi_rresp;
  input [63:0]m_dest_axi_rdata;
  output m_dest_axi_rready;
  output [3:0]m_dest_axi_arid;
  output [0:0]m_dest_axi_arlock;
  input [3:0]m_dest_axi_rid;
  input m_dest_axi_rlast;
  input m_src_axi_aclk;
  input m_src_axi_aresetn;
  input m_src_axi_arready;
  output m_src_axi_arvalid;
  output [31:0]m_src_axi_araddr;
  output [3:0]m_src_axi_arlen;
  output [2:0]m_src_axi_arsize;
  output [1:0]m_src_axi_arburst;
  output [2:0]m_src_axi_arprot;
  output [3:0]m_src_axi_arcache;
  output [3:0]m_src_axi_arid;
  output [1:0]m_src_axi_arlock;
  input [31:0]m_src_axi_rdata;
  output m_src_axi_rready;
  input m_src_axi_rvalid;
  input [1:0]m_src_axi_rresp;
  input [3:0]m_src_axi_rid;
  input m_src_axi_rlast;
  output m_src_axi_awvalid;
  output [31:0]m_src_axi_awaddr;
  output [3:0]m_src_axi_awlen;
  output [2:0]m_src_axi_awsize;
  output [1:0]m_src_axi_awburst;
  output [3:0]m_src_axi_awcache;
  output [2:0]m_src_axi_awprot;
  input m_src_axi_awready;
  output m_src_axi_wvalid;
  output [31:0]m_src_axi_wdata;
  output [3:0]m_src_axi_wstrb;
  output m_src_axi_wlast;
  input m_src_axi_wready;
  input m_src_axi_bvalid;
  input [1:0]m_src_axi_bresp;
  output m_src_axi_bready;
  output [3:0]m_src_axi_awid;
  output [1:0]m_src_axi_awlock;
  output [3:0]m_src_axi_wid;
  input [3:0]m_src_axi_bid;
  input s_axis_aclk;
  output s_axis_ready;
  input s_axis_valid;
  input [31:0]s_axis_data;
  input [0:0]s_axis_user;
  input s_axis_last;
  output s_axis_xfer_req;
  input m_axis_aclk;
  input m_axis_ready;
  output m_axis_valid;
  output [63:0]m_axis_data;
  output m_axis_last;
  output m_axis_xfer_req;
  input fifo_wr_clk;
  input fifo_wr_en;
  input [31:0]fifo_wr_din;
  output fifo_wr_overflow;
  input fifo_wr_sync;
  output fifo_wr_xfer_req;
  input fifo_rd_clk;
  input fifo_rd_en;
  output fifo_rd_valid;
  output [63:0]fifo_rd_dout;
  output fifo_rd_underflow;
  output fifo_rd_xfer_req;

  wire \<const0> ;
  wire \<const1> ;
  wire ctrl_enable;
  wire ctrl_pause;
  wire [19:19]data8;
  wire [16:0]dbg_ids0;
  wire [27:0]dbg_ids1;
  wire [11:0]dbg_status;
  wire i_regmap_n_0;
  wire i_regmap_n_15;
  wire i_regmap_n_16;
  wire i_regmap_n_63;
  wire i_transfer_n_121;
  wire i_transfer_n_122;
  wire i_transfer_n_123;
  wire i_transfer_n_124;
  wire i_transfer_n_125;
  wire i_transfer_n_126;
  wire i_transfer_n_127;
  wire i_transfer_n_128;
  wire i_transfer_n_129;
  wire i_transfer_n_130;
  wire i_transfer_n_74;
  wire irq;
  wire m_dest_axi_aclk;
  wire [31:3]\^m_dest_axi_awaddr ;
  wire [3:0]\^m_dest_axi_awlen ;
  wire m_dest_axi_awready;
  wire m_dest_axi_awvalid;
  wire m_dest_axi_bready;
  wire m_dest_axi_bvalid;
  wire [63:0]m_dest_axi_wdata;
  wire m_dest_axi_wlast;
  wire m_dest_axi_wready;
  wire m_dest_axi_wvalid;
  wire p_0_in0_in;
  wire s_axi_aclk;
  wire [11:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [11:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire s_axis_aclk;
  wire [31:0]s_axis_data;
  wire s_axis_last;
  wire s_axis_ready;
  wire s_axis_valid;
  wire s_axis_xfer_req;
  wire [31:3]up_dma_dest_address;
  wire up_dma_last;
  wire up_dma_req_valid;
  wire [23:3]up_dma_x_length;
  wire up_req_eot;
  wire up_sot;

  assign fifo_rd_dout[63] = \<const0> ;
  assign fifo_rd_dout[62] = \<const0> ;
  assign fifo_rd_dout[61] = \<const0> ;
  assign fifo_rd_dout[60] = \<const0> ;
  assign fifo_rd_dout[59] = \<const0> ;
  assign fifo_rd_dout[58] = \<const0> ;
  assign fifo_rd_dout[57] = \<const0> ;
  assign fifo_rd_dout[56] = \<const0> ;
  assign fifo_rd_dout[55] = \<const0> ;
  assign fifo_rd_dout[54] = \<const0> ;
  assign fifo_rd_dout[53] = \<const0> ;
  assign fifo_rd_dout[52] = \<const0> ;
  assign fifo_rd_dout[51] = \<const0> ;
  assign fifo_rd_dout[50] = \<const0> ;
  assign fifo_rd_dout[49] = \<const0> ;
  assign fifo_rd_dout[48] = \<const0> ;
  assign fifo_rd_dout[47] = \<const0> ;
  assign fifo_rd_dout[46] = \<const0> ;
  assign fifo_rd_dout[45] = \<const0> ;
  assign fifo_rd_dout[44] = \<const0> ;
  assign fifo_rd_dout[43] = \<const0> ;
  assign fifo_rd_dout[42] = \<const0> ;
  assign fifo_rd_dout[41] = \<const0> ;
  assign fifo_rd_dout[40] = \<const0> ;
  assign fifo_rd_dout[39] = \<const0> ;
  assign fifo_rd_dout[38] = \<const0> ;
  assign fifo_rd_dout[37] = \<const0> ;
  assign fifo_rd_dout[36] = \<const0> ;
  assign fifo_rd_dout[35] = \<const0> ;
  assign fifo_rd_dout[34] = \<const0> ;
  assign fifo_rd_dout[33] = \<const0> ;
  assign fifo_rd_dout[32] = \<const0> ;
  assign fifo_rd_dout[31] = \<const0> ;
  assign fifo_rd_dout[30] = \<const0> ;
  assign fifo_rd_dout[29] = \<const0> ;
  assign fifo_rd_dout[28] = \<const0> ;
  assign fifo_rd_dout[27] = \<const0> ;
  assign fifo_rd_dout[26] = \<const0> ;
  assign fifo_rd_dout[25] = \<const0> ;
  assign fifo_rd_dout[24] = \<const0> ;
  assign fifo_rd_dout[23] = \<const0> ;
  assign fifo_rd_dout[22] = \<const0> ;
  assign fifo_rd_dout[21] = \<const0> ;
  assign fifo_rd_dout[20] = \<const0> ;
  assign fifo_rd_dout[19] = \<const0> ;
  assign fifo_rd_dout[18] = \<const0> ;
  assign fifo_rd_dout[17] = \<const0> ;
  assign fifo_rd_dout[16] = \<const0> ;
  assign fifo_rd_dout[15] = \<const0> ;
  assign fifo_rd_dout[14] = \<const0> ;
  assign fifo_rd_dout[13] = \<const0> ;
  assign fifo_rd_dout[12] = \<const0> ;
  assign fifo_rd_dout[11] = \<const0> ;
  assign fifo_rd_dout[10] = \<const0> ;
  assign fifo_rd_dout[9] = \<const0> ;
  assign fifo_rd_dout[8] = \<const0> ;
  assign fifo_rd_dout[7] = \<const0> ;
  assign fifo_rd_dout[6] = \<const0> ;
  assign fifo_rd_dout[5] = \<const0> ;
  assign fifo_rd_dout[4] = \<const0> ;
  assign fifo_rd_dout[3] = \<const0> ;
  assign fifo_rd_dout[2] = \<const0> ;
  assign fifo_rd_dout[1] = \<const0> ;
  assign fifo_rd_dout[0] = \<const0> ;
  assign fifo_rd_underflow = \<const0> ;
  assign fifo_rd_valid = \<const0> ;
  assign fifo_rd_xfer_req = \<const0> ;
  assign fifo_wr_overflow = \<const0> ;
  assign fifo_wr_xfer_req = \<const0> ;
  assign m_axis_data[63] = \<const0> ;
  assign m_axis_data[62] = \<const0> ;
  assign m_axis_data[61] = \<const0> ;
  assign m_axis_data[60] = \<const0> ;
  assign m_axis_data[59] = \<const0> ;
  assign m_axis_data[58] = \<const0> ;
  assign m_axis_data[57] = \<const0> ;
  assign m_axis_data[56] = \<const0> ;
  assign m_axis_data[55] = \<const0> ;
  assign m_axis_data[54] = \<const0> ;
  assign m_axis_data[53] = \<const0> ;
  assign m_axis_data[52] = \<const0> ;
  assign m_axis_data[51] = \<const0> ;
  assign m_axis_data[50] = \<const0> ;
  assign m_axis_data[49] = \<const0> ;
  assign m_axis_data[48] = \<const0> ;
  assign m_axis_data[47] = \<const0> ;
  assign m_axis_data[46] = \<const0> ;
  assign m_axis_data[45] = \<const0> ;
  assign m_axis_data[44] = \<const0> ;
  assign m_axis_data[43] = \<const0> ;
  assign m_axis_data[42] = \<const0> ;
  assign m_axis_data[41] = \<const0> ;
  assign m_axis_data[40] = \<const0> ;
  assign m_axis_data[39] = \<const0> ;
  assign m_axis_data[38] = \<const0> ;
  assign m_axis_data[37] = \<const0> ;
  assign m_axis_data[36] = \<const0> ;
  assign m_axis_data[35] = \<const0> ;
  assign m_axis_data[34] = \<const0> ;
  assign m_axis_data[33] = \<const0> ;
  assign m_axis_data[32] = \<const0> ;
  assign m_axis_data[31] = \<const0> ;
  assign m_axis_data[30] = \<const0> ;
  assign m_axis_data[29] = \<const0> ;
  assign m_axis_data[28] = \<const0> ;
  assign m_axis_data[27] = \<const0> ;
  assign m_axis_data[26] = \<const0> ;
  assign m_axis_data[25] = \<const0> ;
  assign m_axis_data[24] = \<const0> ;
  assign m_axis_data[23] = \<const0> ;
  assign m_axis_data[22] = \<const0> ;
  assign m_axis_data[21] = \<const0> ;
  assign m_axis_data[20] = \<const0> ;
  assign m_axis_data[19] = \<const0> ;
  assign m_axis_data[18] = \<const0> ;
  assign m_axis_data[17] = \<const0> ;
  assign m_axis_data[16] = \<const0> ;
  assign m_axis_data[15] = \<const0> ;
  assign m_axis_data[14] = \<const0> ;
  assign m_axis_data[13] = \<const0> ;
  assign m_axis_data[12] = \<const0> ;
  assign m_axis_data[11] = \<const0> ;
  assign m_axis_data[10] = \<const0> ;
  assign m_axis_data[9] = \<const0> ;
  assign m_axis_data[8] = \<const0> ;
  assign m_axis_data[7] = \<const0> ;
  assign m_axis_data[6] = \<const0> ;
  assign m_axis_data[5] = \<const0> ;
  assign m_axis_data[4] = \<const0> ;
  assign m_axis_data[3] = \<const0> ;
  assign m_axis_data[2] = \<const0> ;
  assign m_axis_data[1] = \<const0> ;
  assign m_axis_data[0] = \<const0> ;
  assign m_axis_last = \<const0> ;
  assign m_axis_valid = \<const0> ;
  assign m_axis_xfer_req = \<const0> ;
  assign m_dest_axi_araddr[31] = \<const0> ;
  assign m_dest_axi_araddr[30] = \<const0> ;
  assign m_dest_axi_araddr[29] = \<const0> ;
  assign m_dest_axi_araddr[28] = \<const0> ;
  assign m_dest_axi_araddr[27] = \<const0> ;
  assign m_dest_axi_araddr[26] = \<const0> ;
  assign m_dest_axi_araddr[25] = \<const0> ;
  assign m_dest_axi_araddr[24] = \<const0> ;
  assign m_dest_axi_araddr[23] = \<const0> ;
  assign m_dest_axi_araddr[22] = \<const0> ;
  assign m_dest_axi_araddr[21] = \<const0> ;
  assign m_dest_axi_araddr[20] = \<const0> ;
  assign m_dest_axi_araddr[19] = \<const0> ;
  assign m_dest_axi_araddr[18] = \<const0> ;
  assign m_dest_axi_araddr[17] = \<const0> ;
  assign m_dest_axi_araddr[16] = \<const0> ;
  assign m_dest_axi_araddr[15] = \<const0> ;
  assign m_dest_axi_araddr[14] = \<const0> ;
  assign m_dest_axi_araddr[13] = \<const0> ;
  assign m_dest_axi_araddr[12] = \<const0> ;
  assign m_dest_axi_araddr[11] = \<const0> ;
  assign m_dest_axi_araddr[10] = \<const0> ;
  assign m_dest_axi_araddr[9] = \<const0> ;
  assign m_dest_axi_araddr[8] = \<const0> ;
  assign m_dest_axi_araddr[7] = \<const0> ;
  assign m_dest_axi_araddr[6] = \<const0> ;
  assign m_dest_axi_araddr[5] = \<const0> ;
  assign m_dest_axi_araddr[4] = \<const0> ;
  assign m_dest_axi_araddr[3] = \<const0> ;
  assign m_dest_axi_araddr[2] = \<const0> ;
  assign m_dest_axi_araddr[1] = \<const0> ;
  assign m_dest_axi_araddr[0] = \<const0> ;
  assign m_dest_axi_arburst[1] = \<const0> ;
  assign m_dest_axi_arburst[0] = \<const0> ;
  assign m_dest_axi_arcache[3] = \<const0> ;
  assign m_dest_axi_arcache[2] = \<const0> ;
  assign m_dest_axi_arcache[1] = \<const0> ;
  assign m_dest_axi_arcache[0] = \<const0> ;
  assign m_dest_axi_arid[3] = \<const0> ;
  assign m_dest_axi_arid[2] = \<const0> ;
  assign m_dest_axi_arid[1] = \<const0> ;
  assign m_dest_axi_arid[0] = \<const0> ;
  assign m_dest_axi_arlen[7] = \<const0> ;
  assign m_dest_axi_arlen[6] = \<const0> ;
  assign m_dest_axi_arlen[5] = \<const0> ;
  assign m_dest_axi_arlen[4] = \<const0> ;
  assign m_dest_axi_arlen[3] = \<const0> ;
  assign m_dest_axi_arlen[2] = \<const0> ;
  assign m_dest_axi_arlen[1] = \<const0> ;
  assign m_dest_axi_arlen[0] = \<const0> ;
  assign m_dest_axi_arlock[0] = \<const0> ;
  assign m_dest_axi_arprot[2] = \<const0> ;
  assign m_dest_axi_arprot[1] = \<const0> ;
  assign m_dest_axi_arprot[0] = \<const0> ;
  assign m_dest_axi_arsize[2] = \<const0> ;
  assign m_dest_axi_arsize[1] = \<const0> ;
  assign m_dest_axi_arsize[0] = \<const0> ;
  assign m_dest_axi_arvalid = \<const0> ;
  assign m_dest_axi_awaddr[31:3] = \^m_dest_axi_awaddr [31:3];
  assign m_dest_axi_awaddr[2] = \<const0> ;
  assign m_dest_axi_awaddr[1] = \<const0> ;
  assign m_dest_axi_awaddr[0] = \<const0> ;
  assign m_dest_axi_awburst[1] = \<const0> ;
  assign m_dest_axi_awburst[0] = \<const1> ;
  assign m_dest_axi_awcache[3] = \<const0> ;
  assign m_dest_axi_awcache[2] = \<const0> ;
  assign m_dest_axi_awcache[1] = \<const1> ;
  assign m_dest_axi_awcache[0] = \<const1> ;
  assign m_dest_axi_awid[3] = \<const0> ;
  assign m_dest_axi_awid[2] = \<const0> ;
  assign m_dest_axi_awid[1] = \<const0> ;
  assign m_dest_axi_awid[0] = \<const0> ;
  assign m_dest_axi_awlen[7] = \<const0> ;
  assign m_dest_axi_awlen[6] = \<const0> ;
  assign m_dest_axi_awlen[5] = \<const0> ;
  assign m_dest_axi_awlen[4] = \<const0> ;
  assign m_dest_axi_awlen[3:0] = \^m_dest_axi_awlen [3:0];
  assign m_dest_axi_awlock[0] = \<const0> ;
  assign m_dest_axi_awprot[2] = \<const0> ;
  assign m_dest_axi_awprot[1] = \<const0> ;
  assign m_dest_axi_awprot[0] = \<const0> ;
  assign m_dest_axi_awsize[2] = \<const0> ;
  assign m_dest_axi_awsize[1] = \<const1> ;
  assign m_dest_axi_awsize[0] = \<const1> ;
  assign m_dest_axi_rready = \<const0> ;
  assign m_dest_axi_wid[3] = \<const0> ;
  assign m_dest_axi_wid[2] = \<const0> ;
  assign m_dest_axi_wid[1] = \<const0> ;
  assign m_dest_axi_wid[0] = \<const0> ;
  assign m_dest_axi_wstrb[7] = \<const1> ;
  assign m_dest_axi_wstrb[6] = \<const1> ;
  assign m_dest_axi_wstrb[5] = \<const1> ;
  assign m_dest_axi_wstrb[4] = \<const1> ;
  assign m_dest_axi_wstrb[3] = \<const1> ;
  assign m_dest_axi_wstrb[2] = \<const1> ;
  assign m_dest_axi_wstrb[1] = \<const1> ;
  assign m_dest_axi_wstrb[0] = \<const1> ;
  assign m_src_axi_araddr[31] = \<const0> ;
  assign m_src_axi_araddr[30] = \<const0> ;
  assign m_src_axi_araddr[29] = \<const0> ;
  assign m_src_axi_araddr[28] = \<const0> ;
  assign m_src_axi_araddr[27] = \<const0> ;
  assign m_src_axi_araddr[26] = \<const0> ;
  assign m_src_axi_araddr[25] = \<const0> ;
  assign m_src_axi_araddr[24] = \<const0> ;
  assign m_src_axi_araddr[23] = \<const0> ;
  assign m_src_axi_araddr[22] = \<const0> ;
  assign m_src_axi_araddr[21] = \<const0> ;
  assign m_src_axi_araddr[20] = \<const0> ;
  assign m_src_axi_araddr[19] = \<const0> ;
  assign m_src_axi_araddr[18] = \<const0> ;
  assign m_src_axi_araddr[17] = \<const0> ;
  assign m_src_axi_araddr[16] = \<const0> ;
  assign m_src_axi_araddr[15] = \<const0> ;
  assign m_src_axi_araddr[14] = \<const0> ;
  assign m_src_axi_araddr[13] = \<const0> ;
  assign m_src_axi_araddr[12] = \<const0> ;
  assign m_src_axi_araddr[11] = \<const0> ;
  assign m_src_axi_araddr[10] = \<const0> ;
  assign m_src_axi_araddr[9] = \<const0> ;
  assign m_src_axi_araddr[8] = \<const0> ;
  assign m_src_axi_araddr[7] = \<const0> ;
  assign m_src_axi_araddr[6] = \<const0> ;
  assign m_src_axi_araddr[5] = \<const0> ;
  assign m_src_axi_araddr[4] = \<const0> ;
  assign m_src_axi_araddr[3] = \<const0> ;
  assign m_src_axi_araddr[2] = \<const0> ;
  assign m_src_axi_araddr[1] = \<const0> ;
  assign m_src_axi_araddr[0] = \<const0> ;
  assign m_src_axi_arburst[1] = \<const0> ;
  assign m_src_axi_arburst[0] = \<const0> ;
  assign m_src_axi_arcache[3] = \<const0> ;
  assign m_src_axi_arcache[2] = \<const0> ;
  assign m_src_axi_arcache[1] = \<const0> ;
  assign m_src_axi_arcache[0] = \<const0> ;
  assign m_src_axi_arid[3] = \<const0> ;
  assign m_src_axi_arid[2] = \<const0> ;
  assign m_src_axi_arid[1] = \<const0> ;
  assign m_src_axi_arid[0] = \<const0> ;
  assign m_src_axi_arlen[3] = \<const0> ;
  assign m_src_axi_arlen[2] = \<const0> ;
  assign m_src_axi_arlen[1] = \<const0> ;
  assign m_src_axi_arlen[0] = \<const0> ;
  assign m_src_axi_arlock[1] = \<const0> ;
  assign m_src_axi_arlock[0] = \<const0> ;
  assign m_src_axi_arprot[2] = \<const0> ;
  assign m_src_axi_arprot[1] = \<const0> ;
  assign m_src_axi_arprot[0] = \<const0> ;
  assign m_src_axi_arsize[2] = \<const0> ;
  assign m_src_axi_arsize[1] = \<const0> ;
  assign m_src_axi_arsize[0] = \<const0> ;
  assign m_src_axi_arvalid = \<const0> ;
  assign m_src_axi_awaddr[31] = \<const0> ;
  assign m_src_axi_awaddr[30] = \<const0> ;
  assign m_src_axi_awaddr[29] = \<const0> ;
  assign m_src_axi_awaddr[28] = \<const0> ;
  assign m_src_axi_awaddr[27] = \<const0> ;
  assign m_src_axi_awaddr[26] = \<const0> ;
  assign m_src_axi_awaddr[25] = \<const0> ;
  assign m_src_axi_awaddr[24] = \<const0> ;
  assign m_src_axi_awaddr[23] = \<const0> ;
  assign m_src_axi_awaddr[22] = \<const0> ;
  assign m_src_axi_awaddr[21] = \<const0> ;
  assign m_src_axi_awaddr[20] = \<const0> ;
  assign m_src_axi_awaddr[19] = \<const0> ;
  assign m_src_axi_awaddr[18] = \<const0> ;
  assign m_src_axi_awaddr[17] = \<const0> ;
  assign m_src_axi_awaddr[16] = \<const0> ;
  assign m_src_axi_awaddr[15] = \<const0> ;
  assign m_src_axi_awaddr[14] = \<const0> ;
  assign m_src_axi_awaddr[13] = \<const0> ;
  assign m_src_axi_awaddr[12] = \<const0> ;
  assign m_src_axi_awaddr[11] = \<const0> ;
  assign m_src_axi_awaddr[10] = \<const0> ;
  assign m_src_axi_awaddr[9] = \<const0> ;
  assign m_src_axi_awaddr[8] = \<const0> ;
  assign m_src_axi_awaddr[7] = \<const0> ;
  assign m_src_axi_awaddr[6] = \<const0> ;
  assign m_src_axi_awaddr[5] = \<const0> ;
  assign m_src_axi_awaddr[4] = \<const0> ;
  assign m_src_axi_awaddr[3] = \<const0> ;
  assign m_src_axi_awaddr[2] = \<const0> ;
  assign m_src_axi_awaddr[1] = \<const0> ;
  assign m_src_axi_awaddr[0] = \<const0> ;
  assign m_src_axi_awburst[1] = \<const0> ;
  assign m_src_axi_awburst[0] = \<const0> ;
  assign m_src_axi_awcache[3] = \<const0> ;
  assign m_src_axi_awcache[2] = \<const0> ;
  assign m_src_axi_awcache[1] = \<const0> ;
  assign m_src_axi_awcache[0] = \<const0> ;
  assign m_src_axi_awid[3] = \<const0> ;
  assign m_src_axi_awid[2] = \<const0> ;
  assign m_src_axi_awid[1] = \<const0> ;
  assign m_src_axi_awid[0] = \<const0> ;
  assign m_src_axi_awlen[3] = \<const0> ;
  assign m_src_axi_awlen[2] = \<const0> ;
  assign m_src_axi_awlen[1] = \<const0> ;
  assign m_src_axi_awlen[0] = \<const0> ;
  assign m_src_axi_awlock[1] = \<const0> ;
  assign m_src_axi_awlock[0] = \<const0> ;
  assign m_src_axi_awprot[2] = \<const0> ;
  assign m_src_axi_awprot[1] = \<const0> ;
  assign m_src_axi_awprot[0] = \<const0> ;
  assign m_src_axi_awsize[2] = \<const0> ;
  assign m_src_axi_awsize[1] = \<const0> ;
  assign m_src_axi_awsize[0] = \<const0> ;
  assign m_src_axi_awvalid = \<const0> ;
  assign m_src_axi_bready = \<const0> ;
  assign m_src_axi_rready = \<const0> ;
  assign m_src_axi_wdata[31] = \<const0> ;
  assign m_src_axi_wdata[30] = \<const0> ;
  assign m_src_axi_wdata[29] = \<const0> ;
  assign m_src_axi_wdata[28] = \<const0> ;
  assign m_src_axi_wdata[27] = \<const0> ;
  assign m_src_axi_wdata[26] = \<const0> ;
  assign m_src_axi_wdata[25] = \<const0> ;
  assign m_src_axi_wdata[24] = \<const0> ;
  assign m_src_axi_wdata[23] = \<const0> ;
  assign m_src_axi_wdata[22] = \<const0> ;
  assign m_src_axi_wdata[21] = \<const0> ;
  assign m_src_axi_wdata[20] = \<const0> ;
  assign m_src_axi_wdata[19] = \<const0> ;
  assign m_src_axi_wdata[18] = \<const0> ;
  assign m_src_axi_wdata[17] = \<const0> ;
  assign m_src_axi_wdata[16] = \<const0> ;
  assign m_src_axi_wdata[15] = \<const0> ;
  assign m_src_axi_wdata[14] = \<const0> ;
  assign m_src_axi_wdata[13] = \<const0> ;
  assign m_src_axi_wdata[12] = \<const0> ;
  assign m_src_axi_wdata[11] = \<const0> ;
  assign m_src_axi_wdata[10] = \<const0> ;
  assign m_src_axi_wdata[9] = \<const0> ;
  assign m_src_axi_wdata[8] = \<const0> ;
  assign m_src_axi_wdata[7] = \<const0> ;
  assign m_src_axi_wdata[6] = \<const0> ;
  assign m_src_axi_wdata[5] = \<const0> ;
  assign m_src_axi_wdata[4] = \<const0> ;
  assign m_src_axi_wdata[3] = \<const0> ;
  assign m_src_axi_wdata[2] = \<const0> ;
  assign m_src_axi_wdata[1] = \<const0> ;
  assign m_src_axi_wdata[0] = \<const0> ;
  assign m_src_axi_wid[3] = \<const0> ;
  assign m_src_axi_wid[2] = \<const0> ;
  assign m_src_axi_wid[1] = \<const0> ;
  assign m_src_axi_wid[0] = \<const0> ;
  assign m_src_axi_wlast = \<const0> ;
  assign m_src_axi_wstrb[3] = \<const0> ;
  assign m_src_axi_wstrb[2] = \<const0> ;
  assign m_src_axi_wstrb[1] = \<const0> ;
  assign m_src_axi_wstrb[0] = \<const0> ;
  assign m_src_axi_wvalid = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac_regmap i_regmap
       (.D({up_dma_x_length[6:3],up_dma_last}),
        .Q(up_dma_dest_address),
        .\address_reg[0] (i_transfer_n_122),
        .ctrl_enable(ctrl_enable),
        .ctrl_pause(ctrl_pause),
        .dbg_ids0({dbg_ids0[16],dbg_ids0[9],dbg_ids0[1:0]}),
        .dbg_ids1({dbg_ids1[27:24],dbg_ids1[3:0]}),
        .dbg_status({dbg_status[11],dbg_status[5:4],dbg_status[1:0]}),
        .\dest_id_reg[1] (i_transfer_n_126),
        .\dest_id_reg[3] ({data8,p_0_in0_in}),
        .\id_reg[0] (i_transfer_n_127),
        .\id_reg[1] (i_transfer_n_128),
        .\id_reg[2] (i_transfer_n_121),
        .\id_reg[3] (i_transfer_n_129),
        .irq(irq),
        .m_dest_axi_awaddr({\^m_dest_axi_awaddr [31:28],\^m_dest_axi_awaddr [23:18],\^m_dest_axi_awaddr [16:12],\^m_dest_axi_awaddr [9],\^m_dest_axi_awaddr [7:4]}),
        .needs_reset_reg(i_regmap_n_63),
        .needs_reset_reg_0(i_transfer_n_125),
        .\reset_gen[0].reset_sync_reg[0] (i_transfer_n_74),
        .\reset_gen[0].reset_sync_reg[0]_0 (i_transfer_n_124),
        .\reset_gen[0].reset_sync_reg[0]_1 (i_transfer_n_123),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[10:2]),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[10:2]),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid),
        .\src_id_reg[2] (i_transfer_n_130),
        .up_dma_req_valid(up_dma_req_valid),
        .\up_rdata_d_reg[31] (i_regmap_n_0),
        .\up_rdata_reg[23]_0 (up_dma_x_length[23:7]),
        .\up_rdata_reg[9]_0 (i_regmap_n_15),
        .\up_rdata_reg[9]_1 (i_regmap_n_16),
        .up_req_eot(up_req_eot),
        .up_sot(up_sot));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac_transfer i_transfer
       (.D(up_dma_dest_address),
        .Q(i_transfer_n_74),
        .SR(i_regmap_n_0),
        .ctrl_enable(ctrl_enable),
        .ctrl_enable_reg(i_regmap_n_63),
        .ctrl_pause(ctrl_pause),
        .dbg_ids1({dbg_ids1[27:24],dbg_ids1[3:0]}),
        .m_dest_axi_aclk(m_dest_axi_aclk),
        .m_dest_axi_awaddr(\^m_dest_axi_awaddr ),
        .m_dest_axi_awlen(\^m_dest_axi_awlen ),
        .m_dest_axi_awready(m_dest_axi_awready),
        .m_dest_axi_awvalid(m_dest_axi_awvalid),
        .m_dest_axi_bready(m_dest_axi_bready),
        .m_dest_axi_bvalid(m_dest_axi_bvalid),
        .m_dest_axi_wdata(m_dest_axi_wdata),
        .m_dest_axi_wlast(m_dest_axi_wlast),
        .m_dest_axi_wready(m_dest_axi_wready),
        .m_dest_axi_wvalid(m_dest_axi_wvalid),
        .m_ram_reg({dbg_ids0[16],dbg_ids0[9],dbg_ids0[1:0]}),
        .s_axi_aclk(s_axi_aclk),
        .s_axis_aclk(s_axis_aclk),
        .s_axis_data(s_axis_data),
        .s_axis_last(s_axis_last),
        .s_axis_ready(s_axis_ready),
        .s_axis_valid(s_axis_valid),
        .s_axis_xfer_req(s_axis_xfer_req),
        .\src_throttled_request_id_reg[0] ({data8,p_0_in0_in}),
        .\state_reg[0] ({dbg_status[11],dbg_status[5:4],dbg_status[1:0]}),
        .up_dma_last_reg(up_dma_last),
        .up_dma_req_valid(up_dma_req_valid),
        .up_dma_x_length(up_dma_x_length),
        .\up_raddr_int_reg[2] (i_regmap_n_15),
        .\up_raddr_int_reg[2]_0 (i_regmap_n_16),
        .\up_rdata_reg[10] (i_transfer_n_124),
        .\up_rdata_reg[11] (i_transfer_n_125),
        .\up_rdata_reg[17] (i_transfer_n_126),
        .\up_rdata_reg[24] (i_transfer_n_127),
        .\up_rdata_reg[25] (i_transfer_n_128),
        .\up_rdata_reg[26] (i_transfer_n_121),
        .\up_rdata_reg[27] (i_transfer_n_129),
        .\up_rdata_reg[2] (i_transfer_n_130),
        .\up_rdata_reg[3] (i_transfer_n_122),
        .\up_rdata_reg[8] (i_transfer_n_123),
        .up_req_eot(up_req_eot),
        .up_sot(up_sot));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac_burst_memory
   (m_dest_axi_wdata,
    Q,
    \src_throttled_request_id_reg[0] ,
    m_dest_axi_wvalid,
    m_dest_axi_wlast,
    E,
    addr_valid_reg,
    \up_rdata_reg[17] ,
    \up_rdata_reg[2] ,
    p_1_out0,
    m_dest_axi_aclk,
    s_axis_aclk,
    \id_reg[3] ,
    src_last,
    \reset_gen[0].reset_sync_reg[0] ,
    pending_burst_reg,
    m_dest_axi_wready,
    \id_reg[1] ,
    \src_throttled_request_id_reg[3] ,
    \src_throttled_request_id_reg[3]_0 ,
    \up_raddr_int_reg[2] ,
    m_dest_axi_awaddr,
    \up_raddr_int_reg[2]_0 ,
    \state_reg[2] ,
    s_axis_valid,
    transfer_abort_reg,
    active_reg,
    pending_burst,
    s_axis_data);
  output [63:0]m_dest_axi_wdata;
  output [2:0]Q;
  output [2:0]\src_throttled_request_id_reg[0] ;
  output m_dest_axi_wvalid;
  output m_dest_axi_wlast;
  output [0:0]E;
  output addr_valid_reg;
  output \up_rdata_reg[17] ;
  output \up_rdata_reg[2] ;
  output p_1_out0;
  input m_dest_axi_aclk;
  input s_axis_aclk;
  input [2:0]\id_reg[3] ;
  input src_last;
  input [0:0]\reset_gen[0].reset_sync_reg[0] ;
  input pending_burst_reg;
  input m_dest_axi_wready;
  input \id_reg[1] ;
  input [3:0]\src_throttled_request_id_reg[3] ;
  input \src_throttled_request_id_reg[3]_0 ;
  input \up_raddr_int_reg[2] ;
  input [0:0]m_dest_axi_awaddr;
  input \up_raddr_int_reg[2]_0 ;
  input [0:0]\state_reg[2] ;
  input s_axis_valid;
  input transfer_abort_reg;
  input active_reg;
  input pending_burst;
  input [31:0]s_axis_data;

  wire [0:0]E;
  wire [2:0]Q;
  wire active_reg;
  wire addr_valid_reg;
  wire b2g1_return013_out;
  wire b2g1_return015_out;
  wire [17:2]dbg_ids0;
  wire dest_beat;
  wire [3:0]dest_beat_counter_reg__0;
  wire [3:0]dest_burst_len;
  wire [3:0]dest_burst_len0;
  wire dest_burst_ready;
  wire dest_burst_valid;
  wire \dest_id_next[0]_i_1_n_0 ;
  wire \dest_id_next[3]_i_4_n_0 ;
  wire \dest_id_next_reg_n_0_[2] ;
  wire dest_id_reduced_msb;
  wire dest_id_reduced_msb_next;
  wire dest_id_reduced_msb_next_i_1_n_0;
  wire [1:0]dest_id_reduced_next;
  wire dest_last;
  wire dest_mem_data_last_i_1_n_0;
  wire dest_mem_data_last_i_3_n_0;
  wire dest_mem_data_valid_i_1_n_0;
  wire dest_valid;
  wire dest_valid_i_1_n_0;
  wire i_resize_src_n_5;
  wire id0;
  wire \id_reg[1] ;
  wire [2:0]\id_reg[3] ;
  wire m_dest_axi_aclk;
  wire [0:0]m_dest_axi_awaddr;
  wire [63:0]m_dest_axi_wdata;
  wire m_dest_axi_wlast;
  wire m_dest_axi_wready;
  wire m_dest_axi_wvalid;
  wire p_0_in17_in;
  wire [3:0]p_0_in__0;
  wire [3:0]p_0_in__1;
  wire p_1_in14_in;
  wire p_1_out0;
  wire pending_burst;
  wire pending_burst_reg;
  wire [0:0]\reset_gen[0].reset_sync_reg[0] ;
  wire s_axis_aclk;
  wire [31:0]s_axis_data;
  wire s_axis_valid;
  wire src_beat;
  wire [3:0]src_beat_counter_reg__0;
  wire [3:0]src_id_next;
  wire src_id_reduced_msb;
  wire src_last;
  wire src_last_beat;
  wire [63:0]src_mem_data;
  wire \src_throttled_request_id[3]_i_3_n_0 ;
  wire [2:0]\src_throttled_request_id_reg[0] ;
  wire [3:0]\src_throttled_request_id_reg[3] ;
  wire \src_throttled_request_id_reg[3]_0 ;
  wire [0:0]\state_reg[2] ;
  wire transfer_abort_reg;
  wire \up_raddr_int_reg[2] ;
  wire \up_raddr_int_reg[2]_0 ;
  wire \up_rdata_reg[17] ;
  wire \up_rdata_reg[2] ;
  wire [1:0]NLW_burst_len_mem_reg_0_7_0_3_DOC_UNCONNECTED;
  wire [1:0]NLW_burst_len_mem_reg_0_7_0_3_DOD_UNCONNECTED;

  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    addr_valid_i_3
       (.I0(Q[0]),
        .I1(\id_reg[3] [0]),
        .I2(\id_reg[1] ),
        .I3(Q[1]),
        .I4(dbg_ids0[2]),
        .I5(\id_reg[3] [1]),
        .O(addr_valid_reg));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M burst_len_mem_reg_0_7_0_3
       (.ADDRA({1'b0,1'b0,dest_id_reduced_msb_next,dest_id_reduced_next}),
        .ADDRB({1'b0,1'b0,dest_id_reduced_msb_next,dest_id_reduced_next}),
        .ADDRC({1'b0,1'b0,dest_id_reduced_msb_next,dest_id_reduced_next}),
        .ADDRD({1'b0,1'b0,src_id_reduced_msb,Q[1:0]}),
        .DIA(src_beat_counter_reg__0[1:0]),
        .DIB(src_beat_counter_reg__0[3:2]),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(dest_burst_len0[1:0]),
        .DOB(dest_burst_len0[3:2]),
        .DOC(NLW_burst_len_mem_reg_0_7_0_3_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_burst_len_mem_reg_0_7_0_3_DOD_UNCONNECTED[1:0]),
        .WCLK(s_axis_aclk),
        .WE(src_last_beat));
  LUT1 #(
    .INIT(2'h1)) 
    \dest_beat_counter[0]_i_1 
       (.I0(dest_beat_counter_reg__0[0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \dest_beat_counter[1]_i_1 
       (.I0(dest_beat_counter_reg__0[0]),
        .I1(dest_beat_counter_reg__0[1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \dest_beat_counter[2]_i_1 
       (.I0(dest_beat_counter_reg__0[2]),
        .I1(dest_beat_counter_reg__0[1]),
        .I2(dest_beat_counter_reg__0[0]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \dest_beat_counter[3]_i_1 
       (.I0(dest_beat_counter_reg__0[3]),
        .I1(dest_beat_counter_reg__0[0]),
        .I2(dest_beat_counter_reg__0[1]),
        .I3(dest_beat_counter_reg__0[2]),
        .O(p_0_in__1[3]));
  FDRE #(
    .INIT(1'b0)) 
    \dest_beat_counter_reg[0] 
       (.C(m_dest_axi_aclk),
        .CE(dest_beat),
        .D(p_0_in__1[0]),
        .Q(dest_beat_counter_reg__0[0]),
        .R(\reset_gen[0].reset_sync_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \dest_beat_counter_reg[1] 
       (.C(m_dest_axi_aclk),
        .CE(dest_beat),
        .D(p_0_in__1[1]),
        .Q(dest_beat_counter_reg__0[1]),
        .R(\reset_gen[0].reset_sync_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \dest_beat_counter_reg[2] 
       (.C(m_dest_axi_aclk),
        .CE(dest_beat),
        .D(p_0_in__1[2]),
        .Q(dest_beat_counter_reg__0[2]),
        .R(\reset_gen[0].reset_sync_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \dest_beat_counter_reg[3] 
       (.C(m_dest_axi_aclk),
        .CE(dest_beat),
        .D(p_0_in__1[3]),
        .Q(dest_beat_counter_reg__0[3]),
        .R(\reset_gen[0].reset_sync_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \dest_burst_len_reg[0] 
       (.C(m_dest_axi_aclk),
        .CE(id0),
        .D(dest_burst_len0[0]),
        .Q(dest_burst_len[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_burst_len_reg[1] 
       (.C(m_dest_axi_aclk),
        .CE(id0),
        .D(dest_burst_len0[1]),
        .Q(dest_burst_len[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_burst_len_reg[2] 
       (.C(m_dest_axi_aclk),
        .CE(id0),
        .D(dest_burst_len0[2]),
        .Q(dest_burst_len[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_burst_len_reg[3] 
       (.C(m_dest_axi_aclk),
        .CE(id0),
        .D(dest_burst_len0[3]),
        .Q(dest_burst_len[3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h8AFF)) 
    \dest_id[3]_i_1 
       (.I0(dest_last),
        .I1(m_dest_axi_wready),
        .I2(m_dest_axi_wvalid),
        .I3(dest_valid),
        .O(dest_burst_ready));
  LUT3 #(
    .INIT(8'h69)) 
    \dest_id_next[0]_i_1 
       (.I0(dest_id_reduced_next[1]),
        .I1(\dest_id_next_reg_n_0_[2] ),
        .I2(p_0_in17_in),
        .O(\dest_id_next[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'hD782)) 
    \dest_id_next[1]_i_1 
       (.I0(dest_id_reduced_next[0]),
        .I1(p_0_in17_in),
        .I2(\dest_id_next_reg_n_0_[2] ),
        .I3(dest_id_reduced_next[1]),
        .O(b2g1_return013_out));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hCC4E)) 
    \dest_id_next[2]_i_1 
       (.I0(dest_id_reduced_next[1]),
        .I1(\dest_id_next_reg_n_0_[2] ),
        .I2(p_0_in17_in),
        .I3(dest_id_reduced_next[0]),
        .O(b2g1_return015_out));
  LUT5 #(
    .INIT(32'h8AFF0000)) 
    \dest_id_next[3]_i_1 
       (.I0(dest_last),
        .I1(m_dest_axi_wready),
        .I2(m_dest_axi_wvalid),
        .I3(dest_valid),
        .I4(dest_burst_valid),
        .O(id0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hCCD8)) 
    \dest_id_next[3]_i_2 
       (.I0(dest_id_reduced_next[0]),
        .I1(p_0_in17_in),
        .I2(\dest_id_next_reg_n_0_[2] ),
        .I3(dest_id_reduced_next[1]),
        .O(p_1_in14_in));
  LUT5 #(
    .INIT(32'hFFFF6FF6)) 
    \dest_id_next[3]_i_3 
       (.I0(\id_reg[3] [2]),
        .I1(p_0_in17_in),
        .I2(\id_reg[3] [1]),
        .I3(\dest_id_next_reg_n_0_[2] ),
        .I4(\dest_id_next[3]_i_4_n_0 ),
        .O(dest_burst_valid));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \dest_id_next[3]_i_4 
       (.I0(dest_id_reduced_next[1]),
        .I1(\id_reg[1] ),
        .I2(dest_id_reduced_next[0]),
        .I3(\id_reg[3] [0]),
        .O(\dest_id_next[3]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dest_id_next_reg[0] 
       (.C(m_dest_axi_aclk),
        .CE(id0),
        .D(\dest_id_next[0]_i_1_n_0 ),
        .Q(dest_id_reduced_next[0]),
        .R(\reset_gen[0].reset_sync_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \dest_id_next_reg[1] 
       (.C(m_dest_axi_aclk),
        .CE(id0),
        .D(b2g1_return013_out),
        .Q(dest_id_reduced_next[1]),
        .R(\reset_gen[0].reset_sync_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \dest_id_next_reg[2] 
       (.C(m_dest_axi_aclk),
        .CE(id0),
        .D(b2g1_return015_out),
        .Q(\dest_id_next_reg_n_0_[2] ),
        .R(\reset_gen[0].reset_sync_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \dest_id_next_reg[3] 
       (.C(m_dest_axi_aclk),
        .CE(id0),
        .D(p_1_in14_in),
        .Q(p_0_in17_in),
        .R(\reset_gen[0].reset_sync_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h3CAA)) 
    dest_id_reduced_msb_next_i_1
       (.I0(dest_id_reduced_next[1]),
        .I1(\dest_id_next_reg_n_0_[2] ),
        .I2(p_0_in17_in),
        .I3(dest_id_reduced_next[0]),
        .O(dest_id_reduced_msb_next_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    dest_id_reduced_msb_next_reg
       (.C(m_dest_axi_aclk),
        .CE(id0),
        .D(dest_id_reduced_msb_next_i_1_n_0),
        .Q(dest_id_reduced_msb_next),
        .R(\reset_gen[0].reset_sync_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    dest_id_reduced_msb_reg
       (.C(m_dest_axi_aclk),
        .CE(dest_burst_ready),
        .D(dest_id_reduced_msb_next),
        .Q(dest_id_reduced_msb),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_id_reg[0] 
       (.C(m_dest_axi_aclk),
        .CE(dest_burst_ready),
        .D(dest_id_reduced_next[0]),
        .Q(\src_throttled_request_id_reg[0] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_id_reg[1] 
       (.C(m_dest_axi_aclk),
        .CE(dest_burst_ready),
        .D(dest_id_reduced_next[1]),
        .Q(dbg_ids0[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_id_reg[2] 
       (.C(m_dest_axi_aclk),
        .CE(dest_burst_ready),
        .D(\dest_id_next_reg_n_0_[2] ),
        .Q(\src_throttled_request_id_reg[0] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_id_reg[3] 
       (.C(m_dest_axi_aclk),
        .CE(dest_burst_ready),
        .D(p_0_in17_in),
        .Q(\src_throttled_request_id_reg[0] [2]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h000000008F8B8088)) 
    dest_mem_data_last_i_1
       (.I0(dest_last),
        .I1(dest_valid),
        .I2(m_dest_axi_wready),
        .I3(m_dest_axi_wvalid),
        .I4(m_dest_axi_wlast),
        .I5(\reset_gen[0].reset_sync_reg[0] ),
        .O(dest_mem_data_last_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h00009009)) 
    dest_mem_data_last_i_2
       (.I0(dest_beat_counter_reg__0[0]),
        .I1(dest_burst_len[0]),
        .I2(dest_beat_counter_reg__0[1]),
        .I3(dest_burst_len[1]),
        .I4(dest_mem_data_last_i_3_n_0),
        .O(dest_last));
  LUT4 #(
    .INIT(16'h6FF6)) 
    dest_mem_data_last_i_3
       (.I0(dest_burst_len[2]),
        .I1(dest_beat_counter_reg__0[2]),
        .I2(dest_burst_len[3]),
        .I3(dest_beat_counter_reg__0[3]),
        .O(dest_mem_data_last_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    dest_mem_data_last_reg
       (.C(m_dest_axi_aclk),
        .CE(1'b1),
        .D(dest_mem_data_last_i_1_n_0),
        .Q(m_dest_axi_wlast),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hDC)) 
    dest_mem_data_valid_i_1
       (.I0(m_dest_axi_wready),
        .I1(dest_valid),
        .I2(m_dest_axi_wvalid),
        .O(dest_mem_data_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    dest_mem_data_valid_reg
       (.C(m_dest_axi_aclk),
        .CE(1'b1),
        .D(dest_mem_data_valid_i_1_n_0),
        .Q(m_dest_axi_wvalid),
        .R(\reset_gen[0].reset_sync_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'hFFFF4C44)) 
    dest_valid_i_1
       (.I0(dest_last),
        .I1(dest_valid),
        .I2(m_dest_axi_wready),
        .I3(m_dest_axi_wvalid),
        .I4(dest_burst_valid),
        .O(dest_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    dest_valid_reg
       (.C(m_dest_axi_aclk),
        .CE(1'b1),
        .D(dest_valid_i_1_n_0),
        .Q(dest_valid),
        .R(\reset_gen[0].reset_sync_reg[0] ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ad_mem i_mem
       (.ADDRARDADDR({dest_id_reduced_msb,dbg_ids0[17],\src_throttled_request_id_reg[0] [0],dest_beat_counter_reg__0}),
        .ADDRBWRADDR({src_id_reduced_msb,Q[1:0],src_beat_counter_reg__0}),
        .E(dest_beat),
        .dest_mem_data_valid_reg(m_dest_axi_wvalid),
        .dest_valid(dest_valid),
        .m_dest_axi_aclk(m_dest_axi_aclk),
        .m_dest_axi_wdata(m_dest_axi_wdata),
        .m_dest_axi_wready(m_dest_axi_wready),
        .s_axis_aclk(s_axis_aclk),
        .src_beat(src_beat),
        .src_mem_data(src_mem_data));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac_resize_src i_resize_src
       (.D(src_id_next),
        .Q({Q[2],dbg_ids0[2],Q[1:0]}),
        .active_reg(active_reg),
        .\data_reg[32]_0 (p_1_out0),
        .pending_burst(pending_burst),
        .pending_burst_reg(pending_burst_reg),
        .\reset_gen[0].reset_sync_reg[0] (\reset_gen[0].reset_sync_reg[0] ),
        .s_axis_aclk(s_axis_aclk),
        .s_axis_data(s_axis_data),
        .s_axis_valid(s_axis_valid),
        .src_beat(src_beat),
        .src_id_reduced_msb_reg(i_resize_src_n_5),
        .src_last(src_last),
        .src_last_beat(src_last_beat),
        .src_mem_data(src_mem_data),
        .transfer_abort_reg(transfer_abort_reg));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \src_beat_counter[0]_i_1 
       (.I0(src_beat_counter_reg__0[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_beat_counter[1]_i_1 
       (.I0(src_beat_counter_reg__0[0]),
        .I1(src_beat_counter_reg__0[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \src_beat_counter[2]_i_1 
       (.I0(src_beat_counter_reg__0[2]),
        .I1(src_beat_counter_reg__0[1]),
        .I2(src_beat_counter_reg__0[0]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \src_beat_counter[3]_i_1 
       (.I0(src_beat_counter_reg__0[3]),
        .I1(src_beat_counter_reg__0[0]),
        .I2(src_beat_counter_reg__0[1]),
        .I3(src_beat_counter_reg__0[2]),
        .O(p_0_in__0[3]));
  FDRE #(
    .INIT(1'b0)) 
    \src_beat_counter_reg[0] 
       (.C(s_axis_aclk),
        .CE(src_beat),
        .D(p_0_in__0[0]),
        .Q(src_beat_counter_reg__0[0]),
        .R(\reset_gen[0].reset_sync_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \src_beat_counter_reg[1] 
       (.C(s_axis_aclk),
        .CE(src_beat),
        .D(p_0_in__0[1]),
        .Q(src_beat_counter_reg__0[1]),
        .R(\reset_gen[0].reset_sync_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \src_beat_counter_reg[2] 
       (.C(s_axis_aclk),
        .CE(src_beat),
        .D(p_0_in__0[2]),
        .Q(src_beat_counter_reg__0[2]),
        .R(\reset_gen[0].reset_sync_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \src_beat_counter_reg[3] 
       (.C(s_axis_aclk),
        .CE(src_beat),
        .D(p_0_in__0[3]),
        .Q(src_beat_counter_reg__0[3]),
        .R(\reset_gen[0].reset_sync_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    src_id_reduced_msb_reg
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(i_resize_src_n_5),
        .Q(src_id_reduced_msb),
        .R(\reset_gen[0].reset_sync_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \src_id_reg[0] 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(src_id_next[0]),
        .Q(Q[0]),
        .R(\reset_gen[0].reset_sync_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \src_id_reg[1] 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(src_id_next[1]),
        .Q(Q[1]),
        .R(\reset_gen[0].reset_sync_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \src_id_reg[2] 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(src_id_next[2]),
        .Q(dbg_ids0[2]),
        .R(\reset_gen[0].reset_sync_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \src_id_reg[3] 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(src_id_next[3]),
        .Q(Q[2]),
        .R(\reset_gen[0].reset_sync_reg[0] ));
  LUT6 #(
    .INIT(64'h00000000FFBEBEFF)) 
    \src_throttled_request_id[3]_i_1 
       (.I0(\src_throttled_request_id[3]_i_3_n_0 ),
        .I1(dbg_ids0[17]),
        .I2(\src_throttled_request_id_reg[3] [1]),
        .I3(\src_throttled_request_id_reg[0] [1]),
        .I4(\src_throttled_request_id_reg[3] [2]),
        .I5(\src_throttled_request_id_reg[3]_0 ),
        .O(E));
  LUT4 #(
    .INIT(16'hF66F)) 
    \src_throttled_request_id[3]_i_3 
       (.I0(\src_throttled_request_id_reg[0] [0]),
        .I1(\src_throttled_request_id_reg[3] [0]),
        .I2(\src_throttled_request_id_reg[0] [2]),
        .I3(\src_throttled_request_id_reg[3] [3]),
        .O(\src_throttled_request_id[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \up_rdata[17]_i_2 
       (.I0(dbg_ids0[17]),
        .I1(\up_raddr_int_reg[2] ),
        .I2(m_dest_axi_awaddr),
        .O(\up_rdata_reg[17] ));
  LUT4 #(
    .INIT(16'hE200)) 
    \up_rdata[2]_i_3 
       (.I0(dbg_ids0[2]),
        .I1(\up_raddr_int_reg[2]_0 ),
        .I2(\state_reg[2] ),
        .I3(\up_raddr_int_reg[2] ),
        .O(\up_rdata_reg[2] ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac_regmap
   (\up_rdata_d_reg[31] ,
    irq,
    up_dma_req_valid,
    ctrl_enable,
    s_axi_bvalid,
    s_axi_awready,
    s_axi_wready,
    s_axi_rvalid,
    s_axi_arready,
    ctrl_pause,
    D,
    \up_rdata_reg[9]_0 ,
    \up_rdata_reg[9]_1 ,
    Q,
    \up_rdata_reg[23]_0 ,
    needs_reset_reg,
    s_axi_rdata,
    s_axi_aclk,
    up_sot,
    s_axi_aresetn,
    up_req_eot,
    s_axi_bready,
    s_axi_rready,
    dbg_status,
    dbg_ids0,
    dbg_ids1,
    \src_id_reg[2] ,
    m_dest_axi_awaddr,
    \reset_gen[0].reset_sync_reg[0] ,
    \id_reg[2] ,
    \id_reg[3] ,
    \id_reg[1] ,
    \id_reg[0] ,
    \dest_id_reg[3] ,
    \dest_id_reg[1] ,
    \address_reg[0] ,
    needs_reset_reg_0,
    \reset_gen[0].reset_sync_reg[0]_0 ,
    \reset_gen[0].reset_sync_reg[0]_1 ,
    s_axi_awvalid,
    s_axi_wvalid,
    s_axi_arvalid,
    s_axi_wdata,
    s_axi_awaddr,
    s_axi_araddr);
  output \up_rdata_d_reg[31] ;
  output irq;
  output up_dma_req_valid;
  output ctrl_enable;
  output s_axi_bvalid;
  output s_axi_awready;
  output s_axi_wready;
  output s_axi_rvalid;
  output s_axi_arready;
  output ctrl_pause;
  output [4:0]D;
  output \up_rdata_reg[9]_0 ;
  output \up_rdata_reg[9]_1 ;
  output [28:0]Q;
  output [16:0]\up_rdata_reg[23]_0 ;
  output needs_reset_reg;
  output [31:0]s_axi_rdata;
  input s_axi_aclk;
  input up_sot;
  input s_axi_aresetn;
  input up_req_eot;
  input s_axi_bready;
  input s_axi_rready;
  input [4:0]dbg_status;
  input [3:0]dbg_ids0;
  input [7:0]dbg_ids1;
  input \src_id_reg[2] ;
  input [19:0]m_dest_axi_awaddr;
  input [0:0]\reset_gen[0].reset_sync_reg[0] ;
  input \id_reg[2] ;
  input \id_reg[3] ;
  input \id_reg[1] ;
  input \id_reg[0] ;
  input [1:0]\dest_id_reg[3] ;
  input \dest_id_reg[1] ;
  input \address_reg[0] ;
  input needs_reset_reg_0;
  input \reset_gen[0].reset_sync_reg[0]_0 ;
  input \reset_gen[0].reset_sync_reg[0]_1 ;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input s_axi_arvalid;
  input [31:0]s_axi_wdata;
  input [8:0]s_axi_awaddr;
  input [8:0]s_axi_araddr;

  wire [4:0]D;
  wire [28:0]Q;
  wire \address_reg[0] ;
  wire ctrl_enable;
  wire ctrl_pause;
  wire [3:0]dbg_ids0;
  wire [7:0]dbg_ids1;
  wire [4:0]dbg_status;
  wire \dest_id_reg[1] ;
  wire [1:0]\dest_id_reg[3] ;
  wire i_regmap_request_n_37;
  wire i_regmap_request_n_38;
  wire i_regmap_request_n_56;
  wire i_regmap_request_n_57;
  wire i_regmap_request_n_58;
  wire i_regmap_request_n_59;
  wire i_regmap_request_n_60;
  wire i_regmap_request_n_61;
  wire i_regmap_request_n_62;
  wire i_regmap_request_n_63;
  wire i_regmap_request_n_64;
  wire i_regmap_request_n_65;
  wire i_regmap_request_n_66;
  wire i_regmap_request_n_67;
  wire i_regmap_request_n_68;
  wire i_regmap_request_n_69;
  wire i_regmap_request_n_7;
  wire i_regmap_request_n_70;
  wire i_regmap_request_n_72;
  wire i_regmap_request_n_73;
  wire i_regmap_request_n_74;
  wire i_regmap_request_n_75;
  wire i_up_axi_n_10;
  wire i_up_axi_n_11;
  wire i_up_axi_n_12;
  wire i_up_axi_n_13;
  wire i_up_axi_n_14;
  wire i_up_axi_n_15;
  wire i_up_axi_n_16;
  wire i_up_axi_n_38;
  wire i_up_axi_n_39;
  wire i_up_axi_n_40;
  wire i_up_axi_n_41;
  wire i_up_axi_n_42;
  wire i_up_axi_n_43;
  wire i_up_axi_n_44;
  wire i_up_axi_n_45;
  wire i_up_axi_n_8;
  wire i_up_axi_n_83;
  wire i_up_axi_n_84;
  wire i_up_axi_n_85;
  wire i_up_axi_n_86;
  wire i_up_axi_n_87;
  wire i_up_axi_n_9;
  wire \id_reg[0] ;
  wire \id_reg[1] ;
  wire \id_reg[2] ;
  wire \id_reg[3] ;
  wire irq;
  wire irq_i_1_n_0;
  wire [19:0]m_dest_axi_awaddr;
  wire needs_reset_reg;
  wire needs_reset_reg_0;
  wire [0:0]\reset_gen[0].reset_sync_reg[0] ;
  wire \reset_gen[0].reset_sync_reg[0]_0 ;
  wire \reset_gen[0].reset_sync_reg[0]_1 ;
  wire s_axi_aclk;
  wire [8:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [8:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire \src_id_reg[2] ;
  wire up_dma_dest_address;
  wire up_dma_req_valid;
  wire [23:3]up_dma_x_length0_in;
  wire \up_irq_mask[0]_i_1_n_0 ;
  wire \up_irq_mask[1]_i_1_n_0 ;
  wire \up_irq_mask_reg_n_0_[0] ;
  wire \up_irq_mask_reg_n_0_[1] ;
  wire [1:0]up_irq_source;
  wire up_rack;
  wire [3:1]up_raddr;
  wire [31:0]up_rdata;
  wire [31:0]up_rdata_0;
  wire \up_rdata_d_reg[31] ;
  wire [16:0]\up_rdata_reg[23]_0 ;
  wire \up_rdata_reg[9]_0 ;
  wire \up_rdata_reg[9]_1 ;
  wire up_req_eot;
  wire up_rreq;
  wire [31:0]up_scratch;
  wire up_sot;
  wire [0:0]up_transfer_id;
  wire [0:0]up_transfer_id_eot;
  wire up_wack;
  wire up_wreq;

  FDRE #(
    .INIT(1'b0)) 
    ctrl_enable_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i_up_axi_n_87),
        .Q(ctrl_enable),
        .R(\up_rdata_d_reg[31] ));
  FDRE #(
    .INIT(1'b0)) 
    ctrl_pause_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i_up_axi_n_86),
        .Q(ctrl_pause),
        .R(\up_rdata_d_reg[31] ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac_regmap_request i_regmap_request
       (.D(D),
        .E(i_up_axi_n_41),
        .Q(Q),
        .ctrl_enable_reg(i_up_axi_n_8),
        .ctrl_enable_reg_0(ctrl_enable),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(\up_rdata_d_reg[31] ),
        .up_dma_req_valid(up_dma_req_valid),
        .\up_raddr_int_reg[0] (i_up_axi_n_83),
        .\up_raddr_int_reg[2] (i_up_axi_n_84),
        .\up_raddr_int_reg[3] ({up_raddr[3],up_raddr[1]}),
        .\up_rdata_reg[10] (i_regmap_request_n_58),
        .\up_rdata_reg[11] (i_regmap_request_n_59),
        .\up_rdata_reg[12] (i_regmap_request_n_60),
        .\up_rdata_reg[13] (i_regmap_request_n_61),
        .\up_rdata_reg[15] (i_regmap_request_n_62),
        .\up_rdata_reg[16] (i_regmap_request_n_63),
        .\up_rdata_reg[17] (i_regmap_request_n_64),
        .\up_rdata_reg[18] (i_regmap_request_n_65),
        .\up_rdata_reg[19] (i_regmap_request_n_66),
        .\up_rdata_reg[1] (i_regmap_request_n_70),
        .\up_rdata_reg[20] (i_regmap_request_n_67),
        .\up_rdata_reg[21] (i_regmap_request_n_68),
        .\up_rdata_reg[23] (\up_rdata_reg[23]_0 ),
        .\up_rdata_reg[23]_0 (i_regmap_request_n_69),
        .\up_rdata_reg[4] (i_regmap_request_n_7),
        .\up_rdata_reg[6] (i_regmap_request_n_37),
        .\up_rdata_reg[7] (i_regmap_request_n_38),
        .\up_rdata_reg[8] (i_regmap_request_n_56),
        .\up_rdata_reg[9] (i_regmap_request_n_57),
        .up_req_eot(up_req_eot),
        .up_sot(up_sot),
        .\up_transfer_done_bitmap_reg[0]_0 (i_regmap_request_n_75),
        .\up_transfer_done_bitmap_reg[1]_0 (i_regmap_request_n_74),
        .\up_transfer_done_bitmap_reg[2]_0 (i_regmap_request_n_73),
        .\up_transfer_done_bitmap_reg[3]_0 (i_regmap_request_n_72),
        .\up_transfer_id_eot_reg[1]_0 (up_transfer_id_eot),
        .\up_transfer_id_reg[1]_0 (up_transfer_id),
        .\up_waddr_int_reg[2] (up_dma_dest_address),
        .\up_wdata_int_reg[1] (i_up_axi_n_85),
        .\up_wdata_int_reg[31] ({i_up_axi_n_9,i_up_axi_n_10,i_up_axi_n_11,i_up_axi_n_12,i_up_axi_n_13,i_up_axi_n_14,i_up_axi_n_15,i_up_axi_n_16,up_dma_x_length0_in}));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_axi i_up_axi
       (.D({i_up_axi_n_43,i_up_axi_n_44}),
        .E(up_rreq),
        .Q({i_up_axi_n_9,i_up_axi_n_10,i_up_axi_n_11,i_up_axi_n_12,i_up_axi_n_13,i_up_axi_n_14,i_up_axi_n_15,i_up_axi_n_16,up_dma_x_length0_in,i_up_axi_n_38,i_up_axi_n_39,i_up_axi_n_40}),
        .\address_reg[0] (\address_reg[0] ),
        .ctrl_enable_reg(i_up_axi_n_87),
        .ctrl_enable_reg_0(ctrl_enable),
        .ctrl_pause(ctrl_pause),
        .ctrl_pause_reg(i_up_axi_n_86),
        .dbg_ids0(dbg_ids0),
        .dbg_ids1(dbg_ids1),
        .dbg_status(dbg_status[3:0]),
        .\dest_id_reg[1] (\dest_id_reg[1] ),
        .\dest_id_reg[3] (\dest_id_reg[3] ),
        .\id_reg[0] (\id_reg[0] ),
        .\id_reg[1] (\id_reg[1] ),
        .\id_reg[2] (\id_reg[2] ),
        .\id_reg[3] (\id_reg[3] ),
        .m_dest_axi_awaddr(m_dest_axi_awaddr),
        .needs_reset_reg(needs_reset_reg_0),
        .\reset_gen[0].reset_sync_reg[0] (\reset_gen[0].reset_sync_reg[0] ),
        .\reset_gen[0].reset_sync_reg[0]_0 (\reset_gen[0].reset_sync_reg[0]_0 ),
        .\reset_gen[0].reset_sync_reg[0]_1 (\reset_gen[0].reset_sync_reg[0]_1 ),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid),
        .\src_id_reg[2] (\src_id_reg[2] ),
        .\up_dma_dest_address_reg[10] (i_regmap_request_n_58),
        .\up_dma_dest_address_reg[11] (i_regmap_request_n_59),
        .\up_dma_dest_address_reg[12] (i_regmap_request_n_60),
        .\up_dma_dest_address_reg[13] (i_regmap_request_n_61),
        .\up_dma_dest_address_reg[15] (i_regmap_request_n_62),
        .\up_dma_dest_address_reg[16] (i_regmap_request_n_63),
        .\up_dma_dest_address_reg[17] (i_regmap_request_n_64),
        .\up_dma_dest_address_reg[18] (i_regmap_request_n_65),
        .\up_dma_dest_address_reg[19] (i_regmap_request_n_66),
        .\up_dma_dest_address_reg[20] (i_regmap_request_n_67),
        .\up_dma_dest_address_reg[21] (i_regmap_request_n_68),
        .\up_dma_dest_address_reg[23] (i_regmap_request_n_69),
        .\up_dma_dest_address_reg[31] (up_dma_dest_address),
        .\up_dma_dest_address_reg[31]_0 ({Q[28:21],Q[19],Q[11],Q[2],Q[0]}),
        .\up_dma_dest_address_reg[4] (i_regmap_request_n_7),
        .\up_dma_dest_address_reg[6] (i_regmap_request_n_37),
        .\up_dma_dest_address_reg[7] (i_regmap_request_n_38),
        .\up_dma_dest_address_reg[8] (i_regmap_request_n_56),
        .\up_dma_dest_address_reg[9] (i_regmap_request_n_57),
        .up_dma_last_reg(i_up_axi_n_85),
        .up_dma_req_valid(up_dma_req_valid),
        .up_dma_req_valid_reg(i_up_axi_n_8),
        .\up_dma_x_length_reg[22] ({\up_rdata_reg[23]_0 [15],\up_rdata_reg[23]_0 [7]}),
        .\up_dma_x_length_reg[3] (i_up_axi_n_41),
        .\up_dma_x_length_reg[5] ({D[3],D[1:0]}),
        .\up_irq_mask_reg[0] (i_up_axi_n_45),
        .\up_irq_mask_reg[0]_0 (\up_irq_mask_reg_n_0_[0] ),
        .\up_irq_mask_reg[1] (\up_irq_mask_reg_n_0_[1] ),
        .\up_irq_source_reg[1] (up_irq_source),
        .up_rack(up_rack),
        .\up_rdata_d_reg[31]_0 (\up_rdata_d_reg[31] ),
        .\up_rdata_reg[1] (i_up_axi_n_84),
        .\up_rdata_reg[31] (up_rdata_0),
        .\up_rdata_reg[31]_0 (up_rdata),
        .\up_rdata_reg[5] (i_up_axi_n_83),
        .\up_rdata_reg[9] (\up_rdata_reg[9]_0 ),
        .\up_rdata_reg[9]_0 (\up_rdata_reg[9]_1 ),
        .\up_rdata_reg[9]_1 ({up_raddr[3],up_raddr[1]}),
        .up_req_eot(up_req_eot),
        .\up_scratch_reg[0] (i_up_axi_n_42),
        .\up_scratch_reg[31] (up_scratch),
        .up_sot(up_sot),
        .\up_transfer_done_bitmap_reg[0] (i_regmap_request_n_75),
        .\up_transfer_done_bitmap_reg[1] (i_regmap_request_n_74),
        .\up_transfer_done_bitmap_reg[2] (i_regmap_request_n_73),
        .\up_transfer_done_bitmap_reg[3] (i_regmap_request_n_72),
        .\up_transfer_id_eot_reg[0] (up_transfer_id_eot),
        .\up_transfer_id_reg[0] (up_transfer_id),
        .\up_transfer_id_reg[1] (i_regmap_request_n_70),
        .up_wack(up_wack),
        .up_wreq(up_wreq));
  LUT4 #(
    .INIT(16'h4F44)) 
    irq_i_1
       (.I0(\up_irq_mask_reg_n_0_[1] ),
        .I1(up_irq_source[1]),
        .I2(\up_irq_mask_reg_n_0_[0] ),
        .I3(up_irq_source[0]),
        .O(irq_i_1_n_0));
  FDRE irq_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(irq_i_1_n_0),
        .Q(irq),
        .R(\up_rdata_d_reg[31] ));
  LUT2 #(
    .INIT(4'hD)) 
    needs_reset_i_1
       (.I0(ctrl_enable),
        .I1(dbg_status[4]),
        .O(needs_reset_reg));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \up_irq_mask[0]_i_1 
       (.I0(i_up_axi_n_40),
        .I1(i_up_axi_n_45),
        .I2(\up_irq_mask_reg_n_0_[0] ),
        .O(\up_irq_mask[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \up_irq_mask[1]_i_1 
       (.I0(i_up_axi_n_39),
        .I1(i_up_axi_n_45),
        .I2(\up_irq_mask_reg_n_0_[1] ),
        .O(\up_irq_mask[1]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \up_irq_mask_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_irq_mask[0]_i_1_n_0 ),
        .Q(\up_irq_mask_reg_n_0_[0] ),
        .S(\up_rdata_d_reg[31] ));
  FDSE #(
    .INIT(1'b1)) 
    \up_irq_mask_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_irq_mask[1]_i_1_n_0 ),
        .Q(\up_irq_mask_reg_n_0_[1] ),
        .S(\up_rdata_d_reg[31] ));
  FDRE #(
    .INIT(1'b0)) 
    \up_irq_source_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i_up_axi_n_44),
        .Q(up_irq_source[0]),
        .R(\up_rdata_d_reg[31] ));
  FDRE #(
    .INIT(1'b0)) 
    \up_irq_source_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i_up_axi_n_43),
        .Q(up_irq_source[1]),
        .R(\up_rdata_d_reg[31] ));
  FDRE #(
    .INIT(1'b0)) 
    up_rack_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rreq),
        .Q(up_rack),
        .R(\up_rdata_d_reg[31] ));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[0] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[0]),
        .Q(up_rdata[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[10] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[10]),
        .Q(up_rdata[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[11] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[11]),
        .Q(up_rdata[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[12] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[12]),
        .Q(up_rdata[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[13] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[13]),
        .Q(up_rdata[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[14] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[14]),
        .Q(up_rdata[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[15] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[15]),
        .Q(up_rdata[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[16] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[16]),
        .Q(up_rdata[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[17] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[17]),
        .Q(up_rdata[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[18] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[18]),
        .Q(up_rdata[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[19] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[19]),
        .Q(up_rdata[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[1] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[1]),
        .Q(up_rdata[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[20] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[20]),
        .Q(up_rdata[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[21] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[21]),
        .Q(up_rdata[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[22] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[22]),
        .Q(up_rdata[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[23] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[23]),
        .Q(up_rdata[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[24] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[24]),
        .Q(up_rdata[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[25] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[25]),
        .Q(up_rdata[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[26] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[26]),
        .Q(up_rdata[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[27] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[27]),
        .Q(up_rdata[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[28] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[28]),
        .Q(up_rdata[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[29] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[29]),
        .Q(up_rdata[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[2] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[2]),
        .Q(up_rdata[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[30] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[30]),
        .Q(up_rdata[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[31] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[31]),
        .Q(up_rdata[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[3] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[3]),
        .Q(up_rdata[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[4] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[4]),
        .Q(up_rdata[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[5] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[5]),
        .Q(up_rdata[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[6] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[6]),
        .Q(up_rdata[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[7] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[7]),
        .Q(up_rdata[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[8] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[8]),
        .Q(up_rdata[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[9] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[9]),
        .Q(up_rdata[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[0] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_42),
        .D(i_up_axi_n_40),
        .Q(up_scratch[0]),
        .R(\up_rdata_d_reg[31] ));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[10] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_42),
        .D(up_dma_x_length0_in[10]),
        .Q(up_scratch[10]),
        .R(\up_rdata_d_reg[31] ));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[11] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_42),
        .D(up_dma_x_length0_in[11]),
        .Q(up_scratch[11]),
        .R(\up_rdata_d_reg[31] ));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[12] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_42),
        .D(up_dma_x_length0_in[12]),
        .Q(up_scratch[12]),
        .R(\up_rdata_d_reg[31] ));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[13] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_42),
        .D(up_dma_x_length0_in[13]),
        .Q(up_scratch[13]),
        .R(\up_rdata_d_reg[31] ));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[14] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_42),
        .D(up_dma_x_length0_in[14]),
        .Q(up_scratch[14]),
        .R(\up_rdata_d_reg[31] ));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[15] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_42),
        .D(up_dma_x_length0_in[15]),
        .Q(up_scratch[15]),
        .R(\up_rdata_d_reg[31] ));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[16] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_42),
        .D(up_dma_x_length0_in[16]),
        .Q(up_scratch[16]),
        .R(\up_rdata_d_reg[31] ));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[17] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_42),
        .D(up_dma_x_length0_in[17]),
        .Q(up_scratch[17]),
        .R(\up_rdata_d_reg[31] ));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[18] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_42),
        .D(up_dma_x_length0_in[18]),
        .Q(up_scratch[18]),
        .R(\up_rdata_d_reg[31] ));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[19] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_42),
        .D(up_dma_x_length0_in[19]),
        .Q(up_scratch[19]),
        .R(\up_rdata_d_reg[31] ));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[1] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_42),
        .D(i_up_axi_n_39),
        .Q(up_scratch[1]),
        .R(\up_rdata_d_reg[31] ));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[20] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_42),
        .D(up_dma_x_length0_in[20]),
        .Q(up_scratch[20]),
        .R(\up_rdata_d_reg[31] ));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[21] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_42),
        .D(up_dma_x_length0_in[21]),
        .Q(up_scratch[21]),
        .R(\up_rdata_d_reg[31] ));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[22] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_42),
        .D(up_dma_x_length0_in[22]),
        .Q(up_scratch[22]),
        .R(\up_rdata_d_reg[31] ));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[23] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_42),
        .D(up_dma_x_length0_in[23]),
        .Q(up_scratch[23]),
        .R(\up_rdata_d_reg[31] ));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[24] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_42),
        .D(i_up_axi_n_16),
        .Q(up_scratch[24]),
        .R(\up_rdata_d_reg[31] ));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[25] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_42),
        .D(i_up_axi_n_15),
        .Q(up_scratch[25]),
        .R(\up_rdata_d_reg[31] ));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[26] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_42),
        .D(i_up_axi_n_14),
        .Q(up_scratch[26]),
        .R(\up_rdata_d_reg[31] ));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[27] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_42),
        .D(i_up_axi_n_13),
        .Q(up_scratch[27]),
        .R(\up_rdata_d_reg[31] ));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[28] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_42),
        .D(i_up_axi_n_12),
        .Q(up_scratch[28]),
        .R(\up_rdata_d_reg[31] ));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[29] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_42),
        .D(i_up_axi_n_11),
        .Q(up_scratch[29]),
        .R(\up_rdata_d_reg[31] ));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[2] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_42),
        .D(i_up_axi_n_38),
        .Q(up_scratch[2]),
        .R(\up_rdata_d_reg[31] ));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[30] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_42),
        .D(i_up_axi_n_10),
        .Q(up_scratch[30]),
        .R(\up_rdata_d_reg[31] ));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[31] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_42),
        .D(i_up_axi_n_9),
        .Q(up_scratch[31]),
        .R(\up_rdata_d_reg[31] ));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[3] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_42),
        .D(up_dma_x_length0_in[3]),
        .Q(up_scratch[3]),
        .R(\up_rdata_d_reg[31] ));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[4] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_42),
        .D(up_dma_x_length0_in[4]),
        .Q(up_scratch[4]),
        .R(\up_rdata_d_reg[31] ));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[5] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_42),
        .D(up_dma_x_length0_in[5]),
        .Q(up_scratch[5]),
        .R(\up_rdata_d_reg[31] ));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[6] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_42),
        .D(up_dma_x_length0_in[6]),
        .Q(up_scratch[6]),
        .R(\up_rdata_d_reg[31] ));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[7] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_42),
        .D(up_dma_x_length0_in[7]),
        .Q(up_scratch[7]),
        .R(\up_rdata_d_reg[31] ));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[8] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_42),
        .D(up_dma_x_length0_in[8]),
        .Q(up_scratch[8]),
        .R(\up_rdata_d_reg[31] ));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[9] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_42),
        .D(up_dma_x_length0_in[9]),
        .Q(up_scratch[9]),
        .R(\up_rdata_d_reg[31] ));
  FDRE #(
    .INIT(1'b0)) 
    up_wack_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_wreq),
        .Q(up_wack),
        .R(\up_rdata_d_reg[31] ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac_regmap_request
   (up_dma_req_valid,
    D,
    \up_transfer_id_eot_reg[1]_0 ,
    \up_rdata_reg[4] ,
    Q,
    \up_rdata_reg[6] ,
    \up_rdata_reg[7] ,
    \up_rdata_reg[23] ,
    \up_rdata_reg[8] ,
    \up_rdata_reg[9] ,
    \up_rdata_reg[10] ,
    \up_rdata_reg[11] ,
    \up_rdata_reg[12] ,
    \up_rdata_reg[13] ,
    \up_rdata_reg[15] ,
    \up_rdata_reg[16] ,
    \up_rdata_reg[17] ,
    \up_rdata_reg[18] ,
    \up_rdata_reg[19] ,
    \up_rdata_reg[20] ,
    \up_rdata_reg[21] ,
    \up_rdata_reg[23]_0 ,
    \up_rdata_reg[1] ,
    \up_transfer_id_reg[1]_0 ,
    \up_transfer_done_bitmap_reg[3]_0 ,
    \up_transfer_done_bitmap_reg[2]_0 ,
    \up_transfer_done_bitmap_reg[1]_0 ,
    \up_transfer_done_bitmap_reg[0]_0 ,
    ctrl_enable_reg,
    s_axi_aclk,
    s_axi_aresetn,
    \up_wdata_int_reg[1] ,
    ctrl_enable_reg_0,
    up_req_eot,
    \up_raddr_int_reg[3] ,
    \up_raddr_int_reg[0] ,
    \up_raddr_int_reg[2] ,
    up_sot,
    E,
    \up_wdata_int_reg[31] ,
    \up_waddr_int_reg[2] );
  output up_dma_req_valid;
  output [4:0]D;
  output [0:0]\up_transfer_id_eot_reg[1]_0 ;
  output \up_rdata_reg[4] ;
  output [28:0]Q;
  output \up_rdata_reg[6] ;
  output \up_rdata_reg[7] ;
  output [16:0]\up_rdata_reg[23] ;
  output \up_rdata_reg[8] ;
  output \up_rdata_reg[9] ;
  output \up_rdata_reg[10] ;
  output \up_rdata_reg[11] ;
  output \up_rdata_reg[12] ;
  output \up_rdata_reg[13] ;
  output \up_rdata_reg[15] ;
  output \up_rdata_reg[16] ;
  output \up_rdata_reg[17] ;
  output \up_rdata_reg[18] ;
  output \up_rdata_reg[19] ;
  output \up_rdata_reg[20] ;
  output \up_rdata_reg[21] ;
  output \up_rdata_reg[23]_0 ;
  output \up_rdata_reg[1] ;
  output [0:0]\up_transfer_id_reg[1]_0 ;
  output \up_transfer_done_bitmap_reg[3]_0 ;
  output \up_transfer_done_bitmap_reg[2]_0 ;
  output \up_transfer_done_bitmap_reg[1]_0 ;
  output \up_transfer_done_bitmap_reg[0]_0 ;
  input ctrl_enable_reg;
  input s_axi_aclk;
  input s_axi_aresetn;
  input \up_wdata_int_reg[1] ;
  input ctrl_enable_reg_0;
  input up_req_eot;
  input [1:0]\up_raddr_int_reg[3] ;
  input \up_raddr_int_reg[0] ;
  input \up_raddr_int_reg[2] ;
  input up_sot;
  input [0:0]E;
  input [28:0]\up_wdata_int_reg[31] ;
  input [0:0]\up_waddr_int_reg[2] ;

  wire [4:0]D;
  wire [0:0]E;
  wire [28:0]Q;
  wire ctrl_enable_reg;
  wire ctrl_enable_reg_0;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire up_dma_req_valid;
  wire \up_raddr_int_reg[0] ;
  wire \up_raddr_int_reg[2] ;
  wire [1:0]\up_raddr_int_reg[3] ;
  wire \up_rdata_reg[10] ;
  wire \up_rdata_reg[11] ;
  wire \up_rdata_reg[12] ;
  wire \up_rdata_reg[13] ;
  wire \up_rdata_reg[15] ;
  wire \up_rdata_reg[16] ;
  wire \up_rdata_reg[17] ;
  wire \up_rdata_reg[18] ;
  wire \up_rdata_reg[19] ;
  wire \up_rdata_reg[1] ;
  wire \up_rdata_reg[20] ;
  wire \up_rdata_reg[21] ;
  wire [16:0]\up_rdata_reg[23] ;
  wire \up_rdata_reg[23]_0 ;
  wire \up_rdata_reg[4] ;
  wire \up_rdata_reg[6] ;
  wire \up_rdata_reg[7] ;
  wire \up_rdata_reg[8] ;
  wire \up_rdata_reg[9] ;
  wire up_req_eot;
  wire up_sot;
  wire \up_transfer_done_bitmap[0]_i_1_n_0 ;
  wire \up_transfer_done_bitmap[0]_i_2_n_0 ;
  wire \up_transfer_done_bitmap[1]_i_1_n_0 ;
  wire \up_transfer_done_bitmap[1]_i_2_n_0 ;
  wire \up_transfer_done_bitmap[2]_i_1_n_0 ;
  wire \up_transfer_done_bitmap[2]_i_2_n_0 ;
  wire \up_transfer_done_bitmap[3]_i_1_n_0 ;
  wire \up_transfer_done_bitmap[3]_i_2_n_0 ;
  wire \up_transfer_done_bitmap_reg[0]_0 ;
  wire \up_transfer_done_bitmap_reg[1]_0 ;
  wire \up_transfer_done_bitmap_reg[2]_0 ;
  wire \up_transfer_done_bitmap_reg[3]_0 ;
  wire [1:1]up_transfer_id;
  wire \up_transfer_id[0]_i_1_n_0 ;
  wire \up_transfer_id[1]_i_1_n_0 ;
  wire [1:1]up_transfer_id_eot;
  wire \up_transfer_id_eot[0]_i_1_n_0 ;
  wire \up_transfer_id_eot[1]_i_1_n_0 ;
  wire \up_transfer_id_eot[1]_i_2_n_0 ;
  wire [0:0]\up_transfer_id_eot_reg[1]_0 ;
  wire [0:0]\up_transfer_id_reg[1]_0 ;
  wire [0:0]\up_waddr_int_reg[2] ;
  wire \up_wdata_int_reg[1] ;
  wire [28:0]\up_wdata_int_reg[31] ;

  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[10] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_int_reg[2] ),
        .D(\up_wdata_int_reg[31] [7]),
        .Q(Q[7]),
        .R(s_axi_aresetn));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[11] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_int_reg[2] ),
        .D(\up_wdata_int_reg[31] [8]),
        .Q(Q[8]),
        .R(s_axi_aresetn));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[12] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_int_reg[2] ),
        .D(\up_wdata_int_reg[31] [9]),
        .Q(Q[9]),
        .R(s_axi_aresetn));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[13] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_int_reg[2] ),
        .D(\up_wdata_int_reg[31] [10]),
        .Q(Q[10]),
        .R(s_axi_aresetn));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[14] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_int_reg[2] ),
        .D(\up_wdata_int_reg[31] [11]),
        .Q(Q[11]),
        .R(s_axi_aresetn));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[15] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_int_reg[2] ),
        .D(\up_wdata_int_reg[31] [12]),
        .Q(Q[12]),
        .R(s_axi_aresetn));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[16] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_int_reg[2] ),
        .D(\up_wdata_int_reg[31] [13]),
        .Q(Q[13]),
        .R(s_axi_aresetn));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[17] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_int_reg[2] ),
        .D(\up_wdata_int_reg[31] [14]),
        .Q(Q[14]),
        .R(s_axi_aresetn));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[18] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_int_reg[2] ),
        .D(\up_wdata_int_reg[31] [15]),
        .Q(Q[15]),
        .R(s_axi_aresetn));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[19] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_int_reg[2] ),
        .D(\up_wdata_int_reg[31] [16]),
        .Q(Q[16]),
        .R(s_axi_aresetn));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[20] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_int_reg[2] ),
        .D(\up_wdata_int_reg[31] [17]),
        .Q(Q[17]),
        .R(s_axi_aresetn));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[21] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_int_reg[2] ),
        .D(\up_wdata_int_reg[31] [18]),
        .Q(Q[18]),
        .R(s_axi_aresetn));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[22] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_int_reg[2] ),
        .D(\up_wdata_int_reg[31] [19]),
        .Q(Q[19]),
        .R(s_axi_aresetn));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[23] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_int_reg[2] ),
        .D(\up_wdata_int_reg[31] [20]),
        .Q(Q[20]),
        .R(s_axi_aresetn));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[24] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_int_reg[2] ),
        .D(\up_wdata_int_reg[31] [21]),
        .Q(Q[21]),
        .R(s_axi_aresetn));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[25] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_int_reg[2] ),
        .D(\up_wdata_int_reg[31] [22]),
        .Q(Q[22]),
        .R(s_axi_aresetn));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[26] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_int_reg[2] ),
        .D(\up_wdata_int_reg[31] [23]),
        .Q(Q[23]),
        .R(s_axi_aresetn));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[27] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_int_reg[2] ),
        .D(\up_wdata_int_reg[31] [24]),
        .Q(Q[24]),
        .R(s_axi_aresetn));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[28] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_int_reg[2] ),
        .D(\up_wdata_int_reg[31] [25]),
        .Q(Q[25]),
        .R(s_axi_aresetn));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[29] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_int_reg[2] ),
        .D(\up_wdata_int_reg[31] [26]),
        .Q(Q[26]),
        .R(s_axi_aresetn));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[30] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_int_reg[2] ),
        .D(\up_wdata_int_reg[31] [27]),
        .Q(Q[27]),
        .R(s_axi_aresetn));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[31] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_int_reg[2] ),
        .D(\up_wdata_int_reg[31] [28]),
        .Q(Q[28]),
        .R(s_axi_aresetn));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[3] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_int_reg[2] ),
        .D(\up_wdata_int_reg[31] [0]),
        .Q(Q[0]),
        .R(s_axi_aresetn));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[4] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_int_reg[2] ),
        .D(\up_wdata_int_reg[31] [1]),
        .Q(Q[1]),
        .R(s_axi_aresetn));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[5] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_int_reg[2] ),
        .D(\up_wdata_int_reg[31] [2]),
        .Q(Q[2]),
        .R(s_axi_aresetn));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[6] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_int_reg[2] ),
        .D(\up_wdata_int_reg[31] [3]),
        .Q(Q[3]),
        .R(s_axi_aresetn));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[7] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_int_reg[2] ),
        .D(\up_wdata_int_reg[31] [4]),
        .Q(Q[4]),
        .R(s_axi_aresetn));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[8] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_int_reg[2] ),
        .D(\up_wdata_int_reg[31] [5]),
        .Q(Q[5]),
        .R(s_axi_aresetn));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[9] 
       (.C(s_axi_aclk),
        .CE(\up_waddr_int_reg[2] ),
        .D(\up_wdata_int_reg[31] [6]),
        .Q(Q[6]),
        .R(s_axi_aresetn));
  FDSE #(
    .INIT(1'b1)) 
    up_dma_last_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_wdata_int_reg[1] ),
        .Q(D[0]),
        .S(s_axi_aresetn));
  FDRE #(
    .INIT(1'b0)) 
    up_dma_req_valid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ctrl_enable_reg),
        .Q(up_dma_req_valid),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[10] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_wdata_int_reg[31] [7]),
        .Q(\up_rdata_reg[23] [3]),
        .R(s_axi_aresetn));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[11] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_wdata_int_reg[31] [8]),
        .Q(\up_rdata_reg[23] [4]),
        .R(s_axi_aresetn));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[12] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_wdata_int_reg[31] [9]),
        .Q(\up_rdata_reg[23] [5]),
        .R(s_axi_aresetn));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[13] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_wdata_int_reg[31] [10]),
        .Q(\up_rdata_reg[23] [6]),
        .R(s_axi_aresetn));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[14] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_wdata_int_reg[31] [11]),
        .Q(\up_rdata_reg[23] [7]),
        .R(s_axi_aresetn));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[15] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_wdata_int_reg[31] [12]),
        .Q(\up_rdata_reg[23] [8]),
        .R(s_axi_aresetn));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[16] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_wdata_int_reg[31] [13]),
        .Q(\up_rdata_reg[23] [9]),
        .R(s_axi_aresetn));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[17] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_wdata_int_reg[31] [14]),
        .Q(\up_rdata_reg[23] [10]),
        .R(s_axi_aresetn));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[18] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_wdata_int_reg[31] [15]),
        .Q(\up_rdata_reg[23] [11]),
        .R(s_axi_aresetn));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[19] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_wdata_int_reg[31] [16]),
        .Q(\up_rdata_reg[23] [12]),
        .R(s_axi_aresetn));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[20] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_wdata_int_reg[31] [17]),
        .Q(\up_rdata_reg[23] [13]),
        .R(s_axi_aresetn));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[21] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_wdata_int_reg[31] [18]),
        .Q(\up_rdata_reg[23] [14]),
        .R(s_axi_aresetn));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[22] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_wdata_int_reg[31] [19]),
        .Q(\up_rdata_reg[23] [15]),
        .R(s_axi_aresetn));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[23] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_wdata_int_reg[31] [20]),
        .Q(\up_rdata_reg[23] [16]),
        .R(s_axi_aresetn));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_wdata_int_reg[31] [0]),
        .Q(D[1]),
        .R(s_axi_aresetn));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_wdata_int_reg[31] [1]),
        .Q(D[2]),
        .R(s_axi_aresetn));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[5] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_wdata_int_reg[31] [2]),
        .Q(D[3]),
        .R(s_axi_aresetn));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[6] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_wdata_int_reg[31] [3]),
        .Q(D[4]),
        .R(s_axi_aresetn));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[7] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_wdata_int_reg[31] [4]),
        .Q(\up_rdata_reg[23] [0]),
        .R(s_axi_aresetn));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[8] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_wdata_int_reg[31] [5]),
        .Q(\up_rdata_reg[23] [1]),
        .R(s_axi_aresetn));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[9] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_wdata_int_reg[31] [6]),
        .Q(\up_rdata_reg[23] [2]),
        .R(s_axi_aresetn));
  LUT4 #(
    .INIT(16'h00E2)) 
    \up_rdata[10]_i_2 
       (.I0(Q[7]),
        .I1(\up_raddr_int_reg[3] [0]),
        .I2(\up_rdata_reg[23] [3]),
        .I3(\up_raddr_int_reg[0] ),
        .O(\up_rdata_reg[10] ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \up_rdata[11]_i_3 
       (.I0(Q[8]),
        .I1(\up_raddr_int_reg[3] [0]),
        .I2(\up_rdata_reg[23] [4]),
        .I3(\up_raddr_int_reg[0] ),
        .O(\up_rdata_reg[11] ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \up_rdata[12]_i_2 
       (.I0(Q[9]),
        .I1(\up_raddr_int_reg[3] [0]),
        .I2(\up_rdata_reg[23] [5]),
        .I3(\up_raddr_int_reg[0] ),
        .O(\up_rdata_reg[12] ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \up_rdata[13]_i_2 
       (.I0(Q[10]),
        .I1(\up_raddr_int_reg[3] [0]),
        .I2(\up_rdata_reg[23] [6]),
        .I3(\up_raddr_int_reg[0] ),
        .O(\up_rdata_reg[13] ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \up_rdata[15]_i_2 
       (.I0(Q[12]),
        .I1(\up_raddr_int_reg[3] [0]),
        .I2(\up_rdata_reg[23] [8]),
        .I3(\up_raddr_int_reg[0] ),
        .O(\up_rdata_reg[15] ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \up_rdata[16]_i_2 
       (.I0(Q[13]),
        .I1(\up_raddr_int_reg[3] [0]),
        .I2(\up_rdata_reg[23] [9]),
        .I3(\up_raddr_int_reg[0] ),
        .O(\up_rdata_reg[16] ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \up_rdata[17]_i_3 
       (.I0(Q[14]),
        .I1(\up_raddr_int_reg[3] [0]),
        .I2(\up_rdata_reg[23] [10]),
        .I3(\up_raddr_int_reg[0] ),
        .O(\up_rdata_reg[17] ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \up_rdata[18]_i_2 
       (.I0(Q[15]),
        .I1(\up_raddr_int_reg[3] [0]),
        .I2(\up_rdata_reg[23] [11]),
        .I3(\up_raddr_int_reg[0] ),
        .O(\up_rdata_reg[18] ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \up_rdata[19]_i_3 
       (.I0(Q[16]),
        .I1(\up_raddr_int_reg[3] [0]),
        .I2(\up_rdata_reg[23] [12]),
        .I3(\up_raddr_int_reg[0] ),
        .O(\up_rdata_reg[19] ));
  LUT6 #(
    .INIT(64'h00000000CCE200E2)) 
    \up_rdata[1]_i_8 
       (.I0(up_transfer_id),
        .I1(\up_raddr_int_reg[3] [0]),
        .I2(D[0]),
        .I3(\up_raddr_int_reg[3] [1]),
        .I4(up_transfer_id_eot),
        .I5(\up_raddr_int_reg[2] ),
        .O(\up_rdata_reg[1] ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \up_rdata[20]_i_2 
       (.I0(Q[17]),
        .I1(\up_raddr_int_reg[3] [0]),
        .I2(\up_rdata_reg[23] [13]),
        .I3(\up_raddr_int_reg[0] ),
        .O(\up_rdata_reg[20] ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \up_rdata[21]_i_2 
       (.I0(Q[18]),
        .I1(\up_raddr_int_reg[3] [0]),
        .I2(\up_rdata_reg[23] [14]),
        .I3(\up_raddr_int_reg[0] ),
        .O(\up_rdata_reg[21] ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \up_rdata[23]_i_5 
       (.I0(Q[20]),
        .I1(\up_raddr_int_reg[3] [0]),
        .I2(\up_rdata_reg[23] [16]),
        .I3(\up_raddr_int_reg[0] ),
        .O(\up_rdata_reg[23]_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \up_rdata[4]_i_3 
       (.I0(Q[1]),
        .I1(\up_raddr_int_reg[3] [0]),
        .I2(D[2]),
        .I3(\up_raddr_int_reg[0] ),
        .O(\up_rdata_reg[4] ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \up_rdata[6]_i_3 
       (.I0(Q[3]),
        .I1(\up_raddr_int_reg[3] [0]),
        .I2(D[4]),
        .I3(\up_raddr_int_reg[0] ),
        .O(\up_rdata_reg[6] ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \up_rdata[7]_i_2 
       (.I0(Q[4]),
        .I1(\up_raddr_int_reg[3] [0]),
        .I2(\up_rdata_reg[23] [0]),
        .I3(\up_raddr_int_reg[0] ),
        .O(\up_rdata_reg[7] ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \up_rdata[8]_i_4 
       (.I0(Q[5]),
        .I1(\up_raddr_int_reg[3] [0]),
        .I2(\up_rdata_reg[23] [1]),
        .I3(\up_raddr_int_reg[0] ),
        .O(\up_rdata_reg[8] ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \up_rdata[9]_i_5 
       (.I0(Q[6]),
        .I1(\up_raddr_int_reg[3] [0]),
        .I2(\up_rdata_reg[23] [2]),
        .I3(\up_raddr_int_reg[0] ),
        .O(\up_rdata_reg[9] ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFEFFF00)) 
    \up_transfer_done_bitmap[0]_i_1 
       (.I0(\up_transfer_id_reg[1]_0 ),
        .I1(up_transfer_id),
        .I2(up_sot),
        .I3(\up_transfer_done_bitmap[0]_i_2_n_0 ),
        .I4(\up_transfer_done_bitmap_reg[0]_0 ),
        .O(\up_transfer_done_bitmap[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \up_transfer_done_bitmap[0]_i_2 
       (.I0(up_req_eot),
        .I1(up_transfer_id_eot),
        .I2(\up_transfer_id_eot_reg[1]_0 ),
        .O(\up_transfer_done_bitmap[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFBFFF00)) 
    \up_transfer_done_bitmap[1]_i_1 
       (.I0(up_transfer_id),
        .I1(\up_transfer_id_reg[1]_0 ),
        .I2(up_sot),
        .I3(\up_transfer_done_bitmap[1]_i_2_n_0 ),
        .I4(\up_transfer_done_bitmap_reg[1]_0 ),
        .O(\up_transfer_done_bitmap[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \up_transfer_done_bitmap[1]_i_2 
       (.I0(up_req_eot),
        .I1(\up_transfer_id_eot_reg[1]_0 ),
        .I2(up_transfer_id_eot),
        .O(\up_transfer_done_bitmap[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFBFFF00)) 
    \up_transfer_done_bitmap[2]_i_1 
       (.I0(\up_transfer_id_reg[1]_0 ),
        .I1(up_transfer_id),
        .I2(up_sot),
        .I3(\up_transfer_done_bitmap[2]_i_2_n_0 ),
        .I4(\up_transfer_done_bitmap_reg[2]_0 ),
        .O(\up_transfer_done_bitmap[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \up_transfer_done_bitmap[2]_i_2 
       (.I0(up_req_eot),
        .I1(up_transfer_id_eot),
        .I2(\up_transfer_id_eot_reg[1]_0 ),
        .O(\up_transfer_done_bitmap[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF7FFF00)) 
    \up_transfer_done_bitmap[3]_i_1 
       (.I0(\up_transfer_id_reg[1]_0 ),
        .I1(up_transfer_id),
        .I2(up_sot),
        .I3(\up_transfer_done_bitmap[3]_i_2_n_0 ),
        .I4(\up_transfer_done_bitmap_reg[3]_0 ),
        .O(\up_transfer_done_bitmap[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \up_transfer_done_bitmap[3]_i_2 
       (.I0(up_req_eot),
        .I1(up_transfer_id_eot),
        .I2(\up_transfer_id_eot_reg[1]_0 ),
        .O(\up_transfer_done_bitmap[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_transfer_done_bitmap_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_transfer_done_bitmap[0]_i_1_n_0 ),
        .Q(\up_transfer_done_bitmap_reg[0]_0 ),
        .R(\up_transfer_id_eot[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_transfer_done_bitmap_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_transfer_done_bitmap[1]_i_1_n_0 ),
        .Q(\up_transfer_done_bitmap_reg[1]_0 ),
        .R(\up_transfer_id_eot[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_transfer_done_bitmap_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_transfer_done_bitmap[2]_i_1_n_0 ),
        .Q(\up_transfer_done_bitmap_reg[2]_0 ),
        .R(\up_transfer_id_eot[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_transfer_done_bitmap_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_transfer_done_bitmap[3]_i_1_n_0 ),
        .Q(\up_transfer_done_bitmap_reg[3]_0 ),
        .R(\up_transfer_id_eot[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \up_transfer_id[0]_i_1 
       (.I0(up_sot),
        .I1(\up_transfer_id_reg[1]_0 ),
        .O(\up_transfer_id[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \up_transfer_id[1]_i_1 
       (.I0(\up_transfer_id_reg[1]_0 ),
        .I1(up_sot),
        .I2(up_transfer_id),
        .O(\up_transfer_id[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \up_transfer_id_eot[0]_i_1 
       (.I0(up_req_eot),
        .I1(\up_transfer_id_eot_reg[1]_0 ),
        .O(\up_transfer_id_eot[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \up_transfer_id_eot[1]_i_1 
       (.I0(ctrl_enable_reg_0),
        .O(\up_transfer_id_eot[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \up_transfer_id_eot[1]_i_2 
       (.I0(\up_transfer_id_eot_reg[1]_0 ),
        .I1(up_req_eot),
        .I2(up_transfer_id_eot),
        .O(\up_transfer_id_eot[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_transfer_id_eot_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_transfer_id_eot[0]_i_1_n_0 ),
        .Q(\up_transfer_id_eot_reg[1]_0 ),
        .R(\up_transfer_id_eot[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_transfer_id_eot_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_transfer_id_eot[1]_i_2_n_0 ),
        .Q(up_transfer_id_eot),
        .R(\up_transfer_id_eot[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_transfer_id_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_transfer_id[0]_i_1_n_0 ),
        .Q(\up_transfer_id_reg[1]_0 ),
        .R(\up_transfer_id_eot[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_transfer_id_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_transfer_id[1]_i_1_n_0 ),
        .Q(up_transfer_id),
        .R(\up_transfer_id_eot[1]_i_1_n_0 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac_reset_manager
   (s_axis_waddr_reg,
    \state_reg[0]_0 ,
    \acked_reg[1] ,
    Q,
    \state_reg[2]_0 ,
    s_axi_aclk,
    m_dest_axi_aclk,
    ctrl_enable_reg,
    up_sot,
    ctrl_pause,
    ctrl_enable,
    enabled_reg,
    SR);
  output s_axis_waddr_reg;
  output \state_reg[0]_0 ;
  output \acked_reg[1] ;
  output [0:0]Q;
  output [2:0]\state_reg[2]_0 ;
  input s_axi_aclk;
  input m_dest_axi_aclk;
  input ctrl_enable_reg;
  input up_sot;
  input ctrl_pause;
  input ctrl_enable;
  input [0:0]enabled_reg;
  input [0:0]SR;

  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state[5]_i_2_n_0 ;
  wire \FSM_onehot_state[5]_i_3_n_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[2] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[3] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[4] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[5] ;
  wire [0:0]Q;
  wire [0:0]SR;
  wire \acked_reg[1] ;
  wire ctrl_enable;
  wire ctrl_enable_reg;
  wire ctrl_pause;
  wire do_enable0;
  wire do_reset;
  (* RTL_KEEP = "yes" *) wire do_reset_0;
  wire [0:0]enabled_reg;
  wire m_dest_axi_aclk;
  (* RTL_KEEP = "yes" *) wire needs_reset;
  wire \reset_gen[0].reset_async_reg_n_0_[1] ;
  wire \reset_gen[0].reset_async_reg_n_0_[2] ;
  wire \reset_gen[0].reset_async_reg_n_0_[3] ;
  wire \reset_gen[0].reset_sync_in ;
  wire \reset_gen[0].reset_sync_reg_n_0_[1] ;
  wire reset_sync_chain_0;
  wire s_axi_aclk;
  wire s_axis_waddr_reg;
  wire state;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[2]_i_1_n_0 ;
  wire \state_reg[0]_0 ;
  wire [2:0]\state_reg[2]_0 ;
  wire up_sot;

  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\state_reg[0]_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(needs_reset),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\state_reg[0]_0 ),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFA8)) 
    \FSM_onehot_state[5]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[4] ),
        .I1(ctrl_pause),
        .I2(\state_reg[0]_0 ),
        .I3(do_reset_0),
        .I4(\FSM_onehot_state[5]_i_2_n_0 ),
        .I5(\FSM_onehot_state[5]_i_3_n_0 ),
        .O(state));
  LUT6 #(
    .INIT(64'h4040404040FF4040)) 
    \FSM_onehot_state[5]_i_2 
       (.I0(Q),
        .I1(needs_reset),
        .I2(ctrl_enable),
        .I3(enabled_reg),
        .I4(\FSM_onehot_state_reg_n_0_[5] ),
        .I5(s_axis_waddr_reg),
        .O(\FSM_onehot_state[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF80FF80808080)) 
    \FSM_onehot_state[5]_i_3 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(s_axis_waddr_reg),
        .I2(enabled_reg),
        .I3(ctrl_pause),
        .I4(\state_reg[0]_0 ),
        .I5(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\FSM_onehot_state[5]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "STATE_RESET:000010,STATE_DISABLED:000100,STATE_ENABLED:010000,STATE_SHUTDOWN:100000,STATE_STARTUP:001000,STATE_DO_RESET:000001" *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(state),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(do_reset_0),
        .S(SR));
  (* FSM_ENCODED_STATES = "STATE_RESET:000010,STATE_DISABLED:000100,STATE_ENABLED:010000,STATE_SHUTDOWN:100000,STATE_STARTUP:001000,STATE_DO_RESET:000001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(state),
        .D(do_reset_0),
        .Q(needs_reset),
        .R(SR));
  (* FSM_ENCODED_STATES = "STATE_RESET:000010,STATE_DISABLED:000100,STATE_ENABLED:010000,STATE_SHUTDOWN:100000,STATE_STARTUP:001000,STATE_DO_RESET:000001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(s_axi_aclk),
        .CE(state),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "STATE_RESET:000010,STATE_DISABLED:000100,STATE_ENABLED:010000,STATE_SHUTDOWN:100000,STATE_STARTUP:001000,STATE_DO_RESET:000001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(s_axi_aclk),
        .CE(state),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "STATE_RESET:000010,STATE_DISABLED:000100,STATE_ENABLED:010000,STATE_SHUTDOWN:100000,STATE_STARTUP:001000,STATE_DO_RESET:000001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(s_axi_aclk),
        .CE(state),
        .D(\FSM_onehot_state_reg_n_0_[3] ),
        .Q(\FSM_onehot_state_reg_n_0_[4] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "STATE_RESET:000010,STATE_DISABLED:000100,STATE_ENABLED:010000,STATE_SHUTDOWN:100000,STATE_STARTUP:001000,STATE_DO_RESET:000001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(s_axi_aclk),
        .CE(state),
        .D(\FSM_onehot_state_reg_n_0_[4] ),
        .Q(\FSM_onehot_state_reg_n_0_[5] ),
        .R(SR));
  LUT2 #(
    .INIT(4'hE)) 
    \acked[1]_i_2 
       (.I0(Q),
        .I1(up_sot),
        .O(\acked_reg[1] ));
  LUT2 #(
    .INIT(4'hE)) 
    do_enable_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[4] ),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .O(do_enable0));
  FDRE #(
    .INIT(1'b0)) 
    do_enable_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(do_enable0),
        .Q(s_axis_waddr_reg),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    do_reset_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(do_reset),
        .S(do_reset_0));
  FDRE #(
    .INIT(1'b0)) 
    needs_reset_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ctrl_enable_reg),
        .Q(\state_reg[0]_0 ),
        .R(needs_reset));
  FDPE #(
    .INIT(1'b1)) 
    \reset_gen[0].reset_async_reg[0] 
       (.C(m_dest_axi_aclk),
        .CE(1'b1),
        .D(\reset_gen[0].reset_async_reg_n_0_[1] ),
        .PRE(do_reset),
        .Q(reset_sync_chain_0));
  FDPE #(
    .INIT(1'b1)) 
    \reset_gen[0].reset_async_reg[1] 
       (.C(m_dest_axi_aclk),
        .CE(1'b1),
        .D(\reset_gen[0].reset_async_reg_n_0_[2] ),
        .PRE(do_reset),
        .Q(\reset_gen[0].reset_async_reg_n_0_[1] ));
  FDPE #(
    .INIT(1'b1)) 
    \reset_gen[0].reset_async_reg[2] 
       (.C(m_dest_axi_aclk),
        .CE(1'b1),
        .D(\reset_gen[0].reset_async_reg_n_0_[3] ),
        .PRE(do_reset),
        .Q(\reset_gen[0].reset_async_reg_n_0_[2] ));
  FDPE #(
    .INIT(1'b1)) 
    \reset_gen[0].reset_async_reg[3] 
       (.C(m_dest_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(do_reset),
        .Q(\reset_gen[0].reset_async_reg_n_0_[3] ));
  FDPE #(
    .INIT(1'b1)) 
    \reset_gen[0].reset_sync_in_reg 
       (.C(m_dest_axi_aclk),
        .CE(1'b1),
        .D(reset_sync_chain_0),
        .PRE(reset_sync_chain_0),
        .Q(\reset_gen[0].reset_sync_in ));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b1)) 
    \reset_gen[0].reset_sync_reg[0] 
       (.C(m_dest_axi_aclk),
        .CE(1'b1),
        .D(\reset_gen[0].reset_sync_reg_n_0_[1] ),
        .Q(Q),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b1)) 
    \reset_gen[0].reset_sync_reg[1] 
       (.C(m_dest_axi_aclk),
        .CE(1'b1),
        .D(\reset_gen[0].reset_sync_in ),
        .Q(\reset_gen[0].reset_sync_reg_n_0_[1] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h07)) 
    \state[0]_i_1 
       (.I0(\state_reg[2]_0 [1]),
        .I1(\state_reg[0]_0 ),
        .I2(\state_reg[2]_0 [0]),
        .O(\state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h26)) 
    \state[1]_i_1 
       (.I0(\state_reg[2]_0 [0]),
        .I1(\state_reg[2]_0 [1]),
        .I2(\state_reg[0]_0 ),
        .O(\state[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \state[2]_i_1 
       (.I0(\state_reg[2]_0 [1]),
        .I1(\state_reg[2]_0 [0]),
        .I2(\state_reg[2]_0 [2]),
        .O(\state[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(s_axi_aclk),
        .CE(state),
        .D(\state[0]_i_1_n_0 ),
        .Q(\state_reg[2]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(s_axi_aclk),
        .CE(state),
        .D(\state[1]_i_1_n_0 ),
        .Q(\state_reg[2]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(s_axi_aclk),
        .CE(state),
        .D(\state[2]_i_1_n_0 ),
        .Q(\state_reg[2]_0 [2]),
        .R(SR));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac_resize_src
   (src_beat,
    D,
    src_id_reduced_msb_reg,
    src_last_beat,
    \data_reg[32]_0 ,
    src_mem_data,
    src_last,
    s_axis_aclk,
    pending_burst_reg,
    Q,
    s_axis_valid,
    transfer_abort_reg,
    active_reg,
    pending_burst,
    \reset_gen[0].reset_sync_reg[0] ,
    s_axis_data);
  output src_beat;
  output [3:0]D;
  output src_id_reduced_msb_reg;
  output src_last_beat;
  output \data_reg[32]_0 ;
  output [63:0]src_mem_data;
  input src_last;
  input s_axis_aclk;
  input pending_burst_reg;
  input [3:0]Q;
  input s_axis_valid;
  input transfer_abort_reg;
  input active_reg;
  input pending_burst;
  input [0:0]\reset_gen[0].reset_sync_reg[0] ;
  input [31:0]s_axis_data;

  wire [3:0]D;
  wire [3:0]Q;
  wire active_reg;
  wire \data[31]_i_1_n_0 ;
  wire \data[63]_i_1_n_0 ;
  wire \data_reg[32]_0 ;
  wire \mask[0]_i_1_n_0 ;
  wire \mask[1]_i_1_n_0 ;
  wire \mask_reg_n_0_[0] ;
  wire pending_burst;
  wire pending_burst_reg;
  wire [0:0]\reset_gen[0].reset_sync_reg[0] ;
  wire s_axis_aclk;
  wire [31:0]s_axis_data;
  wire s_axis_valid;
  wire src_beat;
  wire src_id_reduced_msb_reg;
  wire src_last;
  wire src_last_beat;
  wire [63:0]src_mem_data;
  wire src_mem_data_last;
  wire transfer_abort_reg;

  LUT2 #(
    .INIT(4'h8)) 
    burst_len_mem_reg_0_7_0_3_i_1
       (.I0(src_mem_data_last),
        .I1(src_beat),
        .O(src_last_beat));
  LUT2 #(
    .INIT(4'h8)) 
    \data[31]_i_1 
       (.I0(transfer_abort_reg),
        .I1(\mask_reg_n_0_[0] ),
        .O(\data[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \data[63]_i_1 
       (.I0(transfer_abort_reg),
        .I1(\data_reg[32]_0 ),
        .O(\data[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[0] 
       (.C(s_axis_aclk),
        .CE(\mask_reg_n_0_[0] ),
        .D(s_axis_data[0]),
        .Q(src_mem_data[0]),
        .R(\data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[10] 
       (.C(s_axis_aclk),
        .CE(\mask_reg_n_0_[0] ),
        .D(s_axis_data[10]),
        .Q(src_mem_data[10]),
        .R(\data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[11] 
       (.C(s_axis_aclk),
        .CE(\mask_reg_n_0_[0] ),
        .D(s_axis_data[11]),
        .Q(src_mem_data[11]),
        .R(\data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[12] 
       (.C(s_axis_aclk),
        .CE(\mask_reg_n_0_[0] ),
        .D(s_axis_data[12]),
        .Q(src_mem_data[12]),
        .R(\data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[13] 
       (.C(s_axis_aclk),
        .CE(\mask_reg_n_0_[0] ),
        .D(s_axis_data[13]),
        .Q(src_mem_data[13]),
        .R(\data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[14] 
       (.C(s_axis_aclk),
        .CE(\mask_reg_n_0_[0] ),
        .D(s_axis_data[14]),
        .Q(src_mem_data[14]),
        .R(\data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[15] 
       (.C(s_axis_aclk),
        .CE(\mask_reg_n_0_[0] ),
        .D(s_axis_data[15]),
        .Q(src_mem_data[15]),
        .R(\data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[16] 
       (.C(s_axis_aclk),
        .CE(\mask_reg_n_0_[0] ),
        .D(s_axis_data[16]),
        .Q(src_mem_data[16]),
        .R(\data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[17] 
       (.C(s_axis_aclk),
        .CE(\mask_reg_n_0_[0] ),
        .D(s_axis_data[17]),
        .Q(src_mem_data[17]),
        .R(\data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[18] 
       (.C(s_axis_aclk),
        .CE(\mask_reg_n_0_[0] ),
        .D(s_axis_data[18]),
        .Q(src_mem_data[18]),
        .R(\data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[19] 
       (.C(s_axis_aclk),
        .CE(\mask_reg_n_0_[0] ),
        .D(s_axis_data[19]),
        .Q(src_mem_data[19]),
        .R(\data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[1] 
       (.C(s_axis_aclk),
        .CE(\mask_reg_n_0_[0] ),
        .D(s_axis_data[1]),
        .Q(src_mem_data[1]),
        .R(\data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[20] 
       (.C(s_axis_aclk),
        .CE(\mask_reg_n_0_[0] ),
        .D(s_axis_data[20]),
        .Q(src_mem_data[20]),
        .R(\data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[21] 
       (.C(s_axis_aclk),
        .CE(\mask_reg_n_0_[0] ),
        .D(s_axis_data[21]),
        .Q(src_mem_data[21]),
        .R(\data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[22] 
       (.C(s_axis_aclk),
        .CE(\mask_reg_n_0_[0] ),
        .D(s_axis_data[22]),
        .Q(src_mem_data[22]),
        .R(\data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[23] 
       (.C(s_axis_aclk),
        .CE(\mask_reg_n_0_[0] ),
        .D(s_axis_data[23]),
        .Q(src_mem_data[23]),
        .R(\data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[24] 
       (.C(s_axis_aclk),
        .CE(\mask_reg_n_0_[0] ),
        .D(s_axis_data[24]),
        .Q(src_mem_data[24]),
        .R(\data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[25] 
       (.C(s_axis_aclk),
        .CE(\mask_reg_n_0_[0] ),
        .D(s_axis_data[25]),
        .Q(src_mem_data[25]),
        .R(\data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[26] 
       (.C(s_axis_aclk),
        .CE(\mask_reg_n_0_[0] ),
        .D(s_axis_data[26]),
        .Q(src_mem_data[26]),
        .R(\data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[27] 
       (.C(s_axis_aclk),
        .CE(\mask_reg_n_0_[0] ),
        .D(s_axis_data[27]),
        .Q(src_mem_data[27]),
        .R(\data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[28] 
       (.C(s_axis_aclk),
        .CE(\mask_reg_n_0_[0] ),
        .D(s_axis_data[28]),
        .Q(src_mem_data[28]),
        .R(\data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[29] 
       (.C(s_axis_aclk),
        .CE(\mask_reg_n_0_[0] ),
        .D(s_axis_data[29]),
        .Q(src_mem_data[29]),
        .R(\data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[2] 
       (.C(s_axis_aclk),
        .CE(\mask_reg_n_0_[0] ),
        .D(s_axis_data[2]),
        .Q(src_mem_data[2]),
        .R(\data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[30] 
       (.C(s_axis_aclk),
        .CE(\mask_reg_n_0_[0] ),
        .D(s_axis_data[30]),
        .Q(src_mem_data[30]),
        .R(\data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[31] 
       (.C(s_axis_aclk),
        .CE(\mask_reg_n_0_[0] ),
        .D(s_axis_data[31]),
        .Q(src_mem_data[31]),
        .R(\data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[32] 
       (.C(s_axis_aclk),
        .CE(\data_reg[32]_0 ),
        .D(s_axis_data[0]),
        .Q(src_mem_data[32]),
        .R(\data[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[33] 
       (.C(s_axis_aclk),
        .CE(\data_reg[32]_0 ),
        .D(s_axis_data[1]),
        .Q(src_mem_data[33]),
        .R(\data[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[34] 
       (.C(s_axis_aclk),
        .CE(\data_reg[32]_0 ),
        .D(s_axis_data[2]),
        .Q(src_mem_data[34]),
        .R(\data[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[35] 
       (.C(s_axis_aclk),
        .CE(\data_reg[32]_0 ),
        .D(s_axis_data[3]),
        .Q(src_mem_data[35]),
        .R(\data[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[36] 
       (.C(s_axis_aclk),
        .CE(\data_reg[32]_0 ),
        .D(s_axis_data[4]),
        .Q(src_mem_data[36]),
        .R(\data[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[37] 
       (.C(s_axis_aclk),
        .CE(\data_reg[32]_0 ),
        .D(s_axis_data[5]),
        .Q(src_mem_data[37]),
        .R(\data[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[38] 
       (.C(s_axis_aclk),
        .CE(\data_reg[32]_0 ),
        .D(s_axis_data[6]),
        .Q(src_mem_data[38]),
        .R(\data[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[39] 
       (.C(s_axis_aclk),
        .CE(\data_reg[32]_0 ),
        .D(s_axis_data[7]),
        .Q(src_mem_data[39]),
        .R(\data[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[3] 
       (.C(s_axis_aclk),
        .CE(\mask_reg_n_0_[0] ),
        .D(s_axis_data[3]),
        .Q(src_mem_data[3]),
        .R(\data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[40] 
       (.C(s_axis_aclk),
        .CE(\data_reg[32]_0 ),
        .D(s_axis_data[8]),
        .Q(src_mem_data[40]),
        .R(\data[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[41] 
       (.C(s_axis_aclk),
        .CE(\data_reg[32]_0 ),
        .D(s_axis_data[9]),
        .Q(src_mem_data[41]),
        .R(\data[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[42] 
       (.C(s_axis_aclk),
        .CE(\data_reg[32]_0 ),
        .D(s_axis_data[10]),
        .Q(src_mem_data[42]),
        .R(\data[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[43] 
       (.C(s_axis_aclk),
        .CE(\data_reg[32]_0 ),
        .D(s_axis_data[11]),
        .Q(src_mem_data[43]),
        .R(\data[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[44] 
       (.C(s_axis_aclk),
        .CE(\data_reg[32]_0 ),
        .D(s_axis_data[12]),
        .Q(src_mem_data[44]),
        .R(\data[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[45] 
       (.C(s_axis_aclk),
        .CE(\data_reg[32]_0 ),
        .D(s_axis_data[13]),
        .Q(src_mem_data[45]),
        .R(\data[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[46] 
       (.C(s_axis_aclk),
        .CE(\data_reg[32]_0 ),
        .D(s_axis_data[14]),
        .Q(src_mem_data[46]),
        .R(\data[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[47] 
       (.C(s_axis_aclk),
        .CE(\data_reg[32]_0 ),
        .D(s_axis_data[15]),
        .Q(src_mem_data[47]),
        .R(\data[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[48] 
       (.C(s_axis_aclk),
        .CE(\data_reg[32]_0 ),
        .D(s_axis_data[16]),
        .Q(src_mem_data[48]),
        .R(\data[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[49] 
       (.C(s_axis_aclk),
        .CE(\data_reg[32]_0 ),
        .D(s_axis_data[17]),
        .Q(src_mem_data[49]),
        .R(\data[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[4] 
       (.C(s_axis_aclk),
        .CE(\mask_reg_n_0_[0] ),
        .D(s_axis_data[4]),
        .Q(src_mem_data[4]),
        .R(\data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[50] 
       (.C(s_axis_aclk),
        .CE(\data_reg[32]_0 ),
        .D(s_axis_data[18]),
        .Q(src_mem_data[50]),
        .R(\data[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[51] 
       (.C(s_axis_aclk),
        .CE(\data_reg[32]_0 ),
        .D(s_axis_data[19]),
        .Q(src_mem_data[51]),
        .R(\data[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[52] 
       (.C(s_axis_aclk),
        .CE(\data_reg[32]_0 ),
        .D(s_axis_data[20]),
        .Q(src_mem_data[52]),
        .R(\data[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[53] 
       (.C(s_axis_aclk),
        .CE(\data_reg[32]_0 ),
        .D(s_axis_data[21]),
        .Q(src_mem_data[53]),
        .R(\data[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[54] 
       (.C(s_axis_aclk),
        .CE(\data_reg[32]_0 ),
        .D(s_axis_data[22]),
        .Q(src_mem_data[54]),
        .R(\data[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[55] 
       (.C(s_axis_aclk),
        .CE(\data_reg[32]_0 ),
        .D(s_axis_data[23]),
        .Q(src_mem_data[55]),
        .R(\data[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[56] 
       (.C(s_axis_aclk),
        .CE(\data_reg[32]_0 ),
        .D(s_axis_data[24]),
        .Q(src_mem_data[56]),
        .R(\data[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[57] 
       (.C(s_axis_aclk),
        .CE(\data_reg[32]_0 ),
        .D(s_axis_data[25]),
        .Q(src_mem_data[57]),
        .R(\data[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[58] 
       (.C(s_axis_aclk),
        .CE(\data_reg[32]_0 ),
        .D(s_axis_data[26]),
        .Q(src_mem_data[58]),
        .R(\data[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[59] 
       (.C(s_axis_aclk),
        .CE(\data_reg[32]_0 ),
        .D(s_axis_data[27]),
        .Q(src_mem_data[59]),
        .R(\data[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[5] 
       (.C(s_axis_aclk),
        .CE(\mask_reg_n_0_[0] ),
        .D(s_axis_data[5]),
        .Q(src_mem_data[5]),
        .R(\data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[60] 
       (.C(s_axis_aclk),
        .CE(\data_reg[32]_0 ),
        .D(s_axis_data[28]),
        .Q(src_mem_data[60]),
        .R(\data[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[61] 
       (.C(s_axis_aclk),
        .CE(\data_reg[32]_0 ),
        .D(s_axis_data[29]),
        .Q(src_mem_data[61]),
        .R(\data[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[62] 
       (.C(s_axis_aclk),
        .CE(\data_reg[32]_0 ),
        .D(s_axis_data[30]),
        .Q(src_mem_data[62]),
        .R(\data[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[63] 
       (.C(s_axis_aclk),
        .CE(\data_reg[32]_0 ),
        .D(s_axis_data[31]),
        .Q(src_mem_data[63]),
        .R(\data[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[6] 
       (.C(s_axis_aclk),
        .CE(\mask_reg_n_0_[0] ),
        .D(s_axis_data[6]),
        .Q(src_mem_data[6]),
        .R(\data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[7] 
       (.C(s_axis_aclk),
        .CE(\mask_reg_n_0_[0] ),
        .D(s_axis_data[7]),
        .Q(src_mem_data[7]),
        .R(\data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[8] 
       (.C(s_axis_aclk),
        .CE(\mask_reg_n_0_[0] ),
        .D(s_axis_data[8]),
        .Q(src_mem_data[8]),
        .R(\data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[9] 
       (.C(s_axis_aclk),
        .CE(\mask_reg_n_0_[0] ),
        .D(s_axis_data[9]),
        .Q(src_mem_data[9]),
        .R(\data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    last_reg
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(src_last),
        .Q(src_mem_data_last),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hABFFFFFFA8000000)) 
    \mask[0]_i_1 
       (.I0(\data_reg[32]_0 ),
        .I1(s_axis_valid),
        .I2(transfer_abort_reg),
        .I3(active_reg),
        .I4(pending_burst),
        .I5(\mask_reg_n_0_[0] ),
        .O(\mask[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hABFFFFFFA8000000)) 
    \mask[1]_i_1 
       (.I0(\mask_reg_n_0_[0] ),
        .I1(s_axis_valid),
        .I2(transfer_abort_reg),
        .I3(active_reg),
        .I4(pending_burst),
        .I5(\data_reg[32]_0 ),
        .O(\mask[1]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \mask_reg[0] 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(\mask[0]_i_1_n_0 ),
        .Q(\mask_reg_n_0_[0] ),
        .S(\reset_gen[0].reset_sync_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \mask_reg[1] 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(\mask[1]_i_1_n_0 ),
        .Q(\data_reg[32]_0 ),
        .R(\reset_gen[0].reset_sync_reg[0] ));
  LUT6 #(
    .INIT(64'h69FFFFFF69000000)) 
    \src_id[0]_i_1 
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(src_mem_data_last),
        .I4(src_beat),
        .I5(Q[0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hEAAA2AAA2AAAEAAA)) 
    \src_id[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(src_beat),
        .I3(src_mem_data_last),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hF0F0F0F072F0F0F0)) 
    \src_id[2]_i_1 
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(src_mem_data_last),
        .I4(src_beat),
        .I5(Q[0]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hCCCCCCCCD8CCCCCC)) 
    \src_id[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(src_mem_data_last),
        .I4(src_beat),
        .I5(Q[0]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h40FFFF4000BFBF00)) 
    src_id_reduced_msb_i_1
       (.I0(Q[0]),
        .I1(src_beat),
        .I2(src_mem_data_last),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(Q[1]),
        .O(src_id_reduced_msb_reg));
  FDRE #(
    .INIT(1'b0)) 
    valid_reg
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(pending_burst_reg),
        .Q(src_beat),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac_transfer
   (m_dest_axi_wdata,
    m_ram_reg,
    \state_reg[0] ,
    m_dest_axi_awvalid,
    Q,
    up_req_eot,
    dbg_ids1,
    m_dest_axi_awaddr,
    s_axis_xfer_req,
    m_dest_axi_wvalid,
    m_dest_axi_wlast,
    up_sot,
    m_dest_axi_bready,
    s_axis_ready,
    \src_throttled_request_id_reg[0] ,
    \up_rdata_reg[26] ,
    \up_rdata_reg[3] ,
    \up_rdata_reg[8] ,
    \up_rdata_reg[10] ,
    \up_rdata_reg[11] ,
    \up_rdata_reg[17] ,
    \up_rdata_reg[24] ,
    \up_rdata_reg[25] ,
    \up_rdata_reg[27] ,
    \up_rdata_reg[2] ,
    m_dest_axi_awlen,
    m_dest_axi_aclk,
    s_axis_aclk,
    s_axi_aclk,
    ctrl_enable_reg,
    m_dest_axi_wready,
    up_dma_req_valid,
    m_dest_axi_awready,
    m_dest_axi_bvalid,
    s_axis_last,
    s_axis_valid,
    up_dma_x_length,
    ctrl_pause,
    ctrl_enable,
    \up_raddr_int_reg[2] ,
    \up_raddr_int_reg[2]_0 ,
    SR,
    D,
    up_dma_last_reg,
    s_axis_data);
  output [63:0]m_dest_axi_wdata;
  output [3:0]m_ram_reg;
  output [4:0]\state_reg[0] ;
  output m_dest_axi_awvalid;
  output [0:0]Q;
  output up_req_eot;
  output [7:0]dbg_ids1;
  output [28:0]m_dest_axi_awaddr;
  output s_axis_xfer_req;
  output m_dest_axi_wvalid;
  output m_dest_axi_wlast;
  output up_sot;
  output m_dest_axi_bready;
  output s_axis_ready;
  output [1:0]\src_throttled_request_id_reg[0] ;
  output \up_rdata_reg[26] ;
  output \up_rdata_reg[3] ;
  output \up_rdata_reg[8] ;
  output \up_rdata_reg[10] ;
  output \up_rdata_reg[11] ;
  output \up_rdata_reg[17] ;
  output \up_rdata_reg[24] ;
  output \up_rdata_reg[25] ;
  output \up_rdata_reg[27] ;
  output \up_rdata_reg[2] ;
  output [3:0]m_dest_axi_awlen;
  input m_dest_axi_aclk;
  input s_axis_aclk;
  input s_axi_aclk;
  input ctrl_enable_reg;
  input m_dest_axi_wready;
  input up_dma_req_valid;
  input m_dest_axi_awready;
  input m_dest_axi_bvalid;
  input s_axis_last;
  input s_axis_valid;
  input [20:0]up_dma_x_length;
  input ctrl_pause;
  input ctrl_enable;
  input \up_raddr_int_reg[2] ;
  input \up_raddr_int_reg[2]_0 ;
  input [0:0]SR;
  input [28:0]D;
  input [0:0]up_dma_last_reg;
  input [31:0]s_axis_data;

  wire [28:0]D;
  wire [0:0]Q;
  wire [0:0]SR;
  wire ctrl_enable;
  wire ctrl_enable_reg;
  wire ctrl_pause;
  wire [7:0]dbg_ids1;
  wire [2:2]dbg_status;
  wire i_reset_manager_n_2;
  wire m_dest_axi_aclk;
  wire [28:0]m_dest_axi_awaddr;
  wire [3:0]m_dest_axi_awlen;
  wire m_dest_axi_awready;
  wire m_dest_axi_awvalid;
  wire m_dest_axi_bready;
  wire m_dest_axi_bvalid;
  wire [63:0]m_dest_axi_wdata;
  wire m_dest_axi_wlast;
  wire m_dest_axi_wready;
  wire m_dest_axi_wvalid;
  wire [3:0]m_ram_reg;
  wire s_axi_aclk;
  wire s_axis_aclk;
  wire [31:0]s_axis_data;
  wire s_axis_last;
  wire s_axis_ready;
  wire s_axis_valid;
  wire s_axis_xfer_req;
  wire [1:0]\src_throttled_request_id_reg[0] ;
  wire [4:0]\state_reg[0] ;
  wire [0:0]up_dma_last_reg;
  wire up_dma_req_valid;
  wire [20:0]up_dma_x_length;
  wire \up_raddr_int_reg[2] ;
  wire \up_raddr_int_reg[2]_0 ;
  wire \up_rdata_reg[10] ;
  wire \up_rdata_reg[11] ;
  wire \up_rdata_reg[17] ;
  wire \up_rdata_reg[24] ;
  wire \up_rdata_reg[25] ;
  wire \up_rdata_reg[26] ;
  wire \up_rdata_reg[27] ;
  wire \up_rdata_reg[2] ;
  wire \up_rdata_reg[3] ;
  wire \up_rdata_reg[8] ;
  wire up_req_eot;
  wire up_sot;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dmac_request_arb i_request_arb
       (.D(D),
        .Q(Q),
        .\acked_reg[2] (up_sot),
        .do_enable_reg(\state_reg[0] [3]),
        .enabled_reg(\state_reg[0] [2]),
        .g1_in(dbg_ids1[7:4]),
        .\id_reg[2] (dbg_ids1[3:0]),
        .m_dest_axi_aclk(m_dest_axi_aclk),
        .m_dest_axi_awaddr(m_dest_axi_awaddr),
        .m_dest_axi_awlen(m_dest_axi_awlen),
        .m_dest_axi_awready(m_dest_axi_awready),
        .m_dest_axi_awvalid(m_dest_axi_awvalid),
        .m_dest_axi_bready(m_dest_axi_bready),
        .m_dest_axi_bvalid(m_dest_axi_bvalid),
        .m_dest_axi_wdata(m_dest_axi_wdata),
        .m_dest_axi_wlast(m_dest_axi_wlast),
        .m_dest_axi_wready(m_dest_axi_wready),
        .m_dest_axi_wvalid(m_dest_axi_wvalid),
        .m_ram_reg(m_ram_reg),
        .needs_reset_reg(\state_reg[0] [4]),
        .\reset_gen[0].reset_sync_reg[0] (i_reset_manager_n_2),
        .s_axi_aclk(s_axi_aclk),
        .s_axis_aclk(s_axis_aclk),
        .s_axis_data(s_axis_data),
        .s_axis_last(s_axis_last),
        .s_axis_ready(s_axis_ready),
        .s_axis_valid(s_axis_valid),
        .s_axis_xfer_req(s_axis_xfer_req),
        .\src_throttled_request_id_reg[0]_0 (\src_throttled_request_id_reg[0] ),
        .\state_reg[2] (dbg_status),
        .up_dma_last_reg(up_dma_last_reg),
        .up_dma_req_valid(up_dma_req_valid),
        .up_dma_x_length(up_dma_x_length),
        .\up_raddr_int_reg[2] (\up_raddr_int_reg[2] ),
        .\up_raddr_int_reg[2]_0 (\up_raddr_int_reg[2]_0 ),
        .\up_rdata_reg[10] (\up_rdata_reg[10] ),
        .\up_rdata_reg[11] (\up_rdata_reg[11] ),
        .\up_rdata_reg[17] (\up_rdata_reg[17] ),
        .\up_rdata_reg[24] (\up_rdata_reg[24] ),
        .\up_rdata_reg[25] (\up_rdata_reg[25] ),
        .\up_rdata_reg[26] (\up_rdata_reg[26] ),
        .\up_rdata_reg[27] (\up_rdata_reg[27] ),
        .\up_rdata_reg[2] (\up_rdata_reg[2] ),
        .\up_rdata_reg[3] (\up_rdata_reg[3] ),
        .\up_rdata_reg[8] (\up_rdata_reg[8] ),
        .up_req_eot(up_req_eot));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac_reset_manager i_reset_manager
       (.Q(Q),
        .SR(SR),
        .\acked_reg[1] (i_reset_manager_n_2),
        .ctrl_enable(ctrl_enable),
        .ctrl_enable_reg(ctrl_enable_reg),
        .ctrl_pause(ctrl_pause),
        .enabled_reg(\state_reg[0] [2]),
        .m_dest_axi_aclk(m_dest_axi_aclk),
        .s_axi_aclk(s_axi_aclk),
        .s_axis_waddr_reg(\state_reg[0] [3]),
        .\state_reg[0]_0 (\state_reg[0] [4]),
        .\state_reg[2]_0 ({dbg_status,\state_reg[0] [1:0]}),
        .up_sot(up_sot));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dmac_address_generator
   (m_dest_axi_awvalid,
    \id_reg[0]_0 ,
    \id_reg[0]_1 ,
    \id_reg[0]_2 ,
    \id_reg[3]_0 ,
    m_dest_axi_awaddr,
    address_enabled,
    E,
    \up_rdata_reg[3] ,
    \up_rdata_reg[8] ,
    \up_rdata_reg[10] ,
    \up_rdata_reg[11] ,
    m_dest_axi_awlen,
    m_dest_axi_aclk,
    Q,
    dest_address_eot,
    m_dest_axi_awready,
    \cdc_sync_fifo_ram_reg[33] ,
    \up_raddr_int_reg[2] ,
    \up_raddr_int_reg[2]_0 ,
    \src_id_reg[3] ,
    needs_reset_reg,
    do_enable_reg,
    s_axis_waddr,
    m_axis_raddr,
    \src_id_reg[0] );
  output m_dest_axi_awvalid;
  output \id_reg[0]_0 ;
  output \id_reg[0]_1 ;
  output \id_reg[0]_2 ;
  output \id_reg[3]_0 ;
  output [28:0]m_dest_axi_awaddr;
  output address_enabled;
  output [0:0]E;
  output \up_rdata_reg[3] ;
  output \up_rdata_reg[8] ;
  output \up_rdata_reg[10] ;
  output \up_rdata_reg[11] ;
  output [3:0]m_dest_axi_awlen;
  input m_dest_axi_aclk;
  input [0:0]Q;
  input dest_address_eot;
  input m_dest_axi_awready;
  input [32:0]\cdc_sync_fifo_ram_reg[33] ;
  input \up_raddr_int_reg[2] ;
  input \up_raddr_int_reg[2]_0 ;
  input [0:0]\src_id_reg[3] ;
  input needs_reset_reg;
  input do_enable_reg;
  input s_axis_waddr;
  input m_axis_raddr;
  input \src_id_reg[0] ;

  wire [0:0]E;
  wire [0:0]Q;
  wire addr_valid_d1;
  wire addr_valid_i_1_n_0;
  wire addr_valid_i_2_n_0;
  wire \address[0]_i_1_n_0 ;
  wire \address[10]_i_2_n_0 ;
  wire \address[10]_i_3_n_0 ;
  wire \address[10]_i_4_n_0 ;
  wire \address[10]_i_5_n_0 ;
  wire \address[14]_i_2_n_0 ;
  wire \address[14]_i_3_n_0 ;
  wire \address[14]_i_4_n_0 ;
  wire \address[14]_i_5_n_0 ;
  wire \address[18]_i_2_n_0 ;
  wire \address[18]_i_3_n_0 ;
  wire \address[18]_i_4_n_0 ;
  wire \address[18]_i_5_n_0 ;
  wire \address[1]_i_1_n_0 ;
  wire \address[22]_i_2_n_0 ;
  wire \address[22]_i_3_n_0 ;
  wire \address[22]_i_4_n_0 ;
  wire \address[22]_i_5_n_0 ;
  wire \address[26]_i_2_n_0 ;
  wire \address[26]_i_3_n_0 ;
  wire \address[26]_i_4_n_0 ;
  wire \address[26]_i_5_n_0 ;
  wire \address[28]_i_1_n_0 ;
  wire \address[28]_i_3_n_0 ;
  wire \address[28]_i_4_n_0 ;
  wire \address[2]_i_1_n_0 ;
  wire \address[6]_i_2_n_0 ;
  wire \address[6]_i_3_n_0 ;
  wire \address[6]_i_4_n_0 ;
  wire \address[6]_i_5_n_0 ;
  wire \address[6]_i_6_n_0 ;
  wire address_enabled;
  wire \address_reg[10]_i_1_n_0 ;
  wire \address_reg[10]_i_1_n_1 ;
  wire \address_reg[10]_i_1_n_2 ;
  wire \address_reg[10]_i_1_n_3 ;
  wire \address_reg[10]_i_1_n_4 ;
  wire \address_reg[10]_i_1_n_5 ;
  wire \address_reg[10]_i_1_n_6 ;
  wire \address_reg[10]_i_1_n_7 ;
  wire \address_reg[14]_i_1_n_0 ;
  wire \address_reg[14]_i_1_n_1 ;
  wire \address_reg[14]_i_1_n_2 ;
  wire \address_reg[14]_i_1_n_3 ;
  wire \address_reg[14]_i_1_n_4 ;
  wire \address_reg[14]_i_1_n_5 ;
  wire \address_reg[14]_i_1_n_6 ;
  wire \address_reg[14]_i_1_n_7 ;
  wire \address_reg[18]_i_1_n_0 ;
  wire \address_reg[18]_i_1_n_1 ;
  wire \address_reg[18]_i_1_n_2 ;
  wire \address_reg[18]_i_1_n_3 ;
  wire \address_reg[18]_i_1_n_4 ;
  wire \address_reg[18]_i_1_n_5 ;
  wire \address_reg[18]_i_1_n_6 ;
  wire \address_reg[18]_i_1_n_7 ;
  wire \address_reg[22]_i_1_n_0 ;
  wire \address_reg[22]_i_1_n_1 ;
  wire \address_reg[22]_i_1_n_2 ;
  wire \address_reg[22]_i_1_n_3 ;
  wire \address_reg[22]_i_1_n_4 ;
  wire \address_reg[22]_i_1_n_5 ;
  wire \address_reg[22]_i_1_n_6 ;
  wire \address_reg[22]_i_1_n_7 ;
  wire \address_reg[26]_i_1_n_0 ;
  wire \address_reg[26]_i_1_n_1 ;
  wire \address_reg[26]_i_1_n_2 ;
  wire \address_reg[26]_i_1_n_3 ;
  wire \address_reg[26]_i_1_n_4 ;
  wire \address_reg[26]_i_1_n_5 ;
  wire \address_reg[26]_i_1_n_6 ;
  wire \address_reg[26]_i_1_n_7 ;
  wire \address_reg[28]_i_2_n_3 ;
  wire \address_reg[28]_i_2_n_6 ;
  wire \address_reg[28]_i_2_n_7 ;
  wire \address_reg[6]_i_1_n_0 ;
  wire \address_reg[6]_i_1_n_1 ;
  wire \address_reg[6]_i_1_n_2 ;
  wire \address_reg[6]_i_1_n_3 ;
  wire \address_reg[6]_i_1_n_4 ;
  wire \address_reg[6]_i_1_n_5 ;
  wire \address_reg[6]_i_1_n_6 ;
  wire \address_reg[6]_i_1_n_7 ;
  wire [32:0]\cdc_sync_fifo_ram_reg[33] ;
  wire dest_address_eot;
  wire do_enable_reg;
  wire enabled_i_1_n_0;
  wire id0;
  wire \id[0]_i_1__1_n_0 ;
  wire \id[3]_i_2__1_n_0 ;
  wire \id_reg[0]_0 ;
  wire \id_reg[0]_1 ;
  wire \id_reg[0]_2 ;
  wire \id_reg[3]_0 ;
  wire [2:1]inc_id_return;
  wire last;
  wire [3:0]last_burst_len;
  wire \length[3]_i_1_n_0 ;
  wire m_axis_raddr;
  wire m_dest_axi_aclk;
  wire [28:0]m_dest_axi_awaddr;
  wire [3:0]m_dest_axi_awlen;
  wire m_dest_axi_awready;
  wire m_dest_axi_awvalid;
  wire needs_reset_reg;
  wire p_0_in0;
  wire req_ready_i_1_n_0;
  wire s_axis_waddr;
  wire \src_id_reg[0] ;
  wire [0:0]\src_id_reg[3] ;
  wire \up_raddr_int_reg[2] ;
  wire \up_raddr_int_reg[2]_0 ;
  wire \up_rdata_reg[10] ;
  wire \up_rdata_reg[11] ;
  wire \up_rdata_reg[3] ;
  wire \up_rdata_reg[8] ;
  wire [3:1]\NLW_address_reg[28]_i_2_CO_UNCONNECTED ;
  wire [3:2]\NLW_address_reg[28]_i_2_O_UNCONNECTED ;

  FDRE addr_valid_d1_reg
       (.C(m_dest_axi_aclk),
        .CE(1'b1),
        .D(m_dest_axi_awvalid),
        .Q(addr_valid_d1),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0000F700)) 
    addr_valid_i_1
       (.I0(m_dest_axi_awvalid),
        .I1(m_dest_axi_awready),
        .I2(E),
        .I3(addr_valid_i_2_n_0),
        .I4(Q),
        .O(addr_valid_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF44440440)) 
    addr_valid_i_2
       (.I0(E),
        .I1(do_enable_reg),
        .I2(\id_reg[0]_0 ),
        .I3(\src_id_reg[3] ),
        .I4(\src_id_reg[0] ),
        .I5(m_dest_axi_awvalid),
        .O(addr_valid_i_2_n_0));
  FDRE addr_valid_reg
       (.C(m_dest_axi_aclk),
        .CE(1'b1),
        .D(addr_valid_i_1_n_0),
        .Q(m_dest_axi_awvalid),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \address[0]_i_1 
       (.I0(\cdc_sync_fifo_ram_reg[33] [4]),
        .I1(E),
        .I2(m_dest_axi_awaddr[0]),
        .O(\address[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[10]_i_2 
       (.I0(\cdc_sync_fifo_ram_reg[33] [14]),
        .I1(E),
        .I2(m_dest_axi_awaddr[10]),
        .O(\address[10]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[10]_i_3 
       (.I0(\cdc_sync_fifo_ram_reg[33] [13]),
        .I1(E),
        .I2(m_dest_axi_awaddr[9]),
        .O(\address[10]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[10]_i_4 
       (.I0(\cdc_sync_fifo_ram_reg[33] [12]),
        .I1(E),
        .I2(m_dest_axi_awaddr[8]),
        .O(\address[10]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[10]_i_5 
       (.I0(\cdc_sync_fifo_ram_reg[33] [11]),
        .I1(E),
        .I2(m_dest_axi_awaddr[7]),
        .O(\address[10]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[14]_i_2 
       (.I0(\cdc_sync_fifo_ram_reg[33] [18]),
        .I1(E),
        .I2(m_dest_axi_awaddr[14]),
        .O(\address[14]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[14]_i_3 
       (.I0(\cdc_sync_fifo_ram_reg[33] [17]),
        .I1(E),
        .I2(m_dest_axi_awaddr[13]),
        .O(\address[14]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[14]_i_4 
       (.I0(\cdc_sync_fifo_ram_reg[33] [16]),
        .I1(E),
        .I2(m_dest_axi_awaddr[12]),
        .O(\address[14]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[14]_i_5 
       (.I0(\cdc_sync_fifo_ram_reg[33] [15]),
        .I1(E),
        .I2(m_dest_axi_awaddr[11]),
        .O(\address[14]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[18]_i_2 
       (.I0(\cdc_sync_fifo_ram_reg[33] [22]),
        .I1(E),
        .I2(m_dest_axi_awaddr[18]),
        .O(\address[18]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[18]_i_3 
       (.I0(\cdc_sync_fifo_ram_reg[33] [21]),
        .I1(E),
        .I2(m_dest_axi_awaddr[17]),
        .O(\address[18]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[18]_i_4 
       (.I0(\cdc_sync_fifo_ram_reg[33] [20]),
        .I1(E),
        .I2(m_dest_axi_awaddr[16]),
        .O(\address[18]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[18]_i_5 
       (.I0(\cdc_sync_fifo_ram_reg[33] [19]),
        .I1(E),
        .I2(m_dest_axi_awaddr[15]),
        .O(\address[18]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \address[1]_i_1 
       (.I0(\cdc_sync_fifo_ram_reg[33] [5]),
        .I1(E),
        .I2(m_dest_axi_awaddr[1]),
        .O(\address[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[22]_i_2 
       (.I0(\cdc_sync_fifo_ram_reg[33] [26]),
        .I1(E),
        .I2(m_dest_axi_awaddr[22]),
        .O(\address[22]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[22]_i_3 
       (.I0(\cdc_sync_fifo_ram_reg[33] [25]),
        .I1(E),
        .I2(m_dest_axi_awaddr[21]),
        .O(\address[22]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[22]_i_4 
       (.I0(\cdc_sync_fifo_ram_reg[33] [24]),
        .I1(E),
        .I2(m_dest_axi_awaddr[20]),
        .O(\address[22]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[22]_i_5 
       (.I0(\cdc_sync_fifo_ram_reg[33] [23]),
        .I1(E),
        .I2(m_dest_axi_awaddr[19]),
        .O(\address[22]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[26]_i_2 
       (.I0(\cdc_sync_fifo_ram_reg[33] [30]),
        .I1(E),
        .I2(m_dest_axi_awaddr[26]),
        .O(\address[26]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[26]_i_3 
       (.I0(\cdc_sync_fifo_ram_reg[33] [29]),
        .I1(E),
        .I2(m_dest_axi_awaddr[25]),
        .O(\address[26]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[26]_i_4 
       (.I0(\cdc_sync_fifo_ram_reg[33] [28]),
        .I1(E),
        .I2(m_dest_axi_awaddr[24]),
        .O(\address[26]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[26]_i_5 
       (.I0(\cdc_sync_fifo_ram_reg[33] [27]),
        .I1(E),
        .I2(m_dest_axi_awaddr[23]),
        .O(\address[26]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \address[28]_i_1 
       (.I0(E),
        .I1(m_dest_axi_awready),
        .I2(m_dest_axi_awvalid),
        .O(\address[28]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[28]_i_3 
       (.I0(\cdc_sync_fifo_ram_reg[33] [32]),
        .I1(E),
        .I2(m_dest_axi_awaddr[28]),
        .O(\address[28]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[28]_i_4 
       (.I0(\cdc_sync_fifo_ram_reg[33] [31]),
        .I1(E),
        .I2(m_dest_axi_awaddr[27]),
        .O(\address[28]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[2]_i_1 
       (.I0(\cdc_sync_fifo_ram_reg[33] [6]),
        .I1(E),
        .I2(m_dest_axi_awaddr[2]),
        .O(\address[2]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \address[6]_i_2 
       (.I0(E),
        .O(\address[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[6]_i_3 
       (.I0(\cdc_sync_fifo_ram_reg[33] [10]),
        .I1(E),
        .I2(m_dest_axi_awaddr[6]),
        .O(\address[6]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[6]_i_4 
       (.I0(\cdc_sync_fifo_ram_reg[33] [9]),
        .I1(E),
        .I2(m_dest_axi_awaddr[5]),
        .O(\address[6]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \address[6]_i_5 
       (.I0(m_dest_axi_awaddr[4]),
        .I1(\cdc_sync_fifo_ram_reg[33] [8]),
        .I2(E),
        .O(\address[6]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[6]_i_6 
       (.I0(\cdc_sync_fifo_ram_reg[33] [7]),
        .I1(E),
        .I2(m_dest_axi_awaddr[3]),
        .O(\address[6]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[0] 
       (.C(m_dest_axi_aclk),
        .CE(\address[28]_i_1_n_0 ),
        .D(\address[0]_i_1_n_0 ),
        .Q(m_dest_axi_awaddr[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[10] 
       (.C(m_dest_axi_aclk),
        .CE(\address[28]_i_1_n_0 ),
        .D(\address_reg[10]_i_1_n_4 ),
        .Q(m_dest_axi_awaddr[10]),
        .R(1'b0));
  CARRY4 \address_reg[10]_i_1 
       (.CI(\address_reg[6]_i_1_n_0 ),
        .CO({\address_reg[10]_i_1_n_0 ,\address_reg[10]_i_1_n_1 ,\address_reg[10]_i_1_n_2 ,\address_reg[10]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\address_reg[10]_i_1_n_4 ,\address_reg[10]_i_1_n_5 ,\address_reg[10]_i_1_n_6 ,\address_reg[10]_i_1_n_7 }),
        .S({\address[10]_i_2_n_0 ,\address[10]_i_3_n_0 ,\address[10]_i_4_n_0 ,\address[10]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[11] 
       (.C(m_dest_axi_aclk),
        .CE(\address[28]_i_1_n_0 ),
        .D(\address_reg[14]_i_1_n_7 ),
        .Q(m_dest_axi_awaddr[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[12] 
       (.C(m_dest_axi_aclk),
        .CE(\address[28]_i_1_n_0 ),
        .D(\address_reg[14]_i_1_n_6 ),
        .Q(m_dest_axi_awaddr[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[13] 
       (.C(m_dest_axi_aclk),
        .CE(\address[28]_i_1_n_0 ),
        .D(\address_reg[14]_i_1_n_5 ),
        .Q(m_dest_axi_awaddr[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[14] 
       (.C(m_dest_axi_aclk),
        .CE(\address[28]_i_1_n_0 ),
        .D(\address_reg[14]_i_1_n_4 ),
        .Q(m_dest_axi_awaddr[14]),
        .R(1'b0));
  CARRY4 \address_reg[14]_i_1 
       (.CI(\address_reg[10]_i_1_n_0 ),
        .CO({\address_reg[14]_i_1_n_0 ,\address_reg[14]_i_1_n_1 ,\address_reg[14]_i_1_n_2 ,\address_reg[14]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\address_reg[14]_i_1_n_4 ,\address_reg[14]_i_1_n_5 ,\address_reg[14]_i_1_n_6 ,\address_reg[14]_i_1_n_7 }),
        .S({\address[14]_i_2_n_0 ,\address[14]_i_3_n_0 ,\address[14]_i_4_n_0 ,\address[14]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[15] 
       (.C(m_dest_axi_aclk),
        .CE(\address[28]_i_1_n_0 ),
        .D(\address_reg[18]_i_1_n_7 ),
        .Q(m_dest_axi_awaddr[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[16] 
       (.C(m_dest_axi_aclk),
        .CE(\address[28]_i_1_n_0 ),
        .D(\address_reg[18]_i_1_n_6 ),
        .Q(m_dest_axi_awaddr[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[17] 
       (.C(m_dest_axi_aclk),
        .CE(\address[28]_i_1_n_0 ),
        .D(\address_reg[18]_i_1_n_5 ),
        .Q(m_dest_axi_awaddr[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[18] 
       (.C(m_dest_axi_aclk),
        .CE(\address[28]_i_1_n_0 ),
        .D(\address_reg[18]_i_1_n_4 ),
        .Q(m_dest_axi_awaddr[18]),
        .R(1'b0));
  CARRY4 \address_reg[18]_i_1 
       (.CI(\address_reg[14]_i_1_n_0 ),
        .CO({\address_reg[18]_i_1_n_0 ,\address_reg[18]_i_1_n_1 ,\address_reg[18]_i_1_n_2 ,\address_reg[18]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\address_reg[18]_i_1_n_4 ,\address_reg[18]_i_1_n_5 ,\address_reg[18]_i_1_n_6 ,\address_reg[18]_i_1_n_7 }),
        .S({\address[18]_i_2_n_0 ,\address[18]_i_3_n_0 ,\address[18]_i_4_n_0 ,\address[18]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[19] 
       (.C(m_dest_axi_aclk),
        .CE(\address[28]_i_1_n_0 ),
        .D(\address_reg[22]_i_1_n_7 ),
        .Q(m_dest_axi_awaddr[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[1] 
       (.C(m_dest_axi_aclk),
        .CE(\address[28]_i_1_n_0 ),
        .D(\address[1]_i_1_n_0 ),
        .Q(m_dest_axi_awaddr[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[20] 
       (.C(m_dest_axi_aclk),
        .CE(\address[28]_i_1_n_0 ),
        .D(\address_reg[22]_i_1_n_6 ),
        .Q(m_dest_axi_awaddr[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[21] 
       (.C(m_dest_axi_aclk),
        .CE(\address[28]_i_1_n_0 ),
        .D(\address_reg[22]_i_1_n_5 ),
        .Q(m_dest_axi_awaddr[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[22] 
       (.C(m_dest_axi_aclk),
        .CE(\address[28]_i_1_n_0 ),
        .D(\address_reg[22]_i_1_n_4 ),
        .Q(m_dest_axi_awaddr[22]),
        .R(1'b0));
  CARRY4 \address_reg[22]_i_1 
       (.CI(\address_reg[18]_i_1_n_0 ),
        .CO({\address_reg[22]_i_1_n_0 ,\address_reg[22]_i_1_n_1 ,\address_reg[22]_i_1_n_2 ,\address_reg[22]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\address_reg[22]_i_1_n_4 ,\address_reg[22]_i_1_n_5 ,\address_reg[22]_i_1_n_6 ,\address_reg[22]_i_1_n_7 }),
        .S({\address[22]_i_2_n_0 ,\address[22]_i_3_n_0 ,\address[22]_i_4_n_0 ,\address[22]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[23] 
       (.C(m_dest_axi_aclk),
        .CE(\address[28]_i_1_n_0 ),
        .D(\address_reg[26]_i_1_n_7 ),
        .Q(m_dest_axi_awaddr[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[24] 
       (.C(m_dest_axi_aclk),
        .CE(\address[28]_i_1_n_0 ),
        .D(\address_reg[26]_i_1_n_6 ),
        .Q(m_dest_axi_awaddr[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[25] 
       (.C(m_dest_axi_aclk),
        .CE(\address[28]_i_1_n_0 ),
        .D(\address_reg[26]_i_1_n_5 ),
        .Q(m_dest_axi_awaddr[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[26] 
       (.C(m_dest_axi_aclk),
        .CE(\address[28]_i_1_n_0 ),
        .D(\address_reg[26]_i_1_n_4 ),
        .Q(m_dest_axi_awaddr[26]),
        .R(1'b0));
  CARRY4 \address_reg[26]_i_1 
       (.CI(\address_reg[22]_i_1_n_0 ),
        .CO({\address_reg[26]_i_1_n_0 ,\address_reg[26]_i_1_n_1 ,\address_reg[26]_i_1_n_2 ,\address_reg[26]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\address_reg[26]_i_1_n_4 ,\address_reg[26]_i_1_n_5 ,\address_reg[26]_i_1_n_6 ,\address_reg[26]_i_1_n_7 }),
        .S({\address[26]_i_2_n_0 ,\address[26]_i_3_n_0 ,\address[26]_i_4_n_0 ,\address[26]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[27] 
       (.C(m_dest_axi_aclk),
        .CE(\address[28]_i_1_n_0 ),
        .D(\address_reg[28]_i_2_n_7 ),
        .Q(m_dest_axi_awaddr[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[28] 
       (.C(m_dest_axi_aclk),
        .CE(\address[28]_i_1_n_0 ),
        .D(\address_reg[28]_i_2_n_6 ),
        .Q(m_dest_axi_awaddr[28]),
        .R(1'b0));
  CARRY4 \address_reg[28]_i_2 
       (.CI(\address_reg[26]_i_1_n_0 ),
        .CO({\NLW_address_reg[28]_i_2_CO_UNCONNECTED [3:1],\address_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_address_reg[28]_i_2_O_UNCONNECTED [3:2],\address_reg[28]_i_2_n_6 ,\address_reg[28]_i_2_n_7 }),
        .S({1'b0,1'b0,\address[28]_i_3_n_0 ,\address[28]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[2] 
       (.C(m_dest_axi_aclk),
        .CE(\address[28]_i_1_n_0 ),
        .D(\address[2]_i_1_n_0 ),
        .Q(m_dest_axi_awaddr[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[3] 
       (.C(m_dest_axi_aclk),
        .CE(\address[28]_i_1_n_0 ),
        .D(\address_reg[6]_i_1_n_7 ),
        .Q(m_dest_axi_awaddr[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[4] 
       (.C(m_dest_axi_aclk),
        .CE(\address[28]_i_1_n_0 ),
        .D(\address_reg[6]_i_1_n_6 ),
        .Q(m_dest_axi_awaddr[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[5] 
       (.C(m_dest_axi_aclk),
        .CE(\address[28]_i_1_n_0 ),
        .D(\address_reg[6]_i_1_n_5 ),
        .Q(m_dest_axi_awaddr[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[6] 
       (.C(m_dest_axi_aclk),
        .CE(\address[28]_i_1_n_0 ),
        .D(\address_reg[6]_i_1_n_4 ),
        .Q(m_dest_axi_awaddr[6]),
        .R(1'b0));
  CARRY4 \address_reg[6]_i_1 
       (.CI(1'b0),
        .CO({\address_reg[6]_i_1_n_0 ,\address_reg[6]_i_1_n_1 ,\address_reg[6]_i_1_n_2 ,\address_reg[6]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\address[6]_i_2_n_0 ,1'b0}),
        .O({\address_reg[6]_i_1_n_4 ,\address_reg[6]_i_1_n_5 ,\address_reg[6]_i_1_n_6 ,\address_reg[6]_i_1_n_7 }),
        .S({\address[6]_i_3_n_0 ,\address[6]_i_4_n_0 ,\address[6]_i_5_n_0 ,\address[6]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[7] 
       (.C(m_dest_axi_aclk),
        .CE(\address[28]_i_1_n_0 ),
        .D(\address_reg[10]_i_1_n_7 ),
        .Q(m_dest_axi_awaddr[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[8] 
       (.C(m_dest_axi_aclk),
        .CE(\address[28]_i_1_n_0 ),
        .D(\address_reg[10]_i_1_n_6 ),
        .Q(m_dest_axi_awaddr[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[9] 
       (.C(m_dest_axi_aclk),
        .CE(\address[28]_i_1_n_0 ),
        .D(\address_reg[10]_i_1_n_5 ),
        .Q(m_dest_axi_awaddr[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hEA)) 
    enabled_i_1
       (.I0(do_enable_reg),
        .I1(m_dest_axi_awvalid),
        .I2(address_enabled),
        .O(enabled_i_1_n_0));
  FDRE enabled_reg
       (.C(m_dest_axi_aclk),
        .CE(1'b1),
        .D(enabled_i_1_n_0),
        .Q(address_enabled),
        .R(Q));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \id[0]_i_1__1 
       (.I0(\id_reg[0]_2 ),
        .I1(\id_reg[0]_1 ),
        .I2(\id_reg[0]_0 ),
        .O(\id[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hD782)) 
    \id[1]_i_1__1 
       (.I0(\id_reg[3]_0 ),
        .I1(\id_reg[0]_0 ),
        .I2(\id_reg[0]_1 ),
        .I3(\id_reg[0]_2 ),
        .O(inc_id_return[1]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hCC4E)) 
    \id[2]_i_1__1 
       (.I0(\id_reg[0]_2 ),
        .I1(\id_reg[0]_1 ),
        .I2(\id_reg[0]_0 ),
        .I3(\id_reg[3]_0 ),
        .O(inc_id_return[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \id[3]_i_1 
       (.I0(m_dest_axi_awvalid),
        .I1(addr_valid_d1),
        .O(id0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hCCD8)) 
    \id[3]_i_2__1 
       (.I0(\id_reg[3]_0 ),
        .I1(\id_reg[0]_0 ),
        .I2(\id_reg[0]_1 ),
        .I3(\id_reg[0]_2 ),
        .O(\id[3]_i_2__1_n_0 ));
  FDRE \id_reg[0] 
       (.C(m_dest_axi_aclk),
        .CE(id0),
        .D(\id[0]_i_1__1_n_0 ),
        .Q(\id_reg[3]_0 ),
        .R(Q));
  FDRE \id_reg[1] 
       (.C(m_dest_axi_aclk),
        .CE(id0),
        .D(inc_id_return[1]),
        .Q(\id_reg[0]_2 ),
        .R(Q));
  FDRE \id_reg[2] 
       (.C(m_dest_axi_aclk),
        .CE(id0),
        .D(inc_id_return[2]),
        .Q(\id_reg[0]_1 ),
        .R(Q));
  FDRE \id_reg[3] 
       (.C(m_dest_axi_aclk),
        .CE(id0),
        .D(\id[3]_i_2__1_n_0 ),
        .Q(\id_reg[0]_0 ),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \last_burst_len_reg[0] 
       (.C(m_dest_axi_aclk),
        .CE(E),
        .D(\cdc_sync_fifo_ram_reg[33] [0]),
        .Q(last_burst_len[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_burst_len_reg[1] 
       (.C(m_dest_axi_aclk),
        .CE(E),
        .D(\cdc_sync_fifo_ram_reg[33] [1]),
        .Q(last_burst_len[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_burst_len_reg[2] 
       (.C(m_dest_axi_aclk),
        .CE(E),
        .D(\cdc_sync_fifo_ram_reg[33] [2]),
        .Q(last_burst_len[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_burst_len_reg[3] 
       (.C(m_dest_axi_aclk),
        .CE(E),
        .D(\cdc_sync_fifo_ram_reg[33] [3]),
        .Q(last_burst_len[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    last_reg
       (.C(m_dest_axi_aclk),
        .CE(p_0_in0),
        .D(dest_address_eot),
        .Q(last),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h1)) 
    \length[3]_i_1 
       (.I0(m_dest_axi_awvalid),
        .I1(dest_address_eot),
        .O(\length[3]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \length[3]_i_2 
       (.I0(m_dest_axi_awvalid),
        .O(p_0_in0));
  FDSE #(
    .INIT(1'b0)) 
    \length_reg[0] 
       (.C(m_dest_axi_aclk),
        .CE(p_0_in0),
        .D(last_burst_len[0]),
        .Q(m_dest_axi_awlen[0]),
        .S(\length[3]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \length_reg[1] 
       (.C(m_dest_axi_aclk),
        .CE(p_0_in0),
        .D(last_burst_len[1]),
        .Q(m_dest_axi_awlen[1]),
        .S(\length[3]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \length_reg[2] 
       (.C(m_dest_axi_aclk),
        .CE(p_0_in0),
        .D(last_burst_len[2]),
        .Q(m_dest_axi_awlen[2]),
        .S(\length[3]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \length_reg[3] 
       (.C(m_dest_axi_aclk),
        .CE(p_0_in0),
        .D(last_burst_len[3]),
        .Q(m_dest_axi_awlen[3]),
        .S(\length[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h99F0990099009900)) 
    req_ready_i_1
       (.I0(s_axis_waddr),
        .I1(m_axis_raddr),
        .I2(last),
        .I3(E),
        .I4(m_dest_axi_awready),
        .I5(m_dest_axi_awvalid),
        .O(req_ready_i_1_n_0));
  FDSE req_ready_reg
       (.C(m_dest_axi_aclk),
        .CE(1'b1),
        .D(req_ready_i_1_n_0),
        .Q(E),
        .S(Q));
  LUT5 #(
    .INIT(32'h5050CFC0)) 
    \up_rdata[10]_i_3 
       (.I0(Q),
        .I1(\id_reg[0]_1 ),
        .I2(\up_raddr_int_reg[2]_0 ),
        .I3(m_dest_axi_awaddr[7]),
        .I4(\up_raddr_int_reg[2] ),
        .O(\up_rdata_reg[10] ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \up_rdata[11]_i_2 
       (.I0(needs_reset_reg),
        .I1(\id_reg[0]_0 ),
        .I2(\up_raddr_int_reg[2]_0 ),
        .I3(m_dest_axi_awaddr[8]),
        .I4(\up_raddr_int_reg[2] ),
        .O(\up_rdata_reg[11] ));
  LUT4 #(
    .INIT(16'h3202)) 
    \up_rdata[3]_i_2 
       (.I0(m_dest_axi_awaddr[0]),
        .I1(\up_raddr_int_reg[2] ),
        .I2(\up_raddr_int_reg[2]_0 ),
        .I3(\src_id_reg[3] ),
        .O(\up_rdata_reg[3] ));
  LUT5 #(
    .INIT(32'h5050CFC0)) 
    \up_rdata[8]_i_2 
       (.I0(Q),
        .I1(\id_reg[3]_0 ),
        .I2(\up_raddr_int_reg[2]_0 ),
        .I3(m_dest_axi_awaddr[5]),
        .I4(\up_raddr_int_reg[2] ),
        .O(\up_rdata_reg[8] ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dmac_data_mover
   (\beat_counter_reg[0]_0 ,
    \id_reg[3]_0 ,
    \id_reg[3]_1 ,
    \id_reg[3]_2 ,
    \id_reg[3]_3 ,
    \beat_counter_reg[0]_1 ,
    s_axis_xfer_req,
    s_axis_ready,
    valid_reg,
    src_last,
    m_axis_raddr_reg,
    Q,
    s_axis_aclk,
    \reset_gen[0].reset_sync_reg[0] ,
    s_axis_last,
    s_axis_valid,
    src_eot,
    p_1_out0,
    \src_throttled_request_id_reg[3] ,
    m_axis_raddr_reg_0,
    s_axis_waddr_reg);
  output \beat_counter_reg[0]_0 ;
  output \id_reg[3]_0 ;
  output \id_reg[3]_1 ;
  output \id_reg[3]_2 ;
  output \id_reg[3]_3 ;
  output \beat_counter_reg[0]_1 ;
  output s_axis_xfer_req;
  output s_axis_ready;
  output valid_reg;
  output src_last;
  output m_axis_raddr_reg;
  input [4:0]Q;
  input s_axis_aclk;
  input [0:0]\reset_gen[0].reset_sync_reg[0] ;
  input s_axis_last;
  input s_axis_valid;
  input src_eot;
  input p_1_out0;
  input [3:0]\src_throttled_request_id_reg[3] ;
  input m_axis_raddr_reg_0;
  input s_axis_waddr_reg;

  wire [4:0]Q;
  wire active_i_1_n_0;
  wire \beat_counter_reg[0]_0 ;
  wire \beat_counter_reg[0]_1 ;
  wire [4:0]beat_counter_reg__0;
  wire \id[3]_i_2_n_0 ;
  wire [3:0]id_next;
  wire \id_reg[3]_0 ;
  wire \id_reg[3]_1 ;
  wire \id_reg[3]_2 ;
  wire \id_reg[3]_3 ;
  wire [4:0]last_burst_length;
  wire last_eot;
  wire last_eot_i_1_n_0;
  wire last_eot_i_2_n_0;
  wire last_eot_i_3_n_0;
  wire last_non_eot;
  wire last_non_eot_i_2_n_0;
  wire m_axis_raddr_reg;
  wire m_axis_raddr_reg_0;
  wire [4:0]p_0_in;
  wire p_1_out0;
  wire pending_burst_i_1_n_0;
  wire pending_burst_i_2_n_0;
  wire pending_burst_i_3_n_0;
  wire pending_burst_i_4_n_0;
  wire req_xlast_d;
  wire [0:0]\reset_gen[0].reset_sync_reg[0] ;
  wire s_axis_aclk;
  wire s_axis_last;
  wire s_axis_ready;
  wire s_axis_valid;
  wire s_axis_waddr_reg;
  wire s_axis_xfer_req;
  wire src_eot;
  wire src_last;
  wire src_req_ready;
  wire [3:0]\src_throttled_request_id_reg[3] ;
  wire src_valid;
  wire transfer_abort_i_1_n_0;
  wire transfer_abort_i_2_n_0;
  wire valid_reg;

  LUT6 #(
    .INIT(64'h6FFFFFFF66666666)) 
    active_i_1
       (.I0(m_axis_raddr_reg_0),
        .I1(s_axis_waddr_reg),
        .I2(src_eot),
        .I3(last_eot),
        .I4(src_valid),
        .I5(s_axis_xfer_req),
        .O(active_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    active_reg
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(active_i_1_n_0),
        .Q(s_axis_xfer_req),
        .R(\reset_gen[0].reset_sync_reg[0] ));
  LUT1 #(
    .INIT(2'h1)) 
    \beat_counter[0]_i_1 
       (.I0(beat_counter_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \beat_counter[1]_i_1 
       (.I0(beat_counter_reg__0[0]),
        .I1(beat_counter_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \beat_counter[2]_i_1 
       (.I0(beat_counter_reg__0[2]),
        .I1(beat_counter_reg__0[1]),
        .I2(beat_counter_reg__0[0]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \beat_counter[3]_i_1 
       (.I0(beat_counter_reg__0[3]),
        .I1(beat_counter_reg__0[0]),
        .I2(beat_counter_reg__0[1]),
        .I3(beat_counter_reg__0[2]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \beat_counter[4]_i_1 
       (.I0(beat_counter_reg__0[4]),
        .I1(beat_counter_reg__0[2]),
        .I2(beat_counter_reg__0[1]),
        .I3(beat_counter_reg__0[0]),
        .I4(beat_counter_reg__0[3]),
        .O(p_0_in[4]));
  FDSE #(
    .INIT(1'b0)) 
    \beat_counter_reg[0] 
       (.C(s_axis_aclk),
        .CE(src_valid),
        .D(p_0_in[0]),
        .Q(beat_counter_reg__0[0]),
        .S(src_req_ready));
  FDRE #(
    .INIT(1'b0)) 
    \beat_counter_reg[1] 
       (.C(s_axis_aclk),
        .CE(src_valid),
        .D(p_0_in[1]),
        .Q(beat_counter_reg__0[1]),
        .R(src_req_ready));
  FDRE #(
    .INIT(1'b0)) 
    \beat_counter_reg[2] 
       (.C(s_axis_aclk),
        .CE(src_valid),
        .D(p_0_in[2]),
        .Q(beat_counter_reg__0[2]),
        .R(src_req_ready));
  FDRE #(
    .INIT(1'b0)) 
    \beat_counter_reg[3] 
       (.C(s_axis_aclk),
        .CE(src_valid),
        .D(p_0_in[3]),
        .Q(beat_counter_reg__0[3]),
        .R(src_req_ready));
  FDRE #(
    .INIT(1'b0)) 
    \beat_counter_reg[4] 
       (.C(s_axis_aclk),
        .CE(src_valid),
        .D(p_0_in[4]),
        .Q(beat_counter_reg__0[4]),
        .R(src_req_ready));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h8BB8B88B)) 
    \id[0]_i_1 
       (.I0(\id_reg[3]_3 ),
        .I1(\id[3]_i_2_n_0 ),
        .I2(\id_reg[3]_2 ),
        .I3(\id_reg[3]_1 ),
        .I4(\id_reg[3]_0 ),
        .O(id_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'hFF9F0090)) 
    \id[1]_i_1 
       (.I0(\id_reg[3]_1 ),
        .I1(\id_reg[3]_0 ),
        .I2(\id_reg[3]_3 ),
        .I3(\id[3]_i_2_n_0 ),
        .I4(\id_reg[3]_2 ),
        .O(id_next[1]));
  LUT5 #(
    .INIT(32'hCC8CCCDC)) 
    \id[2]_i_1 
       (.I0(\id_reg[3]_3 ),
        .I1(\id_reg[3]_1 ),
        .I2(\id_reg[3]_2 ),
        .I3(\id[3]_i_2_n_0 ),
        .I4(\id_reg[3]_0 ),
        .O(id_next[2]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'hFF00FE10)) 
    \id[3]_i_1__0 
       (.I0(\id[3]_i_2_n_0 ),
        .I1(\id_reg[3]_2 ),
        .I2(\id_reg[3]_1 ),
        .I3(\id_reg[3]_0 ),
        .I4(\id_reg[3]_3 ),
        .O(id_next[3]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h57F7)) 
    \id[3]_i_2 
       (.I0(src_valid),
        .I1(last_non_eot),
        .I2(src_eot),
        .I3(last_eot),
        .O(\id[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \id_reg[0] 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(id_next[0]),
        .Q(\id_reg[3]_3 ),
        .R(\reset_gen[0].reset_sync_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \id_reg[1] 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(id_next[1]),
        .Q(\id_reg[3]_2 ),
        .R(\reset_gen[0].reset_sync_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \id_reg[2] 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(id_next[2]),
        .Q(\id_reg[3]_1 ),
        .R(\reset_gen[0].reset_sync_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \id_reg[3] 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(id_next[3]),
        .Q(\id_reg[3]_0 ),
        .R(\reset_gen[0].reset_sync_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \last_burst_length_reg[0] 
       (.C(s_axis_aclk),
        .CE(src_req_ready),
        .D(1'b1),
        .Q(last_burst_length[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_burst_length_reg[1] 
       (.C(s_axis_aclk),
        .CE(src_req_ready),
        .D(Q[1]),
        .Q(last_burst_length[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_burst_length_reg[2] 
       (.C(s_axis_aclk),
        .CE(src_req_ready),
        .D(Q[2]),
        .Q(last_burst_length[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_burst_length_reg[3] 
       (.C(s_axis_aclk),
        .CE(src_req_ready),
        .D(Q[3]),
        .Q(last_burst_length[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_burst_length_reg[4] 
       (.C(s_axis_aclk),
        .CE(src_req_ready),
        .D(Q[4]),
        .Q(last_burst_length[4]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h01FF000003000000)) 
    last_eot_i_1
       (.I0(src_eot),
        .I1(last_eot_i_2_n_0),
        .I2(last_eot_i_3_n_0),
        .I3(src_valid),
        .I4(s_axis_xfer_req),
        .I5(last_eot),
        .O(last_eot_i_1_n_0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    last_eot_i_2
       (.I0(last_burst_length[4]),
        .I1(beat_counter_reg__0[4]),
        .I2(beat_counter_reg__0[0]),
        .I3(last_burst_length[0]),
        .I4(beat_counter_reg__0[2]),
        .I5(last_burst_length[2]),
        .O(last_eot_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h6FF6)) 
    last_eot_i_3
       (.I0(last_burst_length[1]),
        .I1(beat_counter_reg__0[1]),
        .I2(last_burst_length[3]),
        .I3(beat_counter_reg__0[3]),
        .O(last_eot_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    last_eot_reg
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(last_eot_i_1_n_0),
        .Q(last_eot),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    last_i_1
       (.I0(last_eot),
        .I1(src_eot),
        .I2(last_non_eot),
        .O(src_last));
  LUT4 #(
    .INIT(16'hE000)) 
    last_non_eot_i_1
       (.I0(s_axis_valid),
        .I1(\beat_counter_reg[0]_1 ),
        .I2(s_axis_xfer_req),
        .I3(\beat_counter_reg[0]_0 ),
        .O(src_valid));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    last_non_eot_i_2
       (.I0(beat_counter_reg__0[4]),
        .I1(beat_counter_reg__0[2]),
        .I2(beat_counter_reg__0[1]),
        .I3(beat_counter_reg__0[0]),
        .I4(beat_counter_reg__0[3]),
        .O(last_non_eot_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    last_non_eot_reg
       (.C(s_axis_aclk),
        .CE(src_valid),
        .D(last_non_eot_i_2_n_0),
        .Q(last_non_eot),
        .R(src_req_ready));
  LUT6 #(
    .INIT(64'hFFFF2AAAD5550000)) 
    m_axis_raddr_i_1
       (.I0(s_axis_xfer_req),
        .I1(src_eot),
        .I2(last_eot),
        .I3(src_valid),
        .I4(s_axis_waddr_reg),
        .I5(m_axis_raddr_reg_0),
        .O(m_axis_raddr_reg));
  LUT6 #(
    .INIT(64'hFFFFFFFF9FFFFF9F)) 
    pending_burst_i_1
       (.I0(pending_burst_i_2_n_0),
        .I1(\src_throttled_request_id_reg[3] [1]),
        .I2(pending_burst_i_3_n_0),
        .I3(\src_throttled_request_id_reg[3] [0]),
        .I4(id_next[0]),
        .I5(pending_burst_i_4_n_0),
        .O(pending_burst_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h45757545)) 
    pending_burst_i_2
       (.I0(\id_reg[3]_2 ),
        .I1(\id[3]_i_2_n_0 ),
        .I2(\id_reg[3]_3 ),
        .I3(\id_reg[3]_0 ),
        .I4(\id_reg[3]_1 ),
        .O(pending_burst_i_2_n_0));
  LUT6 #(
    .INIT(64'hA5A595A5A5A5A6A5)) 
    pending_burst_i_3
       (.I0(\src_throttled_request_id_reg[3] [2]),
        .I1(\id_reg[3]_3 ),
        .I2(\id_reg[3]_1 ),
        .I3(\id_reg[3]_2 ),
        .I4(\id[3]_i_2_n_0 ),
        .I5(\id_reg[3]_0 ),
        .O(pending_burst_i_3_n_0));
  LUT6 #(
    .INIT(64'h5A5A5A5A5A5A596A)) 
    pending_burst_i_4
       (.I0(\src_throttled_request_id_reg[3] [3]),
        .I1(\id_reg[3]_3 ),
        .I2(\id_reg[3]_0 ),
        .I3(\id_reg[3]_1 ),
        .I4(\id_reg[3]_2 ),
        .I5(\id[3]_i_2_n_0 ),
        .O(pending_burst_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    pending_burst_reg
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(pending_burst_i_1_n_0),
        .Q(\beat_counter_reg[0]_0 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBBB3333333333333)) 
    req_xlast_d_i_1
       (.I0(\beat_counter_reg[0]_0 ),
        .I1(s_axis_xfer_req),
        .I2(\beat_counter_reg[0]_1 ),
        .I3(s_axis_valid),
        .I4(last_eot),
        .I5(src_eot),
        .O(src_req_ready));
  FDRE #(
    .INIT(1'b0)) 
    req_xlast_d_reg
       (.C(s_axis_aclk),
        .CE(src_req_ready),
        .D(Q[0]),
        .Q(req_xlast_d),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h40)) 
    s_axis_ready_INST_0
       (.I0(\beat_counter_reg[0]_1 ),
        .I1(s_axis_xfer_req),
        .I2(\beat_counter_reg[0]_0 ),
        .O(s_axis_ready));
  LUT6 #(
    .INIT(64'h0000000077777000)) 
    transfer_abort_i_1
       (.I0(transfer_abort_i_2_n_0),
        .I1(req_xlast_d),
        .I2(src_valid),
        .I3(s_axis_last),
        .I4(\beat_counter_reg[0]_1 ),
        .I5(\reset_gen[0].reset_sync_reg[0] ),
        .O(transfer_abort_i_1_n_0));
  LUT6 #(
    .INIT(64'h8880000000000000)) 
    transfer_abort_i_2
       (.I0(\beat_counter_reg[0]_0 ),
        .I1(s_axis_xfer_req),
        .I2(\beat_counter_reg[0]_1 ),
        .I3(s_axis_valid),
        .I4(last_eot),
        .I5(src_eot),
        .O(transfer_abort_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    transfer_abort_reg
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(transfer_abort_i_1_n_0),
        .Q(\beat_counter_reg[0]_1 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000088800000)) 
    valid_i_1
       (.I0(\beat_counter_reg[0]_0 ),
        .I1(s_axis_xfer_req),
        .I2(\beat_counter_reg[0]_1 ),
        .I3(s_axis_valid),
        .I4(p_1_out0),
        .I5(\reset_gen[0].reset_sync_reg[0] ),
        .O(valid_reg));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dmac_dest_mm_axi
   (m_dest_axi_awvalid,
    dbg_ids0,
    \id_reg[0] ,
    m_dest_axi_awaddr,
    enabled_reg,
    dest_req_ready,
    enabled_reg_0,
    \up_rdata_reg[26] ,
    \up_rdata_reg[3] ,
    \up_rdata_reg[8] ,
    \up_rdata_reg[10] ,
    \up_rdata_reg[11] ,
    \up_rdata_reg[24] ,
    \up_rdata_reg[25] ,
    \up_rdata_reg[27] ,
    m_dest_axi_awlen,
    m_dest_axi_aclk,
    Q,
    id0,
    dest_address_eot,
    m_dest_axi_awready,
    \cdc_sync_fifo_ram_reg[33] ,
    \up_raddr_int_reg[2] ,
    \up_raddr_int_reg[2]_0 ,
    \src_id_reg[3] ,
    needs_reset_reg,
    do_enable_reg,
    s_axis_waddr,
    m_axis_raddr,
    \src_id_reg[0] );
  output m_dest_axi_awvalid;
  output [6:0]dbg_ids0;
  output \id_reg[0] ;
  output [28:0]m_dest_axi_awaddr;
  output enabled_reg;
  output dest_req_ready;
  output enabled_reg_0;
  output \up_rdata_reg[26] ;
  output \up_rdata_reg[3] ;
  output \up_rdata_reg[8] ;
  output \up_rdata_reg[10] ;
  output \up_rdata_reg[11] ;
  output \up_rdata_reg[24] ;
  output \up_rdata_reg[25] ;
  output \up_rdata_reg[27] ;
  output [3:0]m_dest_axi_awlen;
  input m_dest_axi_aclk;
  input [0:0]Q;
  input id0;
  input dest_address_eot;
  input m_dest_axi_awready;
  input [32:0]\cdc_sync_fifo_ram_reg[33] ;
  input \up_raddr_int_reg[2] ;
  input \up_raddr_int_reg[2]_0 ;
  input [0:0]\src_id_reg[3] ;
  input needs_reset_reg;
  input do_enable_reg;
  input s_axis_waddr;
  input m_axis_raddr;
  input \src_id_reg[0] ;

  wire [0:0]Q;
  wire address_enabled;
  wire [32:0]\cdc_sync_fifo_ram_reg[33] ;
  wire [6:0]dbg_ids0;
  wire dest_address_eot;
  wire dest_req_ready;
  wire do_enable_reg;
  wire enabled_reg;
  wire enabled_reg_0;
  wire id0;
  wire \id_reg[0] ;
  wire m_axis_raddr;
  wire m_dest_axi_aclk;
  wire [28:0]m_dest_axi_awaddr;
  wire [3:0]m_dest_axi_awlen;
  wire m_dest_axi_awready;
  wire m_dest_axi_awvalid;
  wire needs_reset_reg;
  wire s_axis_waddr;
  wire \src_id_reg[0] ;
  wire [0:0]\src_id_reg[3] ;
  wire \up_raddr_int_reg[2] ;
  wire \up_raddr_int_reg[2]_0 ;
  wire \up_rdata_reg[10] ;
  wire \up_rdata_reg[11] ;
  wire \up_rdata_reg[24] ;
  wire \up_rdata_reg[25] ;
  wire \up_rdata_reg[26] ;
  wire \up_rdata_reg[27] ;
  wire \up_rdata_reg[3] ;
  wire \up_rdata_reg[8] ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dmac_address_generator i_addr_gen
       (.E(dest_req_ready),
        .Q(Q),
        .address_enabled(address_enabled),
        .\cdc_sync_fifo_ram_reg[33] (\cdc_sync_fifo_ram_reg[33] ),
        .dest_address_eot(dest_address_eot),
        .do_enable_reg(do_enable_reg),
        .\id_reg[0]_0 (dbg_ids0[2]),
        .\id_reg[0]_1 (dbg_ids0[1]),
        .\id_reg[0]_2 (\id_reg[0] ),
        .\id_reg[3]_0 (dbg_ids0[0]),
        .m_axis_raddr(m_axis_raddr),
        .m_dest_axi_aclk(m_dest_axi_aclk),
        .m_dest_axi_awaddr(m_dest_axi_awaddr),
        .m_dest_axi_awlen(m_dest_axi_awlen),
        .m_dest_axi_awready(m_dest_axi_awready),
        .m_dest_axi_awvalid(m_dest_axi_awvalid),
        .needs_reset_reg(needs_reset_reg),
        .s_axis_waddr(s_axis_waddr),
        .\src_id_reg[0] (\src_id_reg[0] ),
        .\src_id_reg[3] (\src_id_reg[3] ),
        .\up_raddr_int_reg[2] (\up_raddr_int_reg[2]_0 ),
        .\up_raddr_int_reg[2]_0 (\up_raddr_int_reg[2] ),
        .\up_rdata_reg[10] (\up_rdata_reg[10] ),
        .\up_rdata_reg[11] (\up_rdata_reg[11] ),
        .\up_rdata_reg[3] (\up_rdata_reg[3] ),
        .\up_rdata_reg[8] (\up_rdata_reg[8] ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dmac_response_handler i_response_handler
       (.Q(Q),
        .address_enabled(address_enabled),
        .dbg_ids0(dbg_ids0[2:0]),
        .enabled_reg_0(enabled_reg),
        .enabled_reg_1(enabled_reg_0),
        .id0(id0),
        .\id_reg[0]_0 (dbg_ids0[6]),
        .\id_reg[0]_1 (dbg_ids0[5]),
        .\id_reg[0]_2 (dbg_ids0[4]),
        .\id_reg[1]_0 (\id_reg[0] ),
        .\id_reg[3]_0 (dbg_ids0[3]),
        .m_dest_axi_aclk(m_dest_axi_aclk),
        .m_dest_axi_awaddr(m_dest_axi_awaddr[24:21]),
        .\up_raddr_int_reg[2] (\up_raddr_int_reg[2] ),
        .\up_raddr_int_reg[2]_0 (\up_raddr_int_reg[2]_0 ),
        .\up_rdata_reg[24] (\up_rdata_reg[24] ),
        .\up_rdata_reg[25] (\up_rdata_reg[25] ),
        .\up_rdata_reg[26] (\up_rdata_reg[26] ),
        .\up_rdata_reg[27] (\up_rdata_reg[27] ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dmac_request_arb
   (m_dest_axi_wdata,
    m_ram_reg,
    m_dest_axi_awvalid,
    up_req_eot,
    g1_in,
    m_dest_axi_awaddr,
    enabled_reg,
    s_axis_xfer_req,
    m_dest_axi_wvalid,
    m_dest_axi_wlast,
    \acked_reg[2] ,
    m_dest_axi_bready,
    s_axis_ready,
    \id_reg[2] ,
    \src_throttled_request_id_reg[0]_0 ,
    \up_rdata_reg[26] ,
    \up_rdata_reg[3] ,
    \up_rdata_reg[8] ,
    \up_rdata_reg[10] ,
    \up_rdata_reg[11] ,
    \up_rdata_reg[17] ,
    \up_rdata_reg[24] ,
    \up_rdata_reg[25] ,
    \up_rdata_reg[27] ,
    \up_rdata_reg[2] ,
    m_dest_axi_awlen,
    m_dest_axi_aclk,
    s_axis_aclk,
    Q,
    s_axi_aclk,
    m_dest_axi_wready,
    up_dma_req_valid,
    do_enable_reg,
    m_dest_axi_awready,
    m_dest_axi_bvalid,
    s_axis_last,
    s_axis_valid,
    up_dma_x_length,
    \up_raddr_int_reg[2] ,
    \up_raddr_int_reg[2]_0 ,
    needs_reset_reg,
    \state_reg[2] ,
    D,
    up_dma_last_reg,
    s_axis_data,
    \reset_gen[0].reset_sync_reg[0] );
  output [63:0]m_dest_axi_wdata;
  output [3:0]m_ram_reg;
  output m_dest_axi_awvalid;
  output up_req_eot;
  output [3:0]g1_in;
  output [28:0]m_dest_axi_awaddr;
  output enabled_reg;
  output s_axis_xfer_req;
  output m_dest_axi_wvalid;
  output m_dest_axi_wlast;
  output \acked_reg[2] ;
  output m_dest_axi_bready;
  output s_axis_ready;
  output [3:0]\id_reg[2] ;
  output [1:0]\src_throttled_request_id_reg[0]_0 ;
  output \up_rdata_reg[26] ;
  output \up_rdata_reg[3] ;
  output \up_rdata_reg[8] ;
  output \up_rdata_reg[10] ;
  output \up_rdata_reg[11] ;
  output \up_rdata_reg[17] ;
  output \up_rdata_reg[24] ;
  output \up_rdata_reg[25] ;
  output \up_rdata_reg[27] ;
  output \up_rdata_reg[2] ;
  output [3:0]m_dest_axi_awlen;
  input m_dest_axi_aclk;
  input s_axis_aclk;
  input [0:0]Q;
  input s_axi_aclk;
  input m_dest_axi_wready;
  input up_dma_req_valid;
  input do_enable_reg;
  input m_dest_axi_awready;
  input m_dest_axi_bvalid;
  input s_axis_last;
  input s_axis_valid;
  input [20:0]up_dma_x_length;
  input \up_raddr_int_reg[2] ;
  input \up_raddr_int_reg[2]_0 ;
  input needs_reset_reg;
  input [0:0]\state_reg[2] ;
  input [28:0]D;
  input [0:0]up_dma_last_reg;
  input [31:0]s_axis_data;
  input \reset_gen[0].reset_sync_reg[0] ;

  wire [28:0]D;
  wire [0:0]Q;
  wire [2:0]acked;
  wire \acked_reg[2] ;
  wire cdc_sync_fifo_ram0;
  wire [27:3]dbg_ids0;
  wire dest_address_eot;
  wire dest_req_ready;
  wire dest_response_eot;
  wire do_enable_reg;
  wire enabled_reg;
  wire eot0;
  wire [3:0]g1_in;
  wire \i_data_mover/pending_burst ;
  wire i_dest_dma_mm_n_40;
  wire i_dest_req_fifo_n_10;
  wire i_dest_req_fifo_n_11;
  wire i_dest_req_fifo_n_12;
  wire i_dest_req_fifo_n_13;
  wire i_dest_req_fifo_n_14;
  wire i_dest_req_fifo_n_15;
  wire i_dest_req_fifo_n_16;
  wire i_dest_req_fifo_n_17;
  wire i_dest_req_fifo_n_18;
  wire i_dest_req_fifo_n_19;
  wire i_dest_req_fifo_n_2;
  wire i_dest_req_fifo_n_20;
  wire i_dest_req_fifo_n_21;
  wire i_dest_req_fifo_n_22;
  wire i_dest_req_fifo_n_23;
  wire i_dest_req_fifo_n_24;
  wire i_dest_req_fifo_n_25;
  wire i_dest_req_fifo_n_26;
  wire i_dest_req_fifo_n_27;
  wire i_dest_req_fifo_n_28;
  wire i_dest_req_fifo_n_29;
  wire i_dest_req_fifo_n_3;
  wire i_dest_req_fifo_n_30;
  wire i_dest_req_fifo_n_4;
  wire i_dest_req_fifo_n_5;
  wire i_dest_req_fifo_n_6;
  wire i_dest_req_fifo_n_7;
  wire i_dest_req_fifo_n_8;
  wire i_dest_req_fifo_n_9;
  wire i_req_gen_n_6;
  wire \i_response_handler/id0 ;
  wire i_src_dma_stream_n_10;
  wire i_src_dma_stream_n_5;
  wire i_src_dma_stream_n_8;
  wire i_src_req_fifo_n_0;
  wire i_src_req_fifo_n_1;
  wire i_src_req_fifo_n_4;
  wire i_src_req_fifo_n_5;
  wire i_src_req_fifo_n_6;
  wire i_src_req_fifo_n_7;
  wire i_src_req_fifo_n_8;
  wire i_store_and_forward_n_73;
  wire [3:0]\id_reg[2] ;
  wire [2:1]inc_id_return;
  wire m_axis_raddr;
  wire m_dest_axi_aclk;
  wire [28:0]m_dest_axi_awaddr;
  wire [3:0]m_dest_axi_awlen;
  wire m_dest_axi_awready;
  wire m_dest_axi_awvalid;
  wire m_dest_axi_bready;
  wire m_dest_axi_bvalid;
  wire [63:0]m_dest_axi_wdata;
  wire m_dest_axi_wlast;
  wire m_dest_axi_wready;
  wire m_dest_axi_wvalid;
  wire [3:0]m_ram_reg;
  wire needs_reset_reg;
  wire p_1_in;
  wire p_1_in1_in;
  wire p_1_out0;
  wire req_gen_ready;
  wire [3:0]req_last_burst_length;
  wire request_eot;
  wire \reset_gen[0].reset_sync_reg[0] ;
  wire s_axi_aclk;
  wire s_axis_aclk;
  wire [31:0]s_axis_data;
  wire s_axis_last;
  wire s_axis_ready;
  wire s_axis_valid;
  wire s_axis_waddr;
  wire s_axis_xfer_req;
  wire src_eot;
  wire src_last;
  wire src_req_valid;
  wire src_throttled_request_id0;
  wire \src_throttled_request_id[0]_i_1_n_0 ;
  wire \src_throttled_request_id[3]_i_2_n_0 ;
  wire [1:0]\src_throttled_request_id_reg[0]_0 ;
  wire \src_throttled_request_id_reg_n_0_[0] ;
  wire \src_throttled_request_id_reg_n_0_[1] ;
  wire [0:0]\state_reg[2] ;
  wire [0:0]up_dma_last_reg;
  wire up_dma_req_valid;
  wire [20:0]up_dma_x_length;
  wire \up_raddr_int_reg[2] ;
  wire \up_raddr_int_reg[2]_0 ;
  wire \up_rdata_reg[10] ;
  wire \up_rdata_reg[11] ;
  wire \up_rdata_reg[17] ;
  wire \up_rdata_reg[24] ;
  wire \up_rdata_reg[25] ;
  wire \up_rdata_reg[26] ;
  wire \up_rdata_reg[27] ;
  wire \up_rdata_reg[2] ;
  wire \up_rdata_reg[3] ;
  wire \up_rdata_reg[8] ;
  wire up_req_eot;
  wire NLW_eot_mem_reg_r1_0_15_0_0_SPO_UNCONNECTED;
  wire NLW_eot_mem_reg_r2_0_15_0_0_SPO_UNCONNECTED;
  wire NLW_eot_mem_reg_r3_0_15_0_0_SPO_UNCONNECTED;

  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    eot_mem_reg_r1_0_15_0_0
       (.A0(\id_reg[2] [0]),
        .A1(\id_reg[2] [1]),
        .A2(\id_reg[2] [2]),
        .A3(\id_reg[2] [3]),
        .A4(1'b0),
        .D(request_eot),
        .DPO(src_eot),
        .DPRA0(g1_in[0]),
        .DPRA1(g1_in[1]),
        .DPRA2(g1_in[2]),
        .DPRA3(g1_in[3]),
        .DPRA4(1'b0),
        .SPO(NLW_eot_mem_reg_r1_0_15_0_0_SPO_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(1'b1));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    eot_mem_reg_r2_0_15_0_0
       (.A0(\id_reg[2] [0]),
        .A1(\id_reg[2] [1]),
        .A2(\id_reg[2] [2]),
        .A3(\id_reg[2] [3]),
        .A4(1'b0),
        .D(request_eot),
        .DPO(dest_response_eot),
        .DPRA0(dbg_ids0[24]),
        .DPRA1(dbg_ids0[25]),
        .DPRA2(dbg_ids0[26]),
        .DPRA3(dbg_ids0[27]),
        .DPRA4(1'b0),
        .SPO(NLW_eot_mem_reg_r2_0_15_0_0_SPO_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(1'b1));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    eot_mem_reg_r3_0_15_0_0
       (.A0(\id_reg[2] [0]),
        .A1(\id_reg[2] [1]),
        .A2(\id_reg[2] [2]),
        .A3(\id_reg[2] [3]),
        .A4(1'b0),
        .D(request_eot),
        .DPO(dest_address_eot),
        .DPRA0(dbg_ids0[8]),
        .DPRA1(m_ram_reg[2]),
        .DPRA2(dbg_ids0[10]),
        .DPRA3(dbg_ids0[11]),
        .DPRA4(1'b0),
        .SPO(NLW_eot_mem_reg_r3_0_15_0_0_SPO_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(1'b1));
  FDRE eot_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(eot0),
        .Q(up_req_eot),
        .R(Q));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dmac_dest_mm_axi i_dest_dma_mm
       (.Q(Q),
        .\cdc_sync_fifo_ram_reg[33] ({i_dest_req_fifo_n_2,i_dest_req_fifo_n_3,i_dest_req_fifo_n_4,i_dest_req_fifo_n_5,i_dest_req_fifo_n_6,i_dest_req_fifo_n_7,i_dest_req_fifo_n_8,i_dest_req_fifo_n_9,i_dest_req_fifo_n_10,i_dest_req_fifo_n_11,i_dest_req_fifo_n_12,i_dest_req_fifo_n_13,i_dest_req_fifo_n_14,i_dest_req_fifo_n_15,i_dest_req_fifo_n_16,i_dest_req_fifo_n_17,i_dest_req_fifo_n_18,i_dest_req_fifo_n_19,i_dest_req_fifo_n_20,i_dest_req_fifo_n_21,i_dest_req_fifo_n_22,i_dest_req_fifo_n_23,i_dest_req_fifo_n_24,i_dest_req_fifo_n_25,i_dest_req_fifo_n_26,i_dest_req_fifo_n_27,i_dest_req_fifo_n_28,i_dest_req_fifo_n_29,i_dest_req_fifo_n_30,req_last_burst_length}),
        .dbg_ids0({dbg_ids0[27:24],dbg_ids0[11:10],dbg_ids0[8]}),
        .dest_address_eot(dest_address_eot),
        .dest_req_ready(dest_req_ready),
        .do_enable_reg(do_enable_reg),
        .enabled_reg(enabled_reg),
        .enabled_reg_0(i_dest_dma_mm_n_40),
        .id0(\i_response_handler/id0 ),
        .\id_reg[0] (m_ram_reg[2]),
        .m_axis_raddr(m_axis_raddr),
        .m_dest_axi_aclk(m_dest_axi_aclk),
        .m_dest_axi_awaddr(m_dest_axi_awaddr),
        .m_dest_axi_awlen(m_dest_axi_awlen),
        .m_dest_axi_awready(m_dest_axi_awready),
        .m_dest_axi_awvalid(m_dest_axi_awvalid),
        .needs_reset_reg(needs_reset_reg),
        .s_axis_waddr(s_axis_waddr),
        .\src_id_reg[0] (i_store_and_forward_n_73),
        .\src_id_reg[3] (dbg_ids0[3]),
        .\up_raddr_int_reg[2] (\up_raddr_int_reg[2] ),
        .\up_raddr_int_reg[2]_0 (\up_raddr_int_reg[2]_0 ),
        .\up_rdata_reg[10] (\up_rdata_reg[10] ),
        .\up_rdata_reg[11] (\up_rdata_reg[11] ),
        .\up_rdata_reg[24] (\up_rdata_reg[24] ),
        .\up_rdata_reg[25] (\up_rdata_reg[25] ),
        .\up_rdata_reg[26] (\up_rdata_reg[26] ),
        .\up_rdata_reg[27] (\up_rdata_reg[27] ),
        .\up_rdata_reg[3] (\up_rdata_reg[3] ),
        .\up_rdata_reg[8] (\up_rdata_reg[8] ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_axis_fifo i_dest_req_fifo
       (.D({D,up_dma_x_length[3:0]}),
        .Q(Q),
        .acked(acked[1]),
        .\address_reg[28] ({i_dest_req_fifo_n_2,i_dest_req_fifo_n_3,i_dest_req_fifo_n_4,i_dest_req_fifo_n_5,i_dest_req_fifo_n_6,i_dest_req_fifo_n_7,i_dest_req_fifo_n_8,i_dest_req_fifo_n_9,i_dest_req_fifo_n_10,i_dest_req_fifo_n_11,i_dest_req_fifo_n_12,i_dest_req_fifo_n_13,i_dest_req_fifo_n_14,i_dest_req_fifo_n_15,i_dest_req_fifo_n_16,i_dest_req_fifo_n_17,i_dest_req_fifo_n_18,i_dest_req_fifo_n_19,i_dest_req_fifo_n_20,i_dest_req_fifo_n_21,i_dest_req_fifo_n_22,i_dest_req_fifo_n_23,i_dest_req_fifo_n_24,i_dest_req_fifo_n_25,i_dest_req_fifo_n_26,i_dest_req_fifo_n_27,i_dest_req_fifo_n_28,i_dest_req_fifo_n_29,i_dest_req_fifo_n_30,req_last_burst_length}),
        .dest_req_ready(dest_req_ready),
        .do_enable_reg(do_enable_reg),
        .m_axis_raddr(m_axis_raddr),
        .m_dest_axi_aclk(m_dest_axi_aclk),
        .s_axi_aclk(s_axi_aclk),
        .s_axis_waddr(s_axis_waddr),
        .up_dma_req_valid(up_dma_req_valid));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_axis_fifo__parameterized1 i_dest_response_fifo
       (.Q(Q),
        .dest_response_eot(dest_response_eot),
        .eot0(eot0),
        .id0(\i_response_handler/id0 ),
        .\id_reg[3] (i_dest_dma_mm_n_40),
        .m_dest_axi_aclk(m_dest_axi_aclk),
        .m_dest_axi_bready(m_dest_axi_bready),
        .m_dest_axi_bvalid(m_dest_axi_bvalid),
        .s_axi_aclk(s_axi_aclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dmac_request_generator i_req_gen
       (.Q(Q),
        .acked(acked[2]),
        .dbg_ids0(dbg_ids0[27:24]),
        .do_enable_reg(do_enable_reg),
        .\id_reg[2]_0 (\id_reg[2] ),
        .req_gen_ready(req_gen_ready),
        .request_eot(request_eot),
        .s_axi_aclk(s_axi_aclk),
        .\src_throttled_request_id_reg[0] (i_req_gen_n_6),
        .\src_throttled_request_id_reg[3] ({p_1_in,p_1_in1_in,\src_throttled_request_id_reg_n_0_[1] ,\src_throttled_request_id_reg_n_0_[0] }),
        .up_dma_req_valid(up_dma_req_valid),
        .up_dma_x_length(up_dma_x_length[20:4]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_splitter i_req_splitter
       (.E(cdc_sync_fifo_ram0),
        .Q(Q),
        .acked(acked),
        .\acked_reg[2]_0 (\acked_reg[2] ),
        .do_enable_reg(do_enable_reg),
        .m_axis_raddr(m_axis_raddr),
        .req_gen_ready(req_gen_ready),
        .\reset_gen[0].reset_sync_reg[0] (\reset_gen[0].reset_sync_reg[0] ),
        .s_axi_aclk(s_axi_aclk),
        .s_axis_waddr(s_axis_waddr),
        .src_req_valid(src_req_valid),
        .up_dma_req_valid(up_dma_req_valid));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dmac_src_axi_stream i_src_dma_stream
       (.Q({i_src_req_fifo_n_4,i_src_req_fifo_n_5,i_src_req_fifo_n_6,i_src_req_fifo_n_7,i_src_req_fifo_n_8}),
        .\beat_counter_reg[0] (i_src_dma_stream_n_5),
        .\id_reg[3] (g1_in[3]),
        .\id_reg[3]_0 (g1_in[2]),
        .\id_reg[3]_1 (g1_in[1]),
        .\id_reg[3]_2 (g1_in[0]),
        .m_axis_raddr_reg(i_src_dma_stream_n_10),
        .m_axis_raddr_reg_0(i_src_req_fifo_n_1),
        .p_1_out0(p_1_out0),
        .pending_burst(\i_data_mover/pending_burst ),
        .\reset_gen[0].reset_sync_reg[0] (Q),
        .s_axis_aclk(s_axis_aclk),
        .s_axis_last(s_axis_last),
        .s_axis_ready(s_axis_ready),
        .s_axis_valid(s_axis_valid),
        .s_axis_waddr_reg(i_src_req_fifo_n_0),
        .s_axis_xfer_req(s_axis_xfer_req),
        .src_eot(src_eot),
        .src_last(src_last),
        .\src_throttled_request_id_reg[3] ({p_1_in,p_1_in1_in,\src_throttled_request_id_reg_n_0_[1] ,\src_throttled_request_id_reg_n_0_[0] }),
        .valid_reg(i_src_dma_stream_n_8));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_axis_fifo__parameterized0 i_src_req_fifo
       (.D({up_dma_x_length[3:0],up_dma_last_reg}),
        .E(cdc_sync_fifo_ram0),
        .Q(Q),
        .acked(acked[0]),
        .active_reg(i_src_dma_stream_n_10),
        .do_enable_reg(do_enable_reg),
        .\last_burst_length_reg[4] ({i_src_req_fifo_n_4,i_src_req_fifo_n_5,i_src_req_fifo_n_6,i_src_req_fifo_n_7,i_src_req_fifo_n_8}),
        .s_axi_aclk(s_axi_aclk),
        .s_axis_aclk(s_axis_aclk),
        .s_axis_waddr_reg_0(i_src_req_fifo_n_0),
        .s_axis_waddr_reg_1(i_src_req_fifo_n_1),
        .src_req_valid(src_req_valid),
        .up_dma_req_valid(up_dma_req_valid));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac_burst_memory i_store_and_forward
       (.E(src_throttled_request_id0),
        .Q({dbg_ids0[3],m_ram_reg[1:0]}),
        .active_reg(s_axis_xfer_req),
        .addr_valid_reg(i_store_and_forward_n_73),
        .\id_reg[1] (m_ram_reg[2]),
        .\id_reg[3] ({dbg_ids0[11:10],dbg_ids0[8]}),
        .m_dest_axi_aclk(m_dest_axi_aclk),
        .m_dest_axi_awaddr(m_dest_axi_awaddr[14]),
        .m_dest_axi_wdata(m_dest_axi_wdata),
        .m_dest_axi_wlast(m_dest_axi_wlast),
        .m_dest_axi_wready(m_dest_axi_wready),
        .m_dest_axi_wvalid(m_dest_axi_wvalid),
        .p_1_out0(p_1_out0),
        .pending_burst(\i_data_mover/pending_burst ),
        .pending_burst_reg(i_src_dma_stream_n_8),
        .\reset_gen[0].reset_sync_reg[0] (Q),
        .s_axis_aclk(s_axis_aclk),
        .s_axis_data(s_axis_data),
        .s_axis_valid(s_axis_valid),
        .src_last(src_last),
        .\src_throttled_request_id_reg[0] ({\src_throttled_request_id_reg[0]_0 ,m_ram_reg[3]}),
        .\src_throttled_request_id_reg[3] ({p_1_in,p_1_in1_in,\src_throttled_request_id_reg_n_0_[1] ,\src_throttled_request_id_reg_n_0_[0] }),
        .\src_throttled_request_id_reg[3]_0 (i_req_gen_n_6),
        .\state_reg[2] (\state_reg[2] ),
        .transfer_abort_reg(i_src_dma_stream_n_5),
        .\up_raddr_int_reg[2] (\up_raddr_int_reg[2] ),
        .\up_raddr_int_reg[2]_0 (\up_raddr_int_reg[2]_0 ),
        .\up_rdata_reg[17] (\up_rdata_reg[17] ),
        .\up_rdata_reg[2] (\up_rdata_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \src_throttled_request_id[0]_i_1 
       (.I0(\src_throttled_request_id_reg_n_0_[1] ),
        .I1(p_1_in),
        .I2(p_1_in1_in),
        .O(\src_throttled_request_id[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'hD782)) 
    \src_throttled_request_id[1]_i_1 
       (.I0(\src_throttled_request_id_reg_n_0_[0] ),
        .I1(p_1_in1_in),
        .I2(p_1_in),
        .I3(\src_throttled_request_id_reg_n_0_[1] ),
        .O(inc_id_return[1]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h8DCC)) 
    \src_throttled_request_id[2]_i_1 
       (.I0(\src_throttled_request_id_reg_n_0_[0] ),
        .I1(p_1_in1_in),
        .I2(p_1_in),
        .I3(\src_throttled_request_id_reg_n_0_[1] ),
        .O(inc_id_return[2]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'hF0E4)) 
    \src_throttled_request_id[3]_i_2 
       (.I0(\src_throttled_request_id_reg_n_0_[0] ),
        .I1(p_1_in1_in),
        .I2(p_1_in),
        .I3(\src_throttled_request_id_reg_n_0_[1] ),
        .O(\src_throttled_request_id[3]_i_2_n_0 ));
  FDRE \src_throttled_request_id_reg[0] 
       (.C(s_axis_aclk),
        .CE(src_throttled_request_id0),
        .D(\src_throttled_request_id[0]_i_1_n_0 ),
        .Q(\src_throttled_request_id_reg_n_0_[0] ),
        .R(Q));
  FDRE \src_throttled_request_id_reg[1] 
       (.C(s_axis_aclk),
        .CE(src_throttled_request_id0),
        .D(inc_id_return[1]),
        .Q(\src_throttled_request_id_reg_n_0_[1] ),
        .R(Q));
  FDRE \src_throttled_request_id_reg[2] 
       (.C(s_axis_aclk),
        .CE(src_throttled_request_id0),
        .D(inc_id_return[2]),
        .Q(p_1_in1_in),
        .R(Q));
  FDRE \src_throttled_request_id_reg[3] 
       (.C(s_axis_aclk),
        .CE(src_throttled_request_id0),
        .D(\src_throttled_request_id[3]_i_2_n_0 ),
        .Q(p_1_in),
        .R(Q));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dmac_request_generator
   (req_gen_ready,
    \id_reg[2]_0 ,
    request_eot,
    \src_throttled_request_id_reg[0] ,
    s_axi_aclk,
    Q,
    do_enable_reg,
    dbg_ids0,
    \src_throttled_request_id_reg[3] ,
    up_dma_x_length,
    acked,
    up_dma_req_valid);
  output req_gen_ready;
  output [3:0]\id_reg[2]_0 ;
  output request_eot;
  output \src_throttled_request_id_reg[0] ;
  input s_axi_aclk;
  input [0:0]Q;
  input do_enable_reg;
  input [3:0]dbg_ids0;
  input [3:0]\src_throttled_request_id_reg[3] ;
  input [16:0]up_dma_x_length;
  input [0:0]acked;
  input up_dma_req_valid;

  wire [0:0]Q;
  wire [0:0]acked;
  wire b2g2_return01_out;
  wire b2g2_return03_out;
  wire \burst_count[0]_i_10_n_0 ;
  wire \burst_count[0]_i_1_n_0 ;
  wire \burst_count[0]_i_3_n_0 ;
  wire \burst_count[0]_i_4_n_0 ;
  wire \burst_count[0]_i_5_n_0 ;
  wire \burst_count[0]_i_6_n_0 ;
  wire \burst_count[0]_i_7_n_0 ;
  wire \burst_count[0]_i_8_n_0 ;
  wire \burst_count[0]_i_9_n_0 ;
  wire \burst_count[12]_i_2_n_0 ;
  wire \burst_count[12]_i_3_n_0 ;
  wire \burst_count[12]_i_4_n_0 ;
  wire \burst_count[12]_i_5_n_0 ;
  wire \burst_count[12]_i_6_n_0 ;
  wire \burst_count[12]_i_7_n_0 ;
  wire \burst_count[12]_i_8_n_0 ;
  wire \burst_count[12]_i_9_n_0 ;
  wire \burst_count[16]_i_2_n_0 ;
  wire \burst_count[4]_i_2_n_0 ;
  wire \burst_count[4]_i_3_n_0 ;
  wire \burst_count[4]_i_4_n_0 ;
  wire \burst_count[4]_i_5_n_0 ;
  wire \burst_count[4]_i_6_n_0 ;
  wire \burst_count[4]_i_7_n_0 ;
  wire \burst_count[4]_i_8_n_0 ;
  wire \burst_count[4]_i_9_n_0 ;
  wire \burst_count[8]_i_2_n_0 ;
  wire \burst_count[8]_i_3_n_0 ;
  wire \burst_count[8]_i_4_n_0 ;
  wire \burst_count[8]_i_5_n_0 ;
  wire \burst_count[8]_i_6_n_0 ;
  wire \burst_count[8]_i_7_n_0 ;
  wire \burst_count[8]_i_8_n_0 ;
  wire \burst_count[8]_i_9_n_0 ;
  wire [16:0]burst_count_reg;
  wire \burst_count_reg[0]_i_2_n_0 ;
  wire \burst_count_reg[0]_i_2_n_1 ;
  wire \burst_count_reg[0]_i_2_n_2 ;
  wire \burst_count_reg[0]_i_2_n_3 ;
  wire \burst_count_reg[0]_i_2_n_4 ;
  wire \burst_count_reg[0]_i_2_n_5 ;
  wire \burst_count_reg[0]_i_2_n_6 ;
  wire \burst_count_reg[0]_i_2_n_7 ;
  wire \burst_count_reg[12]_i_1_n_0 ;
  wire \burst_count_reg[12]_i_1_n_1 ;
  wire \burst_count_reg[12]_i_1_n_2 ;
  wire \burst_count_reg[12]_i_1_n_3 ;
  wire \burst_count_reg[12]_i_1_n_4 ;
  wire \burst_count_reg[12]_i_1_n_5 ;
  wire \burst_count_reg[12]_i_1_n_6 ;
  wire \burst_count_reg[12]_i_1_n_7 ;
  wire \burst_count_reg[16]_i_1_n_7 ;
  wire \burst_count_reg[4]_i_1_n_0 ;
  wire \burst_count_reg[4]_i_1_n_1 ;
  wire \burst_count_reg[4]_i_1_n_2 ;
  wire \burst_count_reg[4]_i_1_n_3 ;
  wire \burst_count_reg[4]_i_1_n_4 ;
  wire \burst_count_reg[4]_i_1_n_5 ;
  wire \burst_count_reg[4]_i_1_n_6 ;
  wire \burst_count_reg[4]_i_1_n_7 ;
  wire \burst_count_reg[8]_i_1_n_0 ;
  wire \burst_count_reg[8]_i_1_n_1 ;
  wire \burst_count_reg[8]_i_1_n_2 ;
  wire \burst_count_reg[8]_i_1_n_3 ;
  wire \burst_count_reg[8]_i_1_n_4 ;
  wire \burst_count_reg[8]_i_1_n_5 ;
  wire \burst_count_reg[8]_i_1_n_6 ;
  wire \burst_count_reg[8]_i_1_n_7 ;
  wire [3:0]dbg_ids0;
  wire do_enable_reg;
  wire eot_mem_reg_r1_0_15_0_0_i_2_n_0;
  wire eot_mem_reg_r1_0_15_0_0_i_3_n_0;
  wire eot_mem_reg_r1_0_15_0_0_i_4_n_0;
  wire \id[0]_i_1__0_n_0 ;
  wire \id[3]_i_1__2_n_0 ;
  wire \id[3]_i_3_n_0 ;
  wire \id[3]_i_4_n_0 ;
  wire \id[3]_i_5_n_0 ;
  wire [3:0]\id_reg[2]_0 ;
  wire p_1_in2_in;
  wire req_gen_ready;
  wire req_ready_i_1__0_n_0;
  wire request_eot;
  wire s_axi_aclk;
  wire \src_throttled_request_id[3]_i_5_n_0 ;
  wire \src_throttled_request_id_reg[0] ;
  wire [3:0]\src_throttled_request_id_reg[3] ;
  wire up_dma_req_valid;
  wire [16:0]up_dma_x_length;
  wire [3:0]\NLW_burst_count_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_burst_count_reg[16]_i_1_O_UNCONNECTED ;

  LUT2 #(
    .INIT(4'hB)) 
    \burst_count[0]_i_1 
       (.I0(req_gen_ready),
        .I1(\id[3]_i_3_n_0 ),
        .O(\burst_count[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \burst_count[0]_i_10 
       (.I0(burst_count_reg[0]),
        .I1(up_dma_x_length[0]),
        .I2(req_gen_ready),
        .O(\burst_count[0]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \burst_count[0]_i_3 
       (.I0(req_gen_ready),
        .O(\burst_count[0]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \burst_count[0]_i_4 
       (.I0(req_gen_ready),
        .O(\burst_count[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \burst_count[0]_i_5 
       (.I0(req_gen_ready),
        .O(\burst_count[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \burst_count[0]_i_6 
       (.I0(req_gen_ready),
        .O(\burst_count[0]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \burst_count[0]_i_7 
       (.I0(burst_count_reg[3]),
        .I1(up_dma_x_length[3]),
        .I2(req_gen_ready),
        .O(\burst_count[0]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \burst_count[0]_i_8 
       (.I0(burst_count_reg[2]),
        .I1(up_dma_x_length[2]),
        .I2(req_gen_ready),
        .O(\burst_count[0]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \burst_count[0]_i_9 
       (.I0(burst_count_reg[1]),
        .I1(up_dma_x_length[1]),
        .I2(req_gen_ready),
        .O(\burst_count[0]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \burst_count[12]_i_2 
       (.I0(req_gen_ready),
        .O(\burst_count[12]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \burst_count[12]_i_3 
       (.I0(req_gen_ready),
        .O(\burst_count[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \burst_count[12]_i_4 
       (.I0(req_gen_ready),
        .O(\burst_count[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \burst_count[12]_i_5 
       (.I0(req_gen_ready),
        .O(\burst_count[12]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \burst_count[12]_i_6 
       (.I0(burst_count_reg[15]),
        .I1(up_dma_x_length[15]),
        .I2(req_gen_ready),
        .O(\burst_count[12]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \burst_count[12]_i_7 
       (.I0(burst_count_reg[14]),
        .I1(up_dma_x_length[14]),
        .I2(req_gen_ready),
        .O(\burst_count[12]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \burst_count[12]_i_8 
       (.I0(burst_count_reg[13]),
        .I1(up_dma_x_length[13]),
        .I2(req_gen_ready),
        .O(\burst_count[12]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \burst_count[12]_i_9 
       (.I0(burst_count_reg[12]),
        .I1(up_dma_x_length[12]),
        .I2(req_gen_ready),
        .O(\burst_count[12]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hA3)) 
    \burst_count[16]_i_2 
       (.I0(up_dma_x_length[16]),
        .I1(burst_count_reg[16]),
        .I2(req_gen_ready),
        .O(\burst_count[16]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \burst_count[4]_i_2 
       (.I0(req_gen_ready),
        .O(\burst_count[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \burst_count[4]_i_3 
       (.I0(req_gen_ready),
        .O(\burst_count[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \burst_count[4]_i_4 
       (.I0(req_gen_ready),
        .O(\burst_count[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \burst_count[4]_i_5 
       (.I0(req_gen_ready),
        .O(\burst_count[4]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \burst_count[4]_i_6 
       (.I0(burst_count_reg[7]),
        .I1(up_dma_x_length[7]),
        .I2(req_gen_ready),
        .O(\burst_count[4]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \burst_count[4]_i_7 
       (.I0(burst_count_reg[6]),
        .I1(up_dma_x_length[6]),
        .I2(req_gen_ready),
        .O(\burst_count[4]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \burst_count[4]_i_8 
       (.I0(burst_count_reg[5]),
        .I1(up_dma_x_length[5]),
        .I2(req_gen_ready),
        .O(\burst_count[4]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \burst_count[4]_i_9 
       (.I0(burst_count_reg[4]),
        .I1(up_dma_x_length[4]),
        .I2(req_gen_ready),
        .O(\burst_count[4]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \burst_count[8]_i_2 
       (.I0(req_gen_ready),
        .O(\burst_count[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \burst_count[8]_i_3 
       (.I0(req_gen_ready),
        .O(\burst_count[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \burst_count[8]_i_4 
       (.I0(req_gen_ready),
        .O(\burst_count[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \burst_count[8]_i_5 
       (.I0(req_gen_ready),
        .O(\burst_count[8]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \burst_count[8]_i_6 
       (.I0(burst_count_reg[11]),
        .I1(up_dma_x_length[11]),
        .I2(req_gen_ready),
        .O(\burst_count[8]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \burst_count[8]_i_7 
       (.I0(burst_count_reg[10]),
        .I1(up_dma_x_length[10]),
        .I2(req_gen_ready),
        .O(\burst_count[8]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \burst_count[8]_i_8 
       (.I0(burst_count_reg[9]),
        .I1(up_dma_x_length[9]),
        .I2(req_gen_ready),
        .O(\burst_count[8]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \burst_count[8]_i_9 
       (.I0(burst_count_reg[8]),
        .I1(up_dma_x_length[8]),
        .I2(req_gen_ready),
        .O(\burst_count[8]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \burst_count_reg[0] 
       (.C(s_axi_aclk),
        .CE(\burst_count[0]_i_1_n_0 ),
        .D(\burst_count_reg[0]_i_2_n_7 ),
        .Q(burst_count_reg[0]),
        .R(1'b0));
  CARRY4 \burst_count_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\burst_count_reg[0]_i_2_n_0 ,\burst_count_reg[0]_i_2_n_1 ,\burst_count_reg[0]_i_2_n_2 ,\burst_count_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\burst_count[0]_i_3_n_0 ,\burst_count[0]_i_4_n_0 ,\burst_count[0]_i_5_n_0 ,\burst_count[0]_i_6_n_0 }),
        .O({\burst_count_reg[0]_i_2_n_4 ,\burst_count_reg[0]_i_2_n_5 ,\burst_count_reg[0]_i_2_n_6 ,\burst_count_reg[0]_i_2_n_7 }),
        .S({\burst_count[0]_i_7_n_0 ,\burst_count[0]_i_8_n_0 ,\burst_count[0]_i_9_n_0 ,\burst_count[0]_i_10_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \burst_count_reg[10] 
       (.C(s_axi_aclk),
        .CE(\burst_count[0]_i_1_n_0 ),
        .D(\burst_count_reg[8]_i_1_n_5 ),
        .Q(burst_count_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \burst_count_reg[11] 
       (.C(s_axi_aclk),
        .CE(\burst_count[0]_i_1_n_0 ),
        .D(\burst_count_reg[8]_i_1_n_4 ),
        .Q(burst_count_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \burst_count_reg[12] 
       (.C(s_axi_aclk),
        .CE(\burst_count[0]_i_1_n_0 ),
        .D(\burst_count_reg[12]_i_1_n_7 ),
        .Q(burst_count_reg[12]),
        .R(1'b0));
  CARRY4 \burst_count_reg[12]_i_1 
       (.CI(\burst_count_reg[8]_i_1_n_0 ),
        .CO({\burst_count_reg[12]_i_1_n_0 ,\burst_count_reg[12]_i_1_n_1 ,\burst_count_reg[12]_i_1_n_2 ,\burst_count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\burst_count[12]_i_2_n_0 ,\burst_count[12]_i_3_n_0 ,\burst_count[12]_i_4_n_0 ,\burst_count[12]_i_5_n_0 }),
        .O({\burst_count_reg[12]_i_1_n_4 ,\burst_count_reg[12]_i_1_n_5 ,\burst_count_reg[12]_i_1_n_6 ,\burst_count_reg[12]_i_1_n_7 }),
        .S({\burst_count[12]_i_6_n_0 ,\burst_count[12]_i_7_n_0 ,\burst_count[12]_i_8_n_0 ,\burst_count[12]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \burst_count_reg[13] 
       (.C(s_axi_aclk),
        .CE(\burst_count[0]_i_1_n_0 ),
        .D(\burst_count_reg[12]_i_1_n_6 ),
        .Q(burst_count_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \burst_count_reg[14] 
       (.C(s_axi_aclk),
        .CE(\burst_count[0]_i_1_n_0 ),
        .D(\burst_count_reg[12]_i_1_n_5 ),
        .Q(burst_count_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \burst_count_reg[15] 
       (.C(s_axi_aclk),
        .CE(\burst_count[0]_i_1_n_0 ),
        .D(\burst_count_reg[12]_i_1_n_4 ),
        .Q(burst_count_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \burst_count_reg[16] 
       (.C(s_axi_aclk),
        .CE(\burst_count[0]_i_1_n_0 ),
        .D(\burst_count_reg[16]_i_1_n_7 ),
        .Q(burst_count_reg[16]),
        .R(1'b0));
  CARRY4 \burst_count_reg[16]_i_1 
       (.CI(\burst_count_reg[12]_i_1_n_0 ),
        .CO(\NLW_burst_count_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_burst_count_reg[16]_i_1_O_UNCONNECTED [3:1],\burst_count_reg[16]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,\burst_count[16]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \burst_count_reg[1] 
       (.C(s_axi_aclk),
        .CE(\burst_count[0]_i_1_n_0 ),
        .D(\burst_count_reg[0]_i_2_n_6 ),
        .Q(burst_count_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \burst_count_reg[2] 
       (.C(s_axi_aclk),
        .CE(\burst_count[0]_i_1_n_0 ),
        .D(\burst_count_reg[0]_i_2_n_5 ),
        .Q(burst_count_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \burst_count_reg[3] 
       (.C(s_axi_aclk),
        .CE(\burst_count[0]_i_1_n_0 ),
        .D(\burst_count_reg[0]_i_2_n_4 ),
        .Q(burst_count_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \burst_count_reg[4] 
       (.C(s_axi_aclk),
        .CE(\burst_count[0]_i_1_n_0 ),
        .D(\burst_count_reg[4]_i_1_n_7 ),
        .Q(burst_count_reg[4]),
        .R(1'b0));
  CARRY4 \burst_count_reg[4]_i_1 
       (.CI(\burst_count_reg[0]_i_2_n_0 ),
        .CO({\burst_count_reg[4]_i_1_n_0 ,\burst_count_reg[4]_i_1_n_1 ,\burst_count_reg[4]_i_1_n_2 ,\burst_count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\burst_count[4]_i_2_n_0 ,\burst_count[4]_i_3_n_0 ,\burst_count[4]_i_4_n_0 ,\burst_count[4]_i_5_n_0 }),
        .O({\burst_count_reg[4]_i_1_n_4 ,\burst_count_reg[4]_i_1_n_5 ,\burst_count_reg[4]_i_1_n_6 ,\burst_count_reg[4]_i_1_n_7 }),
        .S({\burst_count[4]_i_6_n_0 ,\burst_count[4]_i_7_n_0 ,\burst_count[4]_i_8_n_0 ,\burst_count[4]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \burst_count_reg[5] 
       (.C(s_axi_aclk),
        .CE(\burst_count[0]_i_1_n_0 ),
        .D(\burst_count_reg[4]_i_1_n_6 ),
        .Q(burst_count_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \burst_count_reg[6] 
       (.C(s_axi_aclk),
        .CE(\burst_count[0]_i_1_n_0 ),
        .D(\burst_count_reg[4]_i_1_n_5 ),
        .Q(burst_count_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \burst_count_reg[7] 
       (.C(s_axi_aclk),
        .CE(\burst_count[0]_i_1_n_0 ),
        .D(\burst_count_reg[4]_i_1_n_4 ),
        .Q(burst_count_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \burst_count_reg[8] 
       (.C(s_axi_aclk),
        .CE(\burst_count[0]_i_1_n_0 ),
        .D(\burst_count_reg[8]_i_1_n_7 ),
        .Q(burst_count_reg[8]),
        .R(1'b0));
  CARRY4 \burst_count_reg[8]_i_1 
       (.CI(\burst_count_reg[4]_i_1_n_0 ),
        .CO({\burst_count_reg[8]_i_1_n_0 ,\burst_count_reg[8]_i_1_n_1 ,\burst_count_reg[8]_i_1_n_2 ,\burst_count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\burst_count[8]_i_2_n_0 ,\burst_count[8]_i_3_n_0 ,\burst_count[8]_i_4_n_0 ,\burst_count[8]_i_5_n_0 }),
        .O({\burst_count_reg[8]_i_1_n_4 ,\burst_count_reg[8]_i_1_n_5 ,\burst_count_reg[8]_i_1_n_6 ,\burst_count_reg[8]_i_1_n_7 }),
        .S({\burst_count[8]_i_6_n_0 ,\burst_count[8]_i_7_n_0 ,\burst_count[8]_i_8_n_0 ,\burst_count[8]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \burst_count_reg[9] 
       (.C(s_axi_aclk),
        .CE(\burst_count[0]_i_1_n_0 ),
        .D(\burst_count_reg[8]_i_1_n_6 ),
        .Q(burst_count_reg[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    eot_mem_reg_r1_0_15_0_0_i_1
       (.I0(eot_mem_reg_r1_0_15_0_0_i_2_n_0),
        .I1(eot_mem_reg_r1_0_15_0_0_i_3_n_0),
        .I2(eot_mem_reg_r1_0_15_0_0_i_4_n_0),
        .I3(burst_count_reg[0]),
        .I4(burst_count_reg[15]),
        .I5(burst_count_reg[1]),
        .O(request_eot));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    eot_mem_reg_r1_0_15_0_0_i_2
       (.I0(burst_count_reg[4]),
        .I1(burst_count_reg[3]),
        .I2(burst_count_reg[5]),
        .I3(burst_count_reg[11]),
        .I4(burst_count_reg[9]),
        .I5(burst_count_reg[12]),
        .O(eot_mem_reg_r1_0_15_0_0_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    eot_mem_reg_r1_0_15_0_0_i_3
       (.I0(burst_count_reg[6]),
        .I1(burst_count_reg[2]),
        .I2(burst_count_reg[16]),
        .I3(burst_count_reg[13]),
        .O(eot_mem_reg_r1_0_15_0_0_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    eot_mem_reg_r1_0_15_0_0_i_4
       (.I0(burst_count_reg[8]),
        .I1(burst_count_reg[7]),
        .I2(burst_count_reg[14]),
        .I3(burst_count_reg[10]),
        .O(eot_mem_reg_r1_0_15_0_0_i_4_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    \id[0]_i_1__0 
       (.I0(\id_reg[2]_0 [1]),
        .I1(\id_reg[2]_0 [2]),
        .I2(\id_reg[2]_0 [3]),
        .O(\id[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hE22E)) 
    \id[1]_i_1__0 
       (.I0(\id_reg[2]_0 [1]),
        .I1(\id_reg[2]_0 [0]),
        .I2(\id_reg[2]_0 [2]),
        .I3(\id_reg[2]_0 [3]),
        .O(b2g2_return01_out));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hCC4E)) 
    \id[2]_i_1__0 
       (.I0(\id_reg[2]_0 [1]),
        .I1(\id_reg[2]_0 [2]),
        .I2(\id_reg[2]_0 [3]),
        .I3(\id_reg[2]_0 [0]),
        .O(b2g2_return03_out));
  LUT2 #(
    .INIT(4'h1)) 
    \id[3]_i_1__2 
       (.I0(req_gen_ready),
        .I1(\id[3]_i_3_n_0 ),
        .O(\id[3]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hF0E4)) 
    \id[3]_i_2__0 
       (.I0(\id_reg[2]_0 [1]),
        .I1(\id_reg[2]_0 [2]),
        .I2(\id_reg[2]_0 [3]),
        .I3(\id_reg[2]_0 [0]),
        .O(p_1_in2_in));
  LUT6 #(
    .INIT(64'h555555557D55557D)) 
    \id[3]_i_3 
       (.I0(do_enable_reg),
        .I1(dbg_ids0[1]),
        .I2(\id[3]_i_4_n_0 ),
        .I3(\id[0]_i_1__0_n_0 ),
        .I4(dbg_ids0[0]),
        .I5(\id[3]_i_5_n_0 ),
        .O(\id[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h606F)) 
    \id[3]_i_4 
       (.I0(\id_reg[2]_0 [3]),
        .I1(\id_reg[2]_0 [2]),
        .I2(\id_reg[2]_0 [0]),
        .I3(\id_reg[2]_0 [1]),
        .O(\id[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h6FAF5DBFF5F9F7EA)) 
    \id[3]_i_5 
       (.I0(dbg_ids0[2]),
        .I1(\id_reg[2]_0 [0]),
        .I2(\id_reg[2]_0 [3]),
        .I3(\id_reg[2]_0 [2]),
        .I4(\id_reg[2]_0 [1]),
        .I5(dbg_ids0[3]),
        .O(\id[3]_i_5_n_0 ));
  FDRE \id_reg[0] 
       (.C(s_axi_aclk),
        .CE(\id[3]_i_1__2_n_0 ),
        .D(\id[0]_i_1__0_n_0 ),
        .Q(\id_reg[2]_0 [0]),
        .R(Q));
  FDRE \id_reg[1] 
       (.C(s_axi_aclk),
        .CE(\id[3]_i_1__2_n_0 ),
        .D(b2g2_return01_out),
        .Q(\id_reg[2]_0 [1]),
        .R(Q));
  FDRE \id_reg[2] 
       (.C(s_axi_aclk),
        .CE(\id[3]_i_1__2_n_0 ),
        .D(b2g2_return03_out),
        .Q(\id_reg[2]_0 [2]),
        .R(Q));
  FDRE \id_reg[3] 
       (.C(s_axi_aclk),
        .CE(\id[3]_i_1__2_n_0 ),
        .D(p_1_in2_in),
        .Q(\id_reg[2]_0 [3]),
        .R(Q));
  LUT6 #(
    .INIT(64'hAE04AEAEAEAEAEAE)) 
    req_ready_i_1__0
       (.I0(req_gen_ready),
        .I1(request_eot),
        .I2(\id[3]_i_3_n_0 ),
        .I3(acked),
        .I4(do_enable_reg),
        .I5(up_dma_req_valid),
        .O(req_ready_i_1__0_n_0));
  FDSE req_ready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(req_ready_i_1__0_n_0),
        .Q(req_gen_ready),
        .S(Q));
  LUT5 #(
    .INIT(32'h00009009)) 
    \src_throttled_request_id[3]_i_4 
       (.I0(\src_throttled_request_id_reg[3] [3]),
        .I1(\id_reg[2]_0 [3]),
        .I2(\src_throttled_request_id_reg[3] [2]),
        .I3(\id_reg[2]_0 [2]),
        .I4(\src_throttled_request_id[3]_i_5_n_0 ),
        .O(\src_throttled_request_id_reg[0] ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \src_throttled_request_id[3]_i_5 
       (.I0(\src_throttled_request_id_reg[3] [1]),
        .I1(\id_reg[2]_0 [1]),
        .I2(\src_throttled_request_id_reg[3] [0]),
        .I3(\id_reg[2]_0 [0]),
        .O(\src_throttled_request_id[3]_i_5_n_0 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dmac_response_handler
   (\id_reg[0]_0 ,
    \id_reg[0]_1 ,
    \id_reg[0]_2 ,
    \id_reg[3]_0 ,
    enabled_reg_0,
    enabled_reg_1,
    \up_rdata_reg[26] ,
    \up_rdata_reg[24] ,
    \up_rdata_reg[25] ,
    \up_rdata_reg[27] ,
    Q,
    id0,
    m_dest_axi_aclk,
    dbg_ids0,
    \id_reg[1]_0 ,
    \up_raddr_int_reg[2] ,
    \up_raddr_int_reg[2]_0 ,
    m_dest_axi_awaddr,
    address_enabled);
  output \id_reg[0]_0 ;
  output \id_reg[0]_1 ;
  output \id_reg[0]_2 ;
  output \id_reg[3]_0 ;
  output enabled_reg_0;
  output enabled_reg_1;
  output \up_rdata_reg[26] ;
  output \up_rdata_reg[24] ;
  output \up_rdata_reg[25] ;
  output \up_rdata_reg[27] ;
  input [0:0]Q;
  input id0;
  input m_dest_axi_aclk;
  input [2:0]dbg_ids0;
  input \id_reg[1]_0 ;
  input \up_raddr_int_reg[2] ;
  input \up_raddr_int_reg[2]_0 ;
  input [3:0]m_dest_axi_awaddr;
  input address_enabled;

  wire [0:0]Q;
  wire address_enabled;
  wire [2:0]dbg_ids0;
  wire enabled_i_1__0_n_0;
  wire enabled_reg_0;
  wire enabled_reg_1;
  wire id0;
  wire \id[0]_i_1__2_n_0 ;
  wire \id[3]_i_1__1_n_0 ;
  wire \id_reg[0]_0 ;
  wire \id_reg[0]_1 ;
  wire \id_reg[0]_2 ;
  wire \id_reg[1]_0 ;
  wire \id_reg[3]_0 ;
  wire [2:1]inc_id_return;
  wire m_dest_axi_aclk;
  wire [3:0]m_dest_axi_awaddr;
  wire m_dest_axi_bready_INST_0_i_2_n_0;
  wire \up_raddr_int_reg[2] ;
  wire \up_raddr_int_reg[2]_0 ;
  wire \up_rdata_reg[24] ;
  wire \up_rdata_reg[25] ;
  wire \up_rdata_reg[26] ;
  wire \up_rdata_reg[27] ;

  LUT3 #(
    .INIT(8'hBA)) 
    enabled_i_1__0
       (.I0(address_enabled),
        .I1(enabled_reg_1),
        .I2(enabled_reg_0),
        .O(enabled_i_1__0_n_0));
  FDRE enabled_reg
       (.C(m_dest_axi_aclk),
        .CE(1'b1),
        .D(enabled_i_1__0_n_0),
        .Q(enabled_reg_0),
        .R(Q));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \id[0]_i_1__2 
       (.I0(\id_reg[0]_2 ),
        .I1(\id_reg[0]_1 ),
        .I2(\id_reg[0]_0 ),
        .O(\id[0]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hD782)) 
    \id[1]_i_1__2 
       (.I0(\id_reg[3]_0 ),
        .I1(\id_reg[0]_0 ),
        .I2(\id_reg[0]_1 ),
        .I3(\id_reg[0]_2 ),
        .O(inc_id_return[1]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hCC4E)) 
    \id[2]_i_1__2 
       (.I0(\id_reg[0]_2 ),
        .I1(\id_reg[0]_1 ),
        .I2(\id_reg[0]_0 ),
        .I3(\id_reg[3]_0 ),
        .O(inc_id_return[2]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hCCD8)) 
    \id[3]_i_1__1 
       (.I0(\id_reg[3]_0 ),
        .I1(\id_reg[0]_0 ),
        .I2(\id_reg[0]_1 ),
        .I3(\id_reg[0]_2 ),
        .O(\id[3]_i_1__1_n_0 ));
  FDRE \id_reg[0] 
       (.C(m_dest_axi_aclk),
        .CE(id0),
        .D(\id[0]_i_1__2_n_0 ),
        .Q(\id_reg[3]_0 ),
        .R(Q));
  FDRE \id_reg[1] 
       (.C(m_dest_axi_aclk),
        .CE(id0),
        .D(inc_id_return[1]),
        .Q(\id_reg[0]_2 ),
        .R(Q));
  FDRE \id_reg[2] 
       (.C(m_dest_axi_aclk),
        .CE(id0),
        .D(inc_id_return[2]),
        .Q(\id_reg[0]_1 ),
        .R(Q));
  FDRE \id_reg[3] 
       (.C(m_dest_axi_aclk),
        .CE(id0),
        .D(\id[3]_i_1__1_n_0 ),
        .Q(\id_reg[0]_0 ),
        .R(Q));
  LUT5 #(
    .INIT(32'h00009009)) 
    m_dest_axi_bready_INST_0_i_1
       (.I0(dbg_ids0[2]),
        .I1(\id_reg[0]_0 ),
        .I2(dbg_ids0[1]),
        .I3(\id_reg[0]_1 ),
        .I4(m_dest_axi_bready_INST_0_i_2_n_0),
        .O(enabled_reg_1));
  LUT4 #(
    .INIT(16'h6FF6)) 
    m_dest_axi_bready_INST_0_i_2
       (.I0(\id_reg[0]_2 ),
        .I1(\id_reg[1]_0 ),
        .I2(\id_reg[3]_0 ),
        .I3(dbg_ids0[0]),
        .O(m_dest_axi_bready_INST_0_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \up_rdata[24]_i_2 
       (.I0(\id_reg[3]_0 ),
        .I1(\up_raddr_int_reg[2] ),
        .I2(m_dest_axi_awaddr[0]),
        .O(\up_rdata_reg[24] ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \up_rdata[25]_i_2 
       (.I0(\id_reg[0]_2 ),
        .I1(\up_raddr_int_reg[2] ),
        .I2(m_dest_axi_awaddr[1]),
        .O(\up_rdata_reg[25] ));
  LUT4 #(
    .INIT(16'hF4F7)) 
    \up_rdata[26]_i_3 
       (.I0(\id_reg[0]_1 ),
        .I1(\up_raddr_int_reg[2] ),
        .I2(\up_raddr_int_reg[2]_0 ),
        .I3(m_dest_axi_awaddr[2]),
        .O(\up_rdata_reg[26] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \up_rdata[27]_i_4 
       (.I0(\id_reg[0]_0 ),
        .I1(\up_raddr_int_reg[2] ),
        .I2(m_dest_axi_awaddr[3]),
        .O(\up_rdata_reg[27] ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dmac_src_axi_stream
   (pending_burst,
    \id_reg[3] ,
    \id_reg[3]_0 ,
    \id_reg[3]_1 ,
    \id_reg[3]_2 ,
    \beat_counter_reg[0] ,
    s_axis_xfer_req,
    s_axis_ready,
    valid_reg,
    src_last,
    m_axis_raddr_reg,
    Q,
    s_axis_aclk,
    \reset_gen[0].reset_sync_reg[0] ,
    s_axis_last,
    s_axis_valid,
    src_eot,
    p_1_out0,
    \src_throttled_request_id_reg[3] ,
    m_axis_raddr_reg_0,
    s_axis_waddr_reg);
  output pending_burst;
  output \id_reg[3] ;
  output \id_reg[3]_0 ;
  output \id_reg[3]_1 ;
  output \id_reg[3]_2 ;
  output \beat_counter_reg[0] ;
  output s_axis_xfer_req;
  output s_axis_ready;
  output valid_reg;
  output src_last;
  output m_axis_raddr_reg;
  input [4:0]Q;
  input s_axis_aclk;
  input [0:0]\reset_gen[0].reset_sync_reg[0] ;
  input s_axis_last;
  input s_axis_valid;
  input src_eot;
  input p_1_out0;
  input [3:0]\src_throttled_request_id_reg[3] ;
  input m_axis_raddr_reg_0;
  input s_axis_waddr_reg;

  wire [4:0]Q;
  wire \beat_counter_reg[0] ;
  wire \id_reg[3] ;
  wire \id_reg[3]_0 ;
  wire \id_reg[3]_1 ;
  wire \id_reg[3]_2 ;
  wire m_axis_raddr_reg;
  wire m_axis_raddr_reg_0;
  wire p_1_out0;
  wire pending_burst;
  wire [0:0]\reset_gen[0].reset_sync_reg[0] ;
  wire s_axis_aclk;
  wire s_axis_last;
  wire s_axis_ready;
  wire s_axis_valid;
  wire s_axis_waddr_reg;
  wire s_axis_xfer_req;
  wire src_eot;
  wire src_last;
  wire [3:0]\src_throttled_request_id_reg[3] ;
  wire valid_reg;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dmac_data_mover i_data_mover
       (.Q(Q),
        .\beat_counter_reg[0]_0 (pending_burst),
        .\beat_counter_reg[0]_1 (\beat_counter_reg[0] ),
        .\id_reg[3]_0 (\id_reg[3] ),
        .\id_reg[3]_1 (\id_reg[3]_0 ),
        .\id_reg[3]_2 (\id_reg[3]_1 ),
        .\id_reg[3]_3 (\id_reg[3]_2 ),
        .m_axis_raddr_reg(m_axis_raddr_reg),
        .m_axis_raddr_reg_0(m_axis_raddr_reg_0),
        .p_1_out0(p_1_out0),
        .\reset_gen[0].reset_sync_reg[0] (\reset_gen[0].reset_sync_reg[0] ),
        .s_axis_aclk(s_axis_aclk),
        .s_axis_last(s_axis_last),
        .s_axis_ready(s_axis_ready),
        .s_axis_valid(s_axis_valid),
        .s_axis_waddr_reg(s_axis_waddr_reg),
        .s_axis_xfer_req(s_axis_xfer_req),
        .src_eot(src_eot),
        .src_last(src_last),
        .\src_throttled_request_id_reg[3] (\src_throttled_request_id_reg[3] ),
        .valid_reg(valid_reg));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_splitter
   (\acked_reg[2]_0 ,
    acked,
    s_axis_waddr,
    m_axis_raddr,
    src_req_valid,
    req_gen_ready,
    do_enable_reg,
    up_dma_req_valid,
    Q,
    \reset_gen[0].reset_sync_reg[0] ,
    E,
    s_axi_aclk);
  output \acked_reg[2]_0 ;
  output [2:0]acked;
  input s_axis_waddr;
  input m_axis_raddr;
  input src_req_valid;
  input req_gen_ready;
  input do_enable_reg;
  input up_dma_req_valid;
  input [0:0]Q;
  input \reset_gen[0].reset_sync_reg[0] ;
  input [0:0]E;
  input s_axi_aclk;

  wire [0:0]E;
  wire [0:0]Q;
  wire [2:0]acked;
  wire \acked[0]_i_1_n_0 ;
  wire \acked[1]_i_1_n_0 ;
  wire \acked[2]_i_1_n_0 ;
  wire \acked_reg[2]_0 ;
  wire do_enable_reg;
  wire m_axis_raddr;
  wire req_gen_ready;
  wire \reset_gen[0].reset_sync_reg[0] ;
  wire s_axi_aclk;
  wire s_axis_waddr;
  wire src_req_valid;
  wire up_dma_req_valid;
  wire \up_transfer_id[1]_i_4_n_0 ;

  LUT4 #(
    .INIT(16'h000E)) 
    \acked[0]_i_1 
       (.I0(E),
        .I1(acked[0]),
        .I2(\acked_reg[2]_0 ),
        .I3(Q),
        .O(\acked[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF9000)) 
    \acked[1]_i_1 
       (.I0(m_axis_raddr),
        .I1(s_axis_waddr),
        .I2(do_enable_reg),
        .I3(up_dma_req_valid),
        .I4(acked[1]),
        .I5(\reset_gen[0].reset_sync_reg[0] ),
        .O(\acked[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FF80)) 
    \acked[2]_i_1 
       (.I0(do_enable_reg),
        .I1(up_dma_req_valid),
        .I2(req_gen_ready),
        .I3(acked[2]),
        .I4(\acked_reg[2]_0 ),
        .I5(Q),
        .O(\acked[2]_i_1_n_0 ));
  FDRE \acked_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\acked[0]_i_1_n_0 ),
        .Q(acked[0]),
        .R(1'b0));
  FDRE \acked_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\acked[1]_i_1_n_0 ),
        .Q(acked[1]),
        .R(1'b0));
  FDRE \acked_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\acked[2]_i_1_n_0 ),
        .Q(acked[2]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000F9F900F9)) 
    \up_transfer_id[1]_i_2 
       (.I0(s_axis_waddr),
        .I1(m_axis_raddr),
        .I2(acked[1]),
        .I3(src_req_valid),
        .I4(acked[0]),
        .I5(\up_transfer_id[1]_i_4_n_0 ),
        .O(\acked_reg[2]_0 ));
  LUT4 #(
    .INIT(16'h1FFF)) 
    \up_transfer_id[1]_i_4 
       (.I0(acked[2]),
        .I1(req_gen_ready),
        .I2(do_enable_reg),
        .I3(up_dma_req_valid),
        .O(\up_transfer_id[1]_i_4_n_0 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_axi
   (\up_rdata_d_reg[31]_0 ,
    up_wreq,
    s_axi_bvalid,
    s_axi_awready,
    s_axi_wready,
    s_axi_rvalid,
    E,
    s_axi_arready,
    up_dma_req_valid_reg,
    Q,
    \up_dma_x_length_reg[3] ,
    \up_scratch_reg[0] ,
    D,
    \up_irq_mask_reg[0] ,
    \up_dma_dest_address_reg[31] ,
    \up_rdata_reg[31] ,
    \up_rdata_reg[9] ,
    \up_rdata_reg[9]_0 ,
    \up_rdata_reg[9]_1 ,
    \up_rdata_reg[5] ,
    \up_rdata_reg[1] ,
    up_dma_last_reg,
    ctrl_pause_reg,
    ctrl_enable_reg,
    s_axi_rdata,
    s_axi_aclk,
    up_sot,
    ctrl_enable_reg_0,
    s_axi_aresetn,
    up_dma_req_valid,
    \up_irq_source_reg[1] ,
    up_req_eot,
    up_wack,
    up_rack,
    \up_irq_mask_reg[0]_0 ,
    \up_irq_mask_reg[1] ,
    s_axi_bready,
    s_axi_rready,
    dbg_status,
    dbg_ids0,
    \up_transfer_id_reg[1] ,
    dbg_ids1,
    \up_scratch_reg[31] ,
    \src_id_reg[2] ,
    \up_dma_dest_address_reg[31]_0 ,
    \up_dma_x_length_reg[5] ,
    \up_dma_dest_address_reg[6] ,
    m_dest_axi_awaddr,
    \reset_gen[0].reset_sync_reg[0] ,
    \id_reg[2] ,
    \id_reg[3] ,
    \id_reg[1] ,
    \id_reg[0] ,
    \up_dma_dest_address_reg[19] ,
    \dest_id_reg[3] ,
    \up_dma_dest_address_reg[18] ,
    \dest_id_reg[1] ,
    \up_dma_dest_address_reg[17] ,
    \up_dma_dest_address_reg[16] ,
    \up_dma_dest_address_reg[7] ,
    \up_dma_dest_address_reg[12] ,
    \up_dma_dest_address_reg[13] ,
    \up_dma_dest_address_reg[15] ,
    \up_dma_dest_address_reg[20] ,
    \up_dma_dest_address_reg[21] ,
    \up_dma_dest_address_reg[23] ,
    \address_reg[0] ,
    \up_dma_x_length_reg[22] ,
    needs_reset_reg,
    \up_dma_dest_address_reg[11] ,
    \up_dma_dest_address_reg[10] ,
    \reset_gen[0].reset_sync_reg[0]_0 ,
    \reset_gen[0].reset_sync_reg[0]_1 ,
    \up_dma_dest_address_reg[8] ,
    \up_dma_dest_address_reg[4] ,
    \up_transfer_done_bitmap_reg[3] ,
    \up_transfer_done_bitmap_reg[0] ,
    \up_transfer_id_reg[0] ,
    \up_transfer_id_eot_reg[0] ,
    s_axi_awvalid,
    s_axi_wvalid,
    s_axi_arvalid,
    ctrl_pause,
    \up_rdata_reg[31]_0 ,
    \up_transfer_done_bitmap_reg[2] ,
    \up_transfer_done_bitmap_reg[1] ,
    \up_dma_dest_address_reg[9] ,
    s_axi_wdata,
    s_axi_awaddr,
    s_axi_araddr);
  output \up_rdata_d_reg[31]_0 ;
  output up_wreq;
  output s_axi_bvalid;
  output s_axi_awready;
  output s_axi_wready;
  output s_axi_rvalid;
  output [0:0]E;
  output s_axi_arready;
  output up_dma_req_valid_reg;
  output [31:0]Q;
  output [0:0]\up_dma_x_length_reg[3] ;
  output [0:0]\up_scratch_reg[0] ;
  output [1:0]D;
  output \up_irq_mask_reg[0] ;
  output [0:0]\up_dma_dest_address_reg[31] ;
  output [31:0]\up_rdata_reg[31] ;
  output \up_rdata_reg[9] ;
  output \up_rdata_reg[9]_0 ;
  output [1:0]\up_rdata_reg[9]_1 ;
  output \up_rdata_reg[5] ;
  output \up_rdata_reg[1] ;
  output up_dma_last_reg;
  output ctrl_pause_reg;
  output ctrl_enable_reg;
  output [31:0]s_axi_rdata;
  input s_axi_aclk;
  input up_sot;
  input ctrl_enable_reg_0;
  input s_axi_aresetn;
  input up_dma_req_valid;
  input [1:0]\up_irq_source_reg[1] ;
  input up_req_eot;
  input up_wack;
  input up_rack;
  input \up_irq_mask_reg[0]_0 ;
  input \up_irq_mask_reg[1] ;
  input s_axi_bready;
  input s_axi_rready;
  input [3:0]dbg_status;
  input [3:0]dbg_ids0;
  input \up_transfer_id_reg[1] ;
  input [7:0]dbg_ids1;
  input [31:0]\up_scratch_reg[31] ;
  input \src_id_reg[2] ;
  input [11:0]\up_dma_dest_address_reg[31]_0 ;
  input [2:0]\up_dma_x_length_reg[5] ;
  input \up_dma_dest_address_reg[6] ;
  input [19:0]m_dest_axi_awaddr;
  input [0:0]\reset_gen[0].reset_sync_reg[0] ;
  input \id_reg[2] ;
  input \id_reg[3] ;
  input \id_reg[1] ;
  input \id_reg[0] ;
  input \up_dma_dest_address_reg[19] ;
  input [1:0]\dest_id_reg[3] ;
  input \up_dma_dest_address_reg[18] ;
  input \dest_id_reg[1] ;
  input \up_dma_dest_address_reg[17] ;
  input \up_dma_dest_address_reg[16] ;
  input \up_dma_dest_address_reg[7] ;
  input \up_dma_dest_address_reg[12] ;
  input \up_dma_dest_address_reg[13] ;
  input \up_dma_dest_address_reg[15] ;
  input \up_dma_dest_address_reg[20] ;
  input \up_dma_dest_address_reg[21] ;
  input \up_dma_dest_address_reg[23] ;
  input \address_reg[0] ;
  input [1:0]\up_dma_x_length_reg[22] ;
  input needs_reset_reg;
  input \up_dma_dest_address_reg[11] ;
  input \up_dma_dest_address_reg[10] ;
  input \reset_gen[0].reset_sync_reg[0]_0 ;
  input \reset_gen[0].reset_sync_reg[0]_1 ;
  input \up_dma_dest_address_reg[8] ;
  input \up_dma_dest_address_reg[4] ;
  input \up_transfer_done_bitmap_reg[3] ;
  input \up_transfer_done_bitmap_reg[0] ;
  input [0:0]\up_transfer_id_reg[0] ;
  input [0:0]\up_transfer_id_eot_reg[0] ;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input s_axi_arvalid;
  input ctrl_pause;
  input [31:0]\up_rdata_reg[31]_0 ;
  input \up_transfer_done_bitmap_reg[2] ;
  input \up_transfer_done_bitmap_reg[1] ;
  input \up_dma_dest_address_reg[9] ;
  input [31:0]s_axi_wdata;
  input [8:0]s_axi_awaddr;
  input [8:0]s_axi_araddr;

  wire [1:0]D;
  wire [0:0]E;
  wire [31:0]Q;
  wire \address_reg[0] ;
  wire ctrl_enable_i_2_n_0;
  wire ctrl_enable_reg;
  wire ctrl_enable_reg_0;
  wire ctrl_pause;
  wire ctrl_pause_reg;
  wire [3:0]dbg_ids0;
  wire [7:0]dbg_ids1;
  wire [3:0]dbg_status;
  wire \dest_id_reg[1] ;
  wire [1:0]\dest_id_reg[3] ;
  wire \i_regmap_request/up_dma_req_valid0 ;
  wire \id_reg[0] ;
  wire \id_reg[1] ;
  wire \id_reg[2] ;
  wire \id_reg[3] ;
  wire [19:0]m_dest_axi_awaddr;
  wire needs_reset_reg;
  wire p_0_in6_in;
  wire p_0_in7_in;
  wire p_1_in;
  wire p_5_in;
  wire [0:0]\reset_gen[0].reset_sync_reg[0] ;
  wire \reset_gen[0].reset_sync_reg[0]_0 ;
  wire \reset_gen[0].reset_sync_reg[0]_1 ;
  wire s_axi_aclk;
  wire [8:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [8:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire \src_id_reg[2] ;
  wire up_axi_arready_int_i_1_n_0;
  wire up_axi_arready_int_i_2_n_0;
  wire up_axi_awready_int_i_2_n_0;
  wire up_axi_bvalid_int_i_1_n_0;
  wire \up_axi_rdata_int[31]_i_1_n_0 ;
  wire up_axi_rvalid_int_i_1_n_0;
  wire up_axi_wready_int_i_1_n_0;
  wire \up_dma_dest_address[31]_i_2_n_0 ;
  wire \up_dma_dest_address_reg[10] ;
  wire \up_dma_dest_address_reg[11] ;
  wire \up_dma_dest_address_reg[12] ;
  wire \up_dma_dest_address_reg[13] ;
  wire \up_dma_dest_address_reg[15] ;
  wire \up_dma_dest_address_reg[16] ;
  wire \up_dma_dest_address_reg[17] ;
  wire \up_dma_dest_address_reg[18] ;
  wire \up_dma_dest_address_reg[19] ;
  wire \up_dma_dest_address_reg[20] ;
  wire \up_dma_dest_address_reg[21] ;
  wire \up_dma_dest_address_reg[23] ;
  wire [0:0]\up_dma_dest_address_reg[31] ;
  wire [11:0]\up_dma_dest_address_reg[31]_0 ;
  wire \up_dma_dest_address_reg[4] ;
  wire \up_dma_dest_address_reg[6] ;
  wire \up_dma_dest_address_reg[7] ;
  wire \up_dma_dest_address_reg[8] ;
  wire \up_dma_dest_address_reg[9] ;
  wire up_dma_last_i_2_n_0;
  wire up_dma_last_reg;
  wire up_dma_req_valid;
  wire up_dma_req_valid_reg;
  wire \up_dma_x_length[23]_i_2_n_0 ;
  wire \up_dma_x_length[23]_i_3_n_0 ;
  wire [1:0]\up_dma_x_length_reg[22] ;
  wire [0:0]\up_dma_x_length_reg[3] ;
  wire [2:0]\up_dma_x_length_reg[5] ;
  wire \up_irq_mask[1]_i_3_n_0 ;
  wire \up_irq_mask_reg[0] ;
  wire \up_irq_mask_reg[0]_0 ;
  wire \up_irq_mask_reg[1] ;
  wire \up_irq_source[1]_i_2_n_0 ;
  wire [1:0]\up_irq_source_reg[1] ;
  wire up_rack;
  wire up_rack_d;
  wire up_rack_s;
  wire [8:0]up_raddr;
  wire \up_rcount[0]_i_1_n_0 ;
  wire \up_rcount[1]_i_1_n_0 ;
  wire \up_rcount[2]_i_1_n_0 ;
  wire \up_rcount[3]_i_1_n_0 ;
  wire \up_rcount[4]_i_1_n_0 ;
  wire \up_rcount[4]_i_2_n_0 ;
  wire \up_rcount_reg_n_0_[0] ;
  wire \up_rcount_reg_n_0_[1] ;
  wire \up_rcount_reg_n_0_[2] ;
  wire \up_rcount_reg_n_0_[3] ;
  wire \up_rdata[0]_i_2_n_0 ;
  wire \up_rdata[0]_i_3_n_0 ;
  wire \up_rdata[0]_i_4_n_0 ;
  wire \up_rdata[0]_i_5_n_0 ;
  wire \up_rdata[0]_i_6_n_0 ;
  wire \up_rdata[0]_i_7_n_0 ;
  wire \up_rdata[0]_i_8_n_0 ;
  wire \up_rdata[14]_i_2_n_0 ;
  wire \up_rdata[16]_i_3_n_0 ;
  wire \up_rdata[18]_i_4_n_0 ;
  wire \up_rdata[18]_i_5_n_0 ;
  wire \up_rdata[18]_i_6_n_0 ;
  wire \up_rdata[19]_i_2_n_0 ;
  wire \up_rdata[1]_i_2_n_0 ;
  wire \up_rdata[1]_i_3_n_0 ;
  wire \up_rdata[1]_i_4_n_0 ;
  wire \up_rdata[1]_i_5_n_0 ;
  wire \up_rdata[1]_i_6_n_0 ;
  wire \up_rdata[1]_i_7_n_0 ;
  wire \up_rdata[21]_i_3_n_0 ;
  wire \up_rdata[22]_i_2_n_0 ;
  wire \up_rdata[23]_i_2_n_0 ;
  wire \up_rdata[23]_i_3_n_0 ;
  wire \up_rdata[23]_i_4_n_0 ;
  wire \up_rdata[23]_i_6_n_0 ;
  wire \up_rdata[23]_i_7_n_0 ;
  wire \up_rdata[23]_i_8_n_0 ;
  wire \up_rdata[24]_i_3_n_0 ;
  wire \up_rdata[25]_i_3_n_0 ;
  wire \up_rdata[26]_i_2_n_0 ;
  wire \up_rdata[26]_i_4_n_0 ;
  wire \up_rdata[26]_i_5_n_0 ;
  wire \up_rdata[26]_i_6_n_0 ;
  wire \up_rdata[27]_i_2_n_0 ;
  wire \up_rdata[27]_i_3_n_0 ;
  wire \up_rdata[27]_i_5_n_0 ;
  wire \up_rdata[27]_i_6_n_0 ;
  wire \up_rdata[27]_i_7_n_0 ;
  wire \up_rdata[28]_i_2_n_0 ;
  wire \up_rdata[29]_i_2_n_0 ;
  wire \up_rdata[2]_i_2_n_0 ;
  wire \up_rdata[2]_i_4_n_0 ;
  wire \up_rdata[30]_i_2_n_0 ;
  wire \up_rdata[31]_i_2_n_0 ;
  wire \up_rdata[31]_i_4_n_0 ;
  wire \up_rdata[3]_i_3_n_0 ;
  wire \up_rdata[3]_i_4_n_0 ;
  wire \up_rdata[3]_i_5_n_0 ;
  wire \up_rdata[4]_i_2_n_0 ;
  wire \up_rdata[5]_i_2_n_0 ;
  wire \up_rdata[5]_i_3_n_0 ;
  wire \up_rdata[6]_i_2_n_0 ;
  wire \up_rdata[8]_i_3_n_0 ;
  wire \up_rdata[9]_i_3_n_0 ;
  wire \up_rdata[9]_i_4_n_0 ;
  wire \up_rdata[9]_i_6_n_0 ;
  wire \up_rdata[9]_i_7_n_0 ;
  wire \up_rdata[9]_i_8_n_0 ;
  wire [31:0]up_rdata_d;
  wire \up_rdata_d[0]_i_1_n_0 ;
  wire \up_rdata_d[10]_i_1_n_0 ;
  wire \up_rdata_d[11]_i_1_n_0 ;
  wire \up_rdata_d[12]_i_1_n_0 ;
  wire \up_rdata_d[14]_i_1_n_0 ;
  wire \up_rdata_d[15]_i_1_n_0 ;
  wire \up_rdata_d[16]_i_1_n_0 ;
  wire \up_rdata_d[18]_i_1_n_0 ;
  wire \up_rdata_d[19]_i_1_n_0 ;
  wire \up_rdata_d[21]_i_1_n_0 ;
  wire \up_rdata_d[23]_i_1_n_0 ;
  wire \up_rdata_d[25]_i_1_n_0 ;
  wire \up_rdata_d[26]_i_1_n_0 ;
  wire \up_rdata_d[27]_i_1_n_0 ;
  wire \up_rdata_d[28]_i_1_n_0 ;
  wire \up_rdata_d[29]_i_1_n_0 ;
  wire \up_rdata_d[2]_i_1_n_0 ;
  wire \up_rdata_d[30]_i_1_n_0 ;
  wire \up_rdata_d[31]_i_1_n_0 ;
  wire \up_rdata_d[3]_i_1_n_0 ;
  wire \up_rdata_d[5]_i_1_n_0 ;
  wire \up_rdata_d[7]_i_1_n_0 ;
  wire \up_rdata_d[9]_i_1_n_0 ;
  wire \up_rdata_d_reg[31]_0 ;
  wire \up_rdata_reg[1] ;
  wire [31:0]\up_rdata_reg[31] ;
  wire [31:0]\up_rdata_reg[31]_0 ;
  wire \up_rdata_reg[5] ;
  wire \up_rdata_reg[9] ;
  wire \up_rdata_reg[9]_0 ;
  wire [1:0]\up_rdata_reg[9]_1 ;
  wire up_req_eot;
  wire up_rreq_int_i_1_n_0;
  wire up_rsel_i_1_n_0;
  wire up_rsel_reg_n_0;
  wire \up_scratch[31]_i_2_n_0 ;
  wire \up_scratch[31]_i_3_n_0 ;
  wire [0:0]\up_scratch_reg[0] ;
  wire [31:0]\up_scratch_reg[31] ;
  wire up_sot;
  wire \up_transfer_done_bitmap_reg[0] ;
  wire \up_transfer_done_bitmap_reg[1] ;
  wire \up_transfer_done_bitmap_reg[2] ;
  wire \up_transfer_done_bitmap_reg[3] ;
  wire [0:0]\up_transfer_id_eot_reg[0] ;
  wire [0:0]\up_transfer_id_reg[0] ;
  wire \up_transfer_id_reg[1] ;
  wire up_wack;
  wire up_wack_d;
  wire up_wack_s;
  wire [8:0]up_waddr;
  wire \up_wcount[0]_i_1_n_0 ;
  wire \up_wcount[1]_i_1_n_0 ;
  wire \up_wcount[2]_i_1_n_0 ;
  wire \up_wcount[3]_i_1_n_0 ;
  wire \up_wcount[4]_i_1_n_0 ;
  wire \up_wcount[4]_i_2_n_0 ;
  wire \up_wcount_reg_n_0_[0] ;
  wire \up_wcount_reg_n_0_[1] ;
  wire \up_wcount_reg_n_0_[2] ;
  wire \up_wcount_reg_n_0_[3] ;
  wire up_wreq;
  wire up_wreq_int_i_1_n_0;
  wire up_wsel_i_1_n_0;
  wire up_wsel_reg_n_0;

  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    ctrl_enable_i_1
       (.I0(Q[0]),
        .I1(ctrl_enable_i_2_n_0),
        .I2(up_waddr[2]),
        .I3(\up_dma_x_length[23]_i_2_n_0 ),
        .I4(up_waddr[1]),
        .I5(ctrl_enable_reg_0),
        .O(ctrl_enable_reg));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    ctrl_enable_i_2
       (.I0(up_waddr[5]),
        .I1(up_waddr[6]),
        .I2(up_waddr[0]),
        .I3(up_waddr[8]),
        .I4(up_waddr[7]),
        .I5(up_wreq),
        .O(ctrl_enable_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    ctrl_pause_i_1
       (.I0(Q[1]),
        .I1(ctrl_enable_i_2_n_0),
        .I2(up_waddr[2]),
        .I3(\up_dma_x_length[23]_i_2_n_0 ),
        .I4(up_waddr[1]),
        .I5(ctrl_pause),
        .O(ctrl_pause_reg));
  LUT4 #(
    .INIT(16'h5540)) 
    up_axi_arready_int_i_1
       (.I0(s_axi_arready),
        .I1(up_rack),
        .I2(p_0_in6_in),
        .I3(up_axi_arready_int_i_2_n_0),
        .O(up_axi_arready_int_i_1_n_0));
  LUT5 #(
    .INIT(32'h80000000)) 
    up_axi_arready_int_i_2
       (.I0(p_0_in6_in),
        .I1(\up_rcount_reg_n_0_[1] ),
        .I2(\up_rcount_reg_n_0_[0] ),
        .I3(\up_rcount_reg_n_0_[2] ),
        .I4(\up_rcount_reg_n_0_[3] ),
        .O(up_axi_arready_int_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    up_axi_arready_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_axi_arready_int_i_1_n_0),
        .Q(s_axi_arready),
        .R(\up_rdata_d_reg[31]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    up_axi_awready_int_i_1
       (.I0(s_axi_aresetn),
        .O(\up_rdata_d_reg[31]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h4)) 
    up_axi_awready_int_i_2
       (.I0(s_axi_awready),
        .I1(up_wack_s),
        .O(up_axi_awready_int_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    up_axi_awready_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_axi_awready_int_i_2_n_0),
        .Q(s_axi_awready),
        .R(\up_rdata_d_reg[31]_0 ));
  LUT4 #(
    .INIT(16'h0C88)) 
    up_axi_bvalid_int_i_1
       (.I0(up_wack_d),
        .I1(s_axi_aresetn),
        .I2(s_axi_bready),
        .I3(s_axi_bvalid),
        .O(up_axi_bvalid_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    up_axi_bvalid_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_axi_bvalid_int_i_1_n_0),
        .Q(s_axi_bvalid),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h8F)) 
    \up_axi_rdata_int[31]_i_1 
       (.I0(s_axi_rready),
        .I1(s_axi_rvalid),
        .I2(s_axi_aresetn),
        .O(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[0]),
        .Q(s_axi_rdata[0]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[10] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[10]),
        .Q(s_axi_rdata[10]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[11] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[11]),
        .Q(s_axi_rdata[11]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[12] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[12]),
        .Q(s_axi_rdata[12]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[13] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[13]),
        .Q(s_axi_rdata[13]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[14] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[14]),
        .Q(s_axi_rdata[14]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[15] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[15]),
        .Q(s_axi_rdata[15]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[16] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[16]),
        .Q(s_axi_rdata[16]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[17] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[17]),
        .Q(s_axi_rdata[17]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[18] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[18]),
        .Q(s_axi_rdata[18]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[19] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[19]),
        .Q(s_axi_rdata[19]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[1]),
        .Q(s_axi_rdata[1]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[20] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[20]),
        .Q(s_axi_rdata[20]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[21] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[21]),
        .Q(s_axi_rdata[21]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[22] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[22]),
        .Q(s_axi_rdata[22]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[23] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[23]),
        .Q(s_axi_rdata[23]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[24] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[24]),
        .Q(s_axi_rdata[24]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[25] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[25]),
        .Q(s_axi_rdata[25]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[26] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[26]),
        .Q(s_axi_rdata[26]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[27] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[27]),
        .Q(s_axi_rdata[27]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[28] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[28]),
        .Q(s_axi_rdata[28]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[29] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[29]),
        .Q(s_axi_rdata[29]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[2]),
        .Q(s_axi_rdata[2]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[30] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[30]),
        .Q(s_axi_rdata[30]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[31] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[31]),
        .Q(s_axi_rdata[31]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[3]),
        .Q(s_axi_rdata[3]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[4]),
        .Q(s_axi_rdata[4]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[5]),
        .Q(s_axi_rdata[5]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[6]),
        .Q(s_axi_rdata[6]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[7]),
        .Q(s_axi_rdata[7]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[8]),
        .Q(s_axi_rdata[8]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[9] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[9]),
        .Q(s_axi_rdata[9]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h08C8)) 
    up_axi_rvalid_int_i_1
       (.I0(up_rack_d),
        .I1(s_axi_aresetn),
        .I2(s_axi_rvalid),
        .I3(s_axi_rready),
        .O(up_axi_rvalid_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    up_axi_rvalid_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_axi_rvalid_int_i_1_n_0),
        .Q(s_axi_rvalid),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h4)) 
    up_axi_wready_int_i_1
       (.I0(s_axi_wready),
        .I1(up_wack_s),
        .O(up_axi_wready_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    up_axi_wready_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_axi_wready_int_i_1_n_0),
        .Q(s_axi_wready),
        .R(\up_rdata_d_reg[31]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h00000800)) 
    \up_dma_dest_address[31]_i_1 
       (.I0(\up_dma_dest_address[31]_i_2_n_0 ),
        .I1(up_waddr[2]),
        .I2(up_waddr[1]),
        .I3(up_wreq),
        .I4(up_waddr[0]),
        .O(\up_dma_dest_address_reg[31] ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \up_dma_dest_address[31]_i_2 
       (.I0(up_waddr[7]),
        .I1(up_waddr[8]),
        .I2(up_waddr[3]),
        .I3(up_waddr[4]),
        .I4(up_waddr[5]),
        .I5(up_waddr[6]),
        .O(\up_dma_dest_address[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    up_dma_last_i_1
       (.I0(Q[1]),
        .I1(\up_dma_dest_address[31]_i_2_n_0 ),
        .I2(up_dma_last_i_2_n_0),
        .I3(up_waddr[2]),
        .I4(up_waddr[1]),
        .I5(\up_dma_x_length_reg[5] [0]),
        .O(up_dma_last_reg));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h7)) 
    up_dma_last_i_2
       (.I0(up_wreq),
        .I1(up_waddr[0]),
        .O(up_dma_last_i_2_n_0));
  LUT6 #(
    .INIT(64'hC0C04040C0000000)) 
    up_dma_req_valid_i_1
       (.I0(up_sot),
        .I1(ctrl_enable_reg_0),
        .I2(s_axi_aresetn),
        .I3(Q[0]),
        .I4(\i_regmap_request/up_dma_req_valid0 ),
        .I5(up_dma_req_valid),
        .O(up_dma_req_valid_reg));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    up_dma_req_valid_i_2
       (.I0(ctrl_enable_i_2_n_0),
        .I1(up_waddr[2]),
        .I2(up_waddr[1]),
        .I3(up_waddr[3]),
        .I4(up_waddr[4]),
        .O(\i_regmap_request/up_dma_req_valid0 ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \up_dma_x_length[23]_i_1 
       (.I0(\up_scratch[31]_i_2_n_0 ),
        .I1(\up_dma_x_length[23]_i_2_n_0 ),
        .I2(\up_dma_x_length[23]_i_3_n_0 ),
        .I3(up_waddr[1]),
        .I4(up_wreq),
        .I5(up_waddr[2]),
        .O(\up_dma_x_length_reg[3] ));
  LUT2 #(
    .INIT(4'hE)) 
    \up_dma_x_length[23]_i_2 
       (.I0(up_waddr[3]),
        .I1(up_waddr[4]),
        .O(\up_dma_x_length[23]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \up_dma_x_length[23]_i_3 
       (.I0(up_waddr[8]),
        .I1(up_waddr[7]),
        .O(\up_dma_x_length[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \up_irq_mask[1]_i_2 
       (.I0(\up_irq_mask[1]_i_3_n_0 ),
        .I1(up_waddr[2]),
        .I2(\up_dma_x_length[23]_i_2_n_0 ),
        .I3(up_waddr[1]),
        .I4(up_wreq),
        .I5(up_waddr[0]),
        .O(\up_irq_mask_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \up_irq_mask[1]_i_3 
       (.I0(up_waddr[7]),
        .I1(up_waddr[8]),
        .I2(up_waddr[5]),
        .I3(up_waddr[6]),
        .O(\up_irq_mask[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFBAA)) 
    \up_irq_source[0]_i_1 
       (.I0(up_sot),
        .I1(Q[0]),
        .I2(\up_irq_source[1]_i_2_n_0 ),
        .I3(\up_irq_source_reg[1] [0]),
        .O(D[0]));
  LUT4 #(
    .INIT(16'hFBAA)) 
    \up_irq_source[1]_i_1 
       (.I0(up_req_eot),
        .I1(Q[1]),
        .I2(\up_irq_source[1]_i_2_n_0 ),
        .I3(\up_irq_source_reg[1] [1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFEFFFFFFFFFFFFFF)) 
    \up_irq_source[1]_i_2 
       (.I0(up_waddr[2]),
        .I1(\up_dma_x_length[23]_i_2_n_0 ),
        .I2(up_waddr[1]),
        .I3(\up_irq_mask[1]_i_3_n_0 ),
        .I4(up_wreq),
        .I5(up_waddr[0]),
        .O(\up_irq_source[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF000080000000)) 
    up_rack_d_i_1
       (.I0(\up_rcount_reg_n_0_[3] ),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(\up_rcount_reg_n_0_[0] ),
        .I3(\up_rcount_reg_n_0_[1] ),
        .I4(p_0_in6_in),
        .I5(up_rack),
        .O(up_rack_s));
  FDRE #(
    .INIT(1'b0)) 
    up_rack_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rack_s),
        .Q(up_rack_d),
        .R(\up_rdata_d_reg[31]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \up_raddr_int[8]_i_1 
       (.I0(up_rsel_reg_n_0),
        .O(p_1_in));
  FDRE #(
    .INIT(1'b0)) 
    \up_raddr_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(p_1_in),
        .D(s_axi_araddr[0]),
        .Q(up_raddr[0]),
        .R(\up_rdata_d_reg[31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_raddr_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(p_1_in),
        .D(s_axi_araddr[1]),
        .Q(\up_rdata_reg[9]_1 [0]),
        .R(\up_rdata_d_reg[31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_raddr_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(p_1_in),
        .D(s_axi_araddr[2]),
        .Q(up_raddr[2]),
        .R(\up_rdata_d_reg[31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_raddr_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(p_1_in),
        .D(s_axi_araddr[3]),
        .Q(\up_rdata_reg[9]_1 [1]),
        .R(\up_rdata_d_reg[31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_raddr_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(p_1_in),
        .D(s_axi_araddr[4]),
        .Q(up_raddr[4]),
        .R(\up_rdata_d_reg[31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_raddr_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(p_1_in),
        .D(s_axi_araddr[5]),
        .Q(up_raddr[5]),
        .R(\up_rdata_d_reg[31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_raddr_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(p_1_in),
        .D(s_axi_araddr[6]),
        .Q(up_raddr[6]),
        .R(\up_rdata_d_reg[31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_raddr_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(p_1_in),
        .D(s_axi_araddr[7]),
        .Q(up_raddr[7]),
        .R(\up_rdata_d_reg[31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_raddr_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(p_1_in),
        .D(s_axi_araddr[8]),
        .Q(up_raddr[8]),
        .R(\up_rdata_d_reg[31]_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \up_rcount[0]_i_1 
       (.I0(up_rack),
        .I1(p_0_in6_in),
        .I2(\up_rcount_reg_n_0_[0] ),
        .O(\up_rcount[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0440)) 
    \up_rcount[1]_i_1 
       (.I0(up_rack),
        .I1(p_0_in6_in),
        .I2(\up_rcount_reg_n_0_[1] ),
        .I3(\up_rcount_reg_n_0_[0] ),
        .O(\up_rcount[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h04444000)) 
    \up_rcount[2]_i_1 
       (.I0(up_rack),
        .I1(p_0_in6_in),
        .I2(\up_rcount_reg_n_0_[0] ),
        .I3(\up_rcount_reg_n_0_[1] ),
        .I4(\up_rcount_reg_n_0_[2] ),
        .O(\up_rcount[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0444444440000000)) 
    \up_rcount[3]_i_1 
       (.I0(up_rack),
        .I1(p_0_in6_in),
        .I2(\up_rcount_reg_n_0_[1] ),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[2] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(\up_rcount[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \up_rcount[4]_i_1 
       (.I0(p_0_in6_in),
        .I1(E),
        .O(\up_rcount[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3777777777777777)) 
    \up_rcount[4]_i_2 
       (.I0(up_rack),
        .I1(p_0_in6_in),
        .I2(\up_rcount_reg_n_0_[1] ),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[2] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(\up_rcount[4]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_rcount_reg[0] 
       (.C(s_axi_aclk),
        .CE(\up_rcount[4]_i_1_n_0 ),
        .D(\up_rcount[0]_i_1_n_0 ),
        .Q(\up_rcount_reg_n_0_[0] ),
        .R(\up_rdata_d_reg[31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_rcount_reg[1] 
       (.C(s_axi_aclk),
        .CE(\up_rcount[4]_i_1_n_0 ),
        .D(\up_rcount[1]_i_1_n_0 ),
        .Q(\up_rcount_reg_n_0_[1] ),
        .R(\up_rdata_d_reg[31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_rcount_reg[2] 
       (.C(s_axi_aclk),
        .CE(\up_rcount[4]_i_1_n_0 ),
        .D(\up_rcount[2]_i_1_n_0 ),
        .Q(\up_rcount_reg_n_0_[2] ),
        .R(\up_rdata_d_reg[31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_rcount_reg[3] 
       (.C(s_axi_aclk),
        .CE(\up_rcount[4]_i_1_n_0 ),
        .D(\up_rcount[3]_i_1_n_0 ),
        .Q(\up_rcount_reg_n_0_[3] ),
        .R(\up_rdata_d_reg[31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_rcount_reg[4] 
       (.C(s_axi_aclk),
        .CE(\up_rcount[4]_i_1_n_0 ),
        .D(\up_rcount[4]_i_2_n_0 ),
        .Q(p_0_in6_in),
        .R(\up_rdata_d_reg[31]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF54545404)) 
    \up_rdata[0]_i_1 
       (.I0(\up_rdata[27]_i_3_n_0 ),
        .I1(\up_rdata[0]_i_2_n_0 ),
        .I2(\up_rdata[26]_i_4_n_0 ),
        .I3(\up_rdata[0]_i_3_n_0 ),
        .I4(\up_rdata[0]_i_4_n_0 ),
        .I5(\up_rdata[0]_i_5_n_0 ),
        .O(\up_rdata_reg[31] [0]));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \up_rdata[0]_i_2 
       (.I0(dbg_status[0]),
        .I1(dbg_ids0[0]),
        .I2(\up_rdata_reg[9] ),
        .I3(ctrl_enable_reg_0),
        .I4(\up_rdata_reg[9]_0 ),
        .O(\up_rdata[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h0F4F4F4A)) 
    \up_rdata[0]_i_3 
       (.I0(\up_rdata[23]_i_4_n_0 ),
        .I1(\up_irq_source_reg[1] [0]),
        .I2(\up_rdata_reg[9] ),
        .I3(\up_irq_mask_reg[0]_0 ),
        .I4(\up_rdata_reg[9]_0 ),
        .O(\up_rdata[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \up_rdata[0]_i_4 
       (.I0(\up_scratch_reg[31] [0]),
        .I1(\up_rdata[23]_i_4_n_0 ),
        .I2(\up_rdata_reg[9]_0 ),
        .I3(\up_rdata_reg[9] ),
        .O(\up_rdata[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2000200020003300)) 
    \up_rdata[0]_i_5 
       (.I0(dbg_ids1[0]),
        .I1(\up_rdata[23]_i_4_n_0 ),
        .I2(\up_rdata_reg[9]_0 ),
        .I3(\up_rdata[23]_i_3_n_0 ),
        .I4(\up_rdata[31]_i_4_n_0 ),
        .I5(\up_rdata[0]_i_6_n_0 ),
        .O(\up_rdata[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFF503)) 
    \up_rdata[0]_i_6 
       (.I0(\up_transfer_done_bitmap_reg[0] ),
        .I1(up_dma_req_valid),
        .I2(up_raddr[2]),
        .I3(\up_rdata_reg[9]_1 [1]),
        .I4(\up_rdata[0]_i_7_n_0 ),
        .I5(\up_rdata[0]_i_8_n_0 ),
        .O(\up_rdata[0]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \up_rdata[0]_i_7 
       (.I0(up_raddr[0]),
        .I1(\up_rdata_reg[9]_1 [0]),
        .O(\up_rdata[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000098100000)) 
    \up_rdata[0]_i_8 
       (.I0(\up_rdata_reg[9]_1 [0]),
        .I1(\up_rdata_reg[9]_1 [1]),
        .I2(\up_transfer_id_reg[0] ),
        .I3(\up_transfer_id_eot_reg[0] ),
        .I4(up_raddr[0]),
        .I5(up_raddr[2]),
        .O(\up_rdata[0]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hAEFEAEAE)) 
    \up_rdata[10]_i_1 
       (.I0(\up_dma_dest_address_reg[10] ),
        .I1(\reset_gen[0].reset_sync_reg[0]_0 ),
        .I2(\up_rdata[26]_i_4_n_0 ),
        .I3(\up_rdata[26]_i_5_n_0 ),
        .I4(\up_scratch_reg[31] [10]),
        .O(\up_rdata_reg[31] [10]));
  LUT5 #(
    .INIT(32'hFFFF2E22)) 
    \up_rdata[11]_i_1 
       (.I0(needs_reset_reg),
        .I1(\up_rdata[26]_i_4_n_0 ),
        .I2(\up_rdata[26]_i_5_n_0 ),
        .I3(\up_scratch_reg[31] [11]),
        .I4(\up_dma_dest_address_reg[11] ),
        .O(\up_rdata_reg[31] [11]));
  LUT5 #(
    .INIT(32'hFFFF44F4)) 
    \up_rdata[12]_i_1 
       (.I0(\up_rdata[27]_i_2_n_0 ),
        .I1(\up_scratch_reg[31] [12]),
        .I2(m_dest_axi_awaddr[5]),
        .I3(\up_rdata[21]_i_3_n_0 ),
        .I4(\up_dma_dest_address_reg[12] ),
        .O(\up_rdata_reg[31] [12]));
  LUT5 #(
    .INIT(32'hAEAEFFAE)) 
    \up_rdata[13]_i_1 
       (.I0(\up_dma_dest_address_reg[13] ),
        .I1(\up_scratch_reg[31] [13]),
        .I2(\up_rdata[27]_i_2_n_0 ),
        .I3(m_dest_axi_awaddr[6]),
        .I4(\up_rdata[21]_i_3_n_0 ),
        .O(\up_rdata_reg[31] [13]));
  LUT5 #(
    .INIT(32'hFFFF4540)) 
    \up_rdata[14]_i_1 
       (.I0(\up_rdata_reg[5] ),
        .I1(\up_dma_x_length_reg[22] [0]),
        .I2(\up_rdata_reg[9]_1 [0]),
        .I3(\up_dma_dest_address_reg[31]_0 [2]),
        .I4(\up_rdata[14]_i_2_n_0 ),
        .O(\up_rdata_reg[31] [14]));
  LUT6 #(
    .INIT(64'h020002000C300030)) 
    \up_rdata[14]_i_2 
       (.I0(\up_scratch_reg[31] [14]),
        .I1(\up_rdata[23]_i_3_n_0 ),
        .I2(\up_rdata_reg[9]_0 ),
        .I3(\up_rdata[23]_i_4_n_0 ),
        .I4(m_dest_axi_awaddr[7]),
        .I5(\up_rdata_reg[9] ),
        .O(\up_rdata[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF44F4)) 
    \up_rdata[15]_i_1 
       (.I0(\up_rdata[27]_i_2_n_0 ),
        .I1(\up_scratch_reg[31] [15]),
        .I2(m_dest_axi_awaddr[8]),
        .I3(\up_rdata[21]_i_3_n_0 ),
        .I4(\up_dma_dest_address_reg[15] ),
        .O(\up_rdata_reg[31] [15]));
  LUT5 #(
    .INIT(32'hEFEEEEEE)) 
    \up_rdata[16]_i_1 
       (.I0(\up_dma_dest_address_reg[16] ),
        .I1(\up_rdata[16]_i_3_n_0 ),
        .I2(\up_rdata[26]_i_5_n_0 ),
        .I3(\up_rdata[26]_i_4_n_0 ),
        .I4(\up_scratch_reg[31] [16]),
        .O(\up_rdata_reg[31] [16]));
  LUT6 #(
    .INIT(64'h00B8000000003300)) 
    \up_rdata[16]_i_3 
       (.I0(dbg_ids0[3]),
        .I1(\up_rdata_reg[9] ),
        .I2(m_dest_axi_awaddr[9]),
        .I3(\up_rdata_reg[9]_0 ),
        .I4(\up_rdata[23]_i_3_n_0 ),
        .I5(\up_rdata[23]_i_4_n_0 ),
        .O(\up_rdata[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF404040)) 
    \up_rdata[17]_i_1 
       (.I0(\up_rdata[26]_i_5_n_0 ),
        .I1(\up_rdata[26]_i_4_n_0 ),
        .I2(\up_scratch_reg[31] [17]),
        .I3(\up_rdata[27]_i_5_n_0 ),
        .I4(\dest_id_reg[1] ),
        .I5(\up_dma_dest_address_reg[17] ),
        .O(\up_rdata_reg[31] [17]));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEAAAEA)) 
    \up_rdata[18]_i_1 
       (.I0(\up_dma_dest_address_reg[18] ),
        .I1(\up_rdata[27]_i_5_n_0 ),
        .I2(m_dest_axi_awaddr[10]),
        .I3(\up_rdata_reg[9] ),
        .I4(\dest_id_reg[3] [0]),
        .I5(\up_rdata[18]_i_4_n_0 ),
        .O(\up_rdata_reg[31] [18]));
  LUT6 #(
    .INIT(64'h000000002222A222)) 
    \up_rdata[18]_i_3 
       (.I0(\up_rdata[18]_i_5_n_0 ),
        .I1(up_raddr[2]),
        .I2(\up_rdata_reg[9]_1 [1]),
        .I3(\up_rdata_reg[9]_1 [0]),
        .I4(up_raddr[4]),
        .I5(\up_rdata[18]_i_6_n_0 ),
        .O(\up_rdata_reg[9] ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h10540054)) 
    \up_rdata[18]_i_4 
       (.I0(\up_rdata[23]_i_3_n_0 ),
        .I1(\up_rdata_reg[9]_0 ),
        .I2(\up_rdata[23]_i_4_n_0 ),
        .I3(\up_rdata_reg[9] ),
        .I4(\up_scratch_reg[31] [18]),
        .O(\up_rdata[18]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAFAAAFBAAA)) 
    \up_rdata[18]_i_5 
       (.I0(up_raddr[2]),
        .I1(\up_rdata_reg[9]_1 [1]),
        .I2(up_raddr[8]),
        .I3(up_raddr[4]),
        .I4(\up_rdata_reg[9]_1 [0]),
        .I5(up_raddr[0]),
        .O(\up_rdata[18]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFEFEFFFC)) 
    \up_rdata[18]_i_6 
       (.I0(up_raddr[5]),
        .I1(up_raddr[6]),
        .I2(up_raddr[7]),
        .I3(\up_rdata_reg[9]_1 [1]),
        .I4(up_raddr[8]),
        .O(\up_rdata[18]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAEAFAFA)) 
    \up_rdata[19]_i_1 
       (.I0(\up_rdata[19]_i_2_n_0 ),
        .I1(\up_scratch_reg[31] [19]),
        .I2(\up_rdata[26]_i_4_n_0 ),
        .I3(\up_rdata[26]_i_5_n_0 ),
        .I4(\up_rdata[26]_i_6_n_0 ),
        .I5(\up_dma_dest_address_reg[19] ),
        .O(\up_rdata_reg[31] [19]));
  LUT6 #(
    .INIT(64'h0808080000000800)) 
    \up_rdata[19]_i_2 
       (.I0(\up_rdata[23]_i_4_n_0 ),
        .I1(\up_rdata[23]_i_3_n_0 ),
        .I2(\up_rdata_reg[9]_0 ),
        .I3(m_dest_axi_awaddr[11]),
        .I4(\up_rdata_reg[9] ),
        .I5(\dest_id_reg[3] [1]),
        .O(\up_rdata[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h040404F404040404)) 
    \up_rdata[1]_i_1 
       (.I0(\up_rdata[1]_i_2_n_0 ),
        .I1(\up_rdata[1]_i_3_n_0 ),
        .I2(\up_rdata[23]_i_4_n_0 ),
        .I3(\up_rdata[1]_i_4_n_0 ),
        .I4(\up_rdata[1]_i_5_n_0 ),
        .I5(\up_rdata[1]_i_6_n_0 ),
        .O(\up_rdata_reg[31] [1]));
  LUT6 #(
    .INIT(64'h0000F200F200F200)) 
    \up_rdata[1]_i_2 
       (.I0(\up_rdata[1]_i_7_n_0 ),
        .I1(\up_transfer_id_reg[1] ),
        .I2(\up_rdata[31]_i_4_n_0 ),
        .I3(\up_rdata[23]_i_3_n_0 ),
        .I4(dbg_ids1[1]),
        .I5(\up_rdata_reg[9]_0 ),
        .O(\up_rdata[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBFFEAAFE)) 
    \up_rdata[1]_i_3 
       (.I0(\up_rdata[23]_i_3_n_0 ),
        .I1(\up_rdata_reg[9]_0 ),
        .I2(\up_irq_mask_reg[1] ),
        .I3(\up_rdata_reg[9] ),
        .I4(\up_irq_source_reg[1] [1]),
        .O(\up_rdata[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h15)) 
    \up_rdata[1]_i_4 
       (.I0(\up_rdata_reg[9] ),
        .I1(\up_rdata_reg[9]_0 ),
        .I2(ctrl_pause),
        .O(\up_rdata[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h3437)) 
    \up_rdata[1]_i_5 
       (.I0(dbg_ids0[1]),
        .I1(\up_rdata[23]_i_3_n_0 ),
        .I2(\up_rdata_reg[9]_0 ),
        .I3(\up_scratch_reg[31] [1]),
        .O(\up_rdata[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \up_rdata[1]_i_6 
       (.I0(dbg_status[1]),
        .I1(\up_rdata_reg[9] ),
        .I2(\up_rdata_reg[9]_0 ),
        .O(\up_rdata[1]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hFFDFCFFF)) 
    \up_rdata[1]_i_7 
       (.I0(\up_transfer_done_bitmap_reg[1] ),
        .I1(up_raddr[0]),
        .I2(\up_rdata_reg[9]_1 [0]),
        .I3(up_raddr[2]),
        .I4(\up_rdata_reg[9]_1 [1]),
        .O(\up_rdata[1]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \up_rdata[1]_i_9 
       (.I0(up_raddr[2]),
        .I1(up_raddr[0]),
        .O(\up_rdata_reg[1] ));
  LUT5 #(
    .INIT(32'hFFFF44F4)) 
    \up_rdata[20]_i_1 
       (.I0(\up_rdata[27]_i_2_n_0 ),
        .I1(\up_scratch_reg[31] [20]),
        .I2(m_dest_axi_awaddr[12]),
        .I3(\up_rdata[21]_i_3_n_0 ),
        .I4(\up_dma_dest_address_reg[20] ),
        .O(\up_rdata_reg[31] [20]));
  LUT5 #(
    .INIT(32'hF4F4FFF4)) 
    \up_rdata[21]_i_1 
       (.I0(\up_rdata[27]_i_2_n_0 ),
        .I1(\up_scratch_reg[31] [21]),
        .I2(\up_dma_dest_address_reg[21] ),
        .I3(m_dest_axi_awaddr[13]),
        .I4(\up_rdata[21]_i_3_n_0 ),
        .O(\up_rdata_reg[31] [21]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    \up_rdata[21]_i_3 
       (.I0(\up_rdata_reg[9] ),
        .I1(\up_rdata_reg[9]_0 ),
        .I2(\up_rdata[23]_i_3_n_0 ),
        .I3(\up_rdata[23]_i_4_n_0 ),
        .O(\up_rdata[21]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF4540)) 
    \up_rdata[22]_i_1 
       (.I0(\up_rdata_reg[5] ),
        .I1(\up_dma_x_length_reg[22] [1]),
        .I2(\up_rdata_reg[9]_1 [0]),
        .I3(\up_dma_dest_address_reg[31]_0 [3]),
        .I4(\up_rdata[22]_i_2_n_0 ),
        .O(\up_rdata_reg[31] [22]));
  LUT6 #(
    .INIT(64'h020C020000300030)) 
    \up_rdata[22]_i_2 
       (.I0(\up_scratch_reg[31] [22]),
        .I1(\up_rdata[23]_i_3_n_0 ),
        .I2(\up_rdata_reg[9]_0 ),
        .I3(\up_rdata_reg[9] ),
        .I4(m_dest_axi_awaddr[14]),
        .I5(\up_rdata[23]_i_4_n_0 ),
        .O(\up_rdata[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF4040F340)) 
    \up_rdata[23]_i_1 
       (.I0(\up_rdata[23]_i_2_n_0 ),
        .I1(\up_rdata[23]_i_3_n_0 ),
        .I2(\up_rdata[23]_i_4_n_0 ),
        .I3(\up_scratch_reg[31] [23]),
        .I4(\up_rdata[27]_i_2_n_0 ),
        .I5(\up_dma_dest_address_reg[23] ),
        .O(\up_rdata_reg[31] [23]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \up_rdata[23]_i_2 
       (.I0(\up_rdata_reg[9] ),
        .I1(\up_rdata_reg[9]_0 ),
        .I2(m_dest_axi_awaddr[15]),
        .O(\up_rdata[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFFFE)) 
    \up_rdata[23]_i_3 
       (.I0(\up_rdata[23]_i_6_n_0 ),
        .I1(up_raddr[4]),
        .I2(up_raddr[7]),
        .I3(up_raddr[6]),
        .I4(\up_rdata_reg[9]_1 [1]),
        .I5(up_raddr[5]),
        .O(\up_rdata[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h008800880002008A)) 
    \up_rdata[23]_i_4 
       (.I0(\up_rdata[23]_i_7_n_0 ),
        .I1(up_raddr[8]),
        .I2(up_raddr[4]),
        .I3(\up_rdata[23]_i_8_n_0 ),
        .I4(\up_rdata_reg[9]_1 [0]),
        .I5(up_raddr[2]),
        .O(\up_rdata[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFFFFFFFFFFFFF80)) 
    \up_rdata[23]_i_6 
       (.I0(up_raddr[0]),
        .I1(up_raddr[5]),
        .I2(\up_rdata_reg[9]_1 [0]),
        .I3(\up_rdata_reg[9]_1 [1]),
        .I4(up_raddr[2]),
        .I5(up_raddr[8]),
        .O(\up_rdata[23]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000003CC03C013)) 
    \up_rdata[23]_i_7 
       (.I0(up_raddr[8]),
        .I1(\up_rdata_reg[9]_1 [1]),
        .I2(up_raddr[0]),
        .I3(up_raddr[2]),
        .I4(\up_rdata_reg[9]_1 [0]),
        .I5(up_raddr[4]),
        .O(\up_rdata[23]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \up_rdata[23]_i_8 
       (.I0(up_raddr[5]),
        .I1(up_raddr[7]),
        .I2(up_raddr[6]),
        .O(\up_rdata[23]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFF2F2F2)) 
    \up_rdata[24]_i_1 
       (.I0(\up_scratch_reg[31] [24]),
        .I1(\up_rdata[27]_i_2_n_0 ),
        .I2(\up_rdata[27]_i_3_n_0 ),
        .I3(\id_reg[0] ),
        .I4(\up_rdata[27]_i_5_n_0 ),
        .I5(\up_rdata[24]_i_3_n_0 ),
        .O(\up_rdata_reg[31] [24]));
  LUT6 #(
    .INIT(64'h1300100013001300)) 
    \up_rdata[24]_i_3 
       (.I0(dbg_ids1[4]),
        .I1(\up_rdata[23]_i_4_n_0 ),
        .I2(\up_rdata_reg[9]_0 ),
        .I3(\up_rdata[23]_i_3_n_0 ),
        .I4(\up_rdata[27]_i_7_n_0 ),
        .I5(\up_dma_dest_address_reg[31]_0 [4]),
        .O(\up_rdata[24]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFF2F2F2)) 
    \up_rdata[25]_i_1 
       (.I0(\up_scratch_reg[31] [25]),
        .I1(\up_rdata[27]_i_2_n_0 ),
        .I2(\up_rdata[27]_i_3_n_0 ),
        .I3(\id_reg[1] ),
        .I4(\up_rdata[27]_i_5_n_0 ),
        .I5(\up_rdata[25]_i_3_n_0 ),
        .O(\up_rdata_reg[31] [25]));
  LUT6 #(
    .INIT(64'h1300100013001300)) 
    \up_rdata[25]_i_3 
       (.I0(dbg_ids1[5]),
        .I1(\up_rdata[23]_i_4_n_0 ),
        .I2(\up_rdata_reg[9]_0 ),
        .I3(\up_rdata[23]_i_3_n_0 ),
        .I4(\up_rdata[27]_i_7_n_0 ),
        .I5(\up_dma_dest_address_reg[31]_0 [5]),
        .O(\up_rdata[25]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5757F757F7F7F7F7)) 
    \up_rdata[26]_i_1 
       (.I0(\up_rdata[26]_i_2_n_0 ),
        .I1(\id_reg[2] ),
        .I2(\up_rdata[26]_i_4_n_0 ),
        .I3(\up_scratch_reg[31] [26]),
        .I4(\up_rdata[26]_i_5_n_0 ),
        .I5(\up_rdata[26]_i_6_n_0 ),
        .O(\up_rdata_reg[31] [26]));
  LUT6 #(
    .INIT(64'hDFFFDCFFDFFFDFFF)) 
    \up_rdata[26]_i_2 
       (.I0(dbg_ids1[6]),
        .I1(\up_rdata[23]_i_4_n_0 ),
        .I2(\up_rdata_reg[9]_0 ),
        .I3(\up_rdata[23]_i_3_n_0 ),
        .I4(\up_rdata[27]_i_7_n_0 ),
        .I5(\up_dma_dest_address_reg[31]_0 [6]),
        .O(\up_rdata[26]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h57)) 
    \up_rdata[26]_i_4 
       (.I0(\up_rdata[23]_i_3_n_0 ),
        .I1(\up_rdata_reg[9]_0 ),
        .I2(\up_rdata[23]_i_4_n_0 ),
        .O(\up_rdata[26]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \up_rdata[26]_i_5 
       (.I0(\up_rdata_reg[9] ),
        .I1(\up_rdata_reg[9]_0 ),
        .I2(\up_rdata[23]_i_4_n_0 ),
        .O(\up_rdata[26]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \up_rdata[26]_i_6 
       (.I0(\up_rdata[23]_i_4_n_0 ),
        .I1(\up_rdata_reg[9]_0 ),
        .I2(\up_rdata_reg[9] ),
        .O(\up_rdata[26]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFF2F2F2)) 
    \up_rdata[27]_i_1 
       (.I0(\up_scratch_reg[31] [27]),
        .I1(\up_rdata[27]_i_2_n_0 ),
        .I2(\up_rdata[27]_i_3_n_0 ),
        .I3(\id_reg[3] ),
        .I4(\up_rdata[27]_i_5_n_0 ),
        .I5(\up_rdata[27]_i_6_n_0 ),
        .O(\up_rdata_reg[31] [27]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    \up_rdata[27]_i_2 
       (.I0(\up_rdata_reg[9] ),
        .I1(\up_rdata_reg[9]_0 ),
        .I2(\up_rdata[23]_i_4_n_0 ),
        .I3(\up_rdata[23]_i_3_n_0 ),
        .O(\up_rdata[27]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \up_rdata[27]_i_3 
       (.I0(\up_rdata[23]_i_3_n_0 ),
        .I1(\up_rdata[23]_i_4_n_0 ),
        .O(\up_rdata[27]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \up_rdata[27]_i_5 
       (.I0(\up_rdata_reg[9]_0 ),
        .I1(\up_rdata[23]_i_3_n_0 ),
        .I2(\up_rdata[23]_i_4_n_0 ),
        .O(\up_rdata[27]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h1300100013001300)) 
    \up_rdata[27]_i_6 
       (.I0(dbg_ids1[7]),
        .I1(\up_rdata[23]_i_4_n_0 ),
        .I2(\up_rdata_reg[9]_0 ),
        .I3(\up_rdata[23]_i_3_n_0 ),
        .I4(\up_rdata[27]_i_7_n_0 ),
        .I5(\up_dma_dest_address_reg[31]_0 [7]),
        .O(\up_rdata[27]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \up_rdata[27]_i_7 
       (.I0(\up_rdata_reg[9]_1 [0]),
        .I1(up_raddr[2]),
        .I2(\up_rdata_reg[9]_1 [1]),
        .I3(\up_rdata[31]_i_4_n_0 ),
        .I4(up_raddr[0]),
        .O(\up_rdata[27]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFF10)) 
    \up_rdata[28]_i_1 
       (.I0(\up_rdata_reg[9]_1 [0]),
        .I1(\up_rdata_reg[5] ),
        .I2(\up_dma_dest_address_reg[31]_0 [8]),
        .I3(\up_rdata[28]_i_2_n_0 ),
        .O(\up_rdata_reg[31] [28]));
  LUT6 #(
    .INIT(64'h000000C000008800)) 
    \up_rdata[28]_i_2 
       (.I0(\up_scratch_reg[31] [28]),
        .I1(\up_rdata[23]_i_4_n_0 ),
        .I2(m_dest_axi_awaddr[16]),
        .I3(\up_rdata_reg[9] ),
        .I4(\up_rdata_reg[9]_0 ),
        .I5(\up_rdata[23]_i_3_n_0 ),
        .O(\up_rdata[28]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hABAA)) 
    \up_rdata[29]_i_1 
       (.I0(\up_rdata[29]_i_2_n_0 ),
        .I1(\up_rdata_reg[9]_1 [0]),
        .I2(\up_rdata_reg[5] ),
        .I3(\up_dma_dest_address_reg[31]_0 [9]),
        .O(\up_rdata_reg[31] [29]));
  LUT6 #(
    .INIT(64'h000000C000008800)) 
    \up_rdata[29]_i_2 
       (.I0(\up_scratch_reg[31] [29]),
        .I1(\up_rdata[23]_i_4_n_0 ),
        .I2(m_dest_axi_awaddr[17]),
        .I3(\up_rdata_reg[9] ),
        .I4(\up_rdata_reg[9]_0 ),
        .I5(\up_rdata[23]_i_3_n_0 ),
        .O(\up_rdata[29]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAEFEAEAE)) 
    \up_rdata[2]_i_1 
       (.I0(\up_rdata[2]_i_2_n_0 ),
        .I1(\src_id_reg[2] ),
        .I2(\up_rdata[26]_i_4_n_0 ),
        .I3(\up_rdata[26]_i_5_n_0 ),
        .I4(\up_scratch_reg[31] [2]),
        .O(\up_rdata_reg[31] [2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h20003300)) 
    \up_rdata[2]_i_2 
       (.I0(dbg_ids1[2]),
        .I1(\up_rdata[23]_i_4_n_0 ),
        .I2(\up_rdata_reg[9]_0 ),
        .I3(\up_rdata[23]_i_3_n_0 ),
        .I4(\up_rdata[2]_i_4_n_0 ),
        .O(\up_rdata[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF9DFFFF)) 
    \up_rdata[2]_i_4 
       (.I0(up_raddr[2]),
        .I1(\up_rdata_reg[9]_1 [1]),
        .I2(\up_transfer_done_bitmap_reg[2] ),
        .I3(up_raddr[0]),
        .I4(\up_rdata_reg[9]_1 [0]),
        .I5(\up_rdata[31]_i_4_n_0 ),
        .O(\up_rdata[2]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hABAA)) 
    \up_rdata[30]_i_1 
       (.I0(\up_rdata[30]_i_2_n_0 ),
        .I1(\up_rdata_reg[9]_1 [0]),
        .I2(\up_rdata_reg[5] ),
        .I3(\up_dma_dest_address_reg[31]_0 [10]),
        .O(\up_rdata_reg[31] [30]));
  LUT6 #(
    .INIT(64'h000000C000338800)) 
    \up_rdata[30]_i_2 
       (.I0(\up_scratch_reg[31] [30]),
        .I1(\up_rdata[23]_i_4_n_0 ),
        .I2(m_dest_axi_awaddr[18]),
        .I3(\up_rdata_reg[9] ),
        .I4(\up_rdata_reg[9]_0 ),
        .I5(\up_rdata[23]_i_3_n_0 ),
        .O(\up_rdata[30]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hABAA)) 
    \up_rdata[31]_i_1 
       (.I0(\up_rdata[31]_i_2_n_0 ),
        .I1(\up_rdata_reg[9]_1 [0]),
        .I2(\up_rdata_reg[5] ),
        .I3(\up_dma_dest_address_reg[31]_0 [11]),
        .O(\up_rdata_reg[31] [31]));
  LUT6 #(
    .INIT(64'h000800C000080000)) 
    \up_rdata[31]_i_2 
       (.I0(\up_scratch_reg[31] [31]),
        .I1(\up_rdata[23]_i_4_n_0 ),
        .I2(\up_rdata[23]_i_3_n_0 ),
        .I3(\up_rdata_reg[9]_0 ),
        .I4(\up_rdata_reg[9] ),
        .I5(m_dest_axi_awaddr[19]),
        .O(\up_rdata[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFEFF)) 
    \up_rdata[31]_i_3 
       (.I0(up_raddr[0]),
        .I1(\up_rdata[31]_i_4_n_0 ),
        .I2(\up_rdata_reg[9]_1 [1]),
        .I3(up_raddr[2]),
        .O(\up_rdata_reg[5] ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \up_rdata[31]_i_4 
       (.I0(up_raddr[6]),
        .I1(up_raddr[7]),
        .I2(up_raddr[5]),
        .I3(up_raddr[8]),
        .I4(up_raddr[4]),
        .O(\up_rdata[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2E22)) 
    \up_rdata[3]_i_1 
       (.I0(\address_reg[0] ),
        .I1(\up_rdata[26]_i_4_n_0 ),
        .I2(\up_rdata[26]_i_5_n_0 ),
        .I3(\up_scratch_reg[31] [3]),
        .I4(\up_rdata[3]_i_3_n_0 ),
        .O(\up_rdata_reg[31] [3]));
  LUT6 #(
    .INIT(64'h0F01000001010000)) 
    \up_rdata[3]_i_3 
       (.I0(\up_rdata[31]_i_4_n_0 ),
        .I1(\up_rdata[3]_i_4_n_0 ),
        .I2(\up_rdata[23]_i_4_n_0 ),
        .I3(\up_rdata_reg[9]_0 ),
        .I4(\up_rdata[23]_i_3_n_0 ),
        .I5(dbg_ids1[3]),
        .O(\up_rdata[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA2AAAAAAAA)) 
    \up_rdata[3]_i_4 
       (.I0(\up_rdata[3]_i_5_n_0 ),
        .I1(up_raddr[2]),
        .I2(\up_rdata_reg[9]_1 [1]),
        .I3(up_raddr[0]),
        .I4(\up_rdata_reg[9]_1 [0]),
        .I5(\up_dma_dest_address_reg[31]_0 [0]),
        .O(\up_rdata[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFDDDFFFFFFFDFFF)) 
    \up_rdata[3]_i_5 
       (.I0(\up_rdata_reg[9]_1 [0]),
        .I1(up_raddr[0]),
        .I2(\up_dma_x_length_reg[5] [1]),
        .I3(up_raddr[2]),
        .I4(\up_rdata_reg[9]_1 [1]),
        .I5(\up_transfer_done_bitmap_reg[3] ),
        .O(\up_rdata[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF1055)) 
    \up_rdata[4]_i_1 
       (.I0(\up_rdata[4]_i_2_n_0 ),
        .I1(\up_rdata[26]_i_5_n_0 ),
        .I2(\up_scratch_reg[31] [4]),
        .I3(\up_rdata[26]_i_4_n_0 ),
        .I4(\up_dma_dest_address_reg[4] ),
        .O(\up_rdata_reg[31] [4]));
  LUT6 #(
    .INIT(64'h4CC4CCC44CCCCCCC)) 
    \up_rdata[4]_i_2 
       (.I0(\up_rdata[23]_i_4_n_0 ),
        .I1(\up_rdata[23]_i_3_n_0 ),
        .I2(\up_rdata_reg[9]_0 ),
        .I3(\up_rdata_reg[9] ),
        .I4(dbg_status[2]),
        .I5(m_dest_axi_awaddr[0]),
        .O(\up_rdata[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEFFFEEEFE)) 
    \up_rdata[5]_i_1 
       (.I0(\up_rdata[5]_i_2_n_0 ),
        .I1(\up_rdata[5]_i_3_n_0 ),
        .I2(\up_dma_dest_address_reg[31]_0 [1]),
        .I3(\up_rdata_reg[9]_1 [0]),
        .I4(\up_dma_x_length_reg[5] [2]),
        .I5(\up_rdata_reg[5] ),
        .O(\up_rdata_reg[31] [5]));
  LUT6 #(
    .INIT(64'hCC00008000000080)) 
    \up_rdata[5]_i_2 
       (.I0(\up_rdata[23]_i_4_n_0 ),
        .I1(\up_rdata[23]_i_3_n_0 ),
        .I2(m_dest_axi_awaddr[1]),
        .I3(\up_rdata_reg[9] ),
        .I4(\up_rdata_reg[9]_0 ),
        .I5(dbg_status[3]),
        .O(\up_rdata[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00202222)) 
    \up_rdata[5]_i_3 
       (.I0(\up_rdata[23]_i_4_n_0 ),
        .I1(\up_rdata[23]_i_3_n_0 ),
        .I2(\up_scratch_reg[31] [5]),
        .I3(\up_rdata_reg[9]_0 ),
        .I4(\up_rdata_reg[9] ),
        .O(\up_rdata[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF51555151)) 
    \up_rdata[6]_i_1 
       (.I0(\up_rdata[6]_i_2_n_0 ),
        .I1(\up_rdata[26]_i_4_n_0 ),
        .I2(\up_rdata[8]_i_3_n_0 ),
        .I3(\up_rdata[26]_i_5_n_0 ),
        .I4(\up_scratch_reg[31] [6]),
        .I5(\up_dma_dest_address_reg[6] ),
        .O(\up_rdata_reg[31] [6]));
  LUT6 #(
    .INIT(64'h77CF0000FFFF0000)) 
    \up_rdata[6]_i_2 
       (.I0(dbg_status[3]),
        .I1(\up_rdata_reg[9] ),
        .I2(m_dest_axi_awaddr[2]),
        .I3(\up_rdata_reg[9]_0 ),
        .I4(\up_rdata[23]_i_3_n_0 ),
        .I5(\up_rdata[23]_i_4_n_0 ),
        .O(\up_rdata[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF4F4FFF4)) 
    \up_rdata[7]_i_1 
       (.I0(\up_rdata[27]_i_2_n_0 ),
        .I1(\up_scratch_reg[31] [7]),
        .I2(\up_dma_dest_address_reg[7] ),
        .I3(m_dest_axi_awaddr[3]),
        .I4(\up_rdata[21]_i_3_n_0 ),
        .O(\up_rdata_reg[31] [7]));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEE22E2)) 
    \up_rdata[8]_i_1 
       (.I0(\reset_gen[0].reset_sync_reg[0]_1 ),
        .I1(\up_rdata[26]_i_4_n_0 ),
        .I2(\up_scratch_reg[31] [8]),
        .I3(\up_rdata[26]_i_5_n_0 ),
        .I4(\up_rdata[8]_i_3_n_0 ),
        .I5(\up_dma_dest_address_reg[8] ),
        .O(\up_rdata_reg[31] [8]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \up_rdata[8]_i_3 
       (.I0(\up_rdata_reg[9]_0 ),
        .I1(\up_rdata[23]_i_4_n_0 ),
        .I2(\up_rdata_reg[9] ),
        .O(\up_rdata[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0F0F0100)) 
    \up_rdata[9]_i_1 
       (.I0(\up_rdata_reg[9]_0 ),
        .I1(\up_rdata_reg[9] ),
        .I2(\up_rdata[9]_i_3_n_0 ),
        .I3(m_dest_axi_awaddr[4]),
        .I4(\up_rdata[9]_i_4_n_0 ),
        .I5(\up_dma_dest_address_reg[9] ),
        .O(\up_rdata_reg[31] [9]));
  LUT6 #(
    .INIT(64'h00000000AA450000)) 
    \up_rdata[9]_i_2 
       (.I0(up_raddr[2]),
        .I1(\up_rdata[9]_i_6_n_0 ),
        .I2(up_raddr[8]),
        .I3(\up_rdata_reg[9]_1 [1]),
        .I4(\up_rdata[9]_i_7_n_0 ),
        .I5(\up_rdata[9]_i_8_n_0 ),
        .O(\up_rdata_reg[9]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h51FF55FF)) 
    \up_rdata[9]_i_3 
       (.I0(\up_rdata[23]_i_3_n_0 ),
        .I1(\up_rdata_reg[9] ),
        .I2(\up_rdata_reg[9]_0 ),
        .I3(\up_rdata[23]_i_4_n_0 ),
        .I4(\up_scratch_reg[31] [9]),
        .O(\up_rdata[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h77FF333F773F333F)) 
    \up_rdata[9]_i_4 
       (.I0(\reset_gen[0].reset_sync_reg[0] ),
        .I1(\up_rdata[23]_i_3_n_0 ),
        .I2(\up_rdata[23]_i_4_n_0 ),
        .I3(\up_rdata_reg[9]_0 ),
        .I4(\up_rdata_reg[9] ),
        .I5(dbg_ids0[2]),
        .O(\up_rdata[9]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \up_rdata[9]_i_6 
       (.I0(up_raddr[4]),
        .I1(up_raddr[0]),
        .O(\up_rdata[9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000B000B000B)) 
    \up_rdata[9]_i_7 
       (.I0(up_raddr[8]),
        .I1(up_raddr[4]),
        .I2(up_raddr[6]),
        .I3(up_raddr[7]),
        .I4(up_raddr[5]),
        .I5(\up_rdata_reg[9]_1 [0]),
        .O(\up_rdata[9]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFEFE0CCCFFFFBEFF)) 
    \up_rdata[9]_i_8 
       (.I0(up_raddr[5]),
        .I1(up_raddr[2]),
        .I2(\up_rdata_reg[9]_1 [0]),
        .I3(up_raddr[8]),
        .I4(up_raddr[4]),
        .I5(up_raddr[0]),
        .O(\up_rdata[9]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[0]_i_1 
       (.I0(\up_rdata_reg[31]_0 [0]),
        .I1(\up_rcount_reg_n_0_[3] ),
        .I2(\up_rcount_reg_n_0_[2] ),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(p_0_in6_in),
        .O(\up_rdata_d[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[10]_i_1 
       (.I0(\up_rdata_reg[31]_0 [10]),
        .I1(\up_rcount_reg_n_0_[3] ),
        .I2(\up_rcount_reg_n_0_[2] ),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(p_0_in6_in),
        .O(\up_rdata_d[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[11]_i_1 
       (.I0(\up_rdata_reg[31]_0 [11]),
        .I1(\up_rcount_reg_n_0_[3] ),
        .I2(\up_rcount_reg_n_0_[2] ),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(p_0_in6_in),
        .O(\up_rdata_d[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[12]_i_1 
       (.I0(\up_rdata_reg[31]_0 [12]),
        .I1(\up_rcount_reg_n_0_[3] ),
        .I2(\up_rcount_reg_n_0_[2] ),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(p_0_in6_in),
        .O(\up_rdata_d[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[14]_i_1 
       (.I0(\up_rdata_reg[31]_0 [14]),
        .I1(\up_rcount_reg_n_0_[3] ),
        .I2(\up_rcount_reg_n_0_[2] ),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(p_0_in6_in),
        .O(\up_rdata_d[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[15]_i_1 
       (.I0(\up_rdata_reg[31]_0 [15]),
        .I1(\up_rcount_reg_n_0_[3] ),
        .I2(\up_rcount_reg_n_0_[2] ),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(p_0_in6_in),
        .O(\up_rdata_d[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[16]_i_1 
       (.I0(\up_rdata_reg[31]_0 [16]),
        .I1(\up_rcount_reg_n_0_[3] ),
        .I2(\up_rcount_reg_n_0_[2] ),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(p_0_in6_in),
        .O(\up_rdata_d[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[18]_i_1 
       (.I0(\up_rdata_reg[31]_0 [18]),
        .I1(\up_rcount_reg_n_0_[3] ),
        .I2(\up_rcount_reg_n_0_[2] ),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(p_0_in6_in),
        .O(\up_rdata_d[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[19]_i_1 
       (.I0(\up_rdata_reg[31]_0 [19]),
        .I1(\up_rcount_reg_n_0_[3] ),
        .I2(\up_rcount_reg_n_0_[2] ),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(p_0_in6_in),
        .O(\up_rdata_d[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[21]_i_1 
       (.I0(\up_rdata_reg[31]_0 [21]),
        .I1(\up_rcount_reg_n_0_[3] ),
        .I2(\up_rcount_reg_n_0_[2] ),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(p_0_in6_in),
        .O(\up_rdata_d[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[23]_i_1 
       (.I0(\up_rdata_reg[31]_0 [23]),
        .I1(\up_rcount_reg_n_0_[3] ),
        .I2(\up_rcount_reg_n_0_[2] ),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(p_0_in6_in),
        .O(\up_rdata_d[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[25]_i_1 
       (.I0(\up_rdata_reg[31]_0 [25]),
        .I1(\up_rcount_reg_n_0_[3] ),
        .I2(\up_rcount_reg_n_0_[2] ),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(p_0_in6_in),
        .O(\up_rdata_d[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[26]_i_1 
       (.I0(\up_rdata_reg[31]_0 [26]),
        .I1(\up_rcount_reg_n_0_[3] ),
        .I2(\up_rcount_reg_n_0_[2] ),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(p_0_in6_in),
        .O(\up_rdata_d[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[27]_i_1 
       (.I0(\up_rdata_reg[31]_0 [27]),
        .I1(\up_rcount_reg_n_0_[3] ),
        .I2(\up_rcount_reg_n_0_[2] ),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(p_0_in6_in),
        .O(\up_rdata_d[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[28]_i_1 
       (.I0(\up_rdata_reg[31]_0 [28]),
        .I1(\up_rcount_reg_n_0_[3] ),
        .I2(\up_rcount_reg_n_0_[2] ),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(p_0_in6_in),
        .O(\up_rdata_d[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h80000000FFFFFFFF)) 
    \up_rdata_d[29]_i_1 
       (.I0(\up_rcount_reg_n_0_[3] ),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(\up_rcount_reg_n_0_[0] ),
        .I3(\up_rcount_reg_n_0_[1] ),
        .I4(p_0_in6_in),
        .I5(s_axi_aresetn),
        .O(\up_rdata_d[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[2]_i_1 
       (.I0(\up_rdata_reg[31]_0 [2]),
        .I1(\up_rcount_reg_n_0_[3] ),
        .I2(\up_rcount_reg_n_0_[2] ),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(p_0_in6_in),
        .O(\up_rdata_d[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[30]_i_1 
       (.I0(\up_rdata_reg[31]_0 [30]),
        .I1(\up_rcount_reg_n_0_[3] ),
        .I2(\up_rcount_reg_n_0_[2] ),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(p_0_in6_in),
        .O(\up_rdata_d[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[31]_i_1 
       (.I0(\up_rdata_reg[31]_0 [31]),
        .I1(\up_rcount_reg_n_0_[3] ),
        .I2(\up_rcount_reg_n_0_[2] ),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(p_0_in6_in),
        .O(\up_rdata_d[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[3]_i_1 
       (.I0(\up_rdata_reg[31]_0 [3]),
        .I1(\up_rcount_reg_n_0_[3] ),
        .I2(\up_rcount_reg_n_0_[2] ),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(p_0_in6_in),
        .O(\up_rdata_d[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[5]_i_1 
       (.I0(\up_rdata_reg[31]_0 [5]),
        .I1(\up_rcount_reg_n_0_[3] ),
        .I2(\up_rcount_reg_n_0_[2] ),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(p_0_in6_in),
        .O(\up_rdata_d[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[7]_i_1 
       (.I0(\up_rdata_reg[31]_0 [7]),
        .I1(\up_rcount_reg_n_0_[3] ),
        .I2(\up_rcount_reg_n_0_[2] ),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(p_0_in6_in),
        .O(\up_rdata_d[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[9]_i_1 
       (.I0(\up_rdata_reg[31]_0 [9]),
        .I1(\up_rcount_reg_n_0_[3] ),
        .I2(\up_rcount_reg_n_0_[2] ),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(p_0_in6_in),
        .O(\up_rdata_d[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[0]_i_1_n_0 ),
        .Q(up_rdata_d[0]),
        .R(\up_rdata_d_reg[31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[10]_i_1_n_0 ),
        .Q(up_rdata_d[10]),
        .R(\up_rdata_d_reg[31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[11]_i_1_n_0 ),
        .Q(up_rdata_d[11]),
        .R(\up_rdata_d_reg[31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[12]_i_1_n_0 ),
        .Q(up_rdata_d[12]),
        .R(\up_rdata_d_reg[31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_reg[31]_0 [13]),
        .Q(up_rdata_d[13]),
        .R(\up_rdata_d[29]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[14]_i_1_n_0 ),
        .Q(up_rdata_d[14]),
        .R(\up_rdata_d_reg[31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[15]_i_1_n_0 ),
        .Q(up_rdata_d[15]),
        .R(\up_rdata_d_reg[31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[16]_i_1_n_0 ),
        .Q(up_rdata_d[16]),
        .R(\up_rdata_d_reg[31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_reg[31]_0 [17]),
        .Q(up_rdata_d[17]),
        .R(\up_rdata_d[29]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[18]_i_1_n_0 ),
        .Q(up_rdata_d[18]),
        .R(\up_rdata_d_reg[31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[19]_i_1_n_0 ),
        .Q(up_rdata_d[19]),
        .R(\up_rdata_d_reg[31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_reg[31]_0 [1]),
        .Q(up_rdata_d[1]),
        .R(\up_rdata_d[29]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_reg[31]_0 [20]),
        .Q(up_rdata_d[20]),
        .R(\up_rdata_d[29]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[21]_i_1_n_0 ),
        .Q(up_rdata_d[21]),
        .R(\up_rdata_d_reg[31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_reg[31]_0 [22]),
        .Q(up_rdata_d[22]),
        .R(\up_rdata_d[29]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[23]_i_1_n_0 ),
        .Q(up_rdata_d[23]),
        .R(\up_rdata_d_reg[31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_reg[31]_0 [24]),
        .Q(up_rdata_d[24]),
        .R(\up_rdata_d[29]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[25]_i_1_n_0 ),
        .Q(up_rdata_d[25]),
        .R(\up_rdata_d_reg[31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[26]_i_1_n_0 ),
        .Q(up_rdata_d[26]),
        .R(\up_rdata_d_reg[31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[27]_i_1_n_0 ),
        .Q(up_rdata_d[27]),
        .R(\up_rdata_d_reg[31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[28]_i_1_n_0 ),
        .Q(up_rdata_d[28]),
        .R(\up_rdata_d_reg[31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_reg[31]_0 [29]),
        .Q(up_rdata_d[29]),
        .R(\up_rdata_d[29]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[2]_i_1_n_0 ),
        .Q(up_rdata_d[2]),
        .R(\up_rdata_d_reg[31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[30]_i_1_n_0 ),
        .Q(up_rdata_d[30]),
        .R(\up_rdata_d_reg[31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[31]_i_1_n_0 ),
        .Q(up_rdata_d[31]),
        .R(\up_rdata_d_reg[31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[3]_i_1_n_0 ),
        .Q(up_rdata_d[3]),
        .R(\up_rdata_d_reg[31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_reg[31]_0 [4]),
        .Q(up_rdata_d[4]),
        .R(\up_rdata_d[29]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[5]_i_1_n_0 ),
        .Q(up_rdata_d[5]),
        .R(\up_rdata_d_reg[31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_reg[31]_0 [6]),
        .Q(up_rdata_d[6]),
        .R(\up_rdata_d[29]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[7]_i_1_n_0 ),
        .Q(up_rdata_d[7]),
        .R(\up_rdata_d_reg[31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_reg[31]_0 [8]),
        .Q(up_rdata_d[8]),
        .R(\up_rdata_d[29]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[9]_i_1_n_0 ),
        .Q(up_rdata_d[9]),
        .R(\up_rdata_d_reg[31]_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    up_rreq_int_i_1
       (.I0(up_rsel_reg_n_0),
        .I1(s_axi_arvalid),
        .I2(s_axi_aresetn),
        .O(up_rreq_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    up_rreq_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rreq_int_i_1_n_0),
        .Q(E),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h3FAA)) 
    up_rsel_i_1
       (.I0(s_axi_arvalid),
        .I1(s_axi_rready),
        .I2(s_axi_rvalid),
        .I3(up_rsel_reg_n_0),
        .O(up_rsel_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    up_rsel_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rsel_i_1_n_0),
        .Q(up_rsel_reg_n_0),
        .R(\up_rdata_d_reg[31]_0 ));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \up_scratch[31]_i_1 
       (.I0(\up_scratch[31]_i_2_n_0 ),
        .I1(up_waddr[7]),
        .I2(up_waddr[8]),
        .I3(up_waddr[1]),
        .I4(up_wreq),
        .I5(\up_scratch[31]_i_3_n_0 ),
        .O(\up_scratch_reg[0] ));
  LUT3 #(
    .INIT(8'h01)) 
    \up_scratch[31]_i_2 
       (.I0(up_waddr[0]),
        .I1(up_waddr[6]),
        .I2(up_waddr[5]),
        .O(\up_scratch[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \up_scratch[31]_i_3 
       (.I0(up_waddr[2]),
        .I1(up_waddr[4]),
        .I2(up_waddr[3]),
        .O(\up_scratch[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA80000000)) 
    up_wack_d_i_1
       (.I0(p_0_in7_in),
        .I1(\up_wcount_reg_n_0_[3] ),
        .I2(\up_wcount_reg_n_0_[0] ),
        .I3(\up_wcount_reg_n_0_[1] ),
        .I4(\up_wcount_reg_n_0_[2] ),
        .I5(up_wack),
        .O(up_wack_s));
  FDRE #(
    .INIT(1'b0)) 
    up_wack_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_wack_s),
        .Q(up_wack_d),
        .R(\up_rdata_d_reg[31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_waddr_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_awaddr[0]),
        .Q(up_waddr[0]),
        .R(\up_rdata_d_reg[31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_waddr_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_awaddr[1]),
        .Q(up_waddr[1]),
        .R(\up_rdata_d_reg[31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_waddr_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_awaddr[2]),
        .Q(up_waddr[2]),
        .R(\up_rdata_d_reg[31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_waddr_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_awaddr[3]),
        .Q(up_waddr[3]),
        .R(\up_rdata_d_reg[31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_waddr_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_awaddr[4]),
        .Q(up_waddr[4]),
        .R(\up_rdata_d_reg[31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_waddr_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_awaddr[5]),
        .Q(up_waddr[5]),
        .R(\up_rdata_d_reg[31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_waddr_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_awaddr[6]),
        .Q(up_waddr[6]),
        .R(\up_rdata_d_reg[31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_waddr_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_awaddr[7]),
        .Q(up_waddr[7]),
        .R(\up_rdata_d_reg[31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_waddr_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_awaddr[8]),
        .Q(up_waddr[8]),
        .R(\up_rdata_d_reg[31]_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \up_wcount[0]_i_1 
       (.I0(up_wack),
        .I1(p_0_in7_in),
        .I2(\up_wcount_reg_n_0_[0] ),
        .O(\up_wcount[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h1400)) 
    \up_wcount[1]_i_1 
       (.I0(up_wack),
        .I1(\up_wcount_reg_n_0_[0] ),
        .I2(\up_wcount_reg_n_0_[1] ),
        .I3(p_0_in7_in),
        .O(\up_wcount[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h14440000)) 
    \up_wcount[2]_i_1 
       (.I0(up_wack),
        .I1(\up_wcount_reg_n_0_[2] ),
        .I2(\up_wcount_reg_n_0_[1] ),
        .I3(\up_wcount_reg_n_0_[0] ),
        .I4(p_0_in7_in),
        .O(\up_wcount[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1444444400000000)) 
    \up_wcount[3]_i_1 
       (.I0(up_wack),
        .I1(\up_wcount_reg_n_0_[3] ),
        .I2(\up_wcount_reg_n_0_[0] ),
        .I3(\up_wcount_reg_n_0_[1] ),
        .I4(\up_wcount_reg_n_0_[2] ),
        .I5(p_0_in7_in),
        .O(\up_wcount[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \up_wcount[4]_i_1 
       (.I0(up_wreq),
        .I1(p_0_in7_in),
        .O(\up_wcount[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h15555555FFFFFFFF)) 
    \up_wcount[4]_i_2 
       (.I0(up_wack),
        .I1(\up_wcount_reg_n_0_[2] ),
        .I2(\up_wcount_reg_n_0_[1] ),
        .I3(\up_wcount_reg_n_0_[0] ),
        .I4(\up_wcount_reg_n_0_[3] ),
        .I5(p_0_in7_in),
        .O(\up_wcount[4]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_wcount_reg[0] 
       (.C(s_axi_aclk),
        .CE(\up_wcount[4]_i_1_n_0 ),
        .D(\up_wcount[0]_i_1_n_0 ),
        .Q(\up_wcount_reg_n_0_[0] ),
        .R(\up_rdata_d_reg[31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_wcount_reg[1] 
       (.C(s_axi_aclk),
        .CE(\up_wcount[4]_i_1_n_0 ),
        .D(\up_wcount[1]_i_1_n_0 ),
        .Q(\up_wcount_reg_n_0_[1] ),
        .R(\up_rdata_d_reg[31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_wcount_reg[2] 
       (.C(s_axi_aclk),
        .CE(\up_wcount[4]_i_1_n_0 ),
        .D(\up_wcount[2]_i_1_n_0 ),
        .Q(\up_wcount_reg_n_0_[2] ),
        .R(\up_rdata_d_reg[31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_wcount_reg[3] 
       (.C(s_axi_aclk),
        .CE(\up_wcount[4]_i_1_n_0 ),
        .D(\up_wcount[3]_i_1_n_0 ),
        .Q(\up_wcount_reg_n_0_[3] ),
        .R(\up_rdata_d_reg[31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_wcount_reg[4] 
       (.C(s_axi_aclk),
        .CE(\up_wcount[4]_i_1_n_0 ),
        .D(\up_wcount[4]_i_2_n_0 ),
        .Q(p_0_in7_in),
        .R(\up_rdata_d_reg[31]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \up_wdata_int[31]_i_1 
       (.I0(up_wsel_reg_n_0),
        .O(p_5_in));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[0]),
        .Q(Q[0]),
        .R(\up_rdata_d_reg[31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[10] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[10]),
        .Q(Q[10]),
        .R(\up_rdata_d_reg[31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[11] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[11]),
        .Q(Q[11]),
        .R(\up_rdata_d_reg[31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[12] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[12]),
        .Q(Q[12]),
        .R(\up_rdata_d_reg[31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[13] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[13]),
        .Q(Q[13]),
        .R(\up_rdata_d_reg[31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[14] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[14]),
        .Q(Q[14]),
        .R(\up_rdata_d_reg[31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[15] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[15]),
        .Q(Q[15]),
        .R(\up_rdata_d_reg[31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[16] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[16]),
        .Q(Q[16]),
        .R(\up_rdata_d_reg[31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[17] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[17]),
        .Q(Q[17]),
        .R(\up_rdata_d_reg[31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[18] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[18]),
        .Q(Q[18]),
        .R(\up_rdata_d_reg[31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[19] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[19]),
        .Q(Q[19]),
        .R(\up_rdata_d_reg[31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[1]),
        .Q(Q[1]),
        .R(\up_rdata_d_reg[31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[20] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[20]),
        .Q(Q[20]),
        .R(\up_rdata_d_reg[31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[21] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[21]),
        .Q(Q[21]),
        .R(\up_rdata_d_reg[31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[22] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[22]),
        .Q(Q[22]),
        .R(\up_rdata_d_reg[31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[23] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[23]),
        .Q(Q[23]),
        .R(\up_rdata_d_reg[31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[24] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[24]),
        .Q(Q[24]),
        .R(\up_rdata_d_reg[31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[25] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[25]),
        .Q(Q[25]),
        .R(\up_rdata_d_reg[31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[26] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[26]),
        .Q(Q[26]),
        .R(\up_rdata_d_reg[31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[27] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[27]),
        .Q(Q[27]),
        .R(\up_rdata_d_reg[31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[28] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[28]),
        .Q(Q[28]),
        .R(\up_rdata_d_reg[31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[29] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[29]),
        .Q(Q[29]),
        .R(\up_rdata_d_reg[31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[2]),
        .Q(Q[2]),
        .R(\up_rdata_d_reg[31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[30] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[30]),
        .Q(Q[30]),
        .R(\up_rdata_d_reg[31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[31] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[31]),
        .Q(Q[31]),
        .R(\up_rdata_d_reg[31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[3]),
        .Q(Q[3]),
        .R(\up_rdata_d_reg[31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[4]),
        .Q(Q[4]),
        .R(\up_rdata_d_reg[31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[5]),
        .Q(Q[5]),
        .R(\up_rdata_d_reg[31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[6]),
        .Q(Q[6]),
        .R(\up_rdata_d_reg[31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[7]),
        .Q(Q[7]),
        .R(\up_rdata_d_reg[31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[8]),
        .Q(Q[8]),
        .R(\up_rdata_d_reg[31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[9] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[9]),
        .Q(Q[9]),
        .R(\up_rdata_d_reg[31]_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    up_wreq_int_i_1
       (.I0(up_wsel_reg_n_0),
        .I1(s_axi_wvalid),
        .I2(s_axi_awvalid),
        .I3(s_axi_aresetn),
        .O(up_wreq_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    up_wreq_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_wreq_int_i_1_n_0),
        .Q(up_wreq),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0FFF8888)) 
    up_wsel_i_1
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .I2(s_axi_bready),
        .I3(s_axi_bvalid),
        .I4(up_wsel_reg_n_0),
        .O(up_wsel_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    up_wsel_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_wsel_i_1_n_0),
        .Q(up_wsel_reg_n_0),
        .R(\up_rdata_d_reg[31]_0 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_axis_fifo
   (s_axis_waddr,
    m_axis_raddr,
    \address_reg[28] ,
    Q,
    s_axi_aclk,
    m_dest_axi_aclk,
    up_dma_req_valid,
    do_enable_reg,
    acked,
    dest_req_ready,
    D);
  output s_axis_waddr;
  output m_axis_raddr;
  output [32:0]\address_reg[28] ;
  input [0:0]Q;
  input s_axi_aclk;
  input m_dest_axi_aclk;
  input up_dma_req_valid;
  input do_enable_reg;
  input [0:0]acked;
  input dest_req_ready;
  input [32:0]D;

  wire [32:0]D;
  wire [0:0]Q;
  wire [0:0]acked;
  wire [32:0]\address_reg[28] ;
  wire cdc_sync_fifo_ram0;
  wire dest_req_ready;
  wire do_enable_reg;
  wire m_axis_raddr;
  wire m_axis_raddr_i_1__0_n_0;
  wire m_dest_axi_aclk;
  wire s_axi_aclk;
  wire s_axis_waddr;
  wire s_axis_waddr_i_1__1_n_0;
  wire up_dma_req_valid;

  LUT5 #(
    .INIT(32'h00008008)) 
    \cdc_sync_fifo_ram[33]_i_1 
       (.I0(up_dma_req_valid),
        .I1(do_enable_reg),
        .I2(s_axis_waddr),
        .I3(m_axis_raddr),
        .I4(acked),
        .O(cdc_sync_fifo_ram0));
  FDRE \cdc_sync_fifo_ram_reg[10] 
       (.C(s_axi_aclk),
        .CE(cdc_sync_fifo_ram0),
        .D(D[9]),
        .Q(\address_reg[28] [9]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[11] 
       (.C(s_axi_aclk),
        .CE(cdc_sync_fifo_ram0),
        .D(D[10]),
        .Q(\address_reg[28] [10]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[12] 
       (.C(s_axi_aclk),
        .CE(cdc_sync_fifo_ram0),
        .D(D[11]),
        .Q(\address_reg[28] [11]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[13] 
       (.C(s_axi_aclk),
        .CE(cdc_sync_fifo_ram0),
        .D(D[12]),
        .Q(\address_reg[28] [12]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[14] 
       (.C(s_axi_aclk),
        .CE(cdc_sync_fifo_ram0),
        .D(D[13]),
        .Q(\address_reg[28] [13]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[15] 
       (.C(s_axi_aclk),
        .CE(cdc_sync_fifo_ram0),
        .D(D[14]),
        .Q(\address_reg[28] [14]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[16] 
       (.C(s_axi_aclk),
        .CE(cdc_sync_fifo_ram0),
        .D(D[15]),
        .Q(\address_reg[28] [15]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[17] 
       (.C(s_axi_aclk),
        .CE(cdc_sync_fifo_ram0),
        .D(D[16]),
        .Q(\address_reg[28] [16]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[18] 
       (.C(s_axi_aclk),
        .CE(cdc_sync_fifo_ram0),
        .D(D[17]),
        .Q(\address_reg[28] [17]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[19] 
       (.C(s_axi_aclk),
        .CE(cdc_sync_fifo_ram0),
        .D(D[18]),
        .Q(\address_reg[28] [18]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[1] 
       (.C(s_axi_aclk),
        .CE(cdc_sync_fifo_ram0),
        .D(D[0]),
        .Q(\address_reg[28] [0]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[20] 
       (.C(s_axi_aclk),
        .CE(cdc_sync_fifo_ram0),
        .D(D[19]),
        .Q(\address_reg[28] [19]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[21] 
       (.C(s_axi_aclk),
        .CE(cdc_sync_fifo_ram0),
        .D(D[20]),
        .Q(\address_reg[28] [20]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[22] 
       (.C(s_axi_aclk),
        .CE(cdc_sync_fifo_ram0),
        .D(D[21]),
        .Q(\address_reg[28] [21]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[23] 
       (.C(s_axi_aclk),
        .CE(cdc_sync_fifo_ram0),
        .D(D[22]),
        .Q(\address_reg[28] [22]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[24] 
       (.C(s_axi_aclk),
        .CE(cdc_sync_fifo_ram0),
        .D(D[23]),
        .Q(\address_reg[28] [23]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[25] 
       (.C(s_axi_aclk),
        .CE(cdc_sync_fifo_ram0),
        .D(D[24]),
        .Q(\address_reg[28] [24]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[26] 
       (.C(s_axi_aclk),
        .CE(cdc_sync_fifo_ram0),
        .D(D[25]),
        .Q(\address_reg[28] [25]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[27] 
       (.C(s_axi_aclk),
        .CE(cdc_sync_fifo_ram0),
        .D(D[26]),
        .Q(\address_reg[28] [26]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[28] 
       (.C(s_axi_aclk),
        .CE(cdc_sync_fifo_ram0),
        .D(D[27]),
        .Q(\address_reg[28] [27]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[29] 
       (.C(s_axi_aclk),
        .CE(cdc_sync_fifo_ram0),
        .D(D[28]),
        .Q(\address_reg[28] [28]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[2] 
       (.C(s_axi_aclk),
        .CE(cdc_sync_fifo_ram0),
        .D(D[1]),
        .Q(\address_reg[28] [1]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[30] 
       (.C(s_axi_aclk),
        .CE(cdc_sync_fifo_ram0),
        .D(D[29]),
        .Q(\address_reg[28] [29]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[31] 
       (.C(s_axi_aclk),
        .CE(cdc_sync_fifo_ram0),
        .D(D[30]),
        .Q(\address_reg[28] [30]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[32] 
       (.C(s_axi_aclk),
        .CE(cdc_sync_fifo_ram0),
        .D(D[31]),
        .Q(\address_reg[28] [31]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[33] 
       (.C(s_axi_aclk),
        .CE(cdc_sync_fifo_ram0),
        .D(D[32]),
        .Q(\address_reg[28] [32]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[3] 
       (.C(s_axi_aclk),
        .CE(cdc_sync_fifo_ram0),
        .D(D[2]),
        .Q(\address_reg[28] [2]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[4] 
       (.C(s_axi_aclk),
        .CE(cdc_sync_fifo_ram0),
        .D(D[3]),
        .Q(\address_reg[28] [3]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[5] 
       (.C(s_axi_aclk),
        .CE(cdc_sync_fifo_ram0),
        .D(D[4]),
        .Q(\address_reg[28] [4]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[6] 
       (.C(s_axi_aclk),
        .CE(cdc_sync_fifo_ram0),
        .D(D[5]),
        .Q(\address_reg[28] [5]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[7] 
       (.C(s_axi_aclk),
        .CE(cdc_sync_fifo_ram0),
        .D(D[6]),
        .Q(\address_reg[28] [6]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[8] 
       (.C(s_axi_aclk),
        .CE(cdc_sync_fifo_ram0),
        .D(D[7]),
        .Q(\address_reg[28] [7]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[9] 
       (.C(s_axi_aclk),
        .CE(cdc_sync_fifo_ram0),
        .D(D[8]),
        .Q(\address_reg[28] [8]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    m_axis_raddr_i_1__0
       (.I0(s_axis_waddr),
        .I1(dest_req_ready),
        .I2(m_axis_raddr),
        .O(m_axis_raddr_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_axis_raddr_reg
       (.C(m_dest_axi_aclk),
        .CE(1'b1),
        .D(m_axis_raddr_i_1__0_n_0),
        .Q(m_axis_raddr),
        .R(Q));
  LUT5 #(
    .INIT(32'hBFFF1000)) 
    s_axis_waddr_i_1__1
       (.I0(acked),
        .I1(m_axis_raddr),
        .I2(do_enable_reg),
        .I3(up_dma_req_valid),
        .I4(s_axis_waddr),
        .O(s_axis_waddr_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axis_waddr_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axis_waddr_i_1__1_n_0),
        .Q(s_axis_waddr),
        .R(Q));
endmodule

(* ORIG_REF_NAME = "util_axis_fifo" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_axis_fifo__parameterized0
   (s_axis_waddr_reg_0,
    s_axis_waddr_reg_1,
    E,
    src_req_valid,
    \last_burst_length_reg[4] ,
    Q,
    s_axi_aclk,
    active_reg,
    s_axis_aclk,
    acked,
    up_dma_req_valid,
    do_enable_reg,
    D);
  output s_axis_waddr_reg_0;
  output s_axis_waddr_reg_1;
  output [0:0]E;
  output src_req_valid;
  output [4:0]\last_burst_length_reg[4] ;
  input [0:0]Q;
  input s_axi_aclk;
  input active_reg;
  input s_axis_aclk;
  input [0:0]acked;
  input up_dma_req_valid;
  input do_enable_reg;
  input [4:0]D;

  wire [4:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]acked;
  wire active_reg;
  wire do_enable_reg;
  wire [4:0]\last_burst_length_reg[4] ;
  wire s_axi_aclk;
  wire s_axis_aclk;
  wire s_axis_waddr_i_1__0_n_0;
  wire s_axis_waddr_reg_0;
  wire s_axis_waddr_reg_1;
  wire src_req_valid;
  wire up_dma_req_valid;

  LUT5 #(
    .INIT(32'h40000040)) 
    \cdc_sync_fifo_ram[6]_i_1 
       (.I0(acked),
        .I1(up_dma_req_valid),
        .I2(do_enable_reg),
        .I3(s_axis_waddr_reg_1),
        .I4(s_axis_waddr_reg_0),
        .O(E));
  FDRE \cdc_sync_fifo_ram_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[0]),
        .Q(\last_burst_length_reg[4] [0]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[1]),
        .Q(\last_burst_length_reg[4] [1]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[2]),
        .Q(\last_burst_length_reg[4] [2]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[5] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[3]),
        .Q(\last_burst_length_reg[4] [3]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[6] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[4]),
        .Q(\last_burst_length_reg[4] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    m_axis_raddr_reg
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(active_reg),
        .Q(s_axis_waddr_reg_1),
        .R(Q));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'hFF7F0040)) 
    s_axis_waddr_i_1__0
       (.I0(s_axis_waddr_reg_1),
        .I1(do_enable_reg),
        .I2(up_dma_req_valid),
        .I3(acked),
        .I4(s_axis_waddr_reg_0),
        .O(s_axis_waddr_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axis_waddr_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axis_waddr_i_1__0_n_0),
        .Q(s_axis_waddr_reg_0),
        .R(Q));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \up_transfer_id[1]_i_3 
       (.I0(s_axis_waddr_reg_0),
        .I1(s_axis_waddr_reg_1),
        .O(src_req_valid));
endmodule

(* ORIG_REF_NAME = "util_axis_fifo" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_axis_fifo__parameterized1
   (id0,
    m_dest_axi_bready,
    eot0,
    Q,
    m_dest_axi_aclk,
    s_axi_aclk,
    dest_response_eot,
    m_dest_axi_bvalid,
    \id_reg[3] );
  output id0;
  output m_dest_axi_bready;
  output eot0;
  input [0:0]Q;
  input m_dest_axi_aclk;
  input s_axi_aclk;
  input dest_response_eot;
  input m_dest_axi_bvalid;
  input \id_reg[3] ;

  wire [0:0]Q;
  wire dest_response_eot;
  wire eot0;
  wire id0;
  wire \id_reg[3] ;
  wire m_axis_raddr_reg_n_0;
  wire m_dest_axi_aclk;
  wire m_dest_axi_bready;
  wire m_dest_axi_bvalid;
  wire response_dest_resp_eot;
  wire s_axi_aclk;
  wire s_axis_waddr_i_1_n_0;
  wire s_axis_waddr_reg_n_0;

  LUT4 #(
    .INIT(16'h2002)) 
    \cdc_sync_fifo_ram[0]_i_1 
       (.I0(m_dest_axi_bvalid),
        .I1(\id_reg[3] ),
        .I2(s_axis_waddr_reg_n_0),
        .I3(m_axis_raddr_reg_n_0),
        .O(id0));
  FDRE \cdc_sync_fifo_ram_reg[0] 
       (.C(m_dest_axi_aclk),
        .CE(id0),
        .D(dest_response_eot),
        .Q(response_dest_resp_eot),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h28)) 
    eot_i_1
       (.I0(response_dest_resp_eot),
        .I1(m_axis_raddr_reg_n_0),
        .I2(s_axis_waddr_reg_n_0),
        .O(eot0));
  FDRE #(
    .INIT(1'b0)) 
    m_axis_raddr_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axis_waddr_reg_n_0),
        .Q(m_axis_raddr_reg_n_0),
        .R(Q));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h09)) 
    m_dest_axi_bready_INST_0
       (.I0(m_axis_raddr_reg_n_0),
        .I1(s_axis_waddr_reg_n_0),
        .I2(\id_reg[3] ),
        .O(m_dest_axi_bready));
  LUT1 #(
    .INIT(2'h1)) 
    s_axis_waddr_i_1
       (.I0(s_axis_waddr_reg_n_0),
        .O(s_axis_waddr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axis_waddr_reg
       (.C(m_dest_axi_aclk),
        .CE(id0),
        .D(s_axis_waddr_i_1_n_0),
        .Q(s_axis_waddr_reg_n_0),
        .R(Q));
endmodule

(* CHECK_LICENSE_TYPE = "zsys_axi_dmac_0_0,axi_dmac,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "axi_dmac,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awvalid,
    s_axi_awaddr,
    s_axi_awready,
    s_axi_awprot,
    s_axi_wvalid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wready,
    s_axi_bvalid,
    s_axi_bresp,
    s_axi_bready,
    s_axi_arvalid,
    s_axi_araddr,
    s_axi_arready,
    s_axi_arprot,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_rresp,
    s_axi_rdata,
    irq,
    m_dest_axi_aclk,
    m_dest_axi_aresetn,
    m_dest_axi_awaddr,
    m_dest_axi_awlen,
    m_dest_axi_awsize,
    m_dest_axi_awburst,
    m_dest_axi_awprot,
    m_dest_axi_awcache,
    m_dest_axi_awvalid,
    m_dest_axi_awready,
    m_dest_axi_wdata,
    m_dest_axi_wstrb,
    m_dest_axi_wready,
    m_dest_axi_wvalid,
    m_dest_axi_wlast,
    m_dest_axi_bvalid,
    m_dest_axi_bresp,
    m_dest_axi_bready,
    s_axis_aclk,
    s_axis_ready,
    s_axis_valid,
    s_axis_data,
    s_axis_user,
    s_axis_last,
    s_axis_xfer_req);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_axi_aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_aclk, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN zsys_processing_system7_0_0_FCLK_CLK0" *) input s_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s_axi_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_aresetn, POLARITY ACTIVE_LOW" *) input s_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWADDR" *) input [11:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWPROT" *) input [2:0]s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARADDR" *) input [11:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARPROT" *) input [2:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 1e+08, ID_WIDTH 0, ADDR_WIDTH 12, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN zsys_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 irq INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME irq, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output irq;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 m_dest_axi_aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_dest_axi_aclk, ASSOCIATED_BUSIF m_dest_axi, ASSOCIATED_RESET m_dest_axi_aresetn, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN zsys_processing_system7_0_0_FCLK_CLK0" *) input m_dest_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 m_dest_axi_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_dest_axi_aresetn, POLARITY ACTIVE_LOW" *) input m_dest_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_dest_axi AWADDR" *) output [31:0]m_dest_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_dest_axi AWLEN" *) output [7:0]m_dest_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_dest_axi AWSIZE" *) output [2:0]m_dest_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_dest_axi AWBURST" *) output [1:0]m_dest_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_dest_axi AWPROT" *) output [2:0]m_dest_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_dest_axi AWCACHE" *) output [3:0]m_dest_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_dest_axi AWVALID" *) output m_dest_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_dest_axi AWREADY" *) input m_dest_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_dest_axi WDATA" *) output [63:0]m_dest_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_dest_axi WSTRB" *) output [7:0]m_dest_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_dest_axi WREADY" *) input m_dest_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_dest_axi WVALID" *) output m_dest_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_dest_axi WLAST" *) output m_dest_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_dest_axi BVALID" *) input m_dest_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_dest_axi BRESP" *) input [1:0]m_dest_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_dest_axi BREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_dest_axi, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 1e+08, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 0, NUM_READ_OUTSTANDING 0, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 16, PHASE 0.000, CLK_DOMAIN zsys_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) output m_dest_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_axis_aclk CLK, xilinx.com:signal:clock:1.0 s_axis_signal_clock CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_aclk, FREQ_HZ 100000000, PHASE 0.000, XIL_INTERFACENAME s_axis_signal_clock, ASSOCIATED_BUSIF s_axis, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN zsys_processing_system7_0_0_FCLK_CLK0" *) input s_axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) output s_axis_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) input s_axis_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) input [31:0]s_axis_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TUSER" *) input [0:0]s_axis_user;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN zsys_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef" *) input s_axis_last;
  output s_axis_xfer_req;

  wire irq;
  wire m_dest_axi_aclk;
  wire m_dest_axi_aresetn;
  wire [31:0]m_dest_axi_awaddr;
  wire [1:0]m_dest_axi_awburst;
  wire [3:0]m_dest_axi_awcache;
  wire [7:0]m_dest_axi_awlen;
  wire [2:0]m_dest_axi_awprot;
  wire m_dest_axi_awready;
  wire [2:0]m_dest_axi_awsize;
  wire m_dest_axi_awvalid;
  wire m_dest_axi_bready;
  wire [1:0]m_dest_axi_bresp;
  wire m_dest_axi_bvalid;
  wire [63:0]m_dest_axi_wdata;
  wire m_dest_axi_wlast;
  wire m_dest_axi_wready;
  wire [7:0]m_dest_axi_wstrb;
  wire m_dest_axi_wvalid;
  wire s_axi_aclk;
  wire [11:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire [2:0]s_axi_arprot;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [11:0]s_axi_awaddr;
  wire [2:0]s_axi_awprot;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire s_axis_aclk;
  wire [31:0]s_axis_data;
  wire s_axis_last;
  wire s_axis_ready;
  wire [0:0]s_axis_user;
  wire s_axis_valid;
  wire s_axis_xfer_req;
  wire NLW_inst_fifo_rd_underflow_UNCONNECTED;
  wire NLW_inst_fifo_rd_valid_UNCONNECTED;
  wire NLW_inst_fifo_rd_xfer_req_UNCONNECTED;
  wire NLW_inst_fifo_wr_overflow_UNCONNECTED;
  wire NLW_inst_fifo_wr_xfer_req_UNCONNECTED;
  wire NLW_inst_m_axis_last_UNCONNECTED;
  wire NLW_inst_m_axis_valid_UNCONNECTED;
  wire NLW_inst_m_axis_xfer_req_UNCONNECTED;
  wire NLW_inst_m_dest_axi_arvalid_UNCONNECTED;
  wire NLW_inst_m_dest_axi_rready_UNCONNECTED;
  wire NLW_inst_m_src_axi_arvalid_UNCONNECTED;
  wire NLW_inst_m_src_axi_awvalid_UNCONNECTED;
  wire NLW_inst_m_src_axi_bready_UNCONNECTED;
  wire NLW_inst_m_src_axi_rready_UNCONNECTED;
  wire NLW_inst_m_src_axi_wlast_UNCONNECTED;
  wire NLW_inst_m_src_axi_wvalid_UNCONNECTED;
  wire [63:0]NLW_inst_fifo_rd_dout_UNCONNECTED;
  wire [63:0]NLW_inst_m_axis_data_UNCONNECTED;
  wire [31:0]NLW_inst_m_dest_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_inst_m_dest_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_inst_m_dest_axi_arcache_UNCONNECTED;
  wire [3:0]NLW_inst_m_dest_axi_arid_UNCONNECTED;
  wire [7:0]NLW_inst_m_dest_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_inst_m_dest_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_inst_m_dest_axi_arprot_UNCONNECTED;
  wire [2:0]NLW_inst_m_dest_axi_arsize_UNCONNECTED;
  wire [3:0]NLW_inst_m_dest_axi_awid_UNCONNECTED;
  wire [0:0]NLW_inst_m_dest_axi_awlock_UNCONNECTED;
  wire [3:0]NLW_inst_m_dest_axi_wid_UNCONNECTED;
  wire [31:0]NLW_inst_m_src_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_inst_m_src_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_inst_m_src_axi_arcache_UNCONNECTED;
  wire [3:0]NLW_inst_m_src_axi_arid_UNCONNECTED;
  wire [3:0]NLW_inst_m_src_axi_arlen_UNCONNECTED;
  wire [1:0]NLW_inst_m_src_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_inst_m_src_axi_arprot_UNCONNECTED;
  wire [2:0]NLW_inst_m_src_axi_arsize_UNCONNECTED;
  wire [31:0]NLW_inst_m_src_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_inst_m_src_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_inst_m_src_axi_awcache_UNCONNECTED;
  wire [3:0]NLW_inst_m_src_axi_awid_UNCONNECTED;
  wire [3:0]NLW_inst_m_src_axi_awlen_UNCONNECTED;
  wire [1:0]NLW_inst_m_src_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_inst_m_src_axi_awprot_UNCONNECTED;
  wire [2:0]NLW_inst_m_src_axi_awsize_UNCONNECTED;
  wire [31:0]NLW_inst_m_src_axi_wdata_UNCONNECTED;
  wire [3:0]NLW_inst_m_src_axi_wid_UNCONNECTED;
  wire [3:0]NLW_inst_m_src_axi_wstrb_UNCONNECTED;

  (* ASYNC_CLK_DEST_REQ = "1'b0" *) 
  (* ASYNC_CLK_REQ_SRC = "1'b0" *) 
  (* ASYNC_CLK_SRC_DEST = "1'b0" *) 
  (* AXI_ID_WIDTH_DEST = "4" *) 
  (* AXI_ID_WIDTH_SRC = "4" *) 
  (* AXI_SLICE_DEST = "1'b0" *) 
  (* AXI_SLICE_SRC = "1'b0" *) 
  (* BEATS_PER_BURST_LIMIT_DEST = "256" *) 
  (* BEATS_PER_BURST_LIMIT_SRC = "1024" *) 
  (* BYTES_PER_BEAT_WIDTH_DEST = "3" *) 
  (* BYTES_PER_BEAT_WIDTH_SRC = "2" *) 
  (* BYTES_PER_BURST_LIMIT = "2048" *) 
  (* BYTES_PER_BURST_LIMIT_DEST = "2048" *) 
  (* BYTES_PER_BURST_LIMIT_SRC = "4096" *) 
  (* CYCLIC = "1'b0" *) 
  (* DBG_ID_PADDING = "4" *) 
  (* DISABLE_DEBUG_REGISTERS = "1'b0" *) 
  (* DMA_2D_TRANSFER = "1'b0" *) 
  (* DMA_AXI_ADDR_WIDTH = "32" *) 
  (* DMA_AXI_PROTOCOL_DEST = "0" *) 
  (* DMA_AXI_PROTOCOL_SRC = "1" *) 
  (* DMA_DATA_WIDTH_DEST = "64" *) 
  (* DMA_DATA_WIDTH_SRC = "32" *) 
  (* DMA_LENGTH_ALIGN = "3" *) 
  (* DMA_LENGTH_WIDTH = "24" *) 
  (* DMA_TYPE_AXI_MM = "0" *) 
  (* DMA_TYPE_AXI_STREAM = "1" *) 
  (* DMA_TYPE_DEST = "0" *) 
  (* DMA_TYPE_FIFO = "2" *) 
  (* DMA_TYPE_SRC = "1" *) 
  (* FIFO_SIZE = "8" *) 
  (* HAS_DEST_ADDR = "1'b1" *) 
  (* HAS_SRC_ADDR = "1'b0" *) 
  (* ID = "0" *) 
  (* ID_WIDTH = "4" *) 
  (* MAX_BYTES_PER_BURST = "128" *) 
  (* REAL_MAX_BYTES_PER_BURST = "128" *) 
  (* SYNC_TRANSFER_START = "1'b0" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac inst
       (.fifo_rd_clk(1'b0),
        .fifo_rd_dout(NLW_inst_fifo_rd_dout_UNCONNECTED[63:0]),
        .fifo_rd_en(1'b0),
        .fifo_rd_underflow(NLW_inst_fifo_rd_underflow_UNCONNECTED),
        .fifo_rd_valid(NLW_inst_fifo_rd_valid_UNCONNECTED),
        .fifo_rd_xfer_req(NLW_inst_fifo_rd_xfer_req_UNCONNECTED),
        .fifo_wr_clk(1'b0),
        .fifo_wr_din({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .fifo_wr_en(1'b0),
        .fifo_wr_overflow(NLW_inst_fifo_wr_overflow_UNCONNECTED),
        .fifo_wr_sync(1'b1),
        .fifo_wr_xfer_req(NLW_inst_fifo_wr_xfer_req_UNCONNECTED),
        .irq(irq),
        .m_axis_aclk(1'b0),
        .m_axis_data(NLW_inst_m_axis_data_UNCONNECTED[63:0]),
        .m_axis_last(NLW_inst_m_axis_last_UNCONNECTED),
        .m_axis_ready(1'b0),
        .m_axis_valid(NLW_inst_m_axis_valid_UNCONNECTED),
        .m_axis_xfer_req(NLW_inst_m_axis_xfer_req_UNCONNECTED),
        .m_dest_axi_aclk(m_dest_axi_aclk),
        .m_dest_axi_araddr(NLW_inst_m_dest_axi_araddr_UNCONNECTED[31:0]),
        .m_dest_axi_arburst(NLW_inst_m_dest_axi_arburst_UNCONNECTED[1:0]),
        .m_dest_axi_arcache(NLW_inst_m_dest_axi_arcache_UNCONNECTED[3:0]),
        .m_dest_axi_aresetn(m_dest_axi_aresetn),
        .m_dest_axi_arid(NLW_inst_m_dest_axi_arid_UNCONNECTED[3:0]),
        .m_dest_axi_arlen(NLW_inst_m_dest_axi_arlen_UNCONNECTED[7:0]),
        .m_dest_axi_arlock(NLW_inst_m_dest_axi_arlock_UNCONNECTED[0]),
        .m_dest_axi_arprot(NLW_inst_m_dest_axi_arprot_UNCONNECTED[2:0]),
        .m_dest_axi_arready(1'b0),
        .m_dest_axi_arsize(NLW_inst_m_dest_axi_arsize_UNCONNECTED[2:0]),
        .m_dest_axi_arvalid(NLW_inst_m_dest_axi_arvalid_UNCONNECTED),
        .m_dest_axi_awaddr(m_dest_axi_awaddr),
        .m_dest_axi_awburst(m_dest_axi_awburst),
        .m_dest_axi_awcache(m_dest_axi_awcache),
        .m_dest_axi_awid(NLW_inst_m_dest_axi_awid_UNCONNECTED[3:0]),
        .m_dest_axi_awlen(m_dest_axi_awlen),
        .m_dest_axi_awlock(NLW_inst_m_dest_axi_awlock_UNCONNECTED[0]),
        .m_dest_axi_awprot(m_dest_axi_awprot),
        .m_dest_axi_awready(m_dest_axi_awready),
        .m_dest_axi_awsize(m_dest_axi_awsize),
        .m_dest_axi_awvalid(m_dest_axi_awvalid),
        .m_dest_axi_bid({1'b0,1'b0,1'b0,1'b0}),
        .m_dest_axi_bready(m_dest_axi_bready),
        .m_dest_axi_bresp(m_dest_axi_bresp),
        .m_dest_axi_bvalid(m_dest_axi_bvalid),
        .m_dest_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_dest_axi_rid({1'b0,1'b0,1'b0,1'b0}),
        .m_dest_axi_rlast(1'b0),
        .m_dest_axi_rready(NLW_inst_m_dest_axi_rready_UNCONNECTED),
        .m_dest_axi_rresp({1'b0,1'b0}),
        .m_dest_axi_rvalid(1'b0),
        .m_dest_axi_wdata(m_dest_axi_wdata),
        .m_dest_axi_wid(NLW_inst_m_dest_axi_wid_UNCONNECTED[3:0]),
        .m_dest_axi_wlast(m_dest_axi_wlast),
        .m_dest_axi_wready(m_dest_axi_wready),
        .m_dest_axi_wstrb(m_dest_axi_wstrb),
        .m_dest_axi_wvalid(m_dest_axi_wvalid),
        .m_src_axi_aclk(1'b0),
        .m_src_axi_araddr(NLW_inst_m_src_axi_araddr_UNCONNECTED[31:0]),
        .m_src_axi_arburst(NLW_inst_m_src_axi_arburst_UNCONNECTED[1:0]),
        .m_src_axi_arcache(NLW_inst_m_src_axi_arcache_UNCONNECTED[3:0]),
        .m_src_axi_aresetn(1'b0),
        .m_src_axi_arid(NLW_inst_m_src_axi_arid_UNCONNECTED[3:0]),
        .m_src_axi_arlen(NLW_inst_m_src_axi_arlen_UNCONNECTED[3:0]),
        .m_src_axi_arlock(NLW_inst_m_src_axi_arlock_UNCONNECTED[1:0]),
        .m_src_axi_arprot(NLW_inst_m_src_axi_arprot_UNCONNECTED[2:0]),
        .m_src_axi_arready(1'b0),
        .m_src_axi_arsize(NLW_inst_m_src_axi_arsize_UNCONNECTED[2:0]),
        .m_src_axi_arvalid(NLW_inst_m_src_axi_arvalid_UNCONNECTED),
        .m_src_axi_awaddr(NLW_inst_m_src_axi_awaddr_UNCONNECTED[31:0]),
        .m_src_axi_awburst(NLW_inst_m_src_axi_awburst_UNCONNECTED[1:0]),
        .m_src_axi_awcache(NLW_inst_m_src_axi_awcache_UNCONNECTED[3:0]),
        .m_src_axi_awid(NLW_inst_m_src_axi_awid_UNCONNECTED[3:0]),
        .m_src_axi_awlen(NLW_inst_m_src_axi_awlen_UNCONNECTED[3:0]),
        .m_src_axi_awlock(NLW_inst_m_src_axi_awlock_UNCONNECTED[1:0]),
        .m_src_axi_awprot(NLW_inst_m_src_axi_awprot_UNCONNECTED[2:0]),
        .m_src_axi_awready(1'b0),
        .m_src_axi_awsize(NLW_inst_m_src_axi_awsize_UNCONNECTED[2:0]),
        .m_src_axi_awvalid(NLW_inst_m_src_axi_awvalid_UNCONNECTED),
        .m_src_axi_bid({1'b0,1'b0,1'b0,1'b0}),
        .m_src_axi_bready(NLW_inst_m_src_axi_bready_UNCONNECTED),
        .m_src_axi_bresp({1'b0,1'b0}),
        .m_src_axi_bvalid(1'b0),
        .m_src_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_src_axi_rid({1'b0,1'b0,1'b0,1'b0}),
        .m_src_axi_rlast(1'b0),
        .m_src_axi_rready(NLW_inst_m_src_axi_rready_UNCONNECTED),
        .m_src_axi_rresp({1'b0,1'b0}),
        .m_src_axi_rvalid(1'b0),
        .m_src_axi_wdata(NLW_inst_m_src_axi_wdata_UNCONNECTED[31:0]),
        .m_src_axi_wid(NLW_inst_m_src_axi_wid_UNCONNECTED[3:0]),
        .m_src_axi_wlast(NLW_inst_m_src_axi_wlast_UNCONNECTED),
        .m_src_axi_wready(1'b0),
        .m_src_axi_wstrb(NLW_inst_m_src_axi_wstrb_UNCONNECTED[3:0]),
        .m_src_axi_wvalid(NLW_inst_m_src_axi_wvalid_UNCONNECTED),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .s_axis_aclk(s_axis_aclk),
        .s_axis_data(s_axis_data),
        .s_axis_last(s_axis_last),
        .s_axis_ready(s_axis_ready),
        .s_axis_user(s_axis_user),
        .s_axis_valid(s_axis_valid),
        .s_axis_xfer_req(s_axis_xfer_req));
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
