-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
-- Date        : Fri Feb 22 23:33:41 2019
-- Host        : kdichpc running 64-bit Ubuntu 16.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top zsys_axi_dmac_0_0 -prefix
--               zsys_axi_dmac_0_0_ zsys_axi_dmac_0_0_sim_netlist.vhdl
-- Design      : zsys_axi_dmac_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_axi_dmac_0_0_ad_mem is
  port (
    m_dest_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_dest_axi_aclk : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    ADDRARDADDR : in STD_LOGIC_VECTOR ( 6 downto 0 );
    ADDRBWRADDR : in STD_LOGIC_VECTOR ( 6 downto 0 );
    src_mem_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    src_beat : in STD_LOGIC;
    dest_valid : in STD_LOGIC;
    m_dest_axi_wready : in STD_LOGIC;
    dest_mem_data_valid_reg : in STD_LOGIC
  );
end zsys_axi_dmac_0_0_ad_mem;

architecture STRUCTURE of zsys_axi_dmac_0_0_ad_mem is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_m_ram_reg_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_m_ram_reg_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_m_ram_reg_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_m_ram_reg_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_m_ram_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_m_ram_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_m_ram_reg_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_m_ram_reg_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of m_ram_reg : label is "p0_d64";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of m_ram_reg : label is "p0_d64";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of m_ram_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of m_ram_reg : label is 8192;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of m_ram_reg : label is "m_ram";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of m_ram_reg : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of m_ram_reg : label is 511;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of m_ram_reg : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of m_ram_reg : label is 63;
begin
  E(0) <= \^e\(0);
m_ram_reg: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "SDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 72,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 0,
      WRITE_WIDTH_B => 72
    )
        port map (
      ADDRARDADDR(15 downto 13) => B"111",
      ADDRARDADDR(12 downto 6) => ADDRARDADDR(6 downto 0),
      ADDRARDADDR(5 downto 0) => B"111111",
      ADDRBWRADDR(15 downto 13) => B"111",
      ADDRBWRADDR(12 downto 6) => ADDRBWRADDR(6 downto 0),
      ADDRBWRADDR(5 downto 0) => B"111111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => NLW_m_ram_reg_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_m_ram_reg_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => m_dest_axi_aclk,
      CLKBWRCLK => s_axis_aclk,
      DBITERR => NLW_m_ram_reg_DBITERR_UNCONNECTED,
      DIADI(31 downto 0) => src_mem_data(31 downto 0),
      DIBDI(31 downto 0) => src_mem_data(63 downto 32),
      DIPADIP(3 downto 0) => B"1111",
      DIPBDIP(3 downto 0) => B"1111",
      DOADO(31 downto 0) => m_dest_axi_wdata(31 downto 0),
      DOBDO(31 downto 0) => m_dest_axi_wdata(63 downto 32),
      DOPADOP(3 downto 0) => NLW_m_ram_reg_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_m_ram_reg_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_m_ram_reg_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => \^e\(0),
      ENBWREN => '1',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => NLW_m_ram_reg_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_m_ram_reg_SBITERR_UNCONNECTED,
      WEA(3 downto 0) => B"0000",
      WEBWE(7) => src_beat,
      WEBWE(6) => src_beat,
      WEBWE(5) => src_beat,
      WEBWE(4) => src_beat,
      WEBWE(3) => src_beat,
      WEBWE(2) => src_beat,
      WEBWE(1) => src_beat,
      WEBWE(0) => src_beat
    );
m_ram_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => dest_valid,
      I1 => m_dest_axi_wready,
      I2 => dest_mem_data_valid_reg,
      O => \^e\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_axi_dmac_0_0_axi_dmac_regmap_request is
  port (
    up_dma_req_valid : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \up_transfer_id_eot_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \up_rdata_reg[4]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 28 downto 0 );
    \up_rdata_reg[6]\ : out STD_LOGIC;
    \up_rdata_reg[7]\ : out STD_LOGIC;
    \up_rdata_reg[23]\ : out STD_LOGIC_VECTOR ( 16 downto 0 );
    \up_rdata_reg[8]\ : out STD_LOGIC;
    \up_rdata_reg[9]\ : out STD_LOGIC;
    \up_rdata_reg[10]\ : out STD_LOGIC;
    \up_rdata_reg[11]\ : out STD_LOGIC;
    \up_rdata_reg[12]\ : out STD_LOGIC;
    \up_rdata_reg[13]\ : out STD_LOGIC;
    \up_rdata_reg[15]\ : out STD_LOGIC;
    \up_rdata_reg[16]\ : out STD_LOGIC;
    \up_rdata_reg[17]\ : out STD_LOGIC;
    \up_rdata_reg[18]\ : out STD_LOGIC;
    \up_rdata_reg[19]\ : out STD_LOGIC;
    \up_rdata_reg[20]\ : out STD_LOGIC;
    \up_rdata_reg[21]\ : out STD_LOGIC;
    \up_rdata_reg[23]_0\ : out STD_LOGIC;
    \up_rdata_reg[1]\ : out STD_LOGIC;
    \up_transfer_id_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \up_transfer_done_bitmap_reg[3]_0\ : out STD_LOGIC;
    \up_transfer_done_bitmap_reg[2]_0\ : out STD_LOGIC;
    \up_transfer_done_bitmap_reg[1]_0\ : out STD_LOGIC;
    \up_transfer_done_bitmap_reg[0]_0\ : out STD_LOGIC;
    ctrl_enable_reg : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    \up_wdata_int_reg[1]\ : in STD_LOGIC;
    ctrl_enable_reg_0 : in STD_LOGIC;
    up_req_eot : in STD_LOGIC;
    \up_raddr_int_reg[3]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \up_raddr_int_reg[0]\ : in STD_LOGIC;
    \up_raddr_int_reg[2]\ : in STD_LOGIC;
    up_sot : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \up_wdata_int_reg[31]\ : in STD_LOGIC_VECTOR ( 28 downto 0 );
    \up_waddr_int_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end zsys_axi_dmac_0_0_axi_dmac_regmap_request;

architecture STRUCTURE of zsys_axi_dmac_0_0_axi_dmac_regmap_request is
  signal \^d\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 28 downto 0 );
  signal \^up_rdata_reg[23]\ : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \up_transfer_done_bitmap[0]_i_1_n_0\ : STD_LOGIC;
  signal \up_transfer_done_bitmap[0]_i_2_n_0\ : STD_LOGIC;
  signal \up_transfer_done_bitmap[1]_i_1_n_0\ : STD_LOGIC;
  signal \up_transfer_done_bitmap[1]_i_2_n_0\ : STD_LOGIC;
  signal \up_transfer_done_bitmap[2]_i_1_n_0\ : STD_LOGIC;
  signal \up_transfer_done_bitmap[2]_i_2_n_0\ : STD_LOGIC;
  signal \up_transfer_done_bitmap[3]_i_1_n_0\ : STD_LOGIC;
  signal \up_transfer_done_bitmap[3]_i_2_n_0\ : STD_LOGIC;
  signal \^up_transfer_done_bitmap_reg[0]_0\ : STD_LOGIC;
  signal \^up_transfer_done_bitmap_reg[1]_0\ : STD_LOGIC;
  signal \^up_transfer_done_bitmap_reg[2]_0\ : STD_LOGIC;
  signal \^up_transfer_done_bitmap_reg[3]_0\ : STD_LOGIC;
  signal up_transfer_id : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \up_transfer_id[0]_i_1_n_0\ : STD_LOGIC;
  signal \up_transfer_id[1]_i_1_n_0\ : STD_LOGIC;
  signal up_transfer_id_eot : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \up_transfer_id_eot[0]_i_1_n_0\ : STD_LOGIC;
  signal \up_transfer_id_eot[1]_i_1_n_0\ : STD_LOGIC;
  signal \up_transfer_id_eot[1]_i_2_n_0\ : STD_LOGIC;
  signal \^up_transfer_id_eot_reg[1]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^up_transfer_id_reg[1]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \up_transfer_done_bitmap[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \up_transfer_done_bitmap[0]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \up_transfer_done_bitmap[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \up_transfer_done_bitmap[1]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \up_transfer_done_bitmap[2]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \up_transfer_done_bitmap[3]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \up_transfer_id[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \up_transfer_id[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \up_transfer_id_eot[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \up_transfer_id_eot[1]_i_2\ : label is "soft_lutpair2";
begin
  D(4 downto 0) <= \^d\(4 downto 0);
  Q(28 downto 0) <= \^q\(28 downto 0);
  \up_rdata_reg[23]\(16 downto 0) <= \^up_rdata_reg[23]\(16 downto 0);
  \up_transfer_done_bitmap_reg[0]_0\ <= \^up_transfer_done_bitmap_reg[0]_0\;
  \up_transfer_done_bitmap_reg[1]_0\ <= \^up_transfer_done_bitmap_reg[1]_0\;
  \up_transfer_done_bitmap_reg[2]_0\ <= \^up_transfer_done_bitmap_reg[2]_0\;
  \up_transfer_done_bitmap_reg[3]_0\ <= \^up_transfer_done_bitmap_reg[3]_0\;
  \up_transfer_id_eot_reg[1]_0\(0) <= \^up_transfer_id_eot_reg[1]_0\(0);
  \up_transfer_id_reg[1]_0\(0) <= \^up_transfer_id_reg[1]_0\(0);
\up_dma_dest_address_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_waddr_int_reg[2]\(0),
      D => \up_wdata_int_reg[31]\(7),
      Q => \^q\(7),
      R => s_axi_aresetn
    );
\up_dma_dest_address_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_waddr_int_reg[2]\(0),
      D => \up_wdata_int_reg[31]\(8),
      Q => \^q\(8),
      R => s_axi_aresetn
    );
\up_dma_dest_address_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_waddr_int_reg[2]\(0),
      D => \up_wdata_int_reg[31]\(9),
      Q => \^q\(9),
      R => s_axi_aresetn
    );
\up_dma_dest_address_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_waddr_int_reg[2]\(0),
      D => \up_wdata_int_reg[31]\(10),
      Q => \^q\(10),
      R => s_axi_aresetn
    );
\up_dma_dest_address_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_waddr_int_reg[2]\(0),
      D => \up_wdata_int_reg[31]\(11),
      Q => \^q\(11),
      R => s_axi_aresetn
    );
\up_dma_dest_address_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_waddr_int_reg[2]\(0),
      D => \up_wdata_int_reg[31]\(12),
      Q => \^q\(12),
      R => s_axi_aresetn
    );
\up_dma_dest_address_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_waddr_int_reg[2]\(0),
      D => \up_wdata_int_reg[31]\(13),
      Q => \^q\(13),
      R => s_axi_aresetn
    );
\up_dma_dest_address_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_waddr_int_reg[2]\(0),
      D => \up_wdata_int_reg[31]\(14),
      Q => \^q\(14),
      R => s_axi_aresetn
    );
\up_dma_dest_address_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_waddr_int_reg[2]\(0),
      D => \up_wdata_int_reg[31]\(15),
      Q => \^q\(15),
      R => s_axi_aresetn
    );
\up_dma_dest_address_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_waddr_int_reg[2]\(0),
      D => \up_wdata_int_reg[31]\(16),
      Q => \^q\(16),
      R => s_axi_aresetn
    );
\up_dma_dest_address_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_waddr_int_reg[2]\(0),
      D => \up_wdata_int_reg[31]\(17),
      Q => \^q\(17),
      R => s_axi_aresetn
    );
\up_dma_dest_address_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_waddr_int_reg[2]\(0),
      D => \up_wdata_int_reg[31]\(18),
      Q => \^q\(18),
      R => s_axi_aresetn
    );
\up_dma_dest_address_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_waddr_int_reg[2]\(0),
      D => \up_wdata_int_reg[31]\(19),
      Q => \^q\(19),
      R => s_axi_aresetn
    );
\up_dma_dest_address_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_waddr_int_reg[2]\(0),
      D => \up_wdata_int_reg[31]\(20),
      Q => \^q\(20),
      R => s_axi_aresetn
    );
\up_dma_dest_address_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_waddr_int_reg[2]\(0),
      D => \up_wdata_int_reg[31]\(21),
      Q => \^q\(21),
      R => s_axi_aresetn
    );
\up_dma_dest_address_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_waddr_int_reg[2]\(0),
      D => \up_wdata_int_reg[31]\(22),
      Q => \^q\(22),
      R => s_axi_aresetn
    );
\up_dma_dest_address_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_waddr_int_reg[2]\(0),
      D => \up_wdata_int_reg[31]\(23),
      Q => \^q\(23),
      R => s_axi_aresetn
    );
\up_dma_dest_address_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_waddr_int_reg[2]\(0),
      D => \up_wdata_int_reg[31]\(24),
      Q => \^q\(24),
      R => s_axi_aresetn
    );
\up_dma_dest_address_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_waddr_int_reg[2]\(0),
      D => \up_wdata_int_reg[31]\(25),
      Q => \^q\(25),
      R => s_axi_aresetn
    );
\up_dma_dest_address_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_waddr_int_reg[2]\(0),
      D => \up_wdata_int_reg[31]\(26),
      Q => \^q\(26),
      R => s_axi_aresetn
    );
\up_dma_dest_address_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_waddr_int_reg[2]\(0),
      D => \up_wdata_int_reg[31]\(27),
      Q => \^q\(27),
      R => s_axi_aresetn
    );
\up_dma_dest_address_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_waddr_int_reg[2]\(0),
      D => \up_wdata_int_reg[31]\(28),
      Q => \^q\(28),
      R => s_axi_aresetn
    );
\up_dma_dest_address_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_waddr_int_reg[2]\(0),
      D => \up_wdata_int_reg[31]\(0),
      Q => \^q\(0),
      R => s_axi_aresetn
    );
\up_dma_dest_address_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_waddr_int_reg[2]\(0),
      D => \up_wdata_int_reg[31]\(1),
      Q => \^q\(1),
      R => s_axi_aresetn
    );
\up_dma_dest_address_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_waddr_int_reg[2]\(0),
      D => \up_wdata_int_reg[31]\(2),
      Q => \^q\(2),
      R => s_axi_aresetn
    );
\up_dma_dest_address_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_waddr_int_reg[2]\(0),
      D => \up_wdata_int_reg[31]\(3),
      Q => \^q\(3),
      R => s_axi_aresetn
    );
\up_dma_dest_address_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_waddr_int_reg[2]\(0),
      D => \up_wdata_int_reg[31]\(4),
      Q => \^q\(4),
      R => s_axi_aresetn
    );
\up_dma_dest_address_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_waddr_int_reg[2]\(0),
      D => \up_wdata_int_reg[31]\(5),
      Q => \^q\(5),
      R => s_axi_aresetn
    );
\up_dma_dest_address_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_waddr_int_reg[2]\(0),
      D => \up_wdata_int_reg[31]\(6),
      Q => \^q\(6),
      R => s_axi_aresetn
    );
up_dma_last_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_wdata_int_reg[1]\,
      Q => \^d\(0),
      S => s_axi_aresetn
    );
up_dma_req_valid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => ctrl_enable_reg,
      Q => up_dma_req_valid,
      R => '0'
    );
\up_dma_x_length_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \up_wdata_int_reg[31]\(7),
      Q => \^up_rdata_reg[23]\(3),
      R => s_axi_aresetn
    );
\up_dma_x_length_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \up_wdata_int_reg[31]\(8),
      Q => \^up_rdata_reg[23]\(4),
      R => s_axi_aresetn
    );
\up_dma_x_length_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \up_wdata_int_reg[31]\(9),
      Q => \^up_rdata_reg[23]\(5),
      R => s_axi_aresetn
    );
\up_dma_x_length_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \up_wdata_int_reg[31]\(10),
      Q => \^up_rdata_reg[23]\(6),
      R => s_axi_aresetn
    );
\up_dma_x_length_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \up_wdata_int_reg[31]\(11),
      Q => \^up_rdata_reg[23]\(7),
      R => s_axi_aresetn
    );
\up_dma_x_length_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \up_wdata_int_reg[31]\(12),
      Q => \^up_rdata_reg[23]\(8),
      R => s_axi_aresetn
    );
\up_dma_x_length_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \up_wdata_int_reg[31]\(13),
      Q => \^up_rdata_reg[23]\(9),
      R => s_axi_aresetn
    );
\up_dma_x_length_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \up_wdata_int_reg[31]\(14),
      Q => \^up_rdata_reg[23]\(10),
      R => s_axi_aresetn
    );
\up_dma_x_length_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \up_wdata_int_reg[31]\(15),
      Q => \^up_rdata_reg[23]\(11),
      R => s_axi_aresetn
    );
\up_dma_x_length_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \up_wdata_int_reg[31]\(16),
      Q => \^up_rdata_reg[23]\(12),
      R => s_axi_aresetn
    );
\up_dma_x_length_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \up_wdata_int_reg[31]\(17),
      Q => \^up_rdata_reg[23]\(13),
      R => s_axi_aresetn
    );
\up_dma_x_length_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \up_wdata_int_reg[31]\(18),
      Q => \^up_rdata_reg[23]\(14),
      R => s_axi_aresetn
    );
\up_dma_x_length_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \up_wdata_int_reg[31]\(19),
      Q => \^up_rdata_reg[23]\(15),
      R => s_axi_aresetn
    );
\up_dma_x_length_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \up_wdata_int_reg[31]\(20),
      Q => \^up_rdata_reg[23]\(16),
      R => s_axi_aresetn
    );
\up_dma_x_length_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \up_wdata_int_reg[31]\(0),
      Q => \^d\(1),
      R => s_axi_aresetn
    );
\up_dma_x_length_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \up_wdata_int_reg[31]\(1),
      Q => \^d\(2),
      R => s_axi_aresetn
    );
\up_dma_x_length_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \up_wdata_int_reg[31]\(2),
      Q => \^d\(3),
      R => s_axi_aresetn
    );
\up_dma_x_length_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \up_wdata_int_reg[31]\(3),
      Q => \^d\(4),
      R => s_axi_aresetn
    );
\up_dma_x_length_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \up_wdata_int_reg[31]\(4),
      Q => \^up_rdata_reg[23]\(0),
      R => s_axi_aresetn
    );
\up_dma_x_length_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \up_wdata_int_reg[31]\(5),
      Q => \^up_rdata_reg[23]\(1),
      R => s_axi_aresetn
    );
\up_dma_x_length_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \up_wdata_int_reg[31]\(6),
      Q => \^up_rdata_reg[23]\(2),
      R => s_axi_aresetn
    );
\up_rdata[10]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^q\(7),
      I1 => \up_raddr_int_reg[3]\(0),
      I2 => \^up_rdata_reg[23]\(3),
      I3 => \up_raddr_int_reg[0]\,
      O => \up_rdata_reg[10]\
    );
\up_rdata[11]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^q\(8),
      I1 => \up_raddr_int_reg[3]\(0),
      I2 => \^up_rdata_reg[23]\(4),
      I3 => \up_raddr_int_reg[0]\,
      O => \up_rdata_reg[11]\
    );
\up_rdata[12]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^q\(9),
      I1 => \up_raddr_int_reg[3]\(0),
      I2 => \^up_rdata_reg[23]\(5),
      I3 => \up_raddr_int_reg[0]\,
      O => \up_rdata_reg[12]\
    );
\up_rdata[13]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^q\(10),
      I1 => \up_raddr_int_reg[3]\(0),
      I2 => \^up_rdata_reg[23]\(6),
      I3 => \up_raddr_int_reg[0]\,
      O => \up_rdata_reg[13]\
    );
\up_rdata[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^q\(12),
      I1 => \up_raddr_int_reg[3]\(0),
      I2 => \^up_rdata_reg[23]\(8),
      I3 => \up_raddr_int_reg[0]\,
      O => \up_rdata_reg[15]\
    );
\up_rdata[16]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^q\(13),
      I1 => \up_raddr_int_reg[3]\(0),
      I2 => \^up_rdata_reg[23]\(9),
      I3 => \up_raddr_int_reg[0]\,
      O => \up_rdata_reg[16]\
    );
\up_rdata[17]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^q\(14),
      I1 => \up_raddr_int_reg[3]\(0),
      I2 => \^up_rdata_reg[23]\(10),
      I3 => \up_raddr_int_reg[0]\,
      O => \up_rdata_reg[17]\
    );
\up_rdata[18]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^q\(15),
      I1 => \up_raddr_int_reg[3]\(0),
      I2 => \^up_rdata_reg[23]\(11),
      I3 => \up_raddr_int_reg[0]\,
      O => \up_rdata_reg[18]\
    );
\up_rdata[19]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^q\(16),
      I1 => \up_raddr_int_reg[3]\(0),
      I2 => \^up_rdata_reg[23]\(12),
      I3 => \up_raddr_int_reg[0]\,
      O => \up_rdata_reg[19]\
    );
\up_rdata[1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CCE200E2"
    )
        port map (
      I0 => up_transfer_id(1),
      I1 => \up_raddr_int_reg[3]\(0),
      I2 => \^d\(0),
      I3 => \up_raddr_int_reg[3]\(1),
      I4 => up_transfer_id_eot(1),
      I5 => \up_raddr_int_reg[2]\,
      O => \up_rdata_reg[1]\
    );
\up_rdata[20]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^q\(17),
      I1 => \up_raddr_int_reg[3]\(0),
      I2 => \^up_rdata_reg[23]\(13),
      I3 => \up_raddr_int_reg[0]\,
      O => \up_rdata_reg[20]\
    );
\up_rdata[21]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^q\(18),
      I1 => \up_raddr_int_reg[3]\(0),
      I2 => \^up_rdata_reg[23]\(14),
      I3 => \up_raddr_int_reg[0]\,
      O => \up_rdata_reg[21]\
    );
\up_rdata[23]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^q\(20),
      I1 => \up_raddr_int_reg[3]\(0),
      I2 => \^up_rdata_reg[23]\(16),
      I3 => \up_raddr_int_reg[0]\,
      O => \up_rdata_reg[23]_0\
    );
\up_rdata[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^q\(1),
      I1 => \up_raddr_int_reg[3]\(0),
      I2 => \^d\(2),
      I3 => \up_raddr_int_reg[0]\,
      O => \up_rdata_reg[4]\
    );
\up_rdata[6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^q\(3),
      I1 => \up_raddr_int_reg[3]\(0),
      I2 => \^d\(4),
      I3 => \up_raddr_int_reg[0]\,
      O => \up_rdata_reg[6]\
    );
\up_rdata[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^q\(4),
      I1 => \up_raddr_int_reg[3]\(0),
      I2 => \^up_rdata_reg[23]\(0),
      I3 => \up_raddr_int_reg[0]\,
      O => \up_rdata_reg[7]\
    );
\up_rdata[8]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^q\(5),
      I1 => \up_raddr_int_reg[3]\(0),
      I2 => \^up_rdata_reg[23]\(1),
      I3 => \up_raddr_int_reg[0]\,
      O => \up_rdata_reg[8]\
    );
\up_rdata[9]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^q\(6),
      I1 => \up_raddr_int_reg[3]\(0),
      I2 => \^up_rdata_reg[23]\(2),
      I3 => \up_raddr_int_reg[0]\,
      O => \up_rdata_reg[9]\
    );
\up_transfer_done_bitmap[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEFFF00"
    )
        port map (
      I0 => \^up_transfer_id_reg[1]_0\(0),
      I1 => up_transfer_id(1),
      I2 => up_sot,
      I3 => \up_transfer_done_bitmap[0]_i_2_n_0\,
      I4 => \^up_transfer_done_bitmap_reg[0]_0\,
      O => \up_transfer_done_bitmap[0]_i_1_n_0\
    );
\up_transfer_done_bitmap[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => up_req_eot,
      I1 => up_transfer_id_eot(1),
      I2 => \^up_transfer_id_eot_reg[1]_0\(0),
      O => \up_transfer_done_bitmap[0]_i_2_n_0\
    );
\up_transfer_done_bitmap[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBFFF00"
    )
        port map (
      I0 => up_transfer_id(1),
      I1 => \^up_transfer_id_reg[1]_0\(0),
      I2 => up_sot,
      I3 => \up_transfer_done_bitmap[1]_i_2_n_0\,
      I4 => \^up_transfer_done_bitmap_reg[1]_0\,
      O => \up_transfer_done_bitmap[1]_i_1_n_0\
    );
\up_transfer_done_bitmap[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => up_req_eot,
      I1 => \^up_transfer_id_eot_reg[1]_0\(0),
      I2 => up_transfer_id_eot(1),
      O => \up_transfer_done_bitmap[1]_i_2_n_0\
    );
\up_transfer_done_bitmap[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBFFF00"
    )
        port map (
      I0 => \^up_transfer_id_reg[1]_0\(0),
      I1 => up_transfer_id(1),
      I2 => up_sot,
      I3 => \up_transfer_done_bitmap[2]_i_2_n_0\,
      I4 => \^up_transfer_done_bitmap_reg[2]_0\,
      O => \up_transfer_done_bitmap[2]_i_1_n_0\
    );
\up_transfer_done_bitmap[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => up_req_eot,
      I1 => up_transfer_id_eot(1),
      I2 => \^up_transfer_id_eot_reg[1]_0\(0),
      O => \up_transfer_done_bitmap[2]_i_2_n_0\
    );
\up_transfer_done_bitmap[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7FFF00"
    )
        port map (
      I0 => \^up_transfer_id_reg[1]_0\(0),
      I1 => up_transfer_id(1),
      I2 => up_sot,
      I3 => \up_transfer_done_bitmap[3]_i_2_n_0\,
      I4 => \^up_transfer_done_bitmap_reg[3]_0\,
      O => \up_transfer_done_bitmap[3]_i_1_n_0\
    );
\up_transfer_done_bitmap[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => up_req_eot,
      I1 => up_transfer_id_eot(1),
      I2 => \^up_transfer_id_eot_reg[1]_0\(0),
      O => \up_transfer_done_bitmap[3]_i_2_n_0\
    );
\up_transfer_done_bitmap_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_transfer_done_bitmap[0]_i_1_n_0\,
      Q => \^up_transfer_done_bitmap_reg[0]_0\,
      R => \up_transfer_id_eot[1]_i_1_n_0\
    );
\up_transfer_done_bitmap_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_transfer_done_bitmap[1]_i_1_n_0\,
      Q => \^up_transfer_done_bitmap_reg[1]_0\,
      R => \up_transfer_id_eot[1]_i_1_n_0\
    );
\up_transfer_done_bitmap_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_transfer_done_bitmap[2]_i_1_n_0\,
      Q => \^up_transfer_done_bitmap_reg[2]_0\,
      R => \up_transfer_id_eot[1]_i_1_n_0\
    );
\up_transfer_done_bitmap_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_transfer_done_bitmap[3]_i_1_n_0\,
      Q => \^up_transfer_done_bitmap_reg[3]_0\,
      R => \up_transfer_id_eot[1]_i_1_n_0\
    );
\up_transfer_id[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => up_sot,
      I1 => \^up_transfer_id_reg[1]_0\(0),
      O => \up_transfer_id[0]_i_1_n_0\
    );
\up_transfer_id[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^up_transfer_id_reg[1]_0\(0),
      I1 => up_sot,
      I2 => up_transfer_id(1),
      O => \up_transfer_id[1]_i_1_n_0\
    );
\up_transfer_id_eot[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => up_req_eot,
      I1 => \^up_transfer_id_eot_reg[1]_0\(0),
      O => \up_transfer_id_eot[0]_i_1_n_0\
    );
\up_transfer_id_eot[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ctrl_enable_reg_0,
      O => \up_transfer_id_eot[1]_i_1_n_0\
    );
\up_transfer_id_eot[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^up_transfer_id_eot_reg[1]_0\(0),
      I1 => up_req_eot,
      I2 => up_transfer_id_eot(1),
      O => \up_transfer_id_eot[1]_i_2_n_0\
    );
\up_transfer_id_eot_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_transfer_id_eot[0]_i_1_n_0\,
      Q => \^up_transfer_id_eot_reg[1]_0\(0),
      R => \up_transfer_id_eot[1]_i_1_n_0\
    );
\up_transfer_id_eot_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_transfer_id_eot[1]_i_2_n_0\,
      Q => up_transfer_id_eot(1),
      R => \up_transfer_id_eot[1]_i_1_n_0\
    );
\up_transfer_id_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_transfer_id[0]_i_1_n_0\,
      Q => \^up_transfer_id_reg[1]_0\(0),
      R => \up_transfer_id_eot[1]_i_1_n_0\
    );
\up_transfer_id_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_transfer_id[1]_i_1_n_0\,
      Q => up_transfer_id(1),
      R => \up_transfer_id_eot[1]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_axi_dmac_0_0_axi_dmac_reset_manager is
  port (
    s_axis_waddr_reg : out STD_LOGIC;
    \state_reg[0]_0\ : out STD_LOGIC;
    \acked_reg[1]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \state_reg[2]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    m_dest_axi_aclk : in STD_LOGIC;
    ctrl_enable_reg : in STD_LOGIC;
    up_sot : in STD_LOGIC;
    ctrl_pause : in STD_LOGIC;
    ctrl_enable : in STD_LOGIC;
    enabled_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end zsys_axi_dmac_0_0_axi_dmac_reset_manager;

architecture STRUCTURE of zsys_axi_dmac_0_0_axi_dmac_reset_manager is
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[5]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[5]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_0_[2]\ : signal is "yes";
  signal \FSM_onehot_state_reg_n_0_[3]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_0_[3]\ : signal is "yes";
  signal \FSM_onehot_state_reg_n_0_[4]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_0_[4]\ : signal is "yes";
  signal \FSM_onehot_state_reg_n_0_[5]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_0_[5]\ : signal is "yes";
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal do_enable0 : STD_LOGIC;
  signal do_reset : STD_LOGIC;
  signal do_reset_0 : STD_LOGIC;
  attribute RTL_KEEP of do_reset_0 : signal is "yes";
  signal needs_reset : STD_LOGIC;
  attribute RTL_KEEP of needs_reset : signal is "yes";
  signal \reset_gen[0].reset_async_reg_n_0_[1]\ : STD_LOGIC;
  signal \reset_gen[0].reset_async_reg_n_0_[2]\ : STD_LOGIC;
  signal \reset_gen[0].reset_async_reg_n_0_[3]\ : STD_LOGIC;
  signal \reset_gen[0].reset_sync_in\ : STD_LOGIC;
  signal \reset_gen[0].reset_sync_reg_n_0_[1]\ : STD_LOGIC;
  signal reset_sync_chain_0 : STD_LOGIC;
  signal \^s_axis_waddr_reg\ : STD_LOGIC;
  signal state : STD_LOGIC;
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \state[2]_i_1_n_0\ : STD_LOGIC;
  signal \^state_reg[0]_0\ : STD_LOGIC;
  signal \^state_reg[2]_0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "STATE_RESET:000010,STATE_DISABLED:000100,STATE_ENABLED:010000,STATE_SHUTDOWN:100000,STATE_STARTUP:001000,STATE_DO_RESET:000001";
  attribute KEEP : string;
  attribute KEEP of \FSM_onehot_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "STATE_RESET:000010,STATE_DISABLED:000100,STATE_ENABLED:010000,STATE_SHUTDOWN:100000,STATE_STARTUP:001000,STATE_DO_RESET:000001";
  attribute KEEP of \FSM_onehot_state_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "STATE_RESET:000010,STATE_DISABLED:000100,STATE_ENABLED:010000,STATE_SHUTDOWN:100000,STATE_STARTUP:001000,STATE_DO_RESET:000001";
  attribute KEEP of \FSM_onehot_state_reg[2]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "STATE_RESET:000010,STATE_DISABLED:000100,STATE_ENABLED:010000,STATE_SHUTDOWN:100000,STATE_STARTUP:001000,STATE_DO_RESET:000001";
  attribute KEEP of \FSM_onehot_state_reg[3]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[4]\ : label is "STATE_RESET:000010,STATE_DISABLED:000100,STATE_ENABLED:010000,STATE_SHUTDOWN:100000,STATE_STARTUP:001000,STATE_DO_RESET:000001";
  attribute KEEP of \FSM_onehot_state_reg[4]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[5]\ : label is "STATE_RESET:000010,STATE_DISABLED:000100,STATE_ENABLED:010000,STATE_SHUTDOWN:100000,STATE_STARTUP:001000,STATE_DO_RESET:000001";
  attribute KEEP of \FSM_onehot_state_reg[5]\ : label is "yes";
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \reset_gen[0].reset_sync_reg[0]\ : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of \reset_gen[0].reset_sync_reg[0]\ : label is "no";
  attribute ASYNC_REG of \reset_gen[0].reset_sync_reg[1]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \reset_gen[0].reset_sync_reg[1]\ : label is "no";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \state[0]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \state[1]_i_1\ : label is "soft_lutpair50";
begin
  Q(0) <= \^q\(0);
  s_axis_waddr_reg <= \^s_axis_waddr_reg\;
  \state_reg[0]_0\ <= \^state_reg[0]_0\;
  \state_reg[2]_0\(2 downto 0) <= \^state_reg[2]_0\(2 downto 0);
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^state_reg[0]_0\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => needs_reset,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \^state_reg[0]_0\,
      O => \FSM_onehot_state[3]_i_1_n_0\
    );
\FSM_onehot_state[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFA8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[4]\,
      I1 => ctrl_pause,
      I2 => \^state_reg[0]_0\,
      I3 => do_reset_0,
      I4 => \FSM_onehot_state[5]_i_2_n_0\,
      I5 => \FSM_onehot_state[5]_i_3_n_0\,
      O => state
    );
\FSM_onehot_state[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4040404040FF4040"
    )
        port map (
      I0 => \^q\(0),
      I1 => needs_reset,
      I2 => ctrl_enable,
      I3 => enabled_reg(0),
      I4 => \FSM_onehot_state_reg_n_0_[5]\,
      I5 => \^s_axis_waddr_reg\,
      O => \FSM_onehot_state[5]_i_2_n_0\
    );
\FSM_onehot_state[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF80FF80808080"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => \^s_axis_waddr_reg\,
      I2 => enabled_reg(0),
      I3 => ctrl_pause,
      I4 => \^state_reg[0]_0\,
      I5 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \FSM_onehot_state[5]_i_3_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => state,
      D => \FSM_onehot_state[0]_i_1_n_0\,
      Q => do_reset_0,
      S => SR(0)
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => state,
      D => do_reset_0,
      Q => needs_reset,
      R => SR(0)
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => state,
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => SR(0)
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => state,
      D => \FSM_onehot_state[3]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[3]\,
      R => SR(0)
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => state,
      D => \FSM_onehot_state_reg_n_0_[3]\,
      Q => \FSM_onehot_state_reg_n_0_[4]\,
      R => SR(0)
    );
\FSM_onehot_state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => state,
      D => \FSM_onehot_state_reg_n_0_[4]\,
      Q => \FSM_onehot_state_reg_n_0_[5]\,
      R => SR(0)
    );
\acked[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(0),
      I1 => up_sot,
      O => \acked_reg[1]\
    );
do_enable_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[4]\,
      I1 => \FSM_onehot_state_reg_n_0_[3]\,
      O => do_enable0
    );
do_enable_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => do_enable0,
      Q => \^s_axis_waddr_reg\,
      R => '0'
    );
do_reset_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => '0',
      Q => do_reset,
      S => do_reset_0
    );
needs_reset_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => ctrl_enable_reg,
      Q => \^state_reg[0]_0\,
      R => needs_reset
    );
\reset_gen[0].reset_async_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => '1',
      D => \reset_gen[0].reset_async_reg_n_0_[1]\,
      PRE => do_reset,
      Q => reset_sync_chain_0
    );
\reset_gen[0].reset_async_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => '1',
      D => \reset_gen[0].reset_async_reg_n_0_[2]\,
      PRE => do_reset,
      Q => \reset_gen[0].reset_async_reg_n_0_[1]\
    );
\reset_gen[0].reset_async_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => '1',
      D => \reset_gen[0].reset_async_reg_n_0_[3]\,
      PRE => do_reset,
      Q => \reset_gen[0].reset_async_reg_n_0_[2]\
    );
\reset_gen[0].reset_async_reg[3]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => '1',
      D => '0',
      PRE => do_reset,
      Q => \reset_gen[0].reset_async_reg_n_0_[3]\
    );
\reset_gen[0].reset_sync_in_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => '1',
      D => reset_sync_chain_0,
      PRE => reset_sync_chain_0,
      Q => \reset_gen[0].reset_sync_in\
    );
\reset_gen[0].reset_sync_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => '1',
      D => \reset_gen[0].reset_sync_reg_n_0_[1]\,
      Q => \^q\(0),
      R => '0'
    );
\reset_gen[0].reset_sync_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => '1',
      D => \reset_gen[0].reset_sync_in\,
      Q => \reset_gen[0].reset_sync_reg_n_0_[1]\,
      R => '0'
    );
\state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"07"
    )
        port map (
      I0 => \^state_reg[2]_0\(1),
      I1 => \^state_reg[0]_0\,
      I2 => \^state_reg[2]_0\(0),
      O => \state[0]_i_1_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"26"
    )
        port map (
      I0 => \^state_reg[2]_0\(0),
      I1 => \^state_reg[2]_0\(1),
      I2 => \^state_reg[0]_0\,
      O => \state[1]_i_1_n_0\
    );
\state[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^state_reg[2]_0\(1),
      I1 => \^state_reg[2]_0\(0),
      I2 => \^state_reg[2]_0\(2),
      O => \state[2]_i_1_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => state,
      D => \state[0]_i_1_n_0\,
      Q => \^state_reg[2]_0\(0),
      R => SR(0)
    );
\state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => state,
      D => \state[1]_i_1_n_0\,
      Q => \^state_reg[2]_0\(1),
      R => SR(0)
    );
\state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => state,
      D => \state[2]_i_1_n_0\,
      Q => \^state_reg[2]_0\(2),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_axi_dmac_0_0_axi_dmac_resize_src is
  port (
    src_beat : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    src_id_reduced_msb_reg : out STD_LOGIC;
    src_last_beat : out STD_LOGIC;
    \data_reg[32]_0\ : out STD_LOGIC;
    src_mem_data : out STD_LOGIC_VECTOR ( 63 downto 0 );
    src_last : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    pending_burst_reg : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_valid : in STD_LOGIC;
    transfer_abort_reg : in STD_LOGIC;
    active_reg : in STD_LOGIC;
    pending_burst : in STD_LOGIC;
    \reset_gen[0].reset_sync_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_data : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end zsys_axi_dmac_0_0_axi_dmac_resize_src;

architecture STRUCTURE of zsys_axi_dmac_0_0_axi_dmac_resize_src is
  signal \data[31]_i_1_n_0\ : STD_LOGIC;
  signal \data[63]_i_1_n_0\ : STD_LOGIC;
  signal \^data_reg[32]_0\ : STD_LOGIC;
  signal \mask[0]_i_1_n_0\ : STD_LOGIC;
  signal \mask[1]_i_1_n_0\ : STD_LOGIC;
  signal \mask_reg_n_0_[0]\ : STD_LOGIC;
  signal \^src_beat\ : STD_LOGIC;
  signal src_mem_data_last : STD_LOGIC;
begin
  \data_reg[32]_0\ <= \^data_reg[32]_0\;
  src_beat <= \^src_beat\;
burst_len_mem_reg_0_7_0_3_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => src_mem_data_last,
      I1 => \^src_beat\,
      O => src_last_beat
    );
\data[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => transfer_abort_reg,
      I1 => \mask_reg_n_0_[0]\,
      O => \data[31]_i_1_n_0\
    );
\data[63]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => transfer_abort_reg,
      I1 => \^data_reg[32]_0\,
      O => \data[63]_i_1_n_0\
    );
\data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => \mask_reg_n_0_[0]\,
      D => s_axis_data(0),
      Q => src_mem_data(0),
      R => \data[31]_i_1_n_0\
    );
\data_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => \mask_reg_n_0_[0]\,
      D => s_axis_data(10),
      Q => src_mem_data(10),
      R => \data[31]_i_1_n_0\
    );
\data_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => \mask_reg_n_0_[0]\,
      D => s_axis_data(11),
      Q => src_mem_data(11),
      R => \data[31]_i_1_n_0\
    );
\data_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => \mask_reg_n_0_[0]\,
      D => s_axis_data(12),
      Q => src_mem_data(12),
      R => \data[31]_i_1_n_0\
    );
\data_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => \mask_reg_n_0_[0]\,
      D => s_axis_data(13),
      Q => src_mem_data(13),
      R => \data[31]_i_1_n_0\
    );
\data_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => \mask_reg_n_0_[0]\,
      D => s_axis_data(14),
      Q => src_mem_data(14),
      R => \data[31]_i_1_n_0\
    );
\data_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => \mask_reg_n_0_[0]\,
      D => s_axis_data(15),
      Q => src_mem_data(15),
      R => \data[31]_i_1_n_0\
    );
\data_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => \mask_reg_n_0_[0]\,
      D => s_axis_data(16),
      Q => src_mem_data(16),
      R => \data[31]_i_1_n_0\
    );
\data_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => \mask_reg_n_0_[0]\,
      D => s_axis_data(17),
      Q => src_mem_data(17),
      R => \data[31]_i_1_n_0\
    );
\data_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => \mask_reg_n_0_[0]\,
      D => s_axis_data(18),
      Q => src_mem_data(18),
      R => \data[31]_i_1_n_0\
    );
\data_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => \mask_reg_n_0_[0]\,
      D => s_axis_data(19),
      Q => src_mem_data(19),
      R => \data[31]_i_1_n_0\
    );
\data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => \mask_reg_n_0_[0]\,
      D => s_axis_data(1),
      Q => src_mem_data(1),
      R => \data[31]_i_1_n_0\
    );
\data_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => \mask_reg_n_0_[0]\,
      D => s_axis_data(20),
      Q => src_mem_data(20),
      R => \data[31]_i_1_n_0\
    );
\data_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => \mask_reg_n_0_[0]\,
      D => s_axis_data(21),
      Q => src_mem_data(21),
      R => \data[31]_i_1_n_0\
    );
\data_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => \mask_reg_n_0_[0]\,
      D => s_axis_data(22),
      Q => src_mem_data(22),
      R => \data[31]_i_1_n_0\
    );
\data_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => \mask_reg_n_0_[0]\,
      D => s_axis_data(23),
      Q => src_mem_data(23),
      R => \data[31]_i_1_n_0\
    );
\data_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => \mask_reg_n_0_[0]\,
      D => s_axis_data(24),
      Q => src_mem_data(24),
      R => \data[31]_i_1_n_0\
    );
\data_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => \mask_reg_n_0_[0]\,
      D => s_axis_data(25),
      Q => src_mem_data(25),
      R => \data[31]_i_1_n_0\
    );
\data_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => \mask_reg_n_0_[0]\,
      D => s_axis_data(26),
      Q => src_mem_data(26),
      R => \data[31]_i_1_n_0\
    );
\data_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => \mask_reg_n_0_[0]\,
      D => s_axis_data(27),
      Q => src_mem_data(27),
      R => \data[31]_i_1_n_0\
    );
\data_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => \mask_reg_n_0_[0]\,
      D => s_axis_data(28),
      Q => src_mem_data(28),
      R => \data[31]_i_1_n_0\
    );
\data_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => \mask_reg_n_0_[0]\,
      D => s_axis_data(29),
      Q => src_mem_data(29),
      R => \data[31]_i_1_n_0\
    );
\data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => \mask_reg_n_0_[0]\,
      D => s_axis_data(2),
      Q => src_mem_data(2),
      R => \data[31]_i_1_n_0\
    );
\data_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => \mask_reg_n_0_[0]\,
      D => s_axis_data(30),
      Q => src_mem_data(30),
      R => \data[31]_i_1_n_0\
    );
\data_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => \mask_reg_n_0_[0]\,
      D => s_axis_data(31),
      Q => src_mem_data(31),
      R => \data[31]_i_1_n_0\
    );
\data_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => \^data_reg[32]_0\,
      D => s_axis_data(0),
      Q => src_mem_data(32),
      R => \data[63]_i_1_n_0\
    );
\data_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => \^data_reg[32]_0\,
      D => s_axis_data(1),
      Q => src_mem_data(33),
      R => \data[63]_i_1_n_0\
    );
\data_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => \^data_reg[32]_0\,
      D => s_axis_data(2),
      Q => src_mem_data(34),
      R => \data[63]_i_1_n_0\
    );
\data_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => \^data_reg[32]_0\,
      D => s_axis_data(3),
      Q => src_mem_data(35),
      R => \data[63]_i_1_n_0\
    );
\data_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => \^data_reg[32]_0\,
      D => s_axis_data(4),
      Q => src_mem_data(36),
      R => \data[63]_i_1_n_0\
    );
\data_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => \^data_reg[32]_0\,
      D => s_axis_data(5),
      Q => src_mem_data(37),
      R => \data[63]_i_1_n_0\
    );
\data_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => \^data_reg[32]_0\,
      D => s_axis_data(6),
      Q => src_mem_data(38),
      R => \data[63]_i_1_n_0\
    );
\data_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => \^data_reg[32]_0\,
      D => s_axis_data(7),
      Q => src_mem_data(39),
      R => \data[63]_i_1_n_0\
    );
\data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => \mask_reg_n_0_[0]\,
      D => s_axis_data(3),
      Q => src_mem_data(3),
      R => \data[31]_i_1_n_0\
    );
\data_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => \^data_reg[32]_0\,
      D => s_axis_data(8),
      Q => src_mem_data(40),
      R => \data[63]_i_1_n_0\
    );
\data_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => \^data_reg[32]_0\,
      D => s_axis_data(9),
      Q => src_mem_data(41),
      R => \data[63]_i_1_n_0\
    );
\data_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => \^data_reg[32]_0\,
      D => s_axis_data(10),
      Q => src_mem_data(42),
      R => \data[63]_i_1_n_0\
    );
\data_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => \^data_reg[32]_0\,
      D => s_axis_data(11),
      Q => src_mem_data(43),
      R => \data[63]_i_1_n_0\
    );
\data_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => \^data_reg[32]_0\,
      D => s_axis_data(12),
      Q => src_mem_data(44),
      R => \data[63]_i_1_n_0\
    );
\data_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => \^data_reg[32]_0\,
      D => s_axis_data(13),
      Q => src_mem_data(45),
      R => \data[63]_i_1_n_0\
    );
\data_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => \^data_reg[32]_0\,
      D => s_axis_data(14),
      Q => src_mem_data(46),
      R => \data[63]_i_1_n_0\
    );
\data_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => \^data_reg[32]_0\,
      D => s_axis_data(15),
      Q => src_mem_data(47),
      R => \data[63]_i_1_n_0\
    );
\data_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => \^data_reg[32]_0\,
      D => s_axis_data(16),
      Q => src_mem_data(48),
      R => \data[63]_i_1_n_0\
    );
\data_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => \^data_reg[32]_0\,
      D => s_axis_data(17),
      Q => src_mem_data(49),
      R => \data[63]_i_1_n_0\
    );
\data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => \mask_reg_n_0_[0]\,
      D => s_axis_data(4),
      Q => src_mem_data(4),
      R => \data[31]_i_1_n_0\
    );
\data_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => \^data_reg[32]_0\,
      D => s_axis_data(18),
      Q => src_mem_data(50),
      R => \data[63]_i_1_n_0\
    );
\data_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => \^data_reg[32]_0\,
      D => s_axis_data(19),
      Q => src_mem_data(51),
      R => \data[63]_i_1_n_0\
    );
\data_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => \^data_reg[32]_0\,
      D => s_axis_data(20),
      Q => src_mem_data(52),
      R => \data[63]_i_1_n_0\
    );
\data_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => \^data_reg[32]_0\,
      D => s_axis_data(21),
      Q => src_mem_data(53),
      R => \data[63]_i_1_n_0\
    );
\data_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => \^data_reg[32]_0\,
      D => s_axis_data(22),
      Q => src_mem_data(54),
      R => \data[63]_i_1_n_0\
    );
\data_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => \^data_reg[32]_0\,
      D => s_axis_data(23),
      Q => src_mem_data(55),
      R => \data[63]_i_1_n_0\
    );
\data_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => \^data_reg[32]_0\,
      D => s_axis_data(24),
      Q => src_mem_data(56),
      R => \data[63]_i_1_n_0\
    );
\data_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => \^data_reg[32]_0\,
      D => s_axis_data(25),
      Q => src_mem_data(57),
      R => \data[63]_i_1_n_0\
    );
\data_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => \^data_reg[32]_0\,
      D => s_axis_data(26),
      Q => src_mem_data(58),
      R => \data[63]_i_1_n_0\
    );
\data_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => \^data_reg[32]_0\,
      D => s_axis_data(27),
      Q => src_mem_data(59),
      R => \data[63]_i_1_n_0\
    );
\data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => \mask_reg_n_0_[0]\,
      D => s_axis_data(5),
      Q => src_mem_data(5),
      R => \data[31]_i_1_n_0\
    );
\data_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => \^data_reg[32]_0\,
      D => s_axis_data(28),
      Q => src_mem_data(60),
      R => \data[63]_i_1_n_0\
    );
\data_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => \^data_reg[32]_0\,
      D => s_axis_data(29),
      Q => src_mem_data(61),
      R => \data[63]_i_1_n_0\
    );
\data_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => \^data_reg[32]_0\,
      D => s_axis_data(30),
      Q => src_mem_data(62),
      R => \data[63]_i_1_n_0\
    );
\data_reg[63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => \^data_reg[32]_0\,
      D => s_axis_data(31),
      Q => src_mem_data(63),
      R => \data[63]_i_1_n_0\
    );
\data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => \mask_reg_n_0_[0]\,
      D => s_axis_data(6),
      Q => src_mem_data(6),
      R => \data[31]_i_1_n_0\
    );
\data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => \mask_reg_n_0_[0]\,
      D => s_axis_data(7),
      Q => src_mem_data(7),
      R => \data[31]_i_1_n_0\
    );
\data_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => \mask_reg_n_0_[0]\,
      D => s_axis_data(8),
      Q => src_mem_data(8),
      R => \data[31]_i_1_n_0\
    );
\data_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => \mask_reg_n_0_[0]\,
      D => s_axis_data(9),
      Q => src_mem_data(9),
      R => \data[31]_i_1_n_0\
    );
last_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => '1',
      D => src_last,
      Q => src_mem_data_last,
      R => '0'
    );
\mask[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABFFFFFFA8000000"
    )
        port map (
      I0 => \^data_reg[32]_0\,
      I1 => s_axis_valid,
      I2 => transfer_abort_reg,
      I3 => active_reg,
      I4 => pending_burst,
      I5 => \mask_reg_n_0_[0]\,
      O => \mask[0]_i_1_n_0\
    );
\mask[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABFFFFFFA8000000"
    )
        port map (
      I0 => \mask_reg_n_0_[0]\,
      I1 => s_axis_valid,
      I2 => transfer_abort_reg,
      I3 => active_reg,
      I4 => pending_burst,
      I5 => \^data_reg[32]_0\,
      O => \mask[1]_i_1_n_0\
    );
\mask_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axis_aclk,
      CE => '1',
      D => \mask[0]_i_1_n_0\,
      Q => \mask_reg_n_0_[0]\,
      S => \reset_gen[0].reset_sync_reg[0]\(0)
    );
\mask_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => '1',
      D => \mask[1]_i_1_n_0\,
      Q => \^data_reg[32]_0\,
      R => \reset_gen[0].reset_sync_reg[0]\(0)
    );
\src_id[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"69FFFFFF69000000"
    )
        port map (
      I0 => Q(1),
      I1 => Q(3),
      I2 => Q(2),
      I3 => src_mem_data_last,
      I4 => \^src_beat\,
      I5 => Q(0),
      O => D(0)
    );
\src_id[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAA2AAA2AAAEAAA"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => \^src_beat\,
      I3 => src_mem_data_last,
      I4 => Q(2),
      I5 => Q(3),
      O => D(1)
    );
\src_id[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F072F0F0F0"
    )
        port map (
      I0 => Q(1),
      I1 => Q(3),
      I2 => Q(2),
      I3 => src_mem_data_last,
      I4 => \^src_beat\,
      I5 => Q(0),
      O => D(2)
    );
\src_id[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCCD8CCCCCC"
    )
        port map (
      I0 => Q(1),
      I1 => Q(3),
      I2 => Q(2),
      I3 => src_mem_data_last,
      I4 => \^src_beat\,
      I5 => Q(0),
      O => D(3)
    );
src_id_reduced_msb_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40FFFF4000BFBF00"
    )
        port map (
      I0 => Q(0),
      I1 => \^src_beat\,
      I2 => src_mem_data_last,
      I3 => Q(2),
      I4 => Q(3),
      I5 => Q(1),
      O => src_id_reduced_msb_reg
    );
valid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => '1',
      D => pending_burst_reg,
      Q => \^src_beat\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_axi_dmac_0_0_dmac_address_generator is
  port (
    m_dest_axi_awvalid : out STD_LOGIC;
    \id_reg[0]_0\ : out STD_LOGIC;
    \id_reg[0]_1\ : out STD_LOGIC;
    \id_reg[0]_2\ : out STD_LOGIC;
    \id_reg[3]_0\ : out STD_LOGIC;
    m_dest_axi_awaddr : out STD_LOGIC_VECTOR ( 28 downto 0 );
    address_enabled : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \up_rdata_reg[3]\ : out STD_LOGIC;
    \up_rdata_reg[8]\ : out STD_LOGIC;
    \up_rdata_reg[10]\ : out STD_LOGIC;
    \up_rdata_reg[11]\ : out STD_LOGIC;
    m_dest_axi_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_dest_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    dest_address_eot : in STD_LOGIC;
    m_dest_axi_awready : in STD_LOGIC;
    \cdc_sync_fifo_ram_reg[33]\ : in STD_LOGIC_VECTOR ( 32 downto 0 );
    \up_raddr_int_reg[2]\ : in STD_LOGIC;
    \up_raddr_int_reg[2]_0\ : in STD_LOGIC;
    \src_id_reg[3]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    needs_reset_reg : in STD_LOGIC;
    do_enable_reg : in STD_LOGIC;
    s_axis_waddr : in STD_LOGIC;
    m_axis_raddr : in STD_LOGIC;
    \src_id_reg[0]\ : in STD_LOGIC
  );
end zsys_axi_dmac_0_0_dmac_address_generator;

architecture STRUCTURE of zsys_axi_dmac_0_0_dmac_address_generator is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal addr_valid_d1 : STD_LOGIC;
  signal addr_valid_i_1_n_0 : STD_LOGIC;
  signal addr_valid_i_2_n_0 : STD_LOGIC;
  signal \address[0]_i_1_n_0\ : STD_LOGIC;
  signal \address[10]_i_2_n_0\ : STD_LOGIC;
  signal \address[10]_i_3_n_0\ : STD_LOGIC;
  signal \address[10]_i_4_n_0\ : STD_LOGIC;
  signal \address[10]_i_5_n_0\ : STD_LOGIC;
  signal \address[14]_i_2_n_0\ : STD_LOGIC;
  signal \address[14]_i_3_n_0\ : STD_LOGIC;
  signal \address[14]_i_4_n_0\ : STD_LOGIC;
  signal \address[14]_i_5_n_0\ : STD_LOGIC;
  signal \address[18]_i_2_n_0\ : STD_LOGIC;
  signal \address[18]_i_3_n_0\ : STD_LOGIC;
  signal \address[18]_i_4_n_0\ : STD_LOGIC;
  signal \address[18]_i_5_n_0\ : STD_LOGIC;
  signal \address[1]_i_1_n_0\ : STD_LOGIC;
  signal \address[22]_i_2_n_0\ : STD_LOGIC;
  signal \address[22]_i_3_n_0\ : STD_LOGIC;
  signal \address[22]_i_4_n_0\ : STD_LOGIC;
  signal \address[22]_i_5_n_0\ : STD_LOGIC;
  signal \address[26]_i_2_n_0\ : STD_LOGIC;
  signal \address[26]_i_3_n_0\ : STD_LOGIC;
  signal \address[26]_i_4_n_0\ : STD_LOGIC;
  signal \address[26]_i_5_n_0\ : STD_LOGIC;
  signal \address[28]_i_1_n_0\ : STD_LOGIC;
  signal \address[28]_i_3_n_0\ : STD_LOGIC;
  signal \address[28]_i_4_n_0\ : STD_LOGIC;
  signal \address[2]_i_1_n_0\ : STD_LOGIC;
  signal \address[6]_i_2_n_0\ : STD_LOGIC;
  signal \address[6]_i_3_n_0\ : STD_LOGIC;
  signal \address[6]_i_4_n_0\ : STD_LOGIC;
  signal \address[6]_i_5_n_0\ : STD_LOGIC;
  signal \address[6]_i_6_n_0\ : STD_LOGIC;
  signal \^address_enabled\ : STD_LOGIC;
  signal \address_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \address_reg[10]_i_1_n_1\ : STD_LOGIC;
  signal \address_reg[10]_i_1_n_2\ : STD_LOGIC;
  signal \address_reg[10]_i_1_n_3\ : STD_LOGIC;
  signal \address_reg[10]_i_1_n_4\ : STD_LOGIC;
  signal \address_reg[10]_i_1_n_5\ : STD_LOGIC;
  signal \address_reg[10]_i_1_n_6\ : STD_LOGIC;
  signal \address_reg[10]_i_1_n_7\ : STD_LOGIC;
  signal \address_reg[14]_i_1_n_0\ : STD_LOGIC;
  signal \address_reg[14]_i_1_n_1\ : STD_LOGIC;
  signal \address_reg[14]_i_1_n_2\ : STD_LOGIC;
  signal \address_reg[14]_i_1_n_3\ : STD_LOGIC;
  signal \address_reg[14]_i_1_n_4\ : STD_LOGIC;
  signal \address_reg[14]_i_1_n_5\ : STD_LOGIC;
  signal \address_reg[14]_i_1_n_6\ : STD_LOGIC;
  signal \address_reg[14]_i_1_n_7\ : STD_LOGIC;
  signal \address_reg[18]_i_1_n_0\ : STD_LOGIC;
  signal \address_reg[18]_i_1_n_1\ : STD_LOGIC;
  signal \address_reg[18]_i_1_n_2\ : STD_LOGIC;
  signal \address_reg[18]_i_1_n_3\ : STD_LOGIC;
  signal \address_reg[18]_i_1_n_4\ : STD_LOGIC;
  signal \address_reg[18]_i_1_n_5\ : STD_LOGIC;
  signal \address_reg[18]_i_1_n_6\ : STD_LOGIC;
  signal \address_reg[18]_i_1_n_7\ : STD_LOGIC;
  signal \address_reg[22]_i_1_n_0\ : STD_LOGIC;
  signal \address_reg[22]_i_1_n_1\ : STD_LOGIC;
  signal \address_reg[22]_i_1_n_2\ : STD_LOGIC;
  signal \address_reg[22]_i_1_n_3\ : STD_LOGIC;
  signal \address_reg[22]_i_1_n_4\ : STD_LOGIC;
  signal \address_reg[22]_i_1_n_5\ : STD_LOGIC;
  signal \address_reg[22]_i_1_n_6\ : STD_LOGIC;
  signal \address_reg[22]_i_1_n_7\ : STD_LOGIC;
  signal \address_reg[26]_i_1_n_0\ : STD_LOGIC;
  signal \address_reg[26]_i_1_n_1\ : STD_LOGIC;
  signal \address_reg[26]_i_1_n_2\ : STD_LOGIC;
  signal \address_reg[26]_i_1_n_3\ : STD_LOGIC;
  signal \address_reg[26]_i_1_n_4\ : STD_LOGIC;
  signal \address_reg[26]_i_1_n_5\ : STD_LOGIC;
  signal \address_reg[26]_i_1_n_6\ : STD_LOGIC;
  signal \address_reg[26]_i_1_n_7\ : STD_LOGIC;
  signal \address_reg[28]_i_2_n_3\ : STD_LOGIC;
  signal \address_reg[28]_i_2_n_6\ : STD_LOGIC;
  signal \address_reg[28]_i_2_n_7\ : STD_LOGIC;
  signal \address_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \address_reg[6]_i_1_n_1\ : STD_LOGIC;
  signal \address_reg[6]_i_1_n_2\ : STD_LOGIC;
  signal \address_reg[6]_i_1_n_3\ : STD_LOGIC;
  signal \address_reg[6]_i_1_n_4\ : STD_LOGIC;
  signal \address_reg[6]_i_1_n_5\ : STD_LOGIC;
  signal \address_reg[6]_i_1_n_6\ : STD_LOGIC;
  signal \address_reg[6]_i_1_n_7\ : STD_LOGIC;
  signal enabled_i_1_n_0 : STD_LOGIC;
  signal id0 : STD_LOGIC;
  signal \id[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \id[3]_i_2__1_n_0\ : STD_LOGIC;
  signal \^id_reg[0]_0\ : STD_LOGIC;
  signal \^id_reg[0]_1\ : STD_LOGIC;
  signal \^id_reg[0]_2\ : STD_LOGIC;
  signal \^id_reg[3]_0\ : STD_LOGIC;
  signal inc_id_return : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal last : STD_LOGIC;
  signal last_burst_len : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \length[3]_i_1_n_0\ : STD_LOGIC;
  signal \^m_dest_axi_awaddr\ : STD_LOGIC_VECTOR ( 28 downto 0 );
  signal \^m_dest_axi_awvalid\ : STD_LOGIC;
  signal p_0_in0 : STD_LOGIC;
  signal req_ready_i_1_n_0 : STD_LOGIC;
  signal \NLW_address_reg[28]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_address_reg[28]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \address[0]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \address[1]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \id[0]_i_1__1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \id[1]_i_1__1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \id[2]_i_1__1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \id[3]_i_2__1\ : label is "soft_lutpair26";
begin
  E(0) <= \^e\(0);
  address_enabled <= \^address_enabled\;
  \id_reg[0]_0\ <= \^id_reg[0]_0\;
  \id_reg[0]_1\ <= \^id_reg[0]_1\;
  \id_reg[0]_2\ <= \^id_reg[0]_2\;
  \id_reg[3]_0\ <= \^id_reg[3]_0\;
  m_dest_axi_awaddr(28 downto 0) <= \^m_dest_axi_awaddr\(28 downto 0);
  m_dest_axi_awvalid <= \^m_dest_axi_awvalid\;
addr_valid_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => m_dest_axi_aclk,
      CE => '1',
      D => \^m_dest_axi_awvalid\,
      Q => addr_valid_d1,
      R => '0'
    );
addr_valid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F700"
    )
        port map (
      I0 => \^m_dest_axi_awvalid\,
      I1 => m_dest_axi_awready,
      I2 => \^e\(0),
      I3 => addr_valid_i_2_n_0,
      I4 => Q(0),
      O => addr_valid_i_1_n_0
    );
addr_valid_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF44440440"
    )
        port map (
      I0 => \^e\(0),
      I1 => do_enable_reg,
      I2 => \^id_reg[0]_0\,
      I3 => \src_id_reg[3]\(0),
      I4 => \src_id_reg[0]\,
      I5 => \^m_dest_axi_awvalid\,
      O => addr_valid_i_2_n_0
    );
addr_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => m_dest_axi_aclk,
      CE => '1',
      D => addr_valid_i_1_n_0,
      Q => \^m_dest_axi_awvalid\,
      R => '0'
    );
\address[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \cdc_sync_fifo_ram_reg[33]\(4),
      I1 => \^e\(0),
      I2 => \^m_dest_axi_awaddr\(0),
      O => \address[0]_i_1_n_0\
    );
\address[10]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \cdc_sync_fifo_ram_reg[33]\(14),
      I1 => \^e\(0),
      I2 => \^m_dest_axi_awaddr\(10),
      O => \address[10]_i_2_n_0\
    );
\address[10]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \cdc_sync_fifo_ram_reg[33]\(13),
      I1 => \^e\(0),
      I2 => \^m_dest_axi_awaddr\(9),
      O => \address[10]_i_3_n_0\
    );
\address[10]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \cdc_sync_fifo_ram_reg[33]\(12),
      I1 => \^e\(0),
      I2 => \^m_dest_axi_awaddr\(8),
      O => \address[10]_i_4_n_0\
    );
\address[10]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \cdc_sync_fifo_ram_reg[33]\(11),
      I1 => \^e\(0),
      I2 => \^m_dest_axi_awaddr\(7),
      O => \address[10]_i_5_n_0\
    );
\address[14]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \cdc_sync_fifo_ram_reg[33]\(18),
      I1 => \^e\(0),
      I2 => \^m_dest_axi_awaddr\(14),
      O => \address[14]_i_2_n_0\
    );
\address[14]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \cdc_sync_fifo_ram_reg[33]\(17),
      I1 => \^e\(0),
      I2 => \^m_dest_axi_awaddr\(13),
      O => \address[14]_i_3_n_0\
    );
\address[14]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \cdc_sync_fifo_ram_reg[33]\(16),
      I1 => \^e\(0),
      I2 => \^m_dest_axi_awaddr\(12),
      O => \address[14]_i_4_n_0\
    );
\address[14]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \cdc_sync_fifo_ram_reg[33]\(15),
      I1 => \^e\(0),
      I2 => \^m_dest_axi_awaddr\(11),
      O => \address[14]_i_5_n_0\
    );
\address[18]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \cdc_sync_fifo_ram_reg[33]\(22),
      I1 => \^e\(0),
      I2 => \^m_dest_axi_awaddr\(18),
      O => \address[18]_i_2_n_0\
    );
\address[18]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \cdc_sync_fifo_ram_reg[33]\(21),
      I1 => \^e\(0),
      I2 => \^m_dest_axi_awaddr\(17),
      O => \address[18]_i_3_n_0\
    );
\address[18]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \cdc_sync_fifo_ram_reg[33]\(20),
      I1 => \^e\(0),
      I2 => \^m_dest_axi_awaddr\(16),
      O => \address[18]_i_4_n_0\
    );
\address[18]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \cdc_sync_fifo_ram_reg[33]\(19),
      I1 => \^e\(0),
      I2 => \^m_dest_axi_awaddr\(15),
      O => \address[18]_i_5_n_0\
    );
\address[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \cdc_sync_fifo_ram_reg[33]\(5),
      I1 => \^e\(0),
      I2 => \^m_dest_axi_awaddr\(1),
      O => \address[1]_i_1_n_0\
    );
\address[22]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \cdc_sync_fifo_ram_reg[33]\(26),
      I1 => \^e\(0),
      I2 => \^m_dest_axi_awaddr\(22),
      O => \address[22]_i_2_n_0\
    );
\address[22]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \cdc_sync_fifo_ram_reg[33]\(25),
      I1 => \^e\(0),
      I2 => \^m_dest_axi_awaddr\(21),
      O => \address[22]_i_3_n_0\
    );
\address[22]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \cdc_sync_fifo_ram_reg[33]\(24),
      I1 => \^e\(0),
      I2 => \^m_dest_axi_awaddr\(20),
      O => \address[22]_i_4_n_0\
    );
\address[22]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \cdc_sync_fifo_ram_reg[33]\(23),
      I1 => \^e\(0),
      I2 => \^m_dest_axi_awaddr\(19),
      O => \address[22]_i_5_n_0\
    );
\address[26]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \cdc_sync_fifo_ram_reg[33]\(30),
      I1 => \^e\(0),
      I2 => \^m_dest_axi_awaddr\(26),
      O => \address[26]_i_2_n_0\
    );
\address[26]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \cdc_sync_fifo_ram_reg[33]\(29),
      I1 => \^e\(0),
      I2 => \^m_dest_axi_awaddr\(25),
      O => \address[26]_i_3_n_0\
    );
\address[26]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \cdc_sync_fifo_ram_reg[33]\(28),
      I1 => \^e\(0),
      I2 => \^m_dest_axi_awaddr\(24),
      O => \address[26]_i_4_n_0\
    );
\address[26]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \cdc_sync_fifo_ram_reg[33]\(27),
      I1 => \^e\(0),
      I2 => \^m_dest_axi_awaddr\(23),
      O => \address[26]_i_5_n_0\
    );
\address[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \^e\(0),
      I1 => m_dest_axi_awready,
      I2 => \^m_dest_axi_awvalid\,
      O => \address[28]_i_1_n_0\
    );
\address[28]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \cdc_sync_fifo_ram_reg[33]\(32),
      I1 => \^e\(0),
      I2 => \^m_dest_axi_awaddr\(28),
      O => \address[28]_i_3_n_0\
    );
\address[28]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \cdc_sync_fifo_ram_reg[33]\(31),
      I1 => \^e\(0),
      I2 => \^m_dest_axi_awaddr\(27),
      O => \address[28]_i_4_n_0\
    );
\address[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \cdc_sync_fifo_ram_reg[33]\(6),
      I1 => \^e\(0),
      I2 => \^m_dest_axi_awaddr\(2),
      O => \address[2]_i_1_n_0\
    );
\address[6]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^e\(0),
      O => \address[6]_i_2_n_0\
    );
\address[6]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \cdc_sync_fifo_ram_reg[33]\(10),
      I1 => \^e\(0),
      I2 => \^m_dest_axi_awaddr\(6),
      O => \address[6]_i_3_n_0\
    );
\address[6]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \cdc_sync_fifo_ram_reg[33]\(9),
      I1 => \^e\(0),
      I2 => \^m_dest_axi_awaddr\(5),
      O => \address[6]_i_4_n_0\
    );
\address[6]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => \^m_dest_axi_awaddr\(4),
      I1 => \cdc_sync_fifo_ram_reg[33]\(8),
      I2 => \^e\(0),
      O => \address[6]_i_5_n_0\
    );
\address[6]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \cdc_sync_fifo_ram_reg[33]\(7),
      I1 => \^e\(0),
      I2 => \^m_dest_axi_awaddr\(3),
      O => \address[6]_i_6_n_0\
    );
\address_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => \address[28]_i_1_n_0\,
      D => \address[0]_i_1_n_0\,
      Q => \^m_dest_axi_awaddr\(0),
      R => '0'
    );
\address_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => \address[28]_i_1_n_0\,
      D => \address_reg[10]_i_1_n_4\,
      Q => \^m_dest_axi_awaddr\(10),
      R => '0'
    );
\address_reg[10]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \address_reg[6]_i_1_n_0\,
      CO(3) => \address_reg[10]_i_1_n_0\,
      CO(2) => \address_reg[10]_i_1_n_1\,
      CO(1) => \address_reg[10]_i_1_n_2\,
      CO(0) => \address_reg[10]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \address_reg[10]_i_1_n_4\,
      O(2) => \address_reg[10]_i_1_n_5\,
      O(1) => \address_reg[10]_i_1_n_6\,
      O(0) => \address_reg[10]_i_1_n_7\,
      S(3) => \address[10]_i_2_n_0\,
      S(2) => \address[10]_i_3_n_0\,
      S(1) => \address[10]_i_4_n_0\,
      S(0) => \address[10]_i_5_n_0\
    );
\address_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => \address[28]_i_1_n_0\,
      D => \address_reg[14]_i_1_n_7\,
      Q => \^m_dest_axi_awaddr\(11),
      R => '0'
    );
\address_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => \address[28]_i_1_n_0\,
      D => \address_reg[14]_i_1_n_6\,
      Q => \^m_dest_axi_awaddr\(12),
      R => '0'
    );
\address_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => \address[28]_i_1_n_0\,
      D => \address_reg[14]_i_1_n_5\,
      Q => \^m_dest_axi_awaddr\(13),
      R => '0'
    );
\address_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => \address[28]_i_1_n_0\,
      D => \address_reg[14]_i_1_n_4\,
      Q => \^m_dest_axi_awaddr\(14),
      R => '0'
    );
\address_reg[14]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \address_reg[10]_i_1_n_0\,
      CO(3) => \address_reg[14]_i_1_n_0\,
      CO(2) => \address_reg[14]_i_1_n_1\,
      CO(1) => \address_reg[14]_i_1_n_2\,
      CO(0) => \address_reg[14]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \address_reg[14]_i_1_n_4\,
      O(2) => \address_reg[14]_i_1_n_5\,
      O(1) => \address_reg[14]_i_1_n_6\,
      O(0) => \address_reg[14]_i_1_n_7\,
      S(3) => \address[14]_i_2_n_0\,
      S(2) => \address[14]_i_3_n_0\,
      S(1) => \address[14]_i_4_n_0\,
      S(0) => \address[14]_i_5_n_0\
    );
\address_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => \address[28]_i_1_n_0\,
      D => \address_reg[18]_i_1_n_7\,
      Q => \^m_dest_axi_awaddr\(15),
      R => '0'
    );
\address_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => \address[28]_i_1_n_0\,
      D => \address_reg[18]_i_1_n_6\,
      Q => \^m_dest_axi_awaddr\(16),
      R => '0'
    );
\address_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => \address[28]_i_1_n_0\,
      D => \address_reg[18]_i_1_n_5\,
      Q => \^m_dest_axi_awaddr\(17),
      R => '0'
    );
\address_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => \address[28]_i_1_n_0\,
      D => \address_reg[18]_i_1_n_4\,
      Q => \^m_dest_axi_awaddr\(18),
      R => '0'
    );
\address_reg[18]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \address_reg[14]_i_1_n_0\,
      CO(3) => \address_reg[18]_i_1_n_0\,
      CO(2) => \address_reg[18]_i_1_n_1\,
      CO(1) => \address_reg[18]_i_1_n_2\,
      CO(0) => \address_reg[18]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \address_reg[18]_i_1_n_4\,
      O(2) => \address_reg[18]_i_1_n_5\,
      O(1) => \address_reg[18]_i_1_n_6\,
      O(0) => \address_reg[18]_i_1_n_7\,
      S(3) => \address[18]_i_2_n_0\,
      S(2) => \address[18]_i_3_n_0\,
      S(1) => \address[18]_i_4_n_0\,
      S(0) => \address[18]_i_5_n_0\
    );
\address_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => \address[28]_i_1_n_0\,
      D => \address_reg[22]_i_1_n_7\,
      Q => \^m_dest_axi_awaddr\(19),
      R => '0'
    );
\address_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => \address[28]_i_1_n_0\,
      D => \address[1]_i_1_n_0\,
      Q => \^m_dest_axi_awaddr\(1),
      R => '0'
    );
\address_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => \address[28]_i_1_n_0\,
      D => \address_reg[22]_i_1_n_6\,
      Q => \^m_dest_axi_awaddr\(20),
      R => '0'
    );
\address_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => \address[28]_i_1_n_0\,
      D => \address_reg[22]_i_1_n_5\,
      Q => \^m_dest_axi_awaddr\(21),
      R => '0'
    );
\address_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => \address[28]_i_1_n_0\,
      D => \address_reg[22]_i_1_n_4\,
      Q => \^m_dest_axi_awaddr\(22),
      R => '0'
    );
\address_reg[22]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \address_reg[18]_i_1_n_0\,
      CO(3) => \address_reg[22]_i_1_n_0\,
      CO(2) => \address_reg[22]_i_1_n_1\,
      CO(1) => \address_reg[22]_i_1_n_2\,
      CO(0) => \address_reg[22]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \address_reg[22]_i_1_n_4\,
      O(2) => \address_reg[22]_i_1_n_5\,
      O(1) => \address_reg[22]_i_1_n_6\,
      O(0) => \address_reg[22]_i_1_n_7\,
      S(3) => \address[22]_i_2_n_0\,
      S(2) => \address[22]_i_3_n_0\,
      S(1) => \address[22]_i_4_n_0\,
      S(0) => \address[22]_i_5_n_0\
    );
\address_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => \address[28]_i_1_n_0\,
      D => \address_reg[26]_i_1_n_7\,
      Q => \^m_dest_axi_awaddr\(23),
      R => '0'
    );
\address_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => \address[28]_i_1_n_0\,
      D => \address_reg[26]_i_1_n_6\,
      Q => \^m_dest_axi_awaddr\(24),
      R => '0'
    );
\address_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => \address[28]_i_1_n_0\,
      D => \address_reg[26]_i_1_n_5\,
      Q => \^m_dest_axi_awaddr\(25),
      R => '0'
    );
\address_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => \address[28]_i_1_n_0\,
      D => \address_reg[26]_i_1_n_4\,
      Q => \^m_dest_axi_awaddr\(26),
      R => '0'
    );
\address_reg[26]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \address_reg[22]_i_1_n_0\,
      CO(3) => \address_reg[26]_i_1_n_0\,
      CO(2) => \address_reg[26]_i_1_n_1\,
      CO(1) => \address_reg[26]_i_1_n_2\,
      CO(0) => \address_reg[26]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \address_reg[26]_i_1_n_4\,
      O(2) => \address_reg[26]_i_1_n_5\,
      O(1) => \address_reg[26]_i_1_n_6\,
      O(0) => \address_reg[26]_i_1_n_7\,
      S(3) => \address[26]_i_2_n_0\,
      S(2) => \address[26]_i_3_n_0\,
      S(1) => \address[26]_i_4_n_0\,
      S(0) => \address[26]_i_5_n_0\
    );
\address_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => \address[28]_i_1_n_0\,
      D => \address_reg[28]_i_2_n_7\,
      Q => \^m_dest_axi_awaddr\(27),
      R => '0'
    );
\address_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => \address[28]_i_1_n_0\,
      D => \address_reg[28]_i_2_n_6\,
      Q => \^m_dest_axi_awaddr\(28),
      R => '0'
    );
\address_reg[28]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \address_reg[26]_i_1_n_0\,
      CO(3 downto 1) => \NLW_address_reg[28]_i_2_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \address_reg[28]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_address_reg[28]_i_2_O_UNCONNECTED\(3 downto 2),
      O(1) => \address_reg[28]_i_2_n_6\,
      O(0) => \address_reg[28]_i_2_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \address[28]_i_3_n_0\,
      S(0) => \address[28]_i_4_n_0\
    );
\address_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => \address[28]_i_1_n_0\,
      D => \address[2]_i_1_n_0\,
      Q => \^m_dest_axi_awaddr\(2),
      R => '0'
    );
\address_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => \address[28]_i_1_n_0\,
      D => \address_reg[6]_i_1_n_7\,
      Q => \^m_dest_axi_awaddr\(3),
      R => '0'
    );
\address_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => \address[28]_i_1_n_0\,
      D => \address_reg[6]_i_1_n_6\,
      Q => \^m_dest_axi_awaddr\(4),
      R => '0'
    );
\address_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => \address[28]_i_1_n_0\,
      D => \address_reg[6]_i_1_n_5\,
      Q => \^m_dest_axi_awaddr\(5),
      R => '0'
    );
\address_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => \address[28]_i_1_n_0\,
      D => \address_reg[6]_i_1_n_4\,
      Q => \^m_dest_axi_awaddr\(6),
      R => '0'
    );
\address_reg[6]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \address_reg[6]_i_1_n_0\,
      CO(2) => \address_reg[6]_i_1_n_1\,
      CO(1) => \address_reg[6]_i_1_n_2\,
      CO(0) => \address_reg[6]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \address[6]_i_2_n_0\,
      DI(0) => '0',
      O(3) => \address_reg[6]_i_1_n_4\,
      O(2) => \address_reg[6]_i_1_n_5\,
      O(1) => \address_reg[6]_i_1_n_6\,
      O(0) => \address_reg[6]_i_1_n_7\,
      S(3) => \address[6]_i_3_n_0\,
      S(2) => \address[6]_i_4_n_0\,
      S(1) => \address[6]_i_5_n_0\,
      S(0) => \address[6]_i_6_n_0\
    );
\address_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => \address[28]_i_1_n_0\,
      D => \address_reg[10]_i_1_n_7\,
      Q => \^m_dest_axi_awaddr\(7),
      R => '0'
    );
\address_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => \address[28]_i_1_n_0\,
      D => \address_reg[10]_i_1_n_6\,
      Q => \^m_dest_axi_awaddr\(8),
      R => '0'
    );
\address_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => \address[28]_i_1_n_0\,
      D => \address_reg[10]_i_1_n_5\,
      Q => \^m_dest_axi_awaddr\(9),
      R => '0'
    );
enabled_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => do_enable_reg,
      I1 => \^m_dest_axi_awvalid\,
      I2 => \^address_enabled\,
      O => enabled_i_1_n_0
    );
enabled_reg: unisim.vcomponents.FDRE
     port map (
      C => m_dest_axi_aclk,
      CE => '1',
      D => enabled_i_1_n_0,
      Q => \^address_enabled\,
      R => Q(0)
    );
\id[0]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^id_reg[0]_2\,
      I1 => \^id_reg[0]_1\,
      I2 => \^id_reg[0]_0\,
      O => \id[0]_i_1__1_n_0\
    );
\id[1]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D782"
    )
        port map (
      I0 => \^id_reg[3]_0\,
      I1 => \^id_reg[0]_0\,
      I2 => \^id_reg[0]_1\,
      I3 => \^id_reg[0]_2\,
      O => inc_id_return(1)
    );
\id[2]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CC4E"
    )
        port map (
      I0 => \^id_reg[0]_2\,
      I1 => \^id_reg[0]_1\,
      I2 => \^id_reg[0]_0\,
      I3 => \^id_reg[3]_0\,
      O => inc_id_return(2)
    );
\id[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^m_dest_axi_awvalid\,
      I1 => addr_valid_d1,
      O => id0
    );
\id[3]_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCD8"
    )
        port map (
      I0 => \^id_reg[3]_0\,
      I1 => \^id_reg[0]_0\,
      I2 => \^id_reg[0]_1\,
      I3 => \^id_reg[0]_2\,
      O => \id[3]_i_2__1_n_0\
    );
\id_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m_dest_axi_aclk,
      CE => id0,
      D => \id[0]_i_1__1_n_0\,
      Q => \^id_reg[3]_0\,
      R => Q(0)
    );
\id_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m_dest_axi_aclk,
      CE => id0,
      D => inc_id_return(1),
      Q => \^id_reg[0]_2\,
      R => Q(0)
    );
\id_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m_dest_axi_aclk,
      CE => id0,
      D => inc_id_return(2),
      Q => \^id_reg[0]_1\,
      R => Q(0)
    );
\id_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m_dest_axi_aclk,
      CE => id0,
      D => \id[3]_i_2__1_n_0\,
      Q => \^id_reg[0]_0\,
      R => Q(0)
    );
\last_burst_len_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => \^e\(0),
      D => \cdc_sync_fifo_ram_reg[33]\(0),
      Q => last_burst_len(0),
      R => '0'
    );
\last_burst_len_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => \^e\(0),
      D => \cdc_sync_fifo_ram_reg[33]\(1),
      Q => last_burst_len(1),
      R => '0'
    );
\last_burst_len_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => \^e\(0),
      D => \cdc_sync_fifo_ram_reg[33]\(2),
      Q => last_burst_len(2),
      R => '0'
    );
\last_burst_len_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => \^e\(0),
      D => \cdc_sync_fifo_ram_reg[33]\(3),
      Q => last_burst_len(3),
      R => '0'
    );
last_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => p_0_in0,
      D => dest_address_eot,
      Q => last,
      R => '0'
    );
\length[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^m_dest_axi_awvalid\,
      I1 => dest_address_eot,
      O => \length[3]_i_1_n_0\
    );
\length[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^m_dest_axi_awvalid\,
      O => p_0_in0
    );
\length_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => p_0_in0,
      D => last_burst_len(0),
      Q => m_dest_axi_awlen(0),
      S => \length[3]_i_1_n_0\
    );
\length_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => p_0_in0,
      D => last_burst_len(1),
      Q => m_dest_axi_awlen(1),
      S => \length[3]_i_1_n_0\
    );
\length_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => p_0_in0,
      D => last_burst_len(2),
      Q => m_dest_axi_awlen(2),
      S => \length[3]_i_1_n_0\
    );
\length_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => p_0_in0,
      D => last_burst_len(3),
      Q => m_dest_axi_awlen(3),
      S => \length[3]_i_1_n_0\
    );
req_ready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"99F0990099009900"
    )
        port map (
      I0 => s_axis_waddr,
      I1 => m_axis_raddr,
      I2 => last,
      I3 => \^e\(0),
      I4 => m_dest_axi_awready,
      I5 => \^m_dest_axi_awvalid\,
      O => req_ready_i_1_n_0
    );
req_ready_reg: unisim.vcomponents.FDSE
     port map (
      C => m_dest_axi_aclk,
      CE => '1',
      D => req_ready_i_1_n_0,
      Q => \^e\(0),
      S => Q(0)
    );
\up_rdata[10]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5050CFC0"
    )
        port map (
      I0 => Q(0),
      I1 => \^id_reg[0]_1\,
      I2 => \up_raddr_int_reg[2]_0\,
      I3 => \^m_dest_axi_awaddr\(7),
      I4 => \up_raddr_int_reg[2]\,
      O => \up_rdata_reg[10]\
    );
\up_rdata[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => needs_reset_reg,
      I1 => \^id_reg[0]_0\,
      I2 => \up_raddr_int_reg[2]_0\,
      I3 => \^m_dest_axi_awaddr\(8),
      I4 => \up_raddr_int_reg[2]\,
      O => \up_rdata_reg[11]\
    );
\up_rdata[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3202"
    )
        port map (
      I0 => \^m_dest_axi_awaddr\(0),
      I1 => \up_raddr_int_reg[2]\,
      I2 => \up_raddr_int_reg[2]_0\,
      I3 => \src_id_reg[3]\(0),
      O => \up_rdata_reg[3]\
    );
\up_rdata[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5050CFC0"
    )
        port map (
      I0 => Q(0),
      I1 => \^id_reg[3]_0\,
      I2 => \up_raddr_int_reg[2]_0\,
      I3 => \^m_dest_axi_awaddr\(5),
      I4 => \up_raddr_int_reg[2]\,
      O => \up_rdata_reg[8]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_axi_dmac_0_0_dmac_data_mover is
  port (
    \beat_counter_reg[0]_0\ : out STD_LOGIC;
    \id_reg[3]_0\ : out STD_LOGIC;
    \id_reg[3]_1\ : out STD_LOGIC;
    \id_reg[3]_2\ : out STD_LOGIC;
    \id_reg[3]_3\ : out STD_LOGIC;
    \beat_counter_reg[0]_1\ : out STD_LOGIC;
    s_axis_xfer_req : out STD_LOGIC;
    s_axis_ready : out STD_LOGIC;
    valid_reg : out STD_LOGIC;
    src_last : out STD_LOGIC;
    m_axis_raddr_reg : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axis_aclk : in STD_LOGIC;
    \reset_gen[0].reset_sync_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_last : in STD_LOGIC;
    s_axis_valid : in STD_LOGIC;
    src_eot : in STD_LOGIC;
    p_1_out0 : in STD_LOGIC;
    \src_throttled_request_id_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_raddr_reg_0 : in STD_LOGIC;
    s_axis_waddr_reg : in STD_LOGIC
  );
end zsys_axi_dmac_0_0_dmac_data_mover;

architecture STRUCTURE of zsys_axi_dmac_0_0_dmac_data_mover is
  signal active_i_1_n_0 : STD_LOGIC;
  signal \^beat_counter_reg[0]_0\ : STD_LOGIC;
  signal \^beat_counter_reg[0]_1\ : STD_LOGIC;
  signal \beat_counter_reg__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \id[3]_i_2_n_0\ : STD_LOGIC;
  signal id_next : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^id_reg[3]_0\ : STD_LOGIC;
  signal \^id_reg[3]_1\ : STD_LOGIC;
  signal \^id_reg[3]_2\ : STD_LOGIC;
  signal \^id_reg[3]_3\ : STD_LOGIC;
  signal last_burst_length : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal last_eot : STD_LOGIC;
  signal last_eot_i_1_n_0 : STD_LOGIC;
  signal last_eot_i_2_n_0 : STD_LOGIC;
  signal last_eot_i_3_n_0 : STD_LOGIC;
  signal last_non_eot : STD_LOGIC;
  signal last_non_eot_i_2_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal pending_burst_i_1_n_0 : STD_LOGIC;
  signal pending_burst_i_2_n_0 : STD_LOGIC;
  signal pending_burst_i_3_n_0 : STD_LOGIC;
  signal pending_burst_i_4_n_0 : STD_LOGIC;
  signal req_xlast_d : STD_LOGIC;
  signal \^s_axis_xfer_req\ : STD_LOGIC;
  signal src_req_ready : STD_LOGIC;
  signal src_valid : STD_LOGIC;
  signal transfer_abort_i_1_n_0 : STD_LOGIC;
  signal transfer_abort_i_2_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \beat_counter[1]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \beat_counter[2]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \beat_counter[3]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \beat_counter[4]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \id[0]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \id[1]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \id[3]_i_1__0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \id[3]_i_2\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of last_eot_i_3 : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of last_i_1 : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of last_non_eot_i_2 : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of pending_burst_i_2 : label is "soft_lutpair35";
begin
  \beat_counter_reg[0]_0\ <= \^beat_counter_reg[0]_0\;
  \beat_counter_reg[0]_1\ <= \^beat_counter_reg[0]_1\;
  \id_reg[3]_0\ <= \^id_reg[3]_0\;
  \id_reg[3]_1\ <= \^id_reg[3]_1\;
  \id_reg[3]_2\ <= \^id_reg[3]_2\;
  \id_reg[3]_3\ <= \^id_reg[3]_3\;
  s_axis_xfer_req <= \^s_axis_xfer_req\;
active_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FFFFFFF66666666"
    )
        port map (
      I0 => m_axis_raddr_reg_0,
      I1 => s_axis_waddr_reg,
      I2 => src_eot,
      I3 => last_eot,
      I4 => src_valid,
      I5 => \^s_axis_xfer_req\,
      O => active_i_1_n_0
    );
active_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => '1',
      D => active_i_1_n_0,
      Q => \^s_axis_xfer_req\,
      R => \reset_gen[0].reset_sync_reg[0]\(0)
    );
\beat_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \beat_counter_reg__0\(0),
      O => p_0_in(0)
    );
\beat_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \beat_counter_reg__0\(0),
      I1 => \beat_counter_reg__0\(1),
      O => p_0_in(1)
    );
\beat_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \beat_counter_reg__0\(2),
      I1 => \beat_counter_reg__0\(1),
      I2 => \beat_counter_reg__0\(0),
      O => p_0_in(2)
    );
\beat_counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \beat_counter_reg__0\(3),
      I1 => \beat_counter_reg__0\(0),
      I2 => \beat_counter_reg__0\(1),
      I3 => \beat_counter_reg__0\(2),
      O => p_0_in(3)
    );
\beat_counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \beat_counter_reg__0\(4),
      I1 => \beat_counter_reg__0\(2),
      I2 => \beat_counter_reg__0\(1),
      I3 => \beat_counter_reg__0\(0),
      I4 => \beat_counter_reg__0\(3),
      O => p_0_in(4)
    );
\beat_counter_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => src_valid,
      D => p_0_in(0),
      Q => \beat_counter_reg__0\(0),
      S => src_req_ready
    );
\beat_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => src_valid,
      D => p_0_in(1),
      Q => \beat_counter_reg__0\(1),
      R => src_req_ready
    );
\beat_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => src_valid,
      D => p_0_in(2),
      Q => \beat_counter_reg__0\(2),
      R => src_req_ready
    );
\beat_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => src_valid,
      D => p_0_in(3),
      Q => \beat_counter_reg__0\(3),
      R => src_req_ready
    );
\beat_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => src_valid,
      D => p_0_in(4),
      Q => \beat_counter_reg__0\(4),
      R => src_req_ready
    );
\id[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BB8B88B"
    )
        port map (
      I0 => \^id_reg[3]_3\,
      I1 => \id[3]_i_2_n_0\,
      I2 => \^id_reg[3]_2\,
      I3 => \^id_reg[3]_1\,
      I4 => \^id_reg[3]_0\,
      O => id_next(0)
    );
\id[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF9F0090"
    )
        port map (
      I0 => \^id_reg[3]_1\,
      I1 => \^id_reg[3]_0\,
      I2 => \^id_reg[3]_3\,
      I3 => \id[3]_i_2_n_0\,
      I4 => \^id_reg[3]_2\,
      O => id_next(1)
    );
\id[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CC8CCCDC"
    )
        port map (
      I0 => \^id_reg[3]_3\,
      I1 => \^id_reg[3]_1\,
      I2 => \^id_reg[3]_2\,
      I3 => \id[3]_i_2_n_0\,
      I4 => \^id_reg[3]_0\,
      O => id_next(2)
    );
\id[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00FE10"
    )
        port map (
      I0 => \id[3]_i_2_n_0\,
      I1 => \^id_reg[3]_2\,
      I2 => \^id_reg[3]_1\,
      I3 => \^id_reg[3]_0\,
      I4 => \^id_reg[3]_3\,
      O => id_next(3)
    );
\id[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"57F7"
    )
        port map (
      I0 => src_valid,
      I1 => last_non_eot,
      I2 => src_eot,
      I3 => last_eot,
      O => \id[3]_i_2_n_0\
    );
\id_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => '1',
      D => id_next(0),
      Q => \^id_reg[3]_3\,
      R => \reset_gen[0].reset_sync_reg[0]\(0)
    );
\id_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => '1',
      D => id_next(1),
      Q => \^id_reg[3]_2\,
      R => \reset_gen[0].reset_sync_reg[0]\(0)
    );
\id_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => '1',
      D => id_next(2),
      Q => \^id_reg[3]_1\,
      R => \reset_gen[0].reset_sync_reg[0]\(0)
    );
\id_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => '1',
      D => id_next(3),
      Q => \^id_reg[3]_0\,
      R => \reset_gen[0].reset_sync_reg[0]\(0)
    );
\last_burst_length_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => src_req_ready,
      D => '1',
      Q => last_burst_length(0),
      R => '0'
    );
\last_burst_length_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => src_req_ready,
      D => Q(1),
      Q => last_burst_length(1),
      R => '0'
    );
\last_burst_length_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => src_req_ready,
      D => Q(2),
      Q => last_burst_length(2),
      R => '0'
    );
\last_burst_length_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => src_req_ready,
      D => Q(3),
      Q => last_burst_length(3),
      R => '0'
    );
\last_burst_length_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => src_req_ready,
      D => Q(4),
      Q => last_burst_length(4),
      R => '0'
    );
last_eot_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01FF000003000000"
    )
        port map (
      I0 => src_eot,
      I1 => last_eot_i_2_n_0,
      I2 => last_eot_i_3_n_0,
      I3 => src_valid,
      I4 => \^s_axis_xfer_req\,
      I5 => last_eot,
      O => last_eot_i_1_n_0
    );
last_eot_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => last_burst_length(4),
      I1 => \beat_counter_reg__0\(4),
      I2 => \beat_counter_reg__0\(0),
      I3 => last_burst_length(0),
      I4 => \beat_counter_reg__0\(2),
      I5 => last_burst_length(2),
      O => last_eot_i_2_n_0
    );
last_eot_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => last_burst_length(1),
      I1 => \beat_counter_reg__0\(1),
      I2 => last_burst_length(3),
      I3 => \beat_counter_reg__0\(3),
      O => last_eot_i_3_n_0
    );
last_eot_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => '1',
      D => last_eot_i_1_n_0,
      Q => last_eot,
      R => '0'
    );
last_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => last_eot,
      I1 => src_eot,
      I2 => last_non_eot,
      O => src_last
    );
last_non_eot_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E000"
    )
        port map (
      I0 => s_axis_valid,
      I1 => \^beat_counter_reg[0]_1\,
      I2 => \^s_axis_xfer_req\,
      I3 => \^beat_counter_reg[0]_0\,
      O => src_valid
    );
last_non_eot_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \beat_counter_reg__0\(4),
      I1 => \beat_counter_reg__0\(2),
      I2 => \beat_counter_reg__0\(1),
      I3 => \beat_counter_reg__0\(0),
      I4 => \beat_counter_reg__0\(3),
      O => last_non_eot_i_2_n_0
    );
last_non_eot_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => src_valid,
      D => last_non_eot_i_2_n_0,
      Q => last_non_eot,
      R => src_req_ready
    );
m_axis_raddr_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF2AAAD5550000"
    )
        port map (
      I0 => \^s_axis_xfer_req\,
      I1 => src_eot,
      I2 => last_eot,
      I3 => src_valid,
      I4 => s_axis_waddr_reg,
      I5 => m_axis_raddr_reg_0,
      O => m_axis_raddr_reg
    );
pending_burst_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF9FFFFF9F"
    )
        port map (
      I0 => pending_burst_i_2_n_0,
      I1 => \src_throttled_request_id_reg[3]\(1),
      I2 => pending_burst_i_3_n_0,
      I3 => \src_throttled_request_id_reg[3]\(0),
      I4 => id_next(0),
      I5 => pending_burst_i_4_n_0,
      O => pending_burst_i_1_n_0
    );
pending_burst_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"45757545"
    )
        port map (
      I0 => \^id_reg[3]_2\,
      I1 => \id[3]_i_2_n_0\,
      I2 => \^id_reg[3]_3\,
      I3 => \^id_reg[3]_0\,
      I4 => \^id_reg[3]_1\,
      O => pending_burst_i_2_n_0
    );
pending_burst_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A5A595A5A5A5A6A5"
    )
        port map (
      I0 => \src_throttled_request_id_reg[3]\(2),
      I1 => \^id_reg[3]_3\,
      I2 => \^id_reg[3]_1\,
      I3 => \^id_reg[3]_2\,
      I4 => \id[3]_i_2_n_0\,
      I5 => \^id_reg[3]_0\,
      O => pending_burst_i_3_n_0
    );
pending_burst_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5A5A5A5A5A5A596A"
    )
        port map (
      I0 => \src_throttled_request_id_reg[3]\(3),
      I1 => \^id_reg[3]_3\,
      I2 => \^id_reg[3]_0\,
      I3 => \^id_reg[3]_1\,
      I4 => \^id_reg[3]_2\,
      I5 => \id[3]_i_2_n_0\,
      O => pending_burst_i_4_n_0
    );
pending_burst_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => '1',
      D => pending_burst_i_1_n_0,
      Q => \^beat_counter_reg[0]_0\,
      R => '0'
    );
req_xlast_d_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB3333333333333"
    )
        port map (
      I0 => \^beat_counter_reg[0]_0\,
      I1 => \^s_axis_xfer_req\,
      I2 => \^beat_counter_reg[0]_1\,
      I3 => s_axis_valid,
      I4 => last_eot,
      I5 => src_eot,
      O => src_req_ready
    );
req_xlast_d_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => src_req_ready,
      D => Q(0),
      Q => req_xlast_d,
      R => '0'
    );
s_axis_ready_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^beat_counter_reg[0]_1\,
      I1 => \^s_axis_xfer_req\,
      I2 => \^beat_counter_reg[0]_0\,
      O => s_axis_ready
    );
transfer_abort_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000077777000"
    )
        port map (
      I0 => transfer_abort_i_2_n_0,
      I1 => req_xlast_d,
      I2 => src_valid,
      I3 => s_axis_last,
      I4 => \^beat_counter_reg[0]_1\,
      I5 => \reset_gen[0].reset_sync_reg[0]\(0),
      O => transfer_abort_i_1_n_0
    );
transfer_abort_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8880000000000000"
    )
        port map (
      I0 => \^beat_counter_reg[0]_0\,
      I1 => \^s_axis_xfer_req\,
      I2 => \^beat_counter_reg[0]_1\,
      I3 => s_axis_valid,
      I4 => last_eot,
      I5 => src_eot,
      O => transfer_abort_i_2_n_0
    );
transfer_abort_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => '1',
      D => transfer_abort_i_1_n_0,
      Q => \^beat_counter_reg[0]_1\,
      R => '0'
    );
valid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000088800000"
    )
        port map (
      I0 => \^beat_counter_reg[0]_0\,
      I1 => \^s_axis_xfer_req\,
      I2 => \^beat_counter_reg[0]_1\,
      I3 => s_axis_valid,
      I4 => p_1_out0,
      I5 => \reset_gen[0].reset_sync_reg[0]\(0),
      O => valid_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_axi_dmac_0_0_dmac_request_generator is
  port (
    req_gen_ready : out STD_LOGIC;
    \id_reg[2]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    request_eot : out STD_LOGIC;
    \src_throttled_request_id_reg[0]\ : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    do_enable_reg : in STD_LOGIC;
    dbg_ids0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \src_throttled_request_id_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    up_dma_x_length : in STD_LOGIC_VECTOR ( 16 downto 0 );
    acked : in STD_LOGIC_VECTOR ( 0 to 0 );
    up_dma_req_valid : in STD_LOGIC
  );
end zsys_axi_dmac_0_0_dmac_request_generator;

architecture STRUCTURE of zsys_axi_dmac_0_0_dmac_request_generator is
  signal b2g2_return01_out : STD_LOGIC;
  signal b2g2_return03_out : STD_LOGIC;
  signal \burst_count[0]_i_10_n_0\ : STD_LOGIC;
  signal \burst_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \burst_count[0]_i_3_n_0\ : STD_LOGIC;
  signal \burst_count[0]_i_4_n_0\ : STD_LOGIC;
  signal \burst_count[0]_i_5_n_0\ : STD_LOGIC;
  signal \burst_count[0]_i_6_n_0\ : STD_LOGIC;
  signal \burst_count[0]_i_7_n_0\ : STD_LOGIC;
  signal \burst_count[0]_i_8_n_0\ : STD_LOGIC;
  signal \burst_count[0]_i_9_n_0\ : STD_LOGIC;
  signal \burst_count[12]_i_2_n_0\ : STD_LOGIC;
  signal \burst_count[12]_i_3_n_0\ : STD_LOGIC;
  signal \burst_count[12]_i_4_n_0\ : STD_LOGIC;
  signal \burst_count[12]_i_5_n_0\ : STD_LOGIC;
  signal \burst_count[12]_i_6_n_0\ : STD_LOGIC;
  signal \burst_count[12]_i_7_n_0\ : STD_LOGIC;
  signal \burst_count[12]_i_8_n_0\ : STD_LOGIC;
  signal \burst_count[12]_i_9_n_0\ : STD_LOGIC;
  signal \burst_count[16]_i_2_n_0\ : STD_LOGIC;
  signal \burst_count[4]_i_2_n_0\ : STD_LOGIC;
  signal \burst_count[4]_i_3_n_0\ : STD_LOGIC;
  signal \burst_count[4]_i_4_n_0\ : STD_LOGIC;
  signal \burst_count[4]_i_5_n_0\ : STD_LOGIC;
  signal \burst_count[4]_i_6_n_0\ : STD_LOGIC;
  signal \burst_count[4]_i_7_n_0\ : STD_LOGIC;
  signal \burst_count[4]_i_8_n_0\ : STD_LOGIC;
  signal \burst_count[4]_i_9_n_0\ : STD_LOGIC;
  signal \burst_count[8]_i_2_n_0\ : STD_LOGIC;
  signal \burst_count[8]_i_3_n_0\ : STD_LOGIC;
  signal \burst_count[8]_i_4_n_0\ : STD_LOGIC;
  signal \burst_count[8]_i_5_n_0\ : STD_LOGIC;
  signal \burst_count[8]_i_6_n_0\ : STD_LOGIC;
  signal \burst_count[8]_i_7_n_0\ : STD_LOGIC;
  signal \burst_count[8]_i_8_n_0\ : STD_LOGIC;
  signal \burst_count[8]_i_9_n_0\ : STD_LOGIC;
  signal burst_count_reg : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \burst_count_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \burst_count_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \burst_count_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \burst_count_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \burst_count_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \burst_count_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \burst_count_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \burst_count_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \burst_count_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \burst_count_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \burst_count_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \burst_count_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \burst_count_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \burst_count_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \burst_count_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \burst_count_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \burst_count_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \burst_count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \burst_count_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \burst_count_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \burst_count_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \burst_count_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \burst_count_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \burst_count_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \burst_count_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \burst_count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \burst_count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \burst_count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \burst_count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \burst_count_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \burst_count_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \burst_count_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \burst_count_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal eot_mem_reg_r1_0_15_0_0_i_2_n_0 : STD_LOGIC;
  signal eot_mem_reg_r1_0_15_0_0_i_3_n_0 : STD_LOGIC;
  signal eot_mem_reg_r1_0_15_0_0_i_4_n_0 : STD_LOGIC;
  signal \id[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \id[3]_i_1__2_n_0\ : STD_LOGIC;
  signal \id[3]_i_3_n_0\ : STD_LOGIC;
  signal \id[3]_i_4_n_0\ : STD_LOGIC;
  signal \id[3]_i_5_n_0\ : STD_LOGIC;
  signal \^id_reg[2]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_1_in2_in : STD_LOGIC;
  signal \^req_gen_ready\ : STD_LOGIC;
  signal \req_ready_i_1__0_n_0\ : STD_LOGIC;
  signal \^request_eot\ : STD_LOGIC;
  signal \src_throttled_request_id[3]_i_5_n_0\ : STD_LOGIC;
  signal \NLW_burst_count_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_burst_count_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \id[1]_i_1__0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \id[2]_i_1__0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \id[3]_i_2__0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \id[3]_i_4\ : label is "soft_lutpair33";
begin
  \id_reg[2]_0\(3 downto 0) <= \^id_reg[2]_0\(3 downto 0);
  req_gen_ready <= \^req_gen_ready\;
  request_eot <= \^request_eot\;
\burst_count[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^req_gen_ready\,
      I1 => \id[3]_i_3_n_0\,
      O => \burst_count[0]_i_1_n_0\
    );
\burst_count[0]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => burst_count_reg(0),
      I1 => up_dma_x_length(0),
      I2 => \^req_gen_ready\,
      O => \burst_count[0]_i_10_n_0\
    );
\burst_count[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^req_gen_ready\,
      O => \burst_count[0]_i_3_n_0\
    );
\burst_count[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^req_gen_ready\,
      O => \burst_count[0]_i_4_n_0\
    );
\burst_count[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^req_gen_ready\,
      O => \burst_count[0]_i_5_n_0\
    );
\burst_count[0]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^req_gen_ready\,
      O => \burst_count[0]_i_6_n_0\
    );
\burst_count[0]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => burst_count_reg(3),
      I1 => up_dma_x_length(3),
      I2 => \^req_gen_ready\,
      O => \burst_count[0]_i_7_n_0\
    );
\burst_count[0]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => burst_count_reg(2),
      I1 => up_dma_x_length(2),
      I2 => \^req_gen_ready\,
      O => \burst_count[0]_i_8_n_0\
    );
\burst_count[0]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => burst_count_reg(1),
      I1 => up_dma_x_length(1),
      I2 => \^req_gen_ready\,
      O => \burst_count[0]_i_9_n_0\
    );
\burst_count[12]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^req_gen_ready\,
      O => \burst_count[12]_i_2_n_0\
    );
\burst_count[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^req_gen_ready\,
      O => \burst_count[12]_i_3_n_0\
    );
\burst_count[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^req_gen_ready\,
      O => \burst_count[12]_i_4_n_0\
    );
\burst_count[12]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^req_gen_ready\,
      O => \burst_count[12]_i_5_n_0\
    );
\burst_count[12]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => burst_count_reg(15),
      I1 => up_dma_x_length(15),
      I2 => \^req_gen_ready\,
      O => \burst_count[12]_i_6_n_0\
    );
\burst_count[12]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => burst_count_reg(14),
      I1 => up_dma_x_length(14),
      I2 => \^req_gen_ready\,
      O => \burst_count[12]_i_7_n_0\
    );
\burst_count[12]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => burst_count_reg(13),
      I1 => up_dma_x_length(13),
      I2 => \^req_gen_ready\,
      O => \burst_count[12]_i_8_n_0\
    );
\burst_count[12]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => burst_count_reg(12),
      I1 => up_dma_x_length(12),
      I2 => \^req_gen_ready\,
      O => \burst_count[12]_i_9_n_0\
    );
\burst_count[16]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A3"
    )
        port map (
      I0 => up_dma_x_length(16),
      I1 => burst_count_reg(16),
      I2 => \^req_gen_ready\,
      O => \burst_count[16]_i_2_n_0\
    );
\burst_count[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^req_gen_ready\,
      O => \burst_count[4]_i_2_n_0\
    );
\burst_count[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^req_gen_ready\,
      O => \burst_count[4]_i_3_n_0\
    );
\burst_count[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^req_gen_ready\,
      O => \burst_count[4]_i_4_n_0\
    );
\burst_count[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^req_gen_ready\,
      O => \burst_count[4]_i_5_n_0\
    );
\burst_count[4]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => burst_count_reg(7),
      I1 => up_dma_x_length(7),
      I2 => \^req_gen_ready\,
      O => \burst_count[4]_i_6_n_0\
    );
\burst_count[4]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => burst_count_reg(6),
      I1 => up_dma_x_length(6),
      I2 => \^req_gen_ready\,
      O => \burst_count[4]_i_7_n_0\
    );
\burst_count[4]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => burst_count_reg(5),
      I1 => up_dma_x_length(5),
      I2 => \^req_gen_ready\,
      O => \burst_count[4]_i_8_n_0\
    );
\burst_count[4]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => burst_count_reg(4),
      I1 => up_dma_x_length(4),
      I2 => \^req_gen_ready\,
      O => \burst_count[4]_i_9_n_0\
    );
\burst_count[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^req_gen_ready\,
      O => \burst_count[8]_i_2_n_0\
    );
\burst_count[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^req_gen_ready\,
      O => \burst_count[8]_i_3_n_0\
    );
\burst_count[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^req_gen_ready\,
      O => \burst_count[8]_i_4_n_0\
    );
\burst_count[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^req_gen_ready\,
      O => \burst_count[8]_i_5_n_0\
    );
\burst_count[8]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => burst_count_reg(11),
      I1 => up_dma_x_length(11),
      I2 => \^req_gen_ready\,
      O => \burst_count[8]_i_6_n_0\
    );
\burst_count[8]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => burst_count_reg(10),
      I1 => up_dma_x_length(10),
      I2 => \^req_gen_ready\,
      O => \burst_count[8]_i_7_n_0\
    );
\burst_count[8]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => burst_count_reg(9),
      I1 => up_dma_x_length(9),
      I2 => \^req_gen_ready\,
      O => \burst_count[8]_i_8_n_0\
    );
\burst_count[8]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => burst_count_reg(8),
      I1 => up_dma_x_length(8),
      I2 => \^req_gen_ready\,
      O => \burst_count[8]_i_9_n_0\
    );
\burst_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \burst_count[0]_i_1_n_0\,
      D => \burst_count_reg[0]_i_2_n_7\,
      Q => burst_count_reg(0),
      R => '0'
    );
\burst_count_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \burst_count_reg[0]_i_2_n_0\,
      CO(2) => \burst_count_reg[0]_i_2_n_1\,
      CO(1) => \burst_count_reg[0]_i_2_n_2\,
      CO(0) => \burst_count_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \burst_count[0]_i_3_n_0\,
      DI(2) => \burst_count[0]_i_4_n_0\,
      DI(1) => \burst_count[0]_i_5_n_0\,
      DI(0) => \burst_count[0]_i_6_n_0\,
      O(3) => \burst_count_reg[0]_i_2_n_4\,
      O(2) => \burst_count_reg[0]_i_2_n_5\,
      O(1) => \burst_count_reg[0]_i_2_n_6\,
      O(0) => \burst_count_reg[0]_i_2_n_7\,
      S(3) => \burst_count[0]_i_7_n_0\,
      S(2) => \burst_count[0]_i_8_n_0\,
      S(1) => \burst_count[0]_i_9_n_0\,
      S(0) => \burst_count[0]_i_10_n_0\
    );
\burst_count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \burst_count[0]_i_1_n_0\,
      D => \burst_count_reg[8]_i_1_n_5\,
      Q => burst_count_reg(10),
      R => '0'
    );
\burst_count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \burst_count[0]_i_1_n_0\,
      D => \burst_count_reg[8]_i_1_n_4\,
      Q => burst_count_reg(11),
      R => '0'
    );
\burst_count_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \burst_count[0]_i_1_n_0\,
      D => \burst_count_reg[12]_i_1_n_7\,
      Q => burst_count_reg(12),
      R => '0'
    );
\burst_count_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \burst_count_reg[8]_i_1_n_0\,
      CO(3) => \burst_count_reg[12]_i_1_n_0\,
      CO(2) => \burst_count_reg[12]_i_1_n_1\,
      CO(1) => \burst_count_reg[12]_i_1_n_2\,
      CO(0) => \burst_count_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \burst_count[12]_i_2_n_0\,
      DI(2) => \burst_count[12]_i_3_n_0\,
      DI(1) => \burst_count[12]_i_4_n_0\,
      DI(0) => \burst_count[12]_i_5_n_0\,
      O(3) => \burst_count_reg[12]_i_1_n_4\,
      O(2) => \burst_count_reg[12]_i_1_n_5\,
      O(1) => \burst_count_reg[12]_i_1_n_6\,
      O(0) => \burst_count_reg[12]_i_1_n_7\,
      S(3) => \burst_count[12]_i_6_n_0\,
      S(2) => \burst_count[12]_i_7_n_0\,
      S(1) => \burst_count[12]_i_8_n_0\,
      S(0) => \burst_count[12]_i_9_n_0\
    );
\burst_count_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \burst_count[0]_i_1_n_0\,
      D => \burst_count_reg[12]_i_1_n_6\,
      Q => burst_count_reg(13),
      R => '0'
    );
\burst_count_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \burst_count[0]_i_1_n_0\,
      D => \burst_count_reg[12]_i_1_n_5\,
      Q => burst_count_reg(14),
      R => '0'
    );
\burst_count_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \burst_count[0]_i_1_n_0\,
      D => \burst_count_reg[12]_i_1_n_4\,
      Q => burst_count_reg(15),
      R => '0'
    );
\burst_count_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \burst_count[0]_i_1_n_0\,
      D => \burst_count_reg[16]_i_1_n_7\,
      Q => burst_count_reg(16),
      R => '0'
    );
\burst_count_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \burst_count_reg[12]_i_1_n_0\,
      CO(3 downto 0) => \NLW_burst_count_reg[16]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_burst_count_reg[16]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \burst_count_reg[16]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => \burst_count[16]_i_2_n_0\
    );
\burst_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \burst_count[0]_i_1_n_0\,
      D => \burst_count_reg[0]_i_2_n_6\,
      Q => burst_count_reg(1),
      R => '0'
    );
\burst_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \burst_count[0]_i_1_n_0\,
      D => \burst_count_reg[0]_i_2_n_5\,
      Q => burst_count_reg(2),
      R => '0'
    );
\burst_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \burst_count[0]_i_1_n_0\,
      D => \burst_count_reg[0]_i_2_n_4\,
      Q => burst_count_reg(3),
      R => '0'
    );
\burst_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \burst_count[0]_i_1_n_0\,
      D => \burst_count_reg[4]_i_1_n_7\,
      Q => burst_count_reg(4),
      R => '0'
    );
\burst_count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \burst_count_reg[0]_i_2_n_0\,
      CO(3) => \burst_count_reg[4]_i_1_n_0\,
      CO(2) => \burst_count_reg[4]_i_1_n_1\,
      CO(1) => \burst_count_reg[4]_i_1_n_2\,
      CO(0) => \burst_count_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \burst_count[4]_i_2_n_0\,
      DI(2) => \burst_count[4]_i_3_n_0\,
      DI(1) => \burst_count[4]_i_4_n_0\,
      DI(0) => \burst_count[4]_i_5_n_0\,
      O(3) => \burst_count_reg[4]_i_1_n_4\,
      O(2) => \burst_count_reg[4]_i_1_n_5\,
      O(1) => \burst_count_reg[4]_i_1_n_6\,
      O(0) => \burst_count_reg[4]_i_1_n_7\,
      S(3) => \burst_count[4]_i_6_n_0\,
      S(2) => \burst_count[4]_i_7_n_0\,
      S(1) => \burst_count[4]_i_8_n_0\,
      S(0) => \burst_count[4]_i_9_n_0\
    );
\burst_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \burst_count[0]_i_1_n_0\,
      D => \burst_count_reg[4]_i_1_n_6\,
      Q => burst_count_reg(5),
      R => '0'
    );
\burst_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \burst_count[0]_i_1_n_0\,
      D => \burst_count_reg[4]_i_1_n_5\,
      Q => burst_count_reg(6),
      R => '0'
    );
\burst_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \burst_count[0]_i_1_n_0\,
      D => \burst_count_reg[4]_i_1_n_4\,
      Q => burst_count_reg(7),
      R => '0'
    );
\burst_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \burst_count[0]_i_1_n_0\,
      D => \burst_count_reg[8]_i_1_n_7\,
      Q => burst_count_reg(8),
      R => '0'
    );
\burst_count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \burst_count_reg[4]_i_1_n_0\,
      CO(3) => \burst_count_reg[8]_i_1_n_0\,
      CO(2) => \burst_count_reg[8]_i_1_n_1\,
      CO(1) => \burst_count_reg[8]_i_1_n_2\,
      CO(0) => \burst_count_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \burst_count[8]_i_2_n_0\,
      DI(2) => \burst_count[8]_i_3_n_0\,
      DI(1) => \burst_count[8]_i_4_n_0\,
      DI(0) => \burst_count[8]_i_5_n_0\,
      O(3) => \burst_count_reg[8]_i_1_n_4\,
      O(2) => \burst_count_reg[8]_i_1_n_5\,
      O(1) => \burst_count_reg[8]_i_1_n_6\,
      O(0) => \burst_count_reg[8]_i_1_n_7\,
      S(3) => \burst_count[8]_i_6_n_0\,
      S(2) => \burst_count[8]_i_7_n_0\,
      S(1) => \burst_count[8]_i_8_n_0\,
      S(0) => \burst_count[8]_i_9_n_0\
    );
\burst_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \burst_count[0]_i_1_n_0\,
      D => \burst_count_reg[8]_i_1_n_6\,
      Q => burst_count_reg(9),
      R => '0'
    );
eot_mem_reg_r1_0_15_0_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => eot_mem_reg_r1_0_15_0_0_i_2_n_0,
      I1 => eot_mem_reg_r1_0_15_0_0_i_3_n_0,
      I2 => eot_mem_reg_r1_0_15_0_0_i_4_n_0,
      I3 => burst_count_reg(0),
      I4 => burst_count_reg(15),
      I5 => burst_count_reg(1),
      O => \^request_eot\
    );
eot_mem_reg_r1_0_15_0_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => burst_count_reg(4),
      I1 => burst_count_reg(3),
      I2 => burst_count_reg(5),
      I3 => burst_count_reg(11),
      I4 => burst_count_reg(9),
      I5 => burst_count_reg(12),
      O => eot_mem_reg_r1_0_15_0_0_i_2_n_0
    );
eot_mem_reg_r1_0_15_0_0_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => burst_count_reg(6),
      I1 => burst_count_reg(2),
      I2 => burst_count_reg(16),
      I3 => burst_count_reg(13),
      O => eot_mem_reg_r1_0_15_0_0_i_3_n_0
    );
eot_mem_reg_r1_0_15_0_0_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => burst_count_reg(8),
      I1 => burst_count_reg(7),
      I2 => burst_count_reg(14),
      I3 => burst_count_reg(10),
      O => eot_mem_reg_r1_0_15_0_0_i_4_n_0
    );
\id[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^id_reg[2]_0\(1),
      I1 => \^id_reg[2]_0\(2),
      I2 => \^id_reg[2]_0\(3),
      O => \id[0]_i_1__0_n_0\
    );
\id[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E22E"
    )
        port map (
      I0 => \^id_reg[2]_0\(1),
      I1 => \^id_reg[2]_0\(0),
      I2 => \^id_reg[2]_0\(2),
      I3 => \^id_reg[2]_0\(3),
      O => b2g2_return01_out
    );
\id[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CC4E"
    )
        port map (
      I0 => \^id_reg[2]_0\(1),
      I1 => \^id_reg[2]_0\(2),
      I2 => \^id_reg[2]_0\(3),
      I3 => \^id_reg[2]_0\(0),
      O => b2g2_return03_out
    );
\id[3]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^req_gen_ready\,
      I1 => \id[3]_i_3_n_0\,
      O => \id[3]_i_1__2_n_0\
    );
\id[3]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0E4"
    )
        port map (
      I0 => \^id_reg[2]_0\(1),
      I1 => \^id_reg[2]_0\(2),
      I2 => \^id_reg[2]_0\(3),
      I3 => \^id_reg[2]_0\(0),
      O => p_1_in2_in
    );
\id[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555555557D55557D"
    )
        port map (
      I0 => do_enable_reg,
      I1 => dbg_ids0(1),
      I2 => \id[3]_i_4_n_0\,
      I3 => \id[0]_i_1__0_n_0\,
      I4 => dbg_ids0(0),
      I5 => \id[3]_i_5_n_0\,
      O => \id[3]_i_3_n_0\
    );
\id[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"606F"
    )
        port map (
      I0 => \^id_reg[2]_0\(3),
      I1 => \^id_reg[2]_0\(2),
      I2 => \^id_reg[2]_0\(0),
      I3 => \^id_reg[2]_0\(1),
      O => \id[3]_i_4_n_0\
    );
\id[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FAF5DBFF5F9F7EA"
    )
        port map (
      I0 => dbg_ids0(2),
      I1 => \^id_reg[2]_0\(0),
      I2 => \^id_reg[2]_0\(3),
      I3 => \^id_reg[2]_0\(2),
      I4 => \^id_reg[2]_0\(1),
      I5 => dbg_ids0(3),
      O => \id[3]_i_5_n_0\
    );
\id_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \id[3]_i_1__2_n_0\,
      D => \id[0]_i_1__0_n_0\,
      Q => \^id_reg[2]_0\(0),
      R => Q(0)
    );
\id_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \id[3]_i_1__2_n_0\,
      D => b2g2_return01_out,
      Q => \^id_reg[2]_0\(1),
      R => Q(0)
    );
\id_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \id[3]_i_1__2_n_0\,
      D => b2g2_return03_out,
      Q => \^id_reg[2]_0\(2),
      R => Q(0)
    );
\id_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \id[3]_i_1__2_n_0\,
      D => p_1_in2_in,
      Q => \^id_reg[2]_0\(3),
      R => Q(0)
    );
\req_ready_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AE04AEAEAEAEAEAE"
    )
        port map (
      I0 => \^req_gen_ready\,
      I1 => \^request_eot\,
      I2 => \id[3]_i_3_n_0\,
      I3 => acked(0),
      I4 => do_enable_reg,
      I5 => up_dma_req_valid,
      O => \req_ready_i_1__0_n_0\
    );
req_ready_reg: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \req_ready_i_1__0_n_0\,
      Q => \^req_gen_ready\,
      S => Q(0)
    );
\src_throttled_request_id[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00009009"
    )
        port map (
      I0 => \src_throttled_request_id_reg[3]\(3),
      I1 => \^id_reg[2]_0\(3),
      I2 => \src_throttled_request_id_reg[3]\(2),
      I3 => \^id_reg[2]_0\(2),
      I4 => \src_throttled_request_id[3]_i_5_n_0\,
      O => \src_throttled_request_id_reg[0]\
    );
\src_throttled_request_id[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \src_throttled_request_id_reg[3]\(1),
      I1 => \^id_reg[2]_0\(1),
      I2 => \src_throttled_request_id_reg[3]\(0),
      I3 => \^id_reg[2]_0\(0),
      O => \src_throttled_request_id[3]_i_5_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_axi_dmac_0_0_dmac_response_handler is
  port (
    \id_reg[0]_0\ : out STD_LOGIC;
    \id_reg[0]_1\ : out STD_LOGIC;
    \id_reg[0]_2\ : out STD_LOGIC;
    \id_reg[3]_0\ : out STD_LOGIC;
    enabled_reg_0 : out STD_LOGIC;
    enabled_reg_1 : out STD_LOGIC;
    \up_rdata_reg[26]\ : out STD_LOGIC;
    \up_rdata_reg[24]\ : out STD_LOGIC;
    \up_rdata_reg[25]\ : out STD_LOGIC;
    \up_rdata_reg[27]\ : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    id0 : in STD_LOGIC;
    m_dest_axi_aclk : in STD_LOGIC;
    dbg_ids0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \id_reg[1]_0\ : in STD_LOGIC;
    \up_raddr_int_reg[2]\ : in STD_LOGIC;
    \up_raddr_int_reg[2]_0\ : in STD_LOGIC;
    m_dest_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    address_enabled : in STD_LOGIC
  );
end zsys_axi_dmac_0_0_dmac_response_handler;

architecture STRUCTURE of zsys_axi_dmac_0_0_dmac_response_handler is
  signal \enabled_i_1__0_n_0\ : STD_LOGIC;
  signal \^enabled_reg_0\ : STD_LOGIC;
  signal \^enabled_reg_1\ : STD_LOGIC;
  signal \id[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \id[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \^id_reg[0]_0\ : STD_LOGIC;
  signal \^id_reg[0]_1\ : STD_LOGIC;
  signal \^id_reg[0]_2\ : STD_LOGIC;
  signal \^id_reg[3]_0\ : STD_LOGIC;
  signal inc_id_return : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal m_dest_axi_bready_INST_0_i_2_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \id[0]_i_1__2\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \id[1]_i_1__2\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \id[2]_i_1__2\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \id[3]_i_1__1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \up_rdata[24]_i_2\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \up_rdata[25]_i_2\ : label is "soft_lutpair30";
begin
  enabled_reg_0 <= \^enabled_reg_0\;
  enabled_reg_1 <= \^enabled_reg_1\;
  \id_reg[0]_0\ <= \^id_reg[0]_0\;
  \id_reg[0]_1\ <= \^id_reg[0]_1\;
  \id_reg[0]_2\ <= \^id_reg[0]_2\;
  \id_reg[3]_0\ <= \^id_reg[3]_0\;
\enabled_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => address_enabled,
      I1 => \^enabled_reg_1\,
      I2 => \^enabled_reg_0\,
      O => \enabled_i_1__0_n_0\
    );
enabled_reg: unisim.vcomponents.FDRE
     port map (
      C => m_dest_axi_aclk,
      CE => '1',
      D => \enabled_i_1__0_n_0\,
      Q => \^enabled_reg_0\,
      R => Q(0)
    );
\id[0]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^id_reg[0]_2\,
      I1 => \^id_reg[0]_1\,
      I2 => \^id_reg[0]_0\,
      O => \id[0]_i_1__2_n_0\
    );
\id[1]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D782"
    )
        port map (
      I0 => \^id_reg[3]_0\,
      I1 => \^id_reg[0]_0\,
      I2 => \^id_reg[0]_1\,
      I3 => \^id_reg[0]_2\,
      O => inc_id_return(1)
    );
\id[2]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CC4E"
    )
        port map (
      I0 => \^id_reg[0]_2\,
      I1 => \^id_reg[0]_1\,
      I2 => \^id_reg[0]_0\,
      I3 => \^id_reg[3]_0\,
      O => inc_id_return(2)
    );
\id[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCD8"
    )
        port map (
      I0 => \^id_reg[3]_0\,
      I1 => \^id_reg[0]_0\,
      I2 => \^id_reg[0]_1\,
      I3 => \^id_reg[0]_2\,
      O => \id[3]_i_1__1_n_0\
    );
\id_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m_dest_axi_aclk,
      CE => id0,
      D => \id[0]_i_1__2_n_0\,
      Q => \^id_reg[3]_0\,
      R => Q(0)
    );
\id_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m_dest_axi_aclk,
      CE => id0,
      D => inc_id_return(1),
      Q => \^id_reg[0]_2\,
      R => Q(0)
    );
\id_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m_dest_axi_aclk,
      CE => id0,
      D => inc_id_return(2),
      Q => \^id_reg[0]_1\,
      R => Q(0)
    );
\id_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m_dest_axi_aclk,
      CE => id0,
      D => \id[3]_i_1__1_n_0\,
      Q => \^id_reg[0]_0\,
      R => Q(0)
    );
m_dest_axi_bready_INST_0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00009009"
    )
        port map (
      I0 => dbg_ids0(2),
      I1 => \^id_reg[0]_0\,
      I2 => dbg_ids0(1),
      I3 => \^id_reg[0]_1\,
      I4 => m_dest_axi_bready_INST_0_i_2_n_0,
      O => \^enabled_reg_1\
    );
m_dest_axi_bready_INST_0_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \^id_reg[0]_2\,
      I1 => \id_reg[1]_0\,
      I2 => \^id_reg[3]_0\,
      I3 => dbg_ids0(0),
      O => m_dest_axi_bready_INST_0_i_2_n_0
    );
\up_rdata[24]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^id_reg[3]_0\,
      I1 => \up_raddr_int_reg[2]\,
      I2 => m_dest_axi_awaddr(0),
      O => \up_rdata_reg[24]\
    );
\up_rdata[25]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^id_reg[0]_2\,
      I1 => \up_raddr_int_reg[2]\,
      I2 => m_dest_axi_awaddr(1),
      O => \up_rdata_reg[25]\
    );
\up_rdata[26]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F4F7"
    )
        port map (
      I0 => \^id_reg[0]_1\,
      I1 => \up_raddr_int_reg[2]\,
      I2 => \up_raddr_int_reg[2]_0\,
      I3 => m_dest_axi_awaddr(2),
      O => \up_rdata_reg[26]\
    );
\up_rdata[27]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^id_reg[0]_0\,
      I1 => \up_raddr_int_reg[2]\,
      I2 => m_dest_axi_awaddr(3),
      O => \up_rdata_reg[27]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_axi_dmac_0_0_splitter is
  port (
    \acked_reg[2]_0\ : out STD_LOGIC;
    acked : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_waddr : in STD_LOGIC;
    m_axis_raddr : in STD_LOGIC;
    src_req_valid : in STD_LOGIC;
    req_gen_ready : in STD_LOGIC;
    do_enable_reg : in STD_LOGIC;
    up_dma_req_valid : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \reset_gen[0].reset_sync_reg[0]\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC
  );
end zsys_axi_dmac_0_0_splitter;

architecture STRUCTURE of zsys_axi_dmac_0_0_splitter is
  signal \^acked\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \acked[0]_i_1_n_0\ : STD_LOGIC;
  signal \acked[1]_i_1_n_0\ : STD_LOGIC;
  signal \acked[2]_i_1_n_0\ : STD_LOGIC;
  signal \^acked_reg[2]_0\ : STD_LOGIC;
  signal \up_transfer_id[1]_i_4_n_0\ : STD_LOGIC;
begin
  acked(2 downto 0) <= \^acked\(2 downto 0);
  \acked_reg[2]_0\ <= \^acked_reg[2]_0\;
\acked[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000E"
    )
        port map (
      I0 => E(0),
      I1 => \^acked\(0),
      I2 => \^acked_reg[2]_0\,
      I3 => Q(0),
      O => \acked[0]_i_1_n_0\
    );
\acked[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF9000"
    )
        port map (
      I0 => m_axis_raddr,
      I1 => s_axis_waddr,
      I2 => do_enable_reg,
      I3 => up_dma_req_valid,
      I4 => \^acked\(1),
      I5 => \reset_gen[0].reset_sync_reg[0]\,
      O => \acked[1]_i_1_n_0\
    );
\acked[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FF80"
    )
        port map (
      I0 => do_enable_reg,
      I1 => up_dma_req_valid,
      I2 => req_gen_ready,
      I3 => \^acked\(2),
      I4 => \^acked_reg[2]_0\,
      I5 => Q(0),
      O => \acked[2]_i_1_n_0\
    );
\acked_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \acked[0]_i_1_n_0\,
      Q => \^acked\(0),
      R => '0'
    );
\acked_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \acked[1]_i_1_n_0\,
      Q => \^acked\(1),
      R => '0'
    );
\acked_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \acked[2]_i_1_n_0\,
      Q => \^acked\(2),
      R => '0'
    );
\up_transfer_id[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F9F900F9"
    )
        port map (
      I0 => s_axis_waddr,
      I1 => m_axis_raddr,
      I2 => \^acked\(1),
      I3 => src_req_valid,
      I4 => \^acked\(0),
      I5 => \up_transfer_id[1]_i_4_n_0\,
      O => \^acked_reg[2]_0\
    );
\up_transfer_id[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FFF"
    )
        port map (
      I0 => \^acked\(2),
      I1 => req_gen_ready,
      I2 => do_enable_reg,
      I3 => up_dma_req_valid,
      O => \up_transfer_id[1]_i_4_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_axi_dmac_0_0_up_axi is
  port (
    \up_rdata_d_reg[31]_0\ : out STD_LOGIC;
    up_wreq : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC;
    up_dma_req_valid_reg : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \up_dma_x_length_reg[3]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \up_scratch_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \up_irq_mask_reg[0]\ : out STD_LOGIC;
    \up_dma_dest_address_reg[31]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \up_rdata_reg[31]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \up_rdata_reg[9]\ : out STD_LOGIC;
    \up_rdata_reg[9]_0\ : out STD_LOGIC;
    \up_rdata_reg[9]_1\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \up_rdata_reg[5]\ : out STD_LOGIC;
    \up_rdata_reg[1]\ : out STD_LOGIC;
    up_dma_last_reg : out STD_LOGIC;
    ctrl_pause_reg : out STD_LOGIC;
    ctrl_enable_reg : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    up_sot : in STD_LOGIC;
    ctrl_enable_reg_0 : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    up_dma_req_valid : in STD_LOGIC;
    \up_irq_source_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    up_req_eot : in STD_LOGIC;
    up_wack : in STD_LOGIC;
    up_rack : in STD_LOGIC;
    \up_irq_mask_reg[0]_0\ : in STD_LOGIC;
    \up_irq_mask_reg[1]\ : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    dbg_status : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dbg_ids0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \up_transfer_id_reg[1]\ : in STD_LOGIC;
    dbg_ids1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \up_scratch_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \src_id_reg[2]\ : in STD_LOGIC;
    \up_dma_dest_address_reg[31]_0\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \up_dma_x_length_reg[5]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \up_dma_dest_address_reg[6]\ : in STD_LOGIC;
    m_dest_axi_awaddr : in STD_LOGIC_VECTOR ( 19 downto 0 );
    \reset_gen[0].reset_sync_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \id_reg[2]\ : in STD_LOGIC;
    \id_reg[3]\ : in STD_LOGIC;
    \id_reg[1]\ : in STD_LOGIC;
    \id_reg[0]\ : in STD_LOGIC;
    \up_dma_dest_address_reg[19]\ : in STD_LOGIC;
    \dest_id_reg[3]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \up_dma_dest_address_reg[18]\ : in STD_LOGIC;
    \dest_id_reg[1]\ : in STD_LOGIC;
    \up_dma_dest_address_reg[17]\ : in STD_LOGIC;
    \up_dma_dest_address_reg[16]\ : in STD_LOGIC;
    \up_dma_dest_address_reg[7]\ : in STD_LOGIC;
    \up_dma_dest_address_reg[12]\ : in STD_LOGIC;
    \up_dma_dest_address_reg[13]\ : in STD_LOGIC;
    \up_dma_dest_address_reg[15]\ : in STD_LOGIC;
    \up_dma_dest_address_reg[20]\ : in STD_LOGIC;
    \up_dma_dest_address_reg[21]\ : in STD_LOGIC;
    \up_dma_dest_address_reg[23]\ : in STD_LOGIC;
    \address_reg[0]\ : in STD_LOGIC;
    \up_dma_x_length_reg[22]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    needs_reset_reg : in STD_LOGIC;
    \up_dma_dest_address_reg[11]\ : in STD_LOGIC;
    \up_dma_dest_address_reg[10]\ : in STD_LOGIC;
    \reset_gen[0].reset_sync_reg[0]_0\ : in STD_LOGIC;
    \reset_gen[0].reset_sync_reg[0]_1\ : in STD_LOGIC;
    \up_dma_dest_address_reg[8]\ : in STD_LOGIC;
    \up_dma_dest_address_reg[4]\ : in STD_LOGIC;
    \up_transfer_done_bitmap_reg[3]\ : in STD_LOGIC;
    \up_transfer_done_bitmap_reg[0]\ : in STD_LOGIC;
    \up_transfer_id_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \up_transfer_id_eot_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    ctrl_pause : in STD_LOGIC;
    \up_rdata_reg[31]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \up_transfer_done_bitmap_reg[2]\ : in STD_LOGIC;
    \up_transfer_done_bitmap_reg[1]\ : in STD_LOGIC;
    \up_dma_dest_address_reg[9]\ : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
end zsys_axi_dmac_0_0_up_axi;

architecture STRUCTURE of zsys_axi_dmac_0_0_up_axi is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ctrl_enable_i_2_n_0 : STD_LOGIC;
  signal \i_regmap_request/up_dma_req_valid0\ : STD_LOGIC;
  signal p_0_in6_in : STD_LOGIC;
  signal p_0_in7_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_5_in : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal up_axi_arready_int_i_1_n_0 : STD_LOGIC;
  signal up_axi_arready_int_i_2_n_0 : STD_LOGIC;
  signal up_axi_awready_int_i_2_n_0 : STD_LOGIC;
  signal up_axi_bvalid_int_i_1_n_0 : STD_LOGIC;
  signal \up_axi_rdata_int[31]_i_1_n_0\ : STD_LOGIC;
  signal up_axi_rvalid_int_i_1_n_0 : STD_LOGIC;
  signal up_axi_wready_int_i_1_n_0 : STD_LOGIC;
  signal \up_dma_dest_address[31]_i_2_n_0\ : STD_LOGIC;
  signal up_dma_last_i_2_n_0 : STD_LOGIC;
  signal \up_dma_x_length[23]_i_2_n_0\ : STD_LOGIC;
  signal \up_dma_x_length[23]_i_3_n_0\ : STD_LOGIC;
  signal \up_irq_mask[1]_i_3_n_0\ : STD_LOGIC;
  signal \up_irq_source[1]_i_2_n_0\ : STD_LOGIC;
  signal up_rack_d : STD_LOGIC;
  signal up_rack_s : STD_LOGIC;
  signal up_raddr : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \up_rcount[0]_i_1_n_0\ : STD_LOGIC;
  signal \up_rcount[1]_i_1_n_0\ : STD_LOGIC;
  signal \up_rcount[2]_i_1_n_0\ : STD_LOGIC;
  signal \up_rcount[3]_i_1_n_0\ : STD_LOGIC;
  signal \up_rcount[4]_i_1_n_0\ : STD_LOGIC;
  signal \up_rcount[4]_i_2_n_0\ : STD_LOGIC;
  signal \up_rcount_reg_n_0_[0]\ : STD_LOGIC;
  signal \up_rcount_reg_n_0_[1]\ : STD_LOGIC;
  signal \up_rcount_reg_n_0_[2]\ : STD_LOGIC;
  signal \up_rcount_reg_n_0_[3]\ : STD_LOGIC;
  signal \up_rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[0]_i_3_n_0\ : STD_LOGIC;
  signal \up_rdata[0]_i_4_n_0\ : STD_LOGIC;
  signal \up_rdata[0]_i_5_n_0\ : STD_LOGIC;
  signal \up_rdata[0]_i_6_n_0\ : STD_LOGIC;
  signal \up_rdata[0]_i_7_n_0\ : STD_LOGIC;
  signal \up_rdata[0]_i_8_n_0\ : STD_LOGIC;
  signal \up_rdata[14]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[16]_i_3_n_0\ : STD_LOGIC;
  signal \up_rdata[18]_i_4_n_0\ : STD_LOGIC;
  signal \up_rdata[18]_i_5_n_0\ : STD_LOGIC;
  signal \up_rdata[18]_i_6_n_0\ : STD_LOGIC;
  signal \up_rdata[19]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[1]_i_3_n_0\ : STD_LOGIC;
  signal \up_rdata[1]_i_4_n_0\ : STD_LOGIC;
  signal \up_rdata[1]_i_5_n_0\ : STD_LOGIC;
  signal \up_rdata[1]_i_6_n_0\ : STD_LOGIC;
  signal \up_rdata[1]_i_7_n_0\ : STD_LOGIC;
  signal \up_rdata[21]_i_3_n_0\ : STD_LOGIC;
  signal \up_rdata[22]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[23]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[23]_i_3_n_0\ : STD_LOGIC;
  signal \up_rdata[23]_i_4_n_0\ : STD_LOGIC;
  signal \up_rdata[23]_i_6_n_0\ : STD_LOGIC;
  signal \up_rdata[23]_i_7_n_0\ : STD_LOGIC;
  signal \up_rdata[23]_i_8_n_0\ : STD_LOGIC;
  signal \up_rdata[24]_i_3_n_0\ : STD_LOGIC;
  signal \up_rdata[25]_i_3_n_0\ : STD_LOGIC;
  signal \up_rdata[26]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[26]_i_4_n_0\ : STD_LOGIC;
  signal \up_rdata[26]_i_5_n_0\ : STD_LOGIC;
  signal \up_rdata[26]_i_6_n_0\ : STD_LOGIC;
  signal \up_rdata[27]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[27]_i_3_n_0\ : STD_LOGIC;
  signal \up_rdata[27]_i_5_n_0\ : STD_LOGIC;
  signal \up_rdata[27]_i_6_n_0\ : STD_LOGIC;
  signal \up_rdata[27]_i_7_n_0\ : STD_LOGIC;
  signal \up_rdata[28]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[29]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[2]_i_4_n_0\ : STD_LOGIC;
  signal \up_rdata[30]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[31]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[31]_i_4_n_0\ : STD_LOGIC;
  signal \up_rdata[3]_i_3_n_0\ : STD_LOGIC;
  signal \up_rdata[3]_i_4_n_0\ : STD_LOGIC;
  signal \up_rdata[3]_i_5_n_0\ : STD_LOGIC;
  signal \up_rdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[5]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[5]_i_3_n_0\ : STD_LOGIC;
  signal \up_rdata[6]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[8]_i_3_n_0\ : STD_LOGIC;
  signal \up_rdata[9]_i_3_n_0\ : STD_LOGIC;
  signal \up_rdata[9]_i_4_n_0\ : STD_LOGIC;
  signal \up_rdata[9]_i_6_n_0\ : STD_LOGIC;
  signal \up_rdata[9]_i_7_n_0\ : STD_LOGIC;
  signal \up_rdata[9]_i_8_n_0\ : STD_LOGIC;
  signal up_rdata_d : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \up_rdata_d[0]_i_1_n_0\ : STD_LOGIC;
  signal \up_rdata_d[10]_i_1_n_0\ : STD_LOGIC;
  signal \up_rdata_d[11]_i_1_n_0\ : STD_LOGIC;
  signal \up_rdata_d[12]_i_1_n_0\ : STD_LOGIC;
  signal \up_rdata_d[14]_i_1_n_0\ : STD_LOGIC;
  signal \up_rdata_d[15]_i_1_n_0\ : STD_LOGIC;
  signal \up_rdata_d[16]_i_1_n_0\ : STD_LOGIC;
  signal \up_rdata_d[18]_i_1_n_0\ : STD_LOGIC;
  signal \up_rdata_d[19]_i_1_n_0\ : STD_LOGIC;
  signal \up_rdata_d[21]_i_1_n_0\ : STD_LOGIC;
  signal \up_rdata_d[23]_i_1_n_0\ : STD_LOGIC;
  signal \up_rdata_d[25]_i_1_n_0\ : STD_LOGIC;
  signal \up_rdata_d[26]_i_1_n_0\ : STD_LOGIC;
  signal \up_rdata_d[27]_i_1_n_0\ : STD_LOGIC;
  signal \up_rdata_d[28]_i_1_n_0\ : STD_LOGIC;
  signal \up_rdata_d[29]_i_1_n_0\ : STD_LOGIC;
  signal \up_rdata_d[2]_i_1_n_0\ : STD_LOGIC;
  signal \up_rdata_d[30]_i_1_n_0\ : STD_LOGIC;
  signal \up_rdata_d[31]_i_1_n_0\ : STD_LOGIC;
  signal \up_rdata_d[3]_i_1_n_0\ : STD_LOGIC;
  signal \up_rdata_d[5]_i_1_n_0\ : STD_LOGIC;
  signal \up_rdata_d[7]_i_1_n_0\ : STD_LOGIC;
  signal \up_rdata_d[9]_i_1_n_0\ : STD_LOGIC;
  signal \^up_rdata_d_reg[31]_0\ : STD_LOGIC;
  signal \^up_rdata_reg[5]\ : STD_LOGIC;
  signal \^up_rdata_reg[9]\ : STD_LOGIC;
  signal \^up_rdata_reg[9]_0\ : STD_LOGIC;
  signal \^up_rdata_reg[9]_1\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal up_rreq_int_i_1_n_0 : STD_LOGIC;
  signal up_rsel_i_1_n_0 : STD_LOGIC;
  signal up_rsel_reg_n_0 : STD_LOGIC;
  signal \up_scratch[31]_i_2_n_0\ : STD_LOGIC;
  signal \up_scratch[31]_i_3_n_0\ : STD_LOGIC;
  signal up_wack_d : STD_LOGIC;
  signal up_wack_s : STD_LOGIC;
  signal up_waddr : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \up_wcount[0]_i_1_n_0\ : STD_LOGIC;
  signal \up_wcount[1]_i_1_n_0\ : STD_LOGIC;
  signal \up_wcount[2]_i_1_n_0\ : STD_LOGIC;
  signal \up_wcount[3]_i_1_n_0\ : STD_LOGIC;
  signal \up_wcount[4]_i_1_n_0\ : STD_LOGIC;
  signal \up_wcount[4]_i_2_n_0\ : STD_LOGIC;
  signal \up_wcount_reg_n_0_[0]\ : STD_LOGIC;
  signal \up_wcount_reg_n_0_[1]\ : STD_LOGIC;
  signal \up_wcount_reg_n_0_[2]\ : STD_LOGIC;
  signal \up_wcount_reg_n_0_[3]\ : STD_LOGIC;
  signal \^up_wreq\ : STD_LOGIC;
  signal up_wreq_int_i_1_n_0 : STD_LOGIC;
  signal up_wsel_i_1_n_0 : STD_LOGIC;
  signal up_wsel_reg_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of up_axi_awready_int_i_2 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of up_axi_wready_int_i_1 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \up_dma_dest_address[31]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of up_dma_last_i_2 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of up_dma_req_valid_i_2 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \up_dma_x_length[23]_i_3\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \up_irq_mask[1]_i_3\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \up_rcount[1]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \up_rcount[2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \up_rdata[0]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \up_rdata[0]_i_4\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \up_rdata[0]_i_7\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \up_rdata[18]_i_4\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \up_rdata[1]_i_4\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \up_rdata[1]_i_5\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \up_rdata[1]_i_6\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \up_rdata[1]_i_7\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \up_rdata[1]_i_9\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \up_rdata[21]_i_3\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \up_rdata[23]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \up_rdata[23]_i_8\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \up_rdata[26]_i_4\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \up_rdata[26]_i_5\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \up_rdata[26]_i_6\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \up_rdata[27]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \up_rdata[27]_i_3\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \up_rdata[27]_i_5\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \up_rdata[27]_i_7\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \up_rdata[2]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \up_rdata[31]_i_3\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \up_rdata[31]_i_4\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \up_rdata[5]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \up_rdata[8]_i_3\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \up_rdata[9]_i_3\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \up_rdata[9]_i_6\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \up_scratch[31]_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \up_wcount[1]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \up_wcount[2]_i_1\ : label is "soft_lutpair14";
begin
  E(0) <= \^e\(0);
  Q(31 downto 0) <= \^q\(31 downto 0);
  s_axi_arready <= \^s_axi_arready\;
  s_axi_awready <= \^s_axi_awready\;
  s_axi_bvalid <= \^s_axi_bvalid\;
  s_axi_rvalid <= \^s_axi_rvalid\;
  s_axi_wready <= \^s_axi_wready\;
  \up_rdata_d_reg[31]_0\ <= \^up_rdata_d_reg[31]_0\;
  \up_rdata_reg[5]\ <= \^up_rdata_reg[5]\;
  \up_rdata_reg[9]\ <= \^up_rdata_reg[9]\;
  \up_rdata_reg[9]_0\ <= \^up_rdata_reg[9]_0\;
  \up_rdata_reg[9]_1\(1 downto 0) <= \^up_rdata_reg[9]_1\(1 downto 0);
  up_wreq <= \^up_wreq\;
ctrl_enable_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => \^q\(0),
      I1 => ctrl_enable_i_2_n_0,
      I2 => up_waddr(2),
      I3 => \up_dma_x_length[23]_i_2_n_0\,
      I4 => up_waddr(1),
      I5 => ctrl_enable_reg_0,
      O => ctrl_enable_reg
    );
ctrl_enable_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010000000000"
    )
        port map (
      I0 => up_waddr(5),
      I1 => up_waddr(6),
      I2 => up_waddr(0),
      I3 => up_waddr(8),
      I4 => up_waddr(7),
      I5 => \^up_wreq\,
      O => ctrl_enable_i_2_n_0
    );
ctrl_pause_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => \^q\(1),
      I1 => ctrl_enable_i_2_n_0,
      I2 => up_waddr(2),
      I3 => \up_dma_x_length[23]_i_2_n_0\,
      I4 => up_waddr(1),
      I5 => ctrl_pause,
      O => ctrl_pause_reg
    );
up_axi_arready_int_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5540"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => up_rack,
      I2 => p_0_in6_in,
      I3 => up_axi_arready_int_i_2_n_0,
      O => up_axi_arready_int_i_1_n_0
    );
up_axi_arready_int_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => p_0_in6_in,
      I1 => \up_rcount_reg_n_0_[1]\,
      I2 => \up_rcount_reg_n_0_[0]\,
      I3 => \up_rcount_reg_n_0_[2]\,
      I4 => \up_rcount_reg_n_0_[3]\,
      O => up_axi_arready_int_i_2_n_0
    );
up_axi_arready_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_axi_arready_int_i_1_n_0,
      Q => \^s_axi_arready\,
      R => \^up_rdata_d_reg[31]_0\
    );
up_axi_awready_int_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_aresetn,
      O => \^up_rdata_d_reg[31]_0\
    );
up_axi_awready_int_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \^s_axi_awready\,
      I1 => up_wack_s,
      O => up_axi_awready_int_i_2_n_0
    );
up_axi_awready_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_axi_awready_int_i_2_n_0,
      Q => \^s_axi_awready\,
      R => \^up_rdata_d_reg[31]_0\
    );
up_axi_bvalid_int_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0C88"
    )
        port map (
      I0 => up_wack_d,
      I1 => s_axi_aresetn,
      I2 => s_axi_bready,
      I3 => \^s_axi_bvalid\,
      O => up_axi_bvalid_int_i_1_n_0
    );
up_axi_bvalid_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_axi_bvalid_int_i_1_n_0,
      Q => \^s_axi_bvalid\,
      R => '0'
    );
\up_axi_rdata_int[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \^s_axi_rvalid\,
      I2 => s_axi_aresetn,
      O => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(0),
      Q => s_axi_rdata(0),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(10),
      Q => s_axi_rdata(10),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(11),
      Q => s_axi_rdata(11),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(12),
      Q => s_axi_rdata(12),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(13),
      Q => s_axi_rdata(13),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(14),
      Q => s_axi_rdata(14),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(15),
      Q => s_axi_rdata(15),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(16),
      Q => s_axi_rdata(16),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(17),
      Q => s_axi_rdata(17),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(18),
      Q => s_axi_rdata(18),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(19),
      Q => s_axi_rdata(19),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(1),
      Q => s_axi_rdata(1),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(20),
      Q => s_axi_rdata(20),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(21),
      Q => s_axi_rdata(21),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(22),
      Q => s_axi_rdata(22),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(23),
      Q => s_axi_rdata(23),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(24),
      Q => s_axi_rdata(24),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(25),
      Q => s_axi_rdata(25),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(26),
      Q => s_axi_rdata(26),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(27),
      Q => s_axi_rdata(27),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(28),
      Q => s_axi_rdata(28),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(29),
      Q => s_axi_rdata(29),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(2),
      Q => s_axi_rdata(2),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(30),
      Q => s_axi_rdata(30),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(31),
      Q => s_axi_rdata(31),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(3),
      Q => s_axi_rdata(3),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(4),
      Q => s_axi_rdata(4),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(5),
      Q => s_axi_rdata(5),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(6),
      Q => s_axi_rdata(6),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(7),
      Q => s_axi_rdata(7),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(8),
      Q => s_axi_rdata(8),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(9),
      Q => s_axi_rdata(9),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
up_axi_rvalid_int_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08C8"
    )
        port map (
      I0 => up_rack_d,
      I1 => s_axi_aresetn,
      I2 => \^s_axi_rvalid\,
      I3 => s_axi_rready,
      O => up_axi_rvalid_int_i_1_n_0
    );
up_axi_rvalid_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_axi_rvalid_int_i_1_n_0,
      Q => \^s_axi_rvalid\,
      R => '0'
    );
up_axi_wready_int_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => up_wack_s,
      O => up_axi_wready_int_i_1_n_0
    );
up_axi_wready_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_axi_wready_int_i_1_n_0,
      Q => \^s_axi_wready\,
      R => \^up_rdata_d_reg[31]_0\
    );
\up_dma_dest_address[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => \up_dma_dest_address[31]_i_2_n_0\,
      I1 => up_waddr(2),
      I2 => up_waddr(1),
      I3 => \^up_wreq\,
      I4 => up_waddr(0),
      O => \up_dma_dest_address_reg[31]\(0)
    );
\up_dma_dest_address[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => up_waddr(7),
      I1 => up_waddr(8),
      I2 => up_waddr(3),
      I3 => up_waddr(4),
      I4 => up_waddr(5),
      I5 => up_waddr(6),
      O => \up_dma_dest_address[31]_i_2_n_0\
    );
up_dma_last_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \up_dma_dest_address[31]_i_2_n_0\,
      I2 => up_dma_last_i_2_n_0,
      I3 => up_waddr(2),
      I4 => up_waddr(1),
      I5 => \up_dma_x_length_reg[5]\(0),
      O => up_dma_last_reg
    );
up_dma_last_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^up_wreq\,
      I1 => up_waddr(0),
      O => up_dma_last_i_2_n_0
    );
up_dma_req_valid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0C04040C0000000"
    )
        port map (
      I0 => up_sot,
      I1 => ctrl_enable_reg_0,
      I2 => s_axi_aresetn,
      I3 => \^q\(0),
      I4 => \i_regmap_request/up_dma_req_valid0\,
      I5 => up_dma_req_valid,
      O => up_dma_req_valid_reg
    );
up_dma_req_valid_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => ctrl_enable_i_2_n_0,
      I1 => up_waddr(2),
      I2 => up_waddr(1),
      I3 => up_waddr(3),
      I4 => up_waddr(4),
      O => \i_regmap_request/up_dma_req_valid0\
    );
\up_dma_x_length[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => \up_scratch[31]_i_2_n_0\,
      I1 => \up_dma_x_length[23]_i_2_n_0\,
      I2 => \up_dma_x_length[23]_i_3_n_0\,
      I3 => up_waddr(1),
      I4 => \^up_wreq\,
      I5 => up_waddr(2),
      O => \up_dma_x_length_reg[3]\(0)
    );
\up_dma_x_length[23]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => up_waddr(3),
      I1 => up_waddr(4),
      O => \up_dma_x_length[23]_i_2_n_0\
    );
\up_dma_x_length[23]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => up_waddr(8),
      I1 => up_waddr(7),
      O => \up_dma_x_length[23]_i_3_n_0\
    );
\up_irq_mask[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000020000"
    )
        port map (
      I0 => \up_irq_mask[1]_i_3_n_0\,
      I1 => up_waddr(2),
      I2 => \up_dma_x_length[23]_i_2_n_0\,
      I3 => up_waddr(1),
      I4 => \^up_wreq\,
      I5 => up_waddr(0),
      O => \up_irq_mask_reg[0]\
    );
\up_irq_mask[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => up_waddr(7),
      I1 => up_waddr(8),
      I2 => up_waddr(5),
      I3 => up_waddr(6),
      O => \up_irq_mask[1]_i_3_n_0\
    );
\up_irq_source[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBAA"
    )
        port map (
      I0 => up_sot,
      I1 => \^q\(0),
      I2 => \up_irq_source[1]_i_2_n_0\,
      I3 => \up_irq_source_reg[1]\(0),
      O => D(0)
    );
\up_irq_source[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBAA"
    )
        port map (
      I0 => up_req_eot,
      I1 => \^q\(1),
      I2 => \up_irq_source[1]_i_2_n_0\,
      I3 => \up_irq_source_reg[1]\(1),
      O => D(1)
    );
\up_irq_source[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFFFFFFFFFF"
    )
        port map (
      I0 => up_waddr(2),
      I1 => \up_dma_x_length[23]_i_2_n_0\,
      I2 => up_waddr(1),
      I3 => \up_irq_mask[1]_i_3_n_0\,
      I4 => \^up_wreq\,
      I5 => up_waddr(0),
      O => \up_irq_source[1]_i_2_n_0\
    );
up_rack_d_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF000080000000"
    )
        port map (
      I0 => \up_rcount_reg_n_0_[3]\,
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => \up_rcount_reg_n_0_[0]\,
      I3 => \up_rcount_reg_n_0_[1]\,
      I4 => p_0_in6_in,
      I5 => up_rack,
      O => up_rack_s
    );
up_rack_d_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rack_s,
      Q => up_rack_d,
      R => \^up_rdata_d_reg[31]_0\
    );
\up_raddr_int[8]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => up_rsel_reg_n_0,
      O => p_1_in
    );
\up_raddr_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_1_in,
      D => s_axi_araddr(0),
      Q => up_raddr(0),
      R => \^up_rdata_d_reg[31]_0\
    );
\up_raddr_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_1_in,
      D => s_axi_araddr(1),
      Q => \^up_rdata_reg[9]_1\(0),
      R => \^up_rdata_d_reg[31]_0\
    );
\up_raddr_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_1_in,
      D => s_axi_araddr(2),
      Q => up_raddr(2),
      R => \^up_rdata_d_reg[31]_0\
    );
\up_raddr_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_1_in,
      D => s_axi_araddr(3),
      Q => \^up_rdata_reg[9]_1\(1),
      R => \^up_rdata_d_reg[31]_0\
    );
\up_raddr_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_1_in,
      D => s_axi_araddr(4),
      Q => up_raddr(4),
      R => \^up_rdata_d_reg[31]_0\
    );
\up_raddr_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_1_in,
      D => s_axi_araddr(5),
      Q => up_raddr(5),
      R => \^up_rdata_d_reg[31]_0\
    );
\up_raddr_int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_1_in,
      D => s_axi_araddr(6),
      Q => up_raddr(6),
      R => \^up_rdata_d_reg[31]_0\
    );
\up_raddr_int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_1_in,
      D => s_axi_araddr(7),
      Q => up_raddr(7),
      R => \^up_rdata_d_reg[31]_0\
    );
\up_raddr_int_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_1_in,
      D => s_axi_araddr(8),
      Q => up_raddr(8),
      R => \^up_rdata_d_reg[31]_0\
    );
\up_rcount[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => up_rack,
      I1 => p_0_in6_in,
      I2 => \up_rcount_reg_n_0_[0]\,
      O => \up_rcount[0]_i_1_n_0\
    );
\up_rcount[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0440"
    )
        port map (
      I0 => up_rack,
      I1 => p_0_in6_in,
      I2 => \up_rcount_reg_n_0_[1]\,
      I3 => \up_rcount_reg_n_0_[0]\,
      O => \up_rcount[1]_i_1_n_0\
    );
\up_rcount[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04444000"
    )
        port map (
      I0 => up_rack,
      I1 => p_0_in6_in,
      I2 => \up_rcount_reg_n_0_[0]\,
      I3 => \up_rcount_reg_n_0_[1]\,
      I4 => \up_rcount_reg_n_0_[2]\,
      O => \up_rcount[2]_i_1_n_0\
    );
\up_rcount[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0444444440000000"
    )
        port map (
      I0 => up_rack,
      I1 => p_0_in6_in,
      I2 => \up_rcount_reg_n_0_[1]\,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[2]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => \up_rcount[3]_i_1_n_0\
    );
\up_rcount[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in6_in,
      I1 => \^e\(0),
      O => \up_rcount[4]_i_1_n_0\
    );
\up_rcount[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3777777777777777"
    )
        port map (
      I0 => up_rack,
      I1 => p_0_in6_in,
      I2 => \up_rcount_reg_n_0_[1]\,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[2]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => \up_rcount[4]_i_2_n_0\
    );
\up_rcount_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_rcount[4]_i_1_n_0\,
      D => \up_rcount[0]_i_1_n_0\,
      Q => \up_rcount_reg_n_0_[0]\,
      R => \^up_rdata_d_reg[31]_0\
    );
\up_rcount_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_rcount[4]_i_1_n_0\,
      D => \up_rcount[1]_i_1_n_0\,
      Q => \up_rcount_reg_n_0_[1]\,
      R => \^up_rdata_d_reg[31]_0\
    );
\up_rcount_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_rcount[4]_i_1_n_0\,
      D => \up_rcount[2]_i_1_n_0\,
      Q => \up_rcount_reg_n_0_[2]\,
      R => \^up_rdata_d_reg[31]_0\
    );
\up_rcount_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_rcount[4]_i_1_n_0\,
      D => \up_rcount[3]_i_1_n_0\,
      Q => \up_rcount_reg_n_0_[3]\,
      R => \^up_rdata_d_reg[31]_0\
    );
\up_rcount_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_rcount[4]_i_1_n_0\,
      D => \up_rcount[4]_i_2_n_0\,
      Q => p_0_in6_in,
      R => \^up_rdata_d_reg[31]_0\
    );
\up_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF54545404"
    )
        port map (
      I0 => \up_rdata[27]_i_3_n_0\,
      I1 => \up_rdata[0]_i_2_n_0\,
      I2 => \up_rdata[26]_i_4_n_0\,
      I3 => \up_rdata[0]_i_3_n_0\,
      I4 => \up_rdata[0]_i_4_n_0\,
      I5 => \up_rdata[0]_i_5_n_0\,
      O => \up_rdata_reg[31]\(0)
    );
\up_rdata[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => dbg_status(0),
      I1 => dbg_ids0(0),
      I2 => \^up_rdata_reg[9]\,
      I3 => ctrl_enable_reg_0,
      I4 => \^up_rdata_reg[9]_0\,
      O => \up_rdata[0]_i_2_n_0\
    );
\up_rdata[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F4F4F4A"
    )
        port map (
      I0 => \up_rdata[23]_i_4_n_0\,
      I1 => \up_irq_source_reg[1]\(0),
      I2 => \^up_rdata_reg[9]\,
      I3 => \up_irq_mask_reg[0]_0\,
      I4 => \^up_rdata_reg[9]_0\,
      O => \up_rdata[0]_i_3_n_0\
    );
\up_rdata[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \up_scratch_reg[31]\(0),
      I1 => \up_rdata[23]_i_4_n_0\,
      I2 => \^up_rdata_reg[9]_0\,
      I3 => \^up_rdata_reg[9]\,
      O => \up_rdata[0]_i_4_n_0\
    );
\up_rdata[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000200020003300"
    )
        port map (
      I0 => dbg_ids1(0),
      I1 => \up_rdata[23]_i_4_n_0\,
      I2 => \^up_rdata_reg[9]_0\,
      I3 => \up_rdata[23]_i_3_n_0\,
      I4 => \up_rdata[31]_i_4_n_0\,
      I5 => \up_rdata[0]_i_6_n_0\,
      O => \up_rdata[0]_i_5_n_0\
    );
\up_rdata[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFF503"
    )
        port map (
      I0 => \up_transfer_done_bitmap_reg[0]\,
      I1 => up_dma_req_valid,
      I2 => up_raddr(2),
      I3 => \^up_rdata_reg[9]_1\(1),
      I4 => \up_rdata[0]_i_7_n_0\,
      I5 => \up_rdata[0]_i_8_n_0\,
      O => \up_rdata[0]_i_6_n_0\
    );
\up_rdata[0]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => up_raddr(0),
      I1 => \^up_rdata_reg[9]_1\(0),
      O => \up_rdata[0]_i_7_n_0\
    );
\up_rdata[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000098100000"
    )
        port map (
      I0 => \^up_rdata_reg[9]_1\(0),
      I1 => \^up_rdata_reg[9]_1\(1),
      I2 => \up_transfer_id_reg[0]\(0),
      I3 => \up_transfer_id_eot_reg[0]\(0),
      I4 => up_raddr(0),
      I5 => up_raddr(2),
      O => \up_rdata[0]_i_8_n_0\
    );
\up_rdata[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEFEAEAE"
    )
        port map (
      I0 => \up_dma_dest_address_reg[10]\,
      I1 => \reset_gen[0].reset_sync_reg[0]_0\,
      I2 => \up_rdata[26]_i_4_n_0\,
      I3 => \up_rdata[26]_i_5_n_0\,
      I4 => \up_scratch_reg[31]\(10),
      O => \up_rdata_reg[31]\(10)
    );
\up_rdata[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2E22"
    )
        port map (
      I0 => needs_reset_reg,
      I1 => \up_rdata[26]_i_4_n_0\,
      I2 => \up_rdata[26]_i_5_n_0\,
      I3 => \up_scratch_reg[31]\(11),
      I4 => \up_dma_dest_address_reg[11]\,
      O => \up_rdata_reg[31]\(11)
    );
\up_rdata[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF44F4"
    )
        port map (
      I0 => \up_rdata[27]_i_2_n_0\,
      I1 => \up_scratch_reg[31]\(12),
      I2 => m_dest_axi_awaddr(5),
      I3 => \up_rdata[21]_i_3_n_0\,
      I4 => \up_dma_dest_address_reg[12]\,
      O => \up_rdata_reg[31]\(12)
    );
\up_rdata[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAEFFAE"
    )
        port map (
      I0 => \up_dma_dest_address_reg[13]\,
      I1 => \up_scratch_reg[31]\(13),
      I2 => \up_rdata[27]_i_2_n_0\,
      I3 => m_dest_axi_awaddr(6),
      I4 => \up_rdata[21]_i_3_n_0\,
      O => \up_rdata_reg[31]\(13)
    );
\up_rdata[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF4540"
    )
        port map (
      I0 => \^up_rdata_reg[5]\,
      I1 => \up_dma_x_length_reg[22]\(0),
      I2 => \^up_rdata_reg[9]_1\(0),
      I3 => \up_dma_dest_address_reg[31]_0\(2),
      I4 => \up_rdata[14]_i_2_n_0\,
      O => \up_rdata_reg[31]\(14)
    );
\up_rdata[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"020002000C300030"
    )
        port map (
      I0 => \up_scratch_reg[31]\(14),
      I1 => \up_rdata[23]_i_3_n_0\,
      I2 => \^up_rdata_reg[9]_0\,
      I3 => \up_rdata[23]_i_4_n_0\,
      I4 => m_dest_axi_awaddr(7),
      I5 => \^up_rdata_reg[9]\,
      O => \up_rdata[14]_i_2_n_0\
    );
\up_rdata[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF44F4"
    )
        port map (
      I0 => \up_rdata[27]_i_2_n_0\,
      I1 => \up_scratch_reg[31]\(15),
      I2 => m_dest_axi_awaddr(8),
      I3 => \up_rdata[21]_i_3_n_0\,
      I4 => \up_dma_dest_address_reg[15]\,
      O => \up_rdata_reg[31]\(15)
    );
\up_rdata[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEEEEEE"
    )
        port map (
      I0 => \up_dma_dest_address_reg[16]\,
      I1 => \up_rdata[16]_i_3_n_0\,
      I2 => \up_rdata[26]_i_5_n_0\,
      I3 => \up_rdata[26]_i_4_n_0\,
      I4 => \up_scratch_reg[31]\(16),
      O => \up_rdata_reg[31]\(16)
    );
\up_rdata[16]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8000000003300"
    )
        port map (
      I0 => dbg_ids0(3),
      I1 => \^up_rdata_reg[9]\,
      I2 => m_dest_axi_awaddr(9),
      I3 => \^up_rdata_reg[9]_0\,
      I4 => \up_rdata[23]_i_3_n_0\,
      I5 => \up_rdata[23]_i_4_n_0\,
      O => \up_rdata[16]_i_3_n_0\
    );
\up_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF404040"
    )
        port map (
      I0 => \up_rdata[26]_i_5_n_0\,
      I1 => \up_rdata[26]_i_4_n_0\,
      I2 => \up_scratch_reg[31]\(17),
      I3 => \up_rdata[27]_i_5_n_0\,
      I4 => \dest_id_reg[1]\,
      I5 => \up_dma_dest_address_reg[17]\,
      O => \up_rdata_reg[31]\(17)
    );
\up_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEEEAAAEA"
    )
        port map (
      I0 => \up_dma_dest_address_reg[18]\,
      I1 => \up_rdata[27]_i_5_n_0\,
      I2 => m_dest_axi_awaddr(10),
      I3 => \^up_rdata_reg[9]\,
      I4 => \dest_id_reg[3]\(0),
      I5 => \up_rdata[18]_i_4_n_0\,
      O => \up_rdata_reg[31]\(18)
    );
\up_rdata[18]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000002222A222"
    )
        port map (
      I0 => \up_rdata[18]_i_5_n_0\,
      I1 => up_raddr(2),
      I2 => \^up_rdata_reg[9]_1\(1),
      I3 => \^up_rdata_reg[9]_1\(0),
      I4 => up_raddr(4),
      I5 => \up_rdata[18]_i_6_n_0\,
      O => \^up_rdata_reg[9]\
    );
\up_rdata[18]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10540054"
    )
        port map (
      I0 => \up_rdata[23]_i_3_n_0\,
      I1 => \^up_rdata_reg[9]_0\,
      I2 => \up_rdata[23]_i_4_n_0\,
      I3 => \^up_rdata_reg[9]\,
      I4 => \up_scratch_reg[31]\(18),
      O => \up_rdata[18]_i_4_n_0\
    );
\up_rdata[18]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAFAAAFBAAA"
    )
        port map (
      I0 => up_raddr(2),
      I1 => \^up_rdata_reg[9]_1\(1),
      I2 => up_raddr(8),
      I3 => up_raddr(4),
      I4 => \^up_rdata_reg[9]_1\(0),
      I5 => up_raddr(0),
      O => \up_rdata[18]_i_5_n_0\
    );
\up_rdata[18]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFEFFFC"
    )
        port map (
      I0 => up_raddr(5),
      I1 => up_raddr(6),
      I2 => up_raddr(7),
      I3 => \^up_rdata_reg[9]_1\(1),
      I4 => up_raddr(8),
      O => \up_rdata[18]_i_6_n_0\
    );
\up_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAEAFAFA"
    )
        port map (
      I0 => \up_rdata[19]_i_2_n_0\,
      I1 => \up_scratch_reg[31]\(19),
      I2 => \up_rdata[26]_i_4_n_0\,
      I3 => \up_rdata[26]_i_5_n_0\,
      I4 => \up_rdata[26]_i_6_n_0\,
      I5 => \up_dma_dest_address_reg[19]\,
      O => \up_rdata_reg[31]\(19)
    );
\up_rdata[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0808080000000800"
    )
        port map (
      I0 => \up_rdata[23]_i_4_n_0\,
      I1 => \up_rdata[23]_i_3_n_0\,
      I2 => \^up_rdata_reg[9]_0\,
      I3 => m_dest_axi_awaddr(11),
      I4 => \^up_rdata_reg[9]\,
      I5 => \dest_id_reg[3]\(1),
      O => \up_rdata[19]_i_2_n_0\
    );
\up_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"040404F404040404"
    )
        port map (
      I0 => \up_rdata[1]_i_2_n_0\,
      I1 => \up_rdata[1]_i_3_n_0\,
      I2 => \up_rdata[23]_i_4_n_0\,
      I3 => \up_rdata[1]_i_4_n_0\,
      I4 => \up_rdata[1]_i_5_n_0\,
      I5 => \up_rdata[1]_i_6_n_0\,
      O => \up_rdata_reg[31]\(1)
    );
\up_rdata[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F200F200F200"
    )
        port map (
      I0 => \up_rdata[1]_i_7_n_0\,
      I1 => \up_transfer_id_reg[1]\,
      I2 => \up_rdata[31]_i_4_n_0\,
      I3 => \up_rdata[23]_i_3_n_0\,
      I4 => dbg_ids1(1),
      I5 => \^up_rdata_reg[9]_0\,
      O => \up_rdata[1]_i_2_n_0\
    );
\up_rdata[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFEAAFE"
    )
        port map (
      I0 => \up_rdata[23]_i_3_n_0\,
      I1 => \^up_rdata_reg[9]_0\,
      I2 => \up_irq_mask_reg[1]\,
      I3 => \^up_rdata_reg[9]\,
      I4 => \up_irq_source_reg[1]\(1),
      O => \up_rdata[1]_i_3_n_0\
    );
\up_rdata[1]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => \^up_rdata_reg[9]\,
      I1 => \^up_rdata_reg[9]_0\,
      I2 => ctrl_pause,
      O => \up_rdata[1]_i_4_n_0\
    );
\up_rdata[1]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3437"
    )
        port map (
      I0 => dbg_ids0(1),
      I1 => \up_rdata[23]_i_3_n_0\,
      I2 => \^up_rdata_reg[9]_0\,
      I3 => \up_scratch_reg[31]\(1),
      O => \up_rdata[1]_i_5_n_0\
    );
\up_rdata[1]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => dbg_status(1),
      I1 => \^up_rdata_reg[9]\,
      I2 => \^up_rdata_reg[9]_0\,
      O => \up_rdata[1]_i_6_n_0\
    );
\up_rdata[1]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFDFCFFF"
    )
        port map (
      I0 => \up_transfer_done_bitmap_reg[1]\,
      I1 => up_raddr(0),
      I2 => \^up_rdata_reg[9]_1\(0),
      I3 => up_raddr(2),
      I4 => \^up_rdata_reg[9]_1\(1),
      O => \up_rdata[1]_i_7_n_0\
    );
\up_rdata[1]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => up_raddr(2),
      I1 => up_raddr(0),
      O => \up_rdata_reg[1]\
    );
\up_rdata[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF44F4"
    )
        port map (
      I0 => \up_rdata[27]_i_2_n_0\,
      I1 => \up_scratch_reg[31]\(20),
      I2 => m_dest_axi_awaddr(12),
      I3 => \up_rdata[21]_i_3_n_0\,
      I4 => \up_dma_dest_address_reg[20]\,
      O => \up_rdata_reg[31]\(20)
    );
\up_rdata[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4F4FFF4"
    )
        port map (
      I0 => \up_rdata[27]_i_2_n_0\,
      I1 => \up_scratch_reg[31]\(21),
      I2 => \up_dma_dest_address_reg[21]\,
      I3 => m_dest_axi_awaddr(13),
      I4 => \up_rdata[21]_i_3_n_0\,
      O => \up_rdata_reg[31]\(21)
    );
\up_rdata[21]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => \^up_rdata_reg[9]\,
      I1 => \^up_rdata_reg[9]_0\,
      I2 => \up_rdata[23]_i_3_n_0\,
      I3 => \up_rdata[23]_i_4_n_0\,
      O => \up_rdata[21]_i_3_n_0\
    );
\up_rdata[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF4540"
    )
        port map (
      I0 => \^up_rdata_reg[5]\,
      I1 => \up_dma_x_length_reg[22]\(1),
      I2 => \^up_rdata_reg[9]_1\(0),
      I3 => \up_dma_dest_address_reg[31]_0\(3),
      I4 => \up_rdata[22]_i_2_n_0\,
      O => \up_rdata_reg[31]\(22)
    );
\up_rdata[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"020C020000300030"
    )
        port map (
      I0 => \up_scratch_reg[31]\(22),
      I1 => \up_rdata[23]_i_3_n_0\,
      I2 => \^up_rdata_reg[9]_0\,
      I3 => \^up_rdata_reg[9]\,
      I4 => m_dest_axi_awaddr(14),
      I5 => \up_rdata[23]_i_4_n_0\,
      O => \up_rdata[22]_i_2_n_0\
    );
\up_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF4040F340"
    )
        port map (
      I0 => \up_rdata[23]_i_2_n_0\,
      I1 => \up_rdata[23]_i_3_n_0\,
      I2 => \up_rdata[23]_i_4_n_0\,
      I3 => \up_scratch_reg[31]\(23),
      I4 => \up_rdata[27]_i_2_n_0\,
      I5 => \up_dma_dest_address_reg[23]\,
      O => \up_rdata_reg[31]\(23)
    );
\up_rdata[23]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \^up_rdata_reg[9]\,
      I1 => \^up_rdata_reg[9]_0\,
      I2 => m_dest_axi_awaddr(15),
      O => \up_rdata[23]_i_2_n_0\
    );
\up_rdata[23]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFEFFFE"
    )
        port map (
      I0 => \up_rdata[23]_i_6_n_0\,
      I1 => up_raddr(4),
      I2 => up_raddr(7),
      I3 => up_raddr(6),
      I4 => \^up_rdata_reg[9]_1\(1),
      I5 => up_raddr(5),
      O => \up_rdata[23]_i_3_n_0\
    );
\up_rdata[23]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"008800880002008A"
    )
        port map (
      I0 => \up_rdata[23]_i_7_n_0\,
      I1 => up_raddr(8),
      I2 => up_raddr(4),
      I3 => \up_rdata[23]_i_8_n_0\,
      I4 => \^up_rdata_reg[9]_1\(0),
      I5 => up_raddr(2),
      O => \up_rdata[23]_i_4_n_0\
    );
\up_rdata[23]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFFFFFFFFFFFF80"
    )
        port map (
      I0 => up_raddr(0),
      I1 => up_raddr(5),
      I2 => \^up_rdata_reg[9]_1\(0),
      I3 => \^up_rdata_reg[9]_1\(1),
      I4 => up_raddr(2),
      I5 => up_raddr(8),
      O => \up_rdata[23]_i_6_n_0\
    );
\up_rdata[23]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000003CC03C013"
    )
        port map (
      I0 => up_raddr(8),
      I1 => \^up_rdata_reg[9]_1\(1),
      I2 => up_raddr(0),
      I3 => up_raddr(2),
      I4 => \^up_rdata_reg[9]_1\(0),
      I5 => up_raddr(4),
      O => \up_rdata[23]_i_7_n_0\
    );
\up_rdata[23]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => up_raddr(5),
      I1 => up_raddr(7),
      I2 => up_raddr(6),
      O => \up_rdata[23]_i_8_n_0\
    );
\up_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFF2F2F2"
    )
        port map (
      I0 => \up_scratch_reg[31]\(24),
      I1 => \up_rdata[27]_i_2_n_0\,
      I2 => \up_rdata[27]_i_3_n_0\,
      I3 => \id_reg[0]\,
      I4 => \up_rdata[27]_i_5_n_0\,
      I5 => \up_rdata[24]_i_3_n_0\,
      O => \up_rdata_reg[31]\(24)
    );
\up_rdata[24]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1300100013001300"
    )
        port map (
      I0 => dbg_ids1(4),
      I1 => \up_rdata[23]_i_4_n_0\,
      I2 => \^up_rdata_reg[9]_0\,
      I3 => \up_rdata[23]_i_3_n_0\,
      I4 => \up_rdata[27]_i_7_n_0\,
      I5 => \up_dma_dest_address_reg[31]_0\(4),
      O => \up_rdata[24]_i_3_n_0\
    );
\up_rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFF2F2F2"
    )
        port map (
      I0 => \up_scratch_reg[31]\(25),
      I1 => \up_rdata[27]_i_2_n_0\,
      I2 => \up_rdata[27]_i_3_n_0\,
      I3 => \id_reg[1]\,
      I4 => \up_rdata[27]_i_5_n_0\,
      I5 => \up_rdata[25]_i_3_n_0\,
      O => \up_rdata_reg[31]\(25)
    );
\up_rdata[25]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1300100013001300"
    )
        port map (
      I0 => dbg_ids1(5),
      I1 => \up_rdata[23]_i_4_n_0\,
      I2 => \^up_rdata_reg[9]_0\,
      I3 => \up_rdata[23]_i_3_n_0\,
      I4 => \up_rdata[27]_i_7_n_0\,
      I5 => \up_dma_dest_address_reg[31]_0\(5),
      O => \up_rdata[25]_i_3_n_0\
    );
\up_rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5757F757F7F7F7F7"
    )
        port map (
      I0 => \up_rdata[26]_i_2_n_0\,
      I1 => \id_reg[2]\,
      I2 => \up_rdata[26]_i_4_n_0\,
      I3 => \up_scratch_reg[31]\(26),
      I4 => \up_rdata[26]_i_5_n_0\,
      I5 => \up_rdata[26]_i_6_n_0\,
      O => \up_rdata_reg[31]\(26)
    );
\up_rdata[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFFDCFFDFFFDFFF"
    )
        port map (
      I0 => dbg_ids1(6),
      I1 => \up_rdata[23]_i_4_n_0\,
      I2 => \^up_rdata_reg[9]_0\,
      I3 => \up_rdata[23]_i_3_n_0\,
      I4 => \up_rdata[27]_i_7_n_0\,
      I5 => \up_dma_dest_address_reg[31]_0\(6),
      O => \up_rdata[26]_i_2_n_0\
    );
\up_rdata[26]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"57"
    )
        port map (
      I0 => \up_rdata[23]_i_3_n_0\,
      I1 => \^up_rdata_reg[9]_0\,
      I2 => \up_rdata[23]_i_4_n_0\,
      O => \up_rdata[26]_i_4_n_0\
    );
\up_rdata[26]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \^up_rdata_reg[9]\,
      I1 => \^up_rdata_reg[9]_0\,
      I2 => \up_rdata[23]_i_4_n_0\,
      O => \up_rdata[26]_i_5_n_0\
    );
\up_rdata[26]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => \up_rdata[23]_i_4_n_0\,
      I1 => \^up_rdata_reg[9]_0\,
      I2 => \^up_rdata_reg[9]\,
      O => \up_rdata[26]_i_6_n_0\
    );
\up_rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFF2F2F2"
    )
        port map (
      I0 => \up_scratch_reg[31]\(27),
      I1 => \up_rdata[27]_i_2_n_0\,
      I2 => \up_rdata[27]_i_3_n_0\,
      I3 => \id_reg[3]\,
      I4 => \up_rdata[27]_i_5_n_0\,
      I5 => \up_rdata[27]_i_6_n_0\,
      O => \up_rdata_reg[31]\(27)
    );
\up_rdata[27]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => \^up_rdata_reg[9]\,
      I1 => \^up_rdata_reg[9]_0\,
      I2 => \up_rdata[23]_i_4_n_0\,
      I3 => \up_rdata[23]_i_3_n_0\,
      O => \up_rdata[27]_i_2_n_0\
    );
\up_rdata[27]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \up_rdata[23]_i_3_n_0\,
      I1 => \up_rdata[23]_i_4_n_0\,
      O => \up_rdata[27]_i_3_n_0\
    );
\up_rdata[27]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^up_rdata_reg[9]_0\,
      I1 => \up_rdata[23]_i_3_n_0\,
      I2 => \up_rdata[23]_i_4_n_0\,
      O => \up_rdata[27]_i_5_n_0\
    );
\up_rdata[27]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1300100013001300"
    )
        port map (
      I0 => dbg_ids1(7),
      I1 => \up_rdata[23]_i_4_n_0\,
      I2 => \^up_rdata_reg[9]_0\,
      I3 => \up_rdata[23]_i_3_n_0\,
      I4 => \up_rdata[27]_i_7_n_0\,
      I5 => \up_dma_dest_address_reg[31]_0\(7),
      O => \up_rdata[27]_i_6_n_0\
    );
\up_rdata[27]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFB"
    )
        port map (
      I0 => \^up_rdata_reg[9]_1\(0),
      I1 => up_raddr(2),
      I2 => \^up_rdata_reg[9]_1\(1),
      I3 => \up_rdata[31]_i_4_n_0\,
      I4 => up_raddr(0),
      O => \up_rdata[27]_i_7_n_0\
    );
\up_rdata[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF10"
    )
        port map (
      I0 => \^up_rdata_reg[9]_1\(0),
      I1 => \^up_rdata_reg[5]\,
      I2 => \up_dma_dest_address_reg[31]_0\(8),
      I3 => \up_rdata[28]_i_2_n_0\,
      O => \up_rdata_reg[31]\(28)
    );
\up_rdata[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000C000008800"
    )
        port map (
      I0 => \up_scratch_reg[31]\(28),
      I1 => \up_rdata[23]_i_4_n_0\,
      I2 => m_dest_axi_awaddr(16),
      I3 => \^up_rdata_reg[9]\,
      I4 => \^up_rdata_reg[9]_0\,
      I5 => \up_rdata[23]_i_3_n_0\,
      O => \up_rdata[28]_i_2_n_0\
    );
\up_rdata[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABAA"
    )
        port map (
      I0 => \up_rdata[29]_i_2_n_0\,
      I1 => \^up_rdata_reg[9]_1\(0),
      I2 => \^up_rdata_reg[5]\,
      I3 => \up_dma_dest_address_reg[31]_0\(9),
      O => \up_rdata_reg[31]\(29)
    );
\up_rdata[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000C000008800"
    )
        port map (
      I0 => \up_scratch_reg[31]\(29),
      I1 => \up_rdata[23]_i_4_n_0\,
      I2 => m_dest_axi_awaddr(17),
      I3 => \^up_rdata_reg[9]\,
      I4 => \^up_rdata_reg[9]_0\,
      I5 => \up_rdata[23]_i_3_n_0\,
      O => \up_rdata[29]_i_2_n_0\
    );
\up_rdata[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEFEAEAE"
    )
        port map (
      I0 => \up_rdata[2]_i_2_n_0\,
      I1 => \src_id_reg[2]\,
      I2 => \up_rdata[26]_i_4_n_0\,
      I3 => \up_rdata[26]_i_5_n_0\,
      I4 => \up_scratch_reg[31]\(2),
      O => \up_rdata_reg[31]\(2)
    );
\up_rdata[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20003300"
    )
        port map (
      I0 => dbg_ids1(2),
      I1 => \up_rdata[23]_i_4_n_0\,
      I2 => \^up_rdata_reg[9]_0\,
      I3 => \up_rdata[23]_i_3_n_0\,
      I4 => \up_rdata[2]_i_4_n_0\,
      O => \up_rdata[2]_i_2_n_0\
    );
\up_rdata[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF9DFFFF"
    )
        port map (
      I0 => up_raddr(2),
      I1 => \^up_rdata_reg[9]_1\(1),
      I2 => \up_transfer_done_bitmap_reg[2]\,
      I3 => up_raddr(0),
      I4 => \^up_rdata_reg[9]_1\(0),
      I5 => \up_rdata[31]_i_4_n_0\,
      O => \up_rdata[2]_i_4_n_0\
    );
\up_rdata[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABAA"
    )
        port map (
      I0 => \up_rdata[30]_i_2_n_0\,
      I1 => \^up_rdata_reg[9]_1\(0),
      I2 => \^up_rdata_reg[5]\,
      I3 => \up_dma_dest_address_reg[31]_0\(10),
      O => \up_rdata_reg[31]\(30)
    );
\up_rdata[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000C000338800"
    )
        port map (
      I0 => \up_scratch_reg[31]\(30),
      I1 => \up_rdata[23]_i_4_n_0\,
      I2 => m_dest_axi_awaddr(18),
      I3 => \^up_rdata_reg[9]\,
      I4 => \^up_rdata_reg[9]_0\,
      I5 => \up_rdata[23]_i_3_n_0\,
      O => \up_rdata[30]_i_2_n_0\
    );
\up_rdata[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABAA"
    )
        port map (
      I0 => \up_rdata[31]_i_2_n_0\,
      I1 => \^up_rdata_reg[9]_1\(0),
      I2 => \^up_rdata_reg[5]\,
      I3 => \up_dma_dest_address_reg[31]_0\(11),
      O => \up_rdata_reg[31]\(31)
    );
\up_rdata[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000800C000080000"
    )
        port map (
      I0 => \up_scratch_reg[31]\(31),
      I1 => \up_rdata[23]_i_4_n_0\,
      I2 => \up_rdata[23]_i_3_n_0\,
      I3 => \^up_rdata_reg[9]_0\,
      I4 => \^up_rdata_reg[9]\,
      I5 => m_dest_axi_awaddr(19),
      O => \up_rdata[31]_i_2_n_0\
    );
\up_rdata[31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => up_raddr(0),
      I1 => \up_rdata[31]_i_4_n_0\,
      I2 => \^up_rdata_reg[9]_1\(1),
      I3 => up_raddr(2),
      O => \^up_rdata_reg[5]\
    );
\up_rdata[31]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => up_raddr(6),
      I1 => up_raddr(7),
      I2 => up_raddr(5),
      I3 => up_raddr(8),
      I4 => up_raddr(4),
      O => \up_rdata[31]_i_4_n_0\
    );
\up_rdata[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2E22"
    )
        port map (
      I0 => \address_reg[0]\,
      I1 => \up_rdata[26]_i_4_n_0\,
      I2 => \up_rdata[26]_i_5_n_0\,
      I3 => \up_scratch_reg[31]\(3),
      I4 => \up_rdata[3]_i_3_n_0\,
      O => \up_rdata_reg[31]\(3)
    );
\up_rdata[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F01000001010000"
    )
        port map (
      I0 => \up_rdata[31]_i_4_n_0\,
      I1 => \up_rdata[3]_i_4_n_0\,
      I2 => \up_rdata[23]_i_4_n_0\,
      I3 => \^up_rdata_reg[9]_0\,
      I4 => \up_rdata[23]_i_3_n_0\,
      I5 => dbg_ids1(3),
      O => \up_rdata[3]_i_3_n_0\
    );
\up_rdata[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA2AAAAAAAA"
    )
        port map (
      I0 => \up_rdata[3]_i_5_n_0\,
      I1 => up_raddr(2),
      I2 => \^up_rdata_reg[9]_1\(1),
      I3 => up_raddr(0),
      I4 => \^up_rdata_reg[9]_1\(0),
      I5 => \up_dma_dest_address_reg[31]_0\(0),
      O => \up_rdata[3]_i_4_n_0\
    );
\up_rdata[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFDDDFFFFFFFDFFF"
    )
        port map (
      I0 => \^up_rdata_reg[9]_1\(0),
      I1 => up_raddr(0),
      I2 => \up_dma_x_length_reg[5]\(1),
      I3 => up_raddr(2),
      I4 => \^up_rdata_reg[9]_1\(1),
      I5 => \up_transfer_done_bitmap_reg[3]\,
      O => \up_rdata[3]_i_5_n_0\
    );
\up_rdata[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF1055"
    )
        port map (
      I0 => \up_rdata[4]_i_2_n_0\,
      I1 => \up_rdata[26]_i_5_n_0\,
      I2 => \up_scratch_reg[31]\(4),
      I3 => \up_rdata[26]_i_4_n_0\,
      I4 => \up_dma_dest_address_reg[4]\,
      O => \up_rdata_reg[31]\(4)
    );
\up_rdata[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4CC4CCC44CCCCCCC"
    )
        port map (
      I0 => \up_rdata[23]_i_4_n_0\,
      I1 => \up_rdata[23]_i_3_n_0\,
      I2 => \^up_rdata_reg[9]_0\,
      I3 => \^up_rdata_reg[9]\,
      I4 => dbg_status(2),
      I5 => m_dest_axi_awaddr(0),
      O => \up_rdata[4]_i_2_n_0\
    );
\up_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEFFFEEEFE"
    )
        port map (
      I0 => \up_rdata[5]_i_2_n_0\,
      I1 => \up_rdata[5]_i_3_n_0\,
      I2 => \up_dma_dest_address_reg[31]_0\(1),
      I3 => \^up_rdata_reg[9]_1\(0),
      I4 => \up_dma_x_length_reg[5]\(2),
      I5 => \^up_rdata_reg[5]\,
      O => \up_rdata_reg[31]\(5)
    );
\up_rdata[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC00008000000080"
    )
        port map (
      I0 => \up_rdata[23]_i_4_n_0\,
      I1 => \up_rdata[23]_i_3_n_0\,
      I2 => m_dest_axi_awaddr(1),
      I3 => \^up_rdata_reg[9]\,
      I4 => \^up_rdata_reg[9]_0\,
      I5 => dbg_status(3),
      O => \up_rdata[5]_i_2_n_0\
    );
\up_rdata[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00202222"
    )
        port map (
      I0 => \up_rdata[23]_i_4_n_0\,
      I1 => \up_rdata[23]_i_3_n_0\,
      I2 => \up_scratch_reg[31]\(5),
      I3 => \^up_rdata_reg[9]_0\,
      I4 => \^up_rdata_reg[9]\,
      O => \up_rdata[5]_i_3_n_0\
    );
\up_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF51555151"
    )
        port map (
      I0 => \up_rdata[6]_i_2_n_0\,
      I1 => \up_rdata[26]_i_4_n_0\,
      I2 => \up_rdata[8]_i_3_n_0\,
      I3 => \up_rdata[26]_i_5_n_0\,
      I4 => \up_scratch_reg[31]\(6),
      I5 => \up_dma_dest_address_reg[6]\,
      O => \up_rdata_reg[31]\(6)
    );
\up_rdata[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77CF0000FFFF0000"
    )
        port map (
      I0 => dbg_status(3),
      I1 => \^up_rdata_reg[9]\,
      I2 => m_dest_axi_awaddr(2),
      I3 => \^up_rdata_reg[9]_0\,
      I4 => \up_rdata[23]_i_3_n_0\,
      I5 => \up_rdata[23]_i_4_n_0\,
      O => \up_rdata[6]_i_2_n_0\
    );
\up_rdata[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4F4FFF4"
    )
        port map (
      I0 => \up_rdata[27]_i_2_n_0\,
      I1 => \up_scratch_reg[31]\(7),
      I2 => \up_dma_dest_address_reg[7]\,
      I3 => m_dest_axi_awaddr(3),
      I4 => \up_rdata[21]_i_3_n_0\,
      O => \up_rdata_reg[31]\(7)
    );
\up_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEEEE22E2"
    )
        port map (
      I0 => \reset_gen[0].reset_sync_reg[0]_1\,
      I1 => \up_rdata[26]_i_4_n_0\,
      I2 => \up_scratch_reg[31]\(8),
      I3 => \up_rdata[26]_i_5_n_0\,
      I4 => \up_rdata[8]_i_3_n_0\,
      I5 => \up_dma_dest_address_reg[8]\,
      O => \up_rdata_reg[31]\(8)
    );
\up_rdata[8]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \^up_rdata_reg[9]_0\,
      I1 => \up_rdata[23]_i_4_n_0\,
      I2 => \^up_rdata_reg[9]\,
      O => \up_rdata[8]_i_3_n_0\
    );
\up_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0F0F0100"
    )
        port map (
      I0 => \^up_rdata_reg[9]_0\,
      I1 => \^up_rdata_reg[9]\,
      I2 => \up_rdata[9]_i_3_n_0\,
      I3 => m_dest_axi_awaddr(4),
      I4 => \up_rdata[9]_i_4_n_0\,
      I5 => \up_dma_dest_address_reg[9]\,
      O => \up_rdata_reg[31]\(9)
    );
\up_rdata[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AA450000"
    )
        port map (
      I0 => up_raddr(2),
      I1 => \up_rdata[9]_i_6_n_0\,
      I2 => up_raddr(8),
      I3 => \^up_rdata_reg[9]_1\(1),
      I4 => \up_rdata[9]_i_7_n_0\,
      I5 => \up_rdata[9]_i_8_n_0\,
      O => \^up_rdata_reg[9]_0\
    );
\up_rdata[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"51FF55FF"
    )
        port map (
      I0 => \up_rdata[23]_i_3_n_0\,
      I1 => \^up_rdata_reg[9]\,
      I2 => \^up_rdata_reg[9]_0\,
      I3 => \up_rdata[23]_i_4_n_0\,
      I4 => \up_scratch_reg[31]\(9),
      O => \up_rdata[9]_i_3_n_0\
    );
\up_rdata[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77FF333F773F333F"
    )
        port map (
      I0 => \reset_gen[0].reset_sync_reg[0]\(0),
      I1 => \up_rdata[23]_i_3_n_0\,
      I2 => \up_rdata[23]_i_4_n_0\,
      I3 => \^up_rdata_reg[9]_0\,
      I4 => \^up_rdata_reg[9]\,
      I5 => dbg_ids0(2),
      O => \up_rdata[9]_i_4_n_0\
    );
\up_rdata[9]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => up_raddr(4),
      I1 => up_raddr(0),
      O => \up_rdata[9]_i_6_n_0\
    );
\up_rdata[9]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000B000B000B"
    )
        port map (
      I0 => up_raddr(8),
      I1 => up_raddr(4),
      I2 => up_raddr(6),
      I3 => up_raddr(7),
      I4 => up_raddr(5),
      I5 => \^up_rdata_reg[9]_1\(0),
      O => \up_rdata[9]_i_7_n_0\
    );
\up_rdata[9]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFE0CCCFFFFBEFF"
    )
        port map (
      I0 => up_raddr(5),
      I1 => up_raddr(2),
      I2 => \^up_rdata_reg[9]_1\(0),
      I3 => up_raddr(8),
      I4 => up_raddr(4),
      I5 => up_raddr(0),
      O => \up_rdata[9]_i_8_n_0\
    );
\up_rdata_d[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_reg[31]_0\(0),
      I1 => \up_rcount_reg_n_0_[3]\,
      I2 => \up_rcount_reg_n_0_[2]\,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => p_0_in6_in,
      O => \up_rdata_d[0]_i_1_n_0\
    );
\up_rdata_d[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_reg[31]_0\(10),
      I1 => \up_rcount_reg_n_0_[3]\,
      I2 => \up_rcount_reg_n_0_[2]\,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => p_0_in6_in,
      O => \up_rdata_d[10]_i_1_n_0\
    );
\up_rdata_d[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_reg[31]_0\(11),
      I1 => \up_rcount_reg_n_0_[3]\,
      I2 => \up_rcount_reg_n_0_[2]\,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => p_0_in6_in,
      O => \up_rdata_d[11]_i_1_n_0\
    );
\up_rdata_d[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_reg[31]_0\(12),
      I1 => \up_rcount_reg_n_0_[3]\,
      I2 => \up_rcount_reg_n_0_[2]\,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => p_0_in6_in,
      O => \up_rdata_d[12]_i_1_n_0\
    );
\up_rdata_d[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_reg[31]_0\(14),
      I1 => \up_rcount_reg_n_0_[3]\,
      I2 => \up_rcount_reg_n_0_[2]\,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => p_0_in6_in,
      O => \up_rdata_d[14]_i_1_n_0\
    );
\up_rdata_d[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_reg[31]_0\(15),
      I1 => \up_rcount_reg_n_0_[3]\,
      I2 => \up_rcount_reg_n_0_[2]\,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => p_0_in6_in,
      O => \up_rdata_d[15]_i_1_n_0\
    );
\up_rdata_d[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_reg[31]_0\(16),
      I1 => \up_rcount_reg_n_0_[3]\,
      I2 => \up_rcount_reg_n_0_[2]\,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => p_0_in6_in,
      O => \up_rdata_d[16]_i_1_n_0\
    );
\up_rdata_d[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_reg[31]_0\(18),
      I1 => \up_rcount_reg_n_0_[3]\,
      I2 => \up_rcount_reg_n_0_[2]\,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => p_0_in6_in,
      O => \up_rdata_d[18]_i_1_n_0\
    );
\up_rdata_d[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_reg[31]_0\(19),
      I1 => \up_rcount_reg_n_0_[3]\,
      I2 => \up_rcount_reg_n_0_[2]\,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => p_0_in6_in,
      O => \up_rdata_d[19]_i_1_n_0\
    );
\up_rdata_d[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_reg[31]_0\(21),
      I1 => \up_rcount_reg_n_0_[3]\,
      I2 => \up_rcount_reg_n_0_[2]\,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => p_0_in6_in,
      O => \up_rdata_d[21]_i_1_n_0\
    );
\up_rdata_d[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_reg[31]_0\(23),
      I1 => \up_rcount_reg_n_0_[3]\,
      I2 => \up_rcount_reg_n_0_[2]\,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => p_0_in6_in,
      O => \up_rdata_d[23]_i_1_n_0\
    );
\up_rdata_d[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_reg[31]_0\(25),
      I1 => \up_rcount_reg_n_0_[3]\,
      I2 => \up_rcount_reg_n_0_[2]\,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => p_0_in6_in,
      O => \up_rdata_d[25]_i_1_n_0\
    );
\up_rdata_d[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_reg[31]_0\(26),
      I1 => \up_rcount_reg_n_0_[3]\,
      I2 => \up_rcount_reg_n_0_[2]\,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => p_0_in6_in,
      O => \up_rdata_d[26]_i_1_n_0\
    );
\up_rdata_d[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_reg[31]_0\(27),
      I1 => \up_rcount_reg_n_0_[3]\,
      I2 => \up_rcount_reg_n_0_[2]\,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => p_0_in6_in,
      O => \up_rdata_d[27]_i_1_n_0\
    );
\up_rdata_d[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_reg[31]_0\(28),
      I1 => \up_rcount_reg_n_0_[3]\,
      I2 => \up_rcount_reg_n_0_[2]\,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => p_0_in6_in,
      O => \up_rdata_d[28]_i_1_n_0\
    );
\up_rdata_d[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80000000FFFFFFFF"
    )
        port map (
      I0 => \up_rcount_reg_n_0_[3]\,
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => \up_rcount_reg_n_0_[0]\,
      I3 => \up_rcount_reg_n_0_[1]\,
      I4 => p_0_in6_in,
      I5 => s_axi_aresetn,
      O => \up_rdata_d[29]_i_1_n_0\
    );
\up_rdata_d[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_reg[31]_0\(2),
      I1 => \up_rcount_reg_n_0_[3]\,
      I2 => \up_rcount_reg_n_0_[2]\,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => p_0_in6_in,
      O => \up_rdata_d[2]_i_1_n_0\
    );
\up_rdata_d[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_reg[31]_0\(30),
      I1 => \up_rcount_reg_n_0_[3]\,
      I2 => \up_rcount_reg_n_0_[2]\,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => p_0_in6_in,
      O => \up_rdata_d[30]_i_1_n_0\
    );
\up_rdata_d[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_reg[31]_0\(31),
      I1 => \up_rcount_reg_n_0_[3]\,
      I2 => \up_rcount_reg_n_0_[2]\,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => p_0_in6_in,
      O => \up_rdata_d[31]_i_1_n_0\
    );
\up_rdata_d[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_reg[31]_0\(3),
      I1 => \up_rcount_reg_n_0_[3]\,
      I2 => \up_rcount_reg_n_0_[2]\,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => p_0_in6_in,
      O => \up_rdata_d[3]_i_1_n_0\
    );
\up_rdata_d[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_reg[31]_0\(5),
      I1 => \up_rcount_reg_n_0_[3]\,
      I2 => \up_rcount_reg_n_0_[2]\,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => p_0_in6_in,
      O => \up_rdata_d[5]_i_1_n_0\
    );
\up_rdata_d[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_reg[31]_0\(7),
      I1 => \up_rcount_reg_n_0_[3]\,
      I2 => \up_rcount_reg_n_0_[2]\,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => p_0_in6_in,
      O => \up_rdata_d[7]_i_1_n_0\
    );
\up_rdata_d[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_reg[31]_0\(9),
      I1 => \up_rcount_reg_n_0_[3]\,
      I2 => \up_rcount_reg_n_0_[2]\,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => p_0_in6_in,
      O => \up_rdata_d[9]_i_1_n_0\
    );
\up_rdata_d_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_rdata_d[0]_i_1_n_0\,
      Q => up_rdata_d(0),
      R => \^up_rdata_d_reg[31]_0\
    );
\up_rdata_d_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_rdata_d[10]_i_1_n_0\,
      Q => up_rdata_d(10),
      R => \^up_rdata_d_reg[31]_0\
    );
\up_rdata_d_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_rdata_d[11]_i_1_n_0\,
      Q => up_rdata_d(11),
      R => \^up_rdata_d_reg[31]_0\
    );
\up_rdata_d_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_rdata_d[12]_i_1_n_0\,
      Q => up_rdata_d(12),
      R => \^up_rdata_d_reg[31]_0\
    );
\up_rdata_d_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_rdata_reg[31]_0\(13),
      Q => up_rdata_d(13),
      R => \up_rdata_d[29]_i_1_n_0\
    );
\up_rdata_d_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_rdata_d[14]_i_1_n_0\,
      Q => up_rdata_d(14),
      R => \^up_rdata_d_reg[31]_0\
    );
\up_rdata_d_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_rdata_d[15]_i_1_n_0\,
      Q => up_rdata_d(15),
      R => \^up_rdata_d_reg[31]_0\
    );
\up_rdata_d_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_rdata_d[16]_i_1_n_0\,
      Q => up_rdata_d(16),
      R => \^up_rdata_d_reg[31]_0\
    );
\up_rdata_d_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_rdata_reg[31]_0\(17),
      Q => up_rdata_d(17),
      R => \up_rdata_d[29]_i_1_n_0\
    );
\up_rdata_d_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_rdata_d[18]_i_1_n_0\,
      Q => up_rdata_d(18),
      R => \^up_rdata_d_reg[31]_0\
    );
\up_rdata_d_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_rdata_d[19]_i_1_n_0\,
      Q => up_rdata_d(19),
      R => \^up_rdata_d_reg[31]_0\
    );
\up_rdata_d_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_rdata_reg[31]_0\(1),
      Q => up_rdata_d(1),
      R => \up_rdata_d[29]_i_1_n_0\
    );
\up_rdata_d_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_rdata_reg[31]_0\(20),
      Q => up_rdata_d(20),
      R => \up_rdata_d[29]_i_1_n_0\
    );
\up_rdata_d_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_rdata_d[21]_i_1_n_0\,
      Q => up_rdata_d(21),
      R => \^up_rdata_d_reg[31]_0\
    );
\up_rdata_d_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_rdata_reg[31]_0\(22),
      Q => up_rdata_d(22),
      R => \up_rdata_d[29]_i_1_n_0\
    );
\up_rdata_d_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_rdata_d[23]_i_1_n_0\,
      Q => up_rdata_d(23),
      R => \^up_rdata_d_reg[31]_0\
    );
\up_rdata_d_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_rdata_reg[31]_0\(24),
      Q => up_rdata_d(24),
      R => \up_rdata_d[29]_i_1_n_0\
    );
\up_rdata_d_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_rdata_d[25]_i_1_n_0\,
      Q => up_rdata_d(25),
      R => \^up_rdata_d_reg[31]_0\
    );
\up_rdata_d_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_rdata_d[26]_i_1_n_0\,
      Q => up_rdata_d(26),
      R => \^up_rdata_d_reg[31]_0\
    );
\up_rdata_d_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_rdata_d[27]_i_1_n_0\,
      Q => up_rdata_d(27),
      R => \^up_rdata_d_reg[31]_0\
    );
\up_rdata_d_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_rdata_d[28]_i_1_n_0\,
      Q => up_rdata_d(28),
      R => \^up_rdata_d_reg[31]_0\
    );
\up_rdata_d_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_rdata_reg[31]_0\(29),
      Q => up_rdata_d(29),
      R => \up_rdata_d[29]_i_1_n_0\
    );
\up_rdata_d_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_rdata_d[2]_i_1_n_0\,
      Q => up_rdata_d(2),
      R => \^up_rdata_d_reg[31]_0\
    );
\up_rdata_d_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_rdata_d[30]_i_1_n_0\,
      Q => up_rdata_d(30),
      R => \^up_rdata_d_reg[31]_0\
    );
\up_rdata_d_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_rdata_d[31]_i_1_n_0\,
      Q => up_rdata_d(31),
      R => \^up_rdata_d_reg[31]_0\
    );
\up_rdata_d_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_rdata_d[3]_i_1_n_0\,
      Q => up_rdata_d(3),
      R => \^up_rdata_d_reg[31]_0\
    );
\up_rdata_d_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_rdata_reg[31]_0\(4),
      Q => up_rdata_d(4),
      R => \up_rdata_d[29]_i_1_n_0\
    );
\up_rdata_d_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_rdata_d[5]_i_1_n_0\,
      Q => up_rdata_d(5),
      R => \^up_rdata_d_reg[31]_0\
    );
\up_rdata_d_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_rdata_reg[31]_0\(6),
      Q => up_rdata_d(6),
      R => \up_rdata_d[29]_i_1_n_0\
    );
\up_rdata_d_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_rdata_d[7]_i_1_n_0\,
      Q => up_rdata_d(7),
      R => \^up_rdata_d_reg[31]_0\
    );
\up_rdata_d_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_rdata_reg[31]_0\(8),
      Q => up_rdata_d(8),
      R => \up_rdata_d[29]_i_1_n_0\
    );
\up_rdata_d_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_rdata_d[9]_i_1_n_0\,
      Q => up_rdata_d(9),
      R => \^up_rdata_d_reg[31]_0\
    );
up_rreq_int_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => up_rsel_reg_n_0,
      I1 => s_axi_arvalid,
      I2 => s_axi_aresetn,
      O => up_rreq_int_i_1_n_0
    );
up_rreq_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rreq_int_i_1_n_0,
      Q => \^e\(0),
      R => '0'
    );
up_rsel_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3FAA"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => s_axi_rready,
      I2 => \^s_axi_rvalid\,
      I3 => up_rsel_reg_n_0,
      O => up_rsel_i_1_n_0
    );
up_rsel_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rsel_i_1_n_0,
      Q => up_rsel_reg_n_0,
      R => \^up_rdata_d_reg[31]_0\
    );
\up_scratch[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002000000"
    )
        port map (
      I0 => \up_scratch[31]_i_2_n_0\,
      I1 => up_waddr(7),
      I2 => up_waddr(8),
      I3 => up_waddr(1),
      I4 => \^up_wreq\,
      I5 => \up_scratch[31]_i_3_n_0\,
      O => \up_scratch_reg[0]\(0)
    );
\up_scratch[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => up_waddr(0),
      I1 => up_waddr(6),
      I2 => up_waddr(5),
      O => \up_scratch[31]_i_2_n_0\
    );
\up_scratch[31]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => up_waddr(2),
      I1 => up_waddr(4),
      I2 => up_waddr(3),
      O => \up_scratch[31]_i_3_n_0\
    );
up_wack_d_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA80000000"
    )
        port map (
      I0 => p_0_in7_in,
      I1 => \up_wcount_reg_n_0_[3]\,
      I2 => \up_wcount_reg_n_0_[0]\,
      I3 => \up_wcount_reg_n_0_[1]\,
      I4 => \up_wcount_reg_n_0_[2]\,
      I5 => up_wack,
      O => up_wack_s
    );
up_wack_d_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_wack_s,
      Q => up_wack_d,
      R => \^up_rdata_d_reg[31]_0\
    );
\up_waddr_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_awaddr(0),
      Q => up_waddr(0),
      R => \^up_rdata_d_reg[31]_0\
    );
\up_waddr_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_awaddr(1),
      Q => up_waddr(1),
      R => \^up_rdata_d_reg[31]_0\
    );
\up_waddr_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_awaddr(2),
      Q => up_waddr(2),
      R => \^up_rdata_d_reg[31]_0\
    );
\up_waddr_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_awaddr(3),
      Q => up_waddr(3),
      R => \^up_rdata_d_reg[31]_0\
    );
\up_waddr_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_awaddr(4),
      Q => up_waddr(4),
      R => \^up_rdata_d_reg[31]_0\
    );
\up_waddr_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_awaddr(5),
      Q => up_waddr(5),
      R => \^up_rdata_d_reg[31]_0\
    );
\up_waddr_int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_awaddr(6),
      Q => up_waddr(6),
      R => \^up_rdata_d_reg[31]_0\
    );
\up_waddr_int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_awaddr(7),
      Q => up_waddr(7),
      R => \^up_rdata_d_reg[31]_0\
    );
\up_waddr_int_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_awaddr(8),
      Q => up_waddr(8),
      R => \^up_rdata_d_reg[31]_0\
    );
\up_wcount[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => up_wack,
      I1 => p_0_in7_in,
      I2 => \up_wcount_reg_n_0_[0]\,
      O => \up_wcount[0]_i_1_n_0\
    );
\up_wcount[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1400"
    )
        port map (
      I0 => up_wack,
      I1 => \up_wcount_reg_n_0_[0]\,
      I2 => \up_wcount_reg_n_0_[1]\,
      I3 => p_0_in7_in,
      O => \up_wcount[1]_i_1_n_0\
    );
\up_wcount[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"14440000"
    )
        port map (
      I0 => up_wack,
      I1 => \up_wcount_reg_n_0_[2]\,
      I2 => \up_wcount_reg_n_0_[1]\,
      I3 => \up_wcount_reg_n_0_[0]\,
      I4 => p_0_in7_in,
      O => \up_wcount[2]_i_1_n_0\
    );
\up_wcount[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1444444400000000"
    )
        port map (
      I0 => up_wack,
      I1 => \up_wcount_reg_n_0_[3]\,
      I2 => \up_wcount_reg_n_0_[0]\,
      I3 => \up_wcount_reg_n_0_[1]\,
      I4 => \up_wcount_reg_n_0_[2]\,
      I5 => p_0_in7_in,
      O => \up_wcount[3]_i_1_n_0\
    );
\up_wcount[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^up_wreq\,
      I1 => p_0_in7_in,
      O => \up_wcount[4]_i_1_n_0\
    );
\up_wcount[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"15555555FFFFFFFF"
    )
        port map (
      I0 => up_wack,
      I1 => \up_wcount_reg_n_0_[2]\,
      I2 => \up_wcount_reg_n_0_[1]\,
      I3 => \up_wcount_reg_n_0_[0]\,
      I4 => \up_wcount_reg_n_0_[3]\,
      I5 => p_0_in7_in,
      O => \up_wcount[4]_i_2_n_0\
    );
\up_wcount_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_wcount[4]_i_1_n_0\,
      D => \up_wcount[0]_i_1_n_0\,
      Q => \up_wcount_reg_n_0_[0]\,
      R => \^up_rdata_d_reg[31]_0\
    );
\up_wcount_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_wcount[4]_i_1_n_0\,
      D => \up_wcount[1]_i_1_n_0\,
      Q => \up_wcount_reg_n_0_[1]\,
      R => \^up_rdata_d_reg[31]_0\
    );
\up_wcount_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_wcount[4]_i_1_n_0\,
      D => \up_wcount[2]_i_1_n_0\,
      Q => \up_wcount_reg_n_0_[2]\,
      R => \^up_rdata_d_reg[31]_0\
    );
\up_wcount_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_wcount[4]_i_1_n_0\,
      D => \up_wcount[3]_i_1_n_0\,
      Q => \up_wcount_reg_n_0_[3]\,
      R => \^up_rdata_d_reg[31]_0\
    );
\up_wcount_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_wcount[4]_i_1_n_0\,
      D => \up_wcount[4]_i_2_n_0\,
      Q => p_0_in7_in,
      R => \^up_rdata_d_reg[31]_0\
    );
\up_wdata_int[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => up_wsel_reg_n_0,
      O => p_5_in
    );
\up_wdata_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(0),
      Q => \^q\(0),
      R => \^up_rdata_d_reg[31]_0\
    );
\up_wdata_int_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(10),
      Q => \^q\(10),
      R => \^up_rdata_d_reg[31]_0\
    );
\up_wdata_int_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(11),
      Q => \^q\(11),
      R => \^up_rdata_d_reg[31]_0\
    );
\up_wdata_int_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(12),
      Q => \^q\(12),
      R => \^up_rdata_d_reg[31]_0\
    );
\up_wdata_int_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(13),
      Q => \^q\(13),
      R => \^up_rdata_d_reg[31]_0\
    );
\up_wdata_int_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(14),
      Q => \^q\(14),
      R => \^up_rdata_d_reg[31]_0\
    );
\up_wdata_int_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(15),
      Q => \^q\(15),
      R => \^up_rdata_d_reg[31]_0\
    );
\up_wdata_int_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(16),
      Q => \^q\(16),
      R => \^up_rdata_d_reg[31]_0\
    );
\up_wdata_int_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(17),
      Q => \^q\(17),
      R => \^up_rdata_d_reg[31]_0\
    );
\up_wdata_int_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(18),
      Q => \^q\(18),
      R => \^up_rdata_d_reg[31]_0\
    );
\up_wdata_int_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(19),
      Q => \^q\(19),
      R => \^up_rdata_d_reg[31]_0\
    );
\up_wdata_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(1),
      Q => \^q\(1),
      R => \^up_rdata_d_reg[31]_0\
    );
\up_wdata_int_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(20),
      Q => \^q\(20),
      R => \^up_rdata_d_reg[31]_0\
    );
\up_wdata_int_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(21),
      Q => \^q\(21),
      R => \^up_rdata_d_reg[31]_0\
    );
\up_wdata_int_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(22),
      Q => \^q\(22),
      R => \^up_rdata_d_reg[31]_0\
    );
\up_wdata_int_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(23),
      Q => \^q\(23),
      R => \^up_rdata_d_reg[31]_0\
    );
\up_wdata_int_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(24),
      Q => \^q\(24),
      R => \^up_rdata_d_reg[31]_0\
    );
\up_wdata_int_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(25),
      Q => \^q\(25),
      R => \^up_rdata_d_reg[31]_0\
    );
\up_wdata_int_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(26),
      Q => \^q\(26),
      R => \^up_rdata_d_reg[31]_0\
    );
\up_wdata_int_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(27),
      Q => \^q\(27),
      R => \^up_rdata_d_reg[31]_0\
    );
\up_wdata_int_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(28),
      Q => \^q\(28),
      R => \^up_rdata_d_reg[31]_0\
    );
\up_wdata_int_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(29),
      Q => \^q\(29),
      R => \^up_rdata_d_reg[31]_0\
    );
\up_wdata_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(2),
      Q => \^q\(2),
      R => \^up_rdata_d_reg[31]_0\
    );
\up_wdata_int_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(30),
      Q => \^q\(30),
      R => \^up_rdata_d_reg[31]_0\
    );
\up_wdata_int_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(31),
      Q => \^q\(31),
      R => \^up_rdata_d_reg[31]_0\
    );
\up_wdata_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(3),
      Q => \^q\(3),
      R => \^up_rdata_d_reg[31]_0\
    );
\up_wdata_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(4),
      Q => \^q\(4),
      R => \^up_rdata_d_reg[31]_0\
    );
\up_wdata_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(5),
      Q => \^q\(5),
      R => \^up_rdata_d_reg[31]_0\
    );
\up_wdata_int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(6),
      Q => \^q\(6),
      R => \^up_rdata_d_reg[31]_0\
    );
\up_wdata_int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(7),
      Q => \^q\(7),
      R => \^up_rdata_d_reg[31]_0\
    );
\up_wdata_int_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(8),
      Q => \^q\(8),
      R => \^up_rdata_d_reg[31]_0\
    );
\up_wdata_int_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(9),
      Q => \^q\(9),
      R => \^up_rdata_d_reg[31]_0\
    );
up_wreq_int_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => up_wsel_reg_n_0,
      I1 => s_axi_wvalid,
      I2 => s_axi_awvalid,
      I3 => s_axi_aresetn,
      O => up_wreq_int_i_1_n_0
    );
up_wreq_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_wreq_int_i_1_n_0,
      Q => \^up_wreq\,
      R => '0'
    );
up_wsel_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FFF8888"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_wvalid,
      I2 => s_axi_bready,
      I3 => \^s_axi_bvalid\,
      I4 => up_wsel_reg_n_0,
      O => up_wsel_i_1_n_0
    );
up_wsel_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_wsel_i_1_n_0,
      Q => up_wsel_reg_n_0,
      R => \^up_rdata_d_reg[31]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_axi_dmac_0_0_util_axis_fifo is
  port (
    s_axis_waddr : out STD_LOGIC;
    m_axis_raddr : out STD_LOGIC;
    \address_reg[28]\ : out STD_LOGIC_VECTOR ( 32 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    m_dest_axi_aclk : in STD_LOGIC;
    up_dma_req_valid : in STD_LOGIC;
    do_enable_reg : in STD_LOGIC;
    acked : in STD_LOGIC_VECTOR ( 0 to 0 );
    dest_req_ready : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 32 downto 0 )
  );
end zsys_axi_dmac_0_0_util_axis_fifo;

architecture STRUCTURE of zsys_axi_dmac_0_0_util_axis_fifo is
  signal cdc_sync_fifo_ram0 : STD_LOGIC;
  signal \^m_axis_raddr\ : STD_LOGIC;
  signal \m_axis_raddr_i_1__0_n_0\ : STD_LOGIC;
  signal \^s_axis_waddr\ : STD_LOGIC;
  signal \s_axis_waddr_i_1__1_n_0\ : STD_LOGIC;
begin
  m_axis_raddr <= \^m_axis_raddr\;
  s_axis_waddr <= \^s_axis_waddr\;
\cdc_sync_fifo_ram[33]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008008"
    )
        port map (
      I0 => up_dma_req_valid,
      I1 => do_enable_reg,
      I2 => \^s_axis_waddr\,
      I3 => \^m_axis_raddr\,
      I4 => acked(0),
      O => cdc_sync_fifo_ram0
    );
\cdc_sync_fifo_ram_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => cdc_sync_fifo_ram0,
      D => D(9),
      Q => \address_reg[28]\(9),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => cdc_sync_fifo_ram0,
      D => D(10),
      Q => \address_reg[28]\(10),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => cdc_sync_fifo_ram0,
      D => D(11),
      Q => \address_reg[28]\(11),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => cdc_sync_fifo_ram0,
      D => D(12),
      Q => \address_reg[28]\(12),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => cdc_sync_fifo_ram0,
      D => D(13),
      Q => \address_reg[28]\(13),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => cdc_sync_fifo_ram0,
      D => D(14),
      Q => \address_reg[28]\(14),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => cdc_sync_fifo_ram0,
      D => D(15),
      Q => \address_reg[28]\(15),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => cdc_sync_fifo_ram0,
      D => D(16),
      Q => \address_reg[28]\(16),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => cdc_sync_fifo_ram0,
      D => D(17),
      Q => \address_reg[28]\(17),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => cdc_sync_fifo_ram0,
      D => D(18),
      Q => \address_reg[28]\(18),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => cdc_sync_fifo_ram0,
      D => D(0),
      Q => \address_reg[28]\(0),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => cdc_sync_fifo_ram0,
      D => D(19),
      Q => \address_reg[28]\(19),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => cdc_sync_fifo_ram0,
      D => D(20),
      Q => \address_reg[28]\(20),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => cdc_sync_fifo_ram0,
      D => D(21),
      Q => \address_reg[28]\(21),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => cdc_sync_fifo_ram0,
      D => D(22),
      Q => \address_reg[28]\(22),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => cdc_sync_fifo_ram0,
      D => D(23),
      Q => \address_reg[28]\(23),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => cdc_sync_fifo_ram0,
      D => D(24),
      Q => \address_reg[28]\(24),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => cdc_sync_fifo_ram0,
      D => D(25),
      Q => \address_reg[28]\(25),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => cdc_sync_fifo_ram0,
      D => D(26),
      Q => \address_reg[28]\(26),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => cdc_sync_fifo_ram0,
      D => D(27),
      Q => \address_reg[28]\(27),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => cdc_sync_fifo_ram0,
      D => D(28),
      Q => \address_reg[28]\(28),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => cdc_sync_fifo_ram0,
      D => D(1),
      Q => \address_reg[28]\(1),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => cdc_sync_fifo_ram0,
      D => D(29),
      Q => \address_reg[28]\(29),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => cdc_sync_fifo_ram0,
      D => D(30),
      Q => \address_reg[28]\(30),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => cdc_sync_fifo_ram0,
      D => D(31),
      Q => \address_reg[28]\(31),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => cdc_sync_fifo_ram0,
      D => D(32),
      Q => \address_reg[28]\(32),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => cdc_sync_fifo_ram0,
      D => D(2),
      Q => \address_reg[28]\(2),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => cdc_sync_fifo_ram0,
      D => D(3),
      Q => \address_reg[28]\(3),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => cdc_sync_fifo_ram0,
      D => D(4),
      Q => \address_reg[28]\(4),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => cdc_sync_fifo_ram0,
      D => D(5),
      Q => \address_reg[28]\(5),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => cdc_sync_fifo_ram0,
      D => D(6),
      Q => \address_reg[28]\(6),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => cdc_sync_fifo_ram0,
      D => D(7),
      Q => \address_reg[28]\(7),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => cdc_sync_fifo_ram0,
      D => D(8),
      Q => \address_reg[28]\(8),
      R => '0'
    );
\m_axis_raddr_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^s_axis_waddr\,
      I1 => dest_req_ready,
      I2 => \^m_axis_raddr\,
      O => \m_axis_raddr_i_1__0_n_0\
    );
m_axis_raddr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => '1',
      D => \m_axis_raddr_i_1__0_n_0\,
      Q => \^m_axis_raddr\,
      R => Q(0)
    );
\s_axis_waddr_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF1000"
    )
        port map (
      I0 => acked(0),
      I1 => \^m_axis_raddr\,
      I2 => do_enable_reg,
      I3 => up_dma_req_valid,
      I4 => \^s_axis_waddr\,
      O => \s_axis_waddr_i_1__1_n_0\
    );
s_axis_waddr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \s_axis_waddr_i_1__1_n_0\,
      Q => \^s_axis_waddr\,
      R => Q(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \zsys_axi_dmac_0_0_util_axis_fifo__parameterized0\ is
  port (
    s_axis_waddr_reg_0 : out STD_LOGIC;
    s_axis_waddr_reg_1 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    src_req_valid : out STD_LOGIC;
    \last_burst_length_reg[4]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    active_reg : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    acked : in STD_LOGIC_VECTOR ( 0 to 0 );
    up_dma_req_valid : in STD_LOGIC;
    do_enable_reg : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \zsys_axi_dmac_0_0_util_axis_fifo__parameterized0\ : entity is "util_axis_fifo";
end \zsys_axi_dmac_0_0_util_axis_fifo__parameterized0\;

architecture STRUCTURE of \zsys_axi_dmac_0_0_util_axis_fifo__parameterized0\ is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \s_axis_waddr_i_1__0_n_0\ : STD_LOGIC;
  signal \^s_axis_waddr_reg_0\ : STD_LOGIC;
  signal \^s_axis_waddr_reg_1\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \s_axis_waddr_i_1__0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \up_transfer_id[1]_i_3\ : label is "soft_lutpair40";
begin
  E(0) <= \^e\(0);
  s_axis_waddr_reg_0 <= \^s_axis_waddr_reg_0\;
  s_axis_waddr_reg_1 <= \^s_axis_waddr_reg_1\;
\cdc_sync_fifo_ram[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000040"
    )
        port map (
      I0 => acked(0),
      I1 => up_dma_req_valid,
      I2 => do_enable_reg,
      I3 => \^s_axis_waddr_reg_1\,
      I4 => \^s_axis_waddr_reg_0\,
      O => \^e\(0)
    );
\cdc_sync_fifo_ram_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^e\(0),
      D => D(0),
      Q => \last_burst_length_reg[4]\(0),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^e\(0),
      D => D(1),
      Q => \last_burst_length_reg[4]\(1),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^e\(0),
      D => D(2),
      Q => \last_burst_length_reg[4]\(2),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^e\(0),
      D => D(3),
      Q => \last_burst_length_reg[4]\(3),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^e\(0),
      D => D(4),
      Q => \last_burst_length_reg[4]\(4),
      R => '0'
    );
m_axis_raddr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => '1',
      D => active_reg,
      Q => \^s_axis_waddr_reg_1\,
      R => Q(0)
    );
\s_axis_waddr_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7F0040"
    )
        port map (
      I0 => \^s_axis_waddr_reg_1\,
      I1 => do_enable_reg,
      I2 => up_dma_req_valid,
      I3 => acked(0),
      I4 => \^s_axis_waddr_reg_0\,
      O => \s_axis_waddr_i_1__0_n_0\
    );
s_axis_waddr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \s_axis_waddr_i_1__0_n_0\,
      Q => \^s_axis_waddr_reg_0\,
      R => Q(0)
    );
\up_transfer_id[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^s_axis_waddr_reg_0\,
      I1 => \^s_axis_waddr_reg_1\,
      O => src_req_valid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \zsys_axi_dmac_0_0_util_axis_fifo__parameterized1\ is
  port (
    id0 : out STD_LOGIC;
    m_dest_axi_bready : out STD_LOGIC;
    eot0 : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_dest_axi_aclk : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    dest_response_eot : in STD_LOGIC;
    m_dest_axi_bvalid : in STD_LOGIC;
    \id_reg[3]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \zsys_axi_dmac_0_0_util_axis_fifo__parameterized1\ : entity is "util_axis_fifo";
end \zsys_axi_dmac_0_0_util_axis_fifo__parameterized1\;

architecture STRUCTURE of \zsys_axi_dmac_0_0_util_axis_fifo__parameterized1\ is
  signal \^id0\ : STD_LOGIC;
  signal m_axis_raddr_reg_n_0 : STD_LOGIC;
  signal response_dest_resp_eot : STD_LOGIC;
  signal s_axis_waddr_i_1_n_0 : STD_LOGIC;
  signal s_axis_waddr_reg_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of eot_i_1 : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of m_dest_axi_bready_INST_0 : label is "soft_lutpair31";
begin
  id0 <= \^id0\;
\cdc_sync_fifo_ram[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2002"
    )
        port map (
      I0 => m_dest_axi_bvalid,
      I1 => \id_reg[3]\,
      I2 => s_axis_waddr_reg_n_0,
      I3 => m_axis_raddr_reg_n_0,
      O => \^id0\
    );
\cdc_sync_fifo_ram_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m_dest_axi_aclk,
      CE => \^id0\,
      D => dest_response_eot,
      Q => response_dest_resp_eot,
      R => '0'
    );
eot_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => response_dest_resp_eot,
      I1 => m_axis_raddr_reg_n_0,
      I2 => s_axis_waddr_reg_n_0,
      O => eot0
    );
m_axis_raddr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axis_waddr_reg_n_0,
      Q => m_axis_raddr_reg_n_0,
      R => Q(0)
    );
m_dest_axi_bready_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => m_axis_raddr_reg_n_0,
      I1 => s_axis_waddr_reg_n_0,
      I2 => \id_reg[3]\,
      O => m_dest_axi_bready
    );
s_axis_waddr_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axis_waddr_reg_n_0,
      O => s_axis_waddr_i_1_n_0
    );
s_axis_waddr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => \^id0\,
      D => s_axis_waddr_i_1_n_0,
      Q => s_axis_waddr_reg_n_0,
      R => Q(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_axi_dmac_0_0_axi_dmac_burst_memory is
  port (
    m_dest_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \src_throttled_request_id_reg[0]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_dest_axi_wvalid : out STD_LOGIC;
    m_dest_axi_wlast : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    addr_valid_reg : out STD_LOGIC;
    \up_rdata_reg[17]\ : out STD_LOGIC;
    \up_rdata_reg[2]\ : out STD_LOGIC;
    p_1_out0 : out STD_LOGIC;
    m_dest_axi_aclk : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    \id_reg[3]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    src_last : in STD_LOGIC;
    \reset_gen[0].reset_sync_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    pending_burst_reg : in STD_LOGIC;
    m_dest_axi_wready : in STD_LOGIC;
    \id_reg[1]\ : in STD_LOGIC;
    \src_throttled_request_id_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \src_throttled_request_id_reg[3]_0\ : in STD_LOGIC;
    \up_raddr_int_reg[2]\ : in STD_LOGIC;
    m_dest_axi_awaddr : in STD_LOGIC_VECTOR ( 0 to 0 );
    \up_raddr_int_reg[2]_0\ : in STD_LOGIC;
    \state_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_valid : in STD_LOGIC;
    transfer_abort_reg : in STD_LOGIC;
    active_reg : in STD_LOGIC;
    pending_burst : in STD_LOGIC;
    s_axis_data : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end zsys_axi_dmac_0_0_axi_dmac_burst_memory;

architecture STRUCTURE of zsys_axi_dmac_0_0_axi_dmac_burst_memory is
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal b2g1_return013_out : STD_LOGIC;
  signal b2g1_return015_out : STD_LOGIC;
  signal dbg_ids0 : STD_LOGIC_VECTOR ( 17 downto 2 );
  signal dest_beat : STD_LOGIC;
  signal \dest_beat_counter_reg__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal dest_burst_len : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal dest_burst_len0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal dest_burst_ready : STD_LOGIC;
  signal dest_burst_valid : STD_LOGIC;
  signal \dest_id_next[0]_i_1_n_0\ : STD_LOGIC;
  signal \dest_id_next[3]_i_4_n_0\ : STD_LOGIC;
  signal \dest_id_next_reg_n_0_[2]\ : STD_LOGIC;
  signal dest_id_reduced_msb : STD_LOGIC;
  signal dest_id_reduced_msb_next : STD_LOGIC;
  signal dest_id_reduced_msb_next_i_1_n_0 : STD_LOGIC;
  signal dest_id_reduced_next : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dest_last : STD_LOGIC;
  signal dest_mem_data_last_i_1_n_0 : STD_LOGIC;
  signal dest_mem_data_last_i_3_n_0 : STD_LOGIC;
  signal dest_mem_data_valid_i_1_n_0 : STD_LOGIC;
  signal dest_valid : STD_LOGIC;
  signal dest_valid_i_1_n_0 : STD_LOGIC;
  signal i_resize_src_n_5 : STD_LOGIC;
  signal id0 : STD_LOGIC;
  signal \^m_dest_axi_wlast\ : STD_LOGIC;
  signal \^m_dest_axi_wvalid\ : STD_LOGIC;
  signal p_0_in17_in : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_1_in14_in : STD_LOGIC;
  signal src_beat : STD_LOGIC;
  signal \src_beat_counter_reg__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal src_id_next : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal src_id_reduced_msb : STD_LOGIC;
  signal src_last_beat : STD_LOGIC;
  signal src_mem_data : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \src_throttled_request_id[3]_i_3_n_0\ : STD_LOGIC;
  signal \^src_throttled_request_id_reg[0]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_burst_len_mem_reg_0_7_0_3_DOC_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_burst_len_mem_reg_0_7_0_3_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of burst_len_mem_reg_0_7_0_3 : label is "";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \dest_beat_counter[1]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \dest_beat_counter[2]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \dest_beat_counter[3]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \dest_id_next[1]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \dest_id_next[2]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \dest_id_next[3]_i_2\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of dest_id_reduced_msb_next_i_1 : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of dest_mem_data_last_i_2 : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of dest_mem_data_valid_i_1 : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of dest_valid_i_1 : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \src_beat_counter[0]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \src_beat_counter[1]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \src_beat_counter[2]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \src_beat_counter[3]_i_1\ : label is "soft_lutpair45";
begin
  Q(2 downto 0) <= \^q\(2 downto 0);
  m_dest_axi_wlast <= \^m_dest_axi_wlast\;
  m_dest_axi_wvalid <= \^m_dest_axi_wvalid\;
  \src_throttled_request_id_reg[0]\(2 downto 0) <= \^src_throttled_request_id_reg[0]\(2 downto 0);
addr_valid_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \id_reg[3]\(0),
      I2 => \id_reg[1]\,
      I3 => \^q\(1),
      I4 => dbg_ids0(2),
      I5 => \id_reg[3]\(1),
      O => addr_valid_reg
    );
burst_len_mem_reg_0_7_0_3: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 3) => B"00",
      ADDRA(2) => dest_id_reduced_msb_next,
      ADDRA(1 downto 0) => dest_id_reduced_next(1 downto 0),
      ADDRB(4 downto 3) => B"00",
      ADDRB(2) => dest_id_reduced_msb_next,
      ADDRB(1 downto 0) => dest_id_reduced_next(1 downto 0),
      ADDRC(4 downto 3) => B"00",
      ADDRC(2) => dest_id_reduced_msb_next,
      ADDRC(1 downto 0) => dest_id_reduced_next(1 downto 0),
      ADDRD(4 downto 3) => B"00",
      ADDRD(2) => src_id_reduced_msb,
      ADDRD(1 downto 0) => \^q\(1 downto 0),
      DIA(1 downto 0) => \src_beat_counter_reg__0\(1 downto 0),
      DIB(1 downto 0) => \src_beat_counter_reg__0\(3 downto 2),
      DIC(1 downto 0) => B"00",
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => dest_burst_len0(1 downto 0),
      DOB(1 downto 0) => dest_burst_len0(3 downto 2),
      DOC(1 downto 0) => NLW_burst_len_mem_reg_0_7_0_3_DOC_UNCONNECTED(1 downto 0),
      DOD(1 downto 0) => NLW_burst_len_mem_reg_0_7_0_3_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_axis_aclk,
      WE => src_last_beat
    );
\dest_beat_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \dest_beat_counter_reg__0\(0),
      O => \p_0_in__1\(0)
    );
\dest_beat_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_beat_counter_reg__0\(0),
      I1 => \dest_beat_counter_reg__0\(1),
      O => \p_0_in__1\(1)
    );
\dest_beat_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \dest_beat_counter_reg__0\(2),
      I1 => \dest_beat_counter_reg__0\(1),
      I2 => \dest_beat_counter_reg__0\(0),
      O => \p_0_in__1\(2)
    );
\dest_beat_counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \dest_beat_counter_reg__0\(3),
      I1 => \dest_beat_counter_reg__0\(0),
      I2 => \dest_beat_counter_reg__0\(1),
      I3 => \dest_beat_counter_reg__0\(2),
      O => \p_0_in__1\(3)
    );
\dest_beat_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => dest_beat,
      D => \p_0_in__1\(0),
      Q => \dest_beat_counter_reg__0\(0),
      R => \reset_gen[0].reset_sync_reg[0]\(0)
    );
\dest_beat_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => dest_beat,
      D => \p_0_in__1\(1),
      Q => \dest_beat_counter_reg__0\(1),
      R => \reset_gen[0].reset_sync_reg[0]\(0)
    );
\dest_beat_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => dest_beat,
      D => \p_0_in__1\(2),
      Q => \dest_beat_counter_reg__0\(2),
      R => \reset_gen[0].reset_sync_reg[0]\(0)
    );
\dest_beat_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => dest_beat,
      D => \p_0_in__1\(3),
      Q => \dest_beat_counter_reg__0\(3),
      R => \reset_gen[0].reset_sync_reg[0]\(0)
    );
\dest_burst_len_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => id0,
      D => dest_burst_len0(0),
      Q => dest_burst_len(0),
      R => '0'
    );
\dest_burst_len_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => id0,
      D => dest_burst_len0(1),
      Q => dest_burst_len(1),
      R => '0'
    );
\dest_burst_len_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => id0,
      D => dest_burst_len0(2),
      Q => dest_burst_len(2),
      R => '0'
    );
\dest_burst_len_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => id0,
      D => dest_burst_len0(3),
      Q => dest_burst_len(3),
      R => '0'
    );
\dest_id[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8AFF"
    )
        port map (
      I0 => dest_last,
      I1 => m_dest_axi_wready,
      I2 => \^m_dest_axi_wvalid\,
      I3 => dest_valid,
      O => dest_burst_ready
    );
\dest_id_next[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => dest_id_reduced_next(1),
      I1 => \dest_id_next_reg_n_0_[2]\,
      I2 => p_0_in17_in,
      O => \dest_id_next[0]_i_1_n_0\
    );
\dest_id_next[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D782"
    )
        port map (
      I0 => dest_id_reduced_next(0),
      I1 => p_0_in17_in,
      I2 => \dest_id_next_reg_n_0_[2]\,
      I3 => dest_id_reduced_next(1),
      O => b2g1_return013_out
    );
\dest_id_next[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CC4E"
    )
        port map (
      I0 => dest_id_reduced_next(1),
      I1 => \dest_id_next_reg_n_0_[2]\,
      I2 => p_0_in17_in,
      I3 => dest_id_reduced_next(0),
      O => b2g1_return015_out
    );
\dest_id_next[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8AFF0000"
    )
        port map (
      I0 => dest_last,
      I1 => m_dest_axi_wready,
      I2 => \^m_dest_axi_wvalid\,
      I3 => dest_valid,
      I4 => dest_burst_valid,
      O => id0
    );
\dest_id_next[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCD8"
    )
        port map (
      I0 => dest_id_reduced_next(0),
      I1 => p_0_in17_in,
      I2 => \dest_id_next_reg_n_0_[2]\,
      I3 => dest_id_reduced_next(1),
      O => p_1_in14_in
    );
\dest_id_next[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF6FF6"
    )
        port map (
      I0 => \id_reg[3]\(2),
      I1 => p_0_in17_in,
      I2 => \id_reg[3]\(1),
      I3 => \dest_id_next_reg_n_0_[2]\,
      I4 => \dest_id_next[3]_i_4_n_0\,
      O => dest_burst_valid
    );
\dest_id_next[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => dest_id_reduced_next(1),
      I1 => \id_reg[1]\,
      I2 => dest_id_reduced_next(0),
      I3 => \id_reg[3]\(0),
      O => \dest_id_next[3]_i_4_n_0\
    );
\dest_id_next_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => id0,
      D => \dest_id_next[0]_i_1_n_0\,
      Q => dest_id_reduced_next(0),
      R => \reset_gen[0].reset_sync_reg[0]\(0)
    );
\dest_id_next_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => id0,
      D => b2g1_return013_out,
      Q => dest_id_reduced_next(1),
      R => \reset_gen[0].reset_sync_reg[0]\(0)
    );
\dest_id_next_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => id0,
      D => b2g1_return015_out,
      Q => \dest_id_next_reg_n_0_[2]\,
      R => \reset_gen[0].reset_sync_reg[0]\(0)
    );
\dest_id_next_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => id0,
      D => p_1_in14_in,
      Q => p_0_in17_in,
      R => \reset_gen[0].reset_sync_reg[0]\(0)
    );
dest_id_reduced_msb_next_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3CAA"
    )
        port map (
      I0 => dest_id_reduced_next(1),
      I1 => \dest_id_next_reg_n_0_[2]\,
      I2 => p_0_in17_in,
      I3 => dest_id_reduced_next(0),
      O => dest_id_reduced_msb_next_i_1_n_0
    );
dest_id_reduced_msb_next_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => id0,
      D => dest_id_reduced_msb_next_i_1_n_0,
      Q => dest_id_reduced_msb_next,
      R => \reset_gen[0].reset_sync_reg[0]\(0)
    );
dest_id_reduced_msb_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => dest_burst_ready,
      D => dest_id_reduced_msb_next,
      Q => dest_id_reduced_msb,
      R => '0'
    );
\dest_id_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => dest_burst_ready,
      D => dest_id_reduced_next(0),
      Q => \^src_throttled_request_id_reg[0]\(0),
      R => '0'
    );
\dest_id_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => dest_burst_ready,
      D => dest_id_reduced_next(1),
      Q => dbg_ids0(17),
      R => '0'
    );
\dest_id_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => dest_burst_ready,
      D => \dest_id_next_reg_n_0_[2]\,
      Q => \^src_throttled_request_id_reg[0]\(1),
      R => '0'
    );
\dest_id_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => dest_burst_ready,
      D => p_0_in17_in,
      Q => \^src_throttled_request_id_reg[0]\(2),
      R => '0'
    );
dest_mem_data_last_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000008F8B8088"
    )
        port map (
      I0 => dest_last,
      I1 => dest_valid,
      I2 => m_dest_axi_wready,
      I3 => \^m_dest_axi_wvalid\,
      I4 => \^m_dest_axi_wlast\,
      I5 => \reset_gen[0].reset_sync_reg[0]\(0),
      O => dest_mem_data_last_i_1_n_0
    );
dest_mem_data_last_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00009009"
    )
        port map (
      I0 => \dest_beat_counter_reg__0\(0),
      I1 => dest_burst_len(0),
      I2 => \dest_beat_counter_reg__0\(1),
      I3 => dest_burst_len(1),
      I4 => dest_mem_data_last_i_3_n_0,
      O => dest_last
    );
dest_mem_data_last_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => dest_burst_len(2),
      I1 => \dest_beat_counter_reg__0\(2),
      I2 => dest_burst_len(3),
      I3 => \dest_beat_counter_reg__0\(3),
      O => dest_mem_data_last_i_3_n_0
    );
dest_mem_data_last_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => '1',
      D => dest_mem_data_last_i_1_n_0,
      Q => \^m_dest_axi_wlast\,
      R => '0'
    );
dest_mem_data_valid_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DC"
    )
        port map (
      I0 => m_dest_axi_wready,
      I1 => dest_valid,
      I2 => \^m_dest_axi_wvalid\,
      O => dest_mem_data_valid_i_1_n_0
    );
dest_mem_data_valid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => '1',
      D => dest_mem_data_valid_i_1_n_0,
      Q => \^m_dest_axi_wvalid\,
      R => \reset_gen[0].reset_sync_reg[0]\(0)
    );
dest_valid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF4C44"
    )
        port map (
      I0 => dest_last,
      I1 => dest_valid,
      I2 => m_dest_axi_wready,
      I3 => \^m_dest_axi_wvalid\,
      I4 => dest_burst_valid,
      O => dest_valid_i_1_n_0
    );
dest_valid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => '1',
      D => dest_valid_i_1_n_0,
      Q => dest_valid,
      R => \reset_gen[0].reset_sync_reg[0]\(0)
    );
i_mem: entity work.zsys_axi_dmac_0_0_ad_mem
     port map (
      ADDRARDADDR(6) => dest_id_reduced_msb,
      ADDRARDADDR(5) => dbg_ids0(17),
      ADDRARDADDR(4) => \^src_throttled_request_id_reg[0]\(0),
      ADDRARDADDR(3 downto 0) => \dest_beat_counter_reg__0\(3 downto 0),
      ADDRBWRADDR(6) => src_id_reduced_msb,
      ADDRBWRADDR(5 downto 4) => \^q\(1 downto 0),
      ADDRBWRADDR(3 downto 0) => \src_beat_counter_reg__0\(3 downto 0),
      E(0) => dest_beat,
      dest_mem_data_valid_reg => \^m_dest_axi_wvalid\,
      dest_valid => dest_valid,
      m_dest_axi_aclk => m_dest_axi_aclk,
      m_dest_axi_wdata(63 downto 0) => m_dest_axi_wdata(63 downto 0),
      m_dest_axi_wready => m_dest_axi_wready,
      s_axis_aclk => s_axis_aclk,
      src_beat => src_beat,
      src_mem_data(63 downto 0) => src_mem_data(63 downto 0)
    );
i_resize_src: entity work.zsys_axi_dmac_0_0_axi_dmac_resize_src
     port map (
      D(3 downto 0) => src_id_next(3 downto 0),
      Q(3) => \^q\(2),
      Q(2) => dbg_ids0(2),
      Q(1 downto 0) => \^q\(1 downto 0),
      active_reg => active_reg,
      \data_reg[32]_0\ => p_1_out0,
      pending_burst => pending_burst,
      pending_burst_reg => pending_burst_reg,
      \reset_gen[0].reset_sync_reg[0]\(0) => \reset_gen[0].reset_sync_reg[0]\(0),
      s_axis_aclk => s_axis_aclk,
      s_axis_data(31 downto 0) => s_axis_data(31 downto 0),
      s_axis_valid => s_axis_valid,
      src_beat => src_beat,
      src_id_reduced_msb_reg => i_resize_src_n_5,
      src_last => src_last,
      src_last_beat => src_last_beat,
      src_mem_data(63 downto 0) => src_mem_data(63 downto 0),
      transfer_abort_reg => transfer_abort_reg
    );
\src_beat_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \src_beat_counter_reg__0\(0),
      O => \p_0_in__0\(0)
    );
\src_beat_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \src_beat_counter_reg__0\(0),
      I1 => \src_beat_counter_reg__0\(1),
      O => \p_0_in__0\(1)
    );
\src_beat_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \src_beat_counter_reg__0\(2),
      I1 => \src_beat_counter_reg__0\(1),
      I2 => \src_beat_counter_reg__0\(0),
      O => \p_0_in__0\(2)
    );
\src_beat_counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \src_beat_counter_reg__0\(3),
      I1 => \src_beat_counter_reg__0\(0),
      I2 => \src_beat_counter_reg__0\(1),
      I3 => \src_beat_counter_reg__0\(2),
      O => \p_0_in__0\(3)
    );
\src_beat_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => src_beat,
      D => \p_0_in__0\(0),
      Q => \src_beat_counter_reg__0\(0),
      R => \reset_gen[0].reset_sync_reg[0]\(0)
    );
\src_beat_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => src_beat,
      D => \p_0_in__0\(1),
      Q => \src_beat_counter_reg__0\(1),
      R => \reset_gen[0].reset_sync_reg[0]\(0)
    );
\src_beat_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => src_beat,
      D => \p_0_in__0\(2),
      Q => \src_beat_counter_reg__0\(2),
      R => \reset_gen[0].reset_sync_reg[0]\(0)
    );
\src_beat_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => src_beat,
      D => \p_0_in__0\(3),
      Q => \src_beat_counter_reg__0\(3),
      R => \reset_gen[0].reset_sync_reg[0]\(0)
    );
src_id_reduced_msb_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => '1',
      D => i_resize_src_n_5,
      Q => src_id_reduced_msb,
      R => \reset_gen[0].reset_sync_reg[0]\(0)
    );
\src_id_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => '1',
      D => src_id_next(0),
      Q => \^q\(0),
      R => \reset_gen[0].reset_sync_reg[0]\(0)
    );
\src_id_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => '1',
      D => src_id_next(1),
      Q => \^q\(1),
      R => \reset_gen[0].reset_sync_reg[0]\(0)
    );
\src_id_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => '1',
      D => src_id_next(2),
      Q => dbg_ids0(2),
      R => \reset_gen[0].reset_sync_reg[0]\(0)
    );
\src_id_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => '1',
      D => src_id_next(3),
      Q => \^q\(2),
      R => \reset_gen[0].reset_sync_reg[0]\(0)
    );
\src_throttled_request_id[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFBEBEFF"
    )
        port map (
      I0 => \src_throttled_request_id[3]_i_3_n_0\,
      I1 => dbg_ids0(17),
      I2 => \src_throttled_request_id_reg[3]\(1),
      I3 => \^src_throttled_request_id_reg[0]\(1),
      I4 => \src_throttled_request_id_reg[3]\(2),
      I5 => \src_throttled_request_id_reg[3]_0\,
      O => E(0)
    );
\src_throttled_request_id[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F66F"
    )
        port map (
      I0 => \^src_throttled_request_id_reg[0]\(0),
      I1 => \src_throttled_request_id_reg[3]\(0),
      I2 => \^src_throttled_request_id_reg[0]\(2),
      I3 => \src_throttled_request_id_reg[3]\(3),
      O => \src_throttled_request_id[3]_i_3_n_0\
    );
\up_rdata[17]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => dbg_ids0(17),
      I1 => \up_raddr_int_reg[2]\,
      I2 => m_dest_axi_awaddr(0),
      O => \up_rdata_reg[17]\
    );
\up_rdata[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => dbg_ids0(2),
      I1 => \up_raddr_int_reg[2]_0\,
      I2 => \state_reg[2]\(0),
      I3 => \up_raddr_int_reg[2]\,
      O => \up_rdata_reg[2]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_axi_dmac_0_0_axi_dmac_regmap is
  port (
    \up_rdata_d_reg[31]\ : out STD_LOGIC;
    irq : out STD_LOGIC;
    up_dma_req_valid : out STD_LOGIC;
    ctrl_enable : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    ctrl_pause : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \up_rdata_reg[9]_0\ : out STD_LOGIC;
    \up_rdata_reg[9]_1\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 28 downto 0 );
    \up_rdata_reg[23]_0\ : out STD_LOGIC_VECTOR ( 16 downto 0 );
    needs_reset_reg : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    up_sot : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    up_req_eot : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    dbg_status : in STD_LOGIC_VECTOR ( 4 downto 0 );
    dbg_ids0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dbg_ids1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \src_id_reg[2]\ : in STD_LOGIC;
    m_dest_axi_awaddr : in STD_LOGIC_VECTOR ( 19 downto 0 );
    \reset_gen[0].reset_sync_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \id_reg[2]\ : in STD_LOGIC;
    \id_reg[3]\ : in STD_LOGIC;
    \id_reg[1]\ : in STD_LOGIC;
    \id_reg[0]\ : in STD_LOGIC;
    \dest_id_reg[3]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \dest_id_reg[1]\ : in STD_LOGIC;
    \address_reg[0]\ : in STD_LOGIC;
    needs_reset_reg_0 : in STD_LOGIC;
    \reset_gen[0].reset_sync_reg[0]_0\ : in STD_LOGIC;
    \reset_gen[0].reset_sync_reg[0]_1\ : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
end zsys_axi_dmac_0_0_axi_dmac_regmap;

architecture STRUCTURE of zsys_axi_dmac_0_0_axi_dmac_regmap is
  signal \^d\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 28 downto 0 );
  signal \^ctrl_enable\ : STD_LOGIC;
  signal \^ctrl_pause\ : STD_LOGIC;
  signal i_regmap_request_n_37 : STD_LOGIC;
  signal i_regmap_request_n_38 : STD_LOGIC;
  signal i_regmap_request_n_56 : STD_LOGIC;
  signal i_regmap_request_n_57 : STD_LOGIC;
  signal i_regmap_request_n_58 : STD_LOGIC;
  signal i_regmap_request_n_59 : STD_LOGIC;
  signal i_regmap_request_n_60 : STD_LOGIC;
  signal i_regmap_request_n_61 : STD_LOGIC;
  signal i_regmap_request_n_62 : STD_LOGIC;
  signal i_regmap_request_n_63 : STD_LOGIC;
  signal i_regmap_request_n_64 : STD_LOGIC;
  signal i_regmap_request_n_65 : STD_LOGIC;
  signal i_regmap_request_n_66 : STD_LOGIC;
  signal i_regmap_request_n_67 : STD_LOGIC;
  signal i_regmap_request_n_68 : STD_LOGIC;
  signal i_regmap_request_n_69 : STD_LOGIC;
  signal i_regmap_request_n_7 : STD_LOGIC;
  signal i_regmap_request_n_70 : STD_LOGIC;
  signal i_regmap_request_n_72 : STD_LOGIC;
  signal i_regmap_request_n_73 : STD_LOGIC;
  signal i_regmap_request_n_74 : STD_LOGIC;
  signal i_regmap_request_n_75 : STD_LOGIC;
  signal i_up_axi_n_10 : STD_LOGIC;
  signal i_up_axi_n_11 : STD_LOGIC;
  signal i_up_axi_n_12 : STD_LOGIC;
  signal i_up_axi_n_13 : STD_LOGIC;
  signal i_up_axi_n_14 : STD_LOGIC;
  signal i_up_axi_n_15 : STD_LOGIC;
  signal i_up_axi_n_16 : STD_LOGIC;
  signal i_up_axi_n_38 : STD_LOGIC;
  signal i_up_axi_n_39 : STD_LOGIC;
  signal i_up_axi_n_40 : STD_LOGIC;
  signal i_up_axi_n_41 : STD_LOGIC;
  signal i_up_axi_n_42 : STD_LOGIC;
  signal i_up_axi_n_43 : STD_LOGIC;
  signal i_up_axi_n_44 : STD_LOGIC;
  signal i_up_axi_n_45 : STD_LOGIC;
  signal i_up_axi_n_8 : STD_LOGIC;
  signal i_up_axi_n_83 : STD_LOGIC;
  signal i_up_axi_n_84 : STD_LOGIC;
  signal i_up_axi_n_85 : STD_LOGIC;
  signal i_up_axi_n_86 : STD_LOGIC;
  signal i_up_axi_n_87 : STD_LOGIC;
  signal i_up_axi_n_9 : STD_LOGIC;
  signal irq_i_1_n_0 : STD_LOGIC;
  signal up_dma_dest_address : STD_LOGIC;
  signal \^up_dma_req_valid\ : STD_LOGIC;
  signal up_dma_x_length0_in : STD_LOGIC_VECTOR ( 23 downto 3 );
  signal \up_irq_mask[0]_i_1_n_0\ : STD_LOGIC;
  signal \up_irq_mask[1]_i_1_n_0\ : STD_LOGIC;
  signal \up_irq_mask_reg_n_0_[0]\ : STD_LOGIC;
  signal \up_irq_mask_reg_n_0_[1]\ : STD_LOGIC;
  signal up_irq_source : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal up_rack : STD_LOGIC;
  signal up_raddr : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal up_rdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal up_rdata_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^up_rdata_d_reg[31]\ : STD_LOGIC;
  signal \^up_rdata_reg[23]_0\ : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal up_rreq : STD_LOGIC;
  signal up_scratch : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal up_transfer_id : STD_LOGIC_VECTOR ( 0 to 0 );
  signal up_transfer_id_eot : STD_LOGIC_VECTOR ( 0 to 0 );
  signal up_wack : STD_LOGIC;
  signal up_wreq : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \up_irq_mask[0]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \up_irq_mask[1]_i_1\ : label is "soft_lutpair24";
begin
  D(4 downto 0) <= \^d\(4 downto 0);
  Q(28 downto 0) <= \^q\(28 downto 0);
  ctrl_enable <= \^ctrl_enable\;
  ctrl_pause <= \^ctrl_pause\;
  up_dma_req_valid <= \^up_dma_req_valid\;
  \up_rdata_d_reg[31]\ <= \^up_rdata_d_reg[31]\;
  \up_rdata_reg[23]_0\(16 downto 0) <= \^up_rdata_reg[23]_0\(16 downto 0);
ctrl_enable_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => i_up_axi_n_87,
      Q => \^ctrl_enable\,
      R => \^up_rdata_d_reg[31]\
    );
ctrl_pause_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => i_up_axi_n_86,
      Q => \^ctrl_pause\,
      R => \^up_rdata_d_reg[31]\
    );
i_regmap_request: entity work.zsys_axi_dmac_0_0_axi_dmac_regmap_request
     port map (
      D(4 downto 0) => \^d\(4 downto 0),
      E(0) => i_up_axi_n_41,
      Q(28 downto 0) => \^q\(28 downto 0),
      ctrl_enable_reg => i_up_axi_n_8,
      ctrl_enable_reg_0 => \^ctrl_enable\,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => \^up_rdata_d_reg[31]\,
      up_dma_req_valid => \^up_dma_req_valid\,
      \up_raddr_int_reg[0]\ => i_up_axi_n_83,
      \up_raddr_int_reg[2]\ => i_up_axi_n_84,
      \up_raddr_int_reg[3]\(1) => up_raddr(3),
      \up_raddr_int_reg[3]\(0) => up_raddr(1),
      \up_rdata_reg[10]\ => i_regmap_request_n_58,
      \up_rdata_reg[11]\ => i_regmap_request_n_59,
      \up_rdata_reg[12]\ => i_regmap_request_n_60,
      \up_rdata_reg[13]\ => i_regmap_request_n_61,
      \up_rdata_reg[15]\ => i_regmap_request_n_62,
      \up_rdata_reg[16]\ => i_regmap_request_n_63,
      \up_rdata_reg[17]\ => i_regmap_request_n_64,
      \up_rdata_reg[18]\ => i_regmap_request_n_65,
      \up_rdata_reg[19]\ => i_regmap_request_n_66,
      \up_rdata_reg[1]\ => i_regmap_request_n_70,
      \up_rdata_reg[20]\ => i_regmap_request_n_67,
      \up_rdata_reg[21]\ => i_regmap_request_n_68,
      \up_rdata_reg[23]\(16 downto 0) => \^up_rdata_reg[23]_0\(16 downto 0),
      \up_rdata_reg[23]_0\ => i_regmap_request_n_69,
      \up_rdata_reg[4]\ => i_regmap_request_n_7,
      \up_rdata_reg[6]\ => i_regmap_request_n_37,
      \up_rdata_reg[7]\ => i_regmap_request_n_38,
      \up_rdata_reg[8]\ => i_regmap_request_n_56,
      \up_rdata_reg[9]\ => i_regmap_request_n_57,
      up_req_eot => up_req_eot,
      up_sot => up_sot,
      \up_transfer_done_bitmap_reg[0]_0\ => i_regmap_request_n_75,
      \up_transfer_done_bitmap_reg[1]_0\ => i_regmap_request_n_74,
      \up_transfer_done_bitmap_reg[2]_0\ => i_regmap_request_n_73,
      \up_transfer_done_bitmap_reg[3]_0\ => i_regmap_request_n_72,
      \up_transfer_id_eot_reg[1]_0\(0) => up_transfer_id_eot(0),
      \up_transfer_id_reg[1]_0\(0) => up_transfer_id(0),
      \up_waddr_int_reg[2]\(0) => up_dma_dest_address,
      \up_wdata_int_reg[1]\ => i_up_axi_n_85,
      \up_wdata_int_reg[31]\(28) => i_up_axi_n_9,
      \up_wdata_int_reg[31]\(27) => i_up_axi_n_10,
      \up_wdata_int_reg[31]\(26) => i_up_axi_n_11,
      \up_wdata_int_reg[31]\(25) => i_up_axi_n_12,
      \up_wdata_int_reg[31]\(24) => i_up_axi_n_13,
      \up_wdata_int_reg[31]\(23) => i_up_axi_n_14,
      \up_wdata_int_reg[31]\(22) => i_up_axi_n_15,
      \up_wdata_int_reg[31]\(21) => i_up_axi_n_16,
      \up_wdata_int_reg[31]\(20 downto 0) => up_dma_x_length0_in(23 downto 3)
    );
i_up_axi: entity work.zsys_axi_dmac_0_0_up_axi
     port map (
      D(1) => i_up_axi_n_43,
      D(0) => i_up_axi_n_44,
      E(0) => up_rreq,
      Q(31) => i_up_axi_n_9,
      Q(30) => i_up_axi_n_10,
      Q(29) => i_up_axi_n_11,
      Q(28) => i_up_axi_n_12,
      Q(27) => i_up_axi_n_13,
      Q(26) => i_up_axi_n_14,
      Q(25) => i_up_axi_n_15,
      Q(24) => i_up_axi_n_16,
      Q(23 downto 3) => up_dma_x_length0_in(23 downto 3),
      Q(2) => i_up_axi_n_38,
      Q(1) => i_up_axi_n_39,
      Q(0) => i_up_axi_n_40,
      \address_reg[0]\ => \address_reg[0]\,
      ctrl_enable_reg => i_up_axi_n_87,
      ctrl_enable_reg_0 => \^ctrl_enable\,
      ctrl_pause => \^ctrl_pause\,
      ctrl_pause_reg => i_up_axi_n_86,
      dbg_ids0(3 downto 0) => dbg_ids0(3 downto 0),
      dbg_ids1(7 downto 0) => dbg_ids1(7 downto 0),
      dbg_status(3 downto 0) => dbg_status(3 downto 0),
      \dest_id_reg[1]\ => \dest_id_reg[1]\,
      \dest_id_reg[3]\(1 downto 0) => \dest_id_reg[3]\(1 downto 0),
      \id_reg[0]\ => \id_reg[0]\,
      \id_reg[1]\ => \id_reg[1]\,
      \id_reg[2]\ => \id_reg[2]\,
      \id_reg[3]\ => \id_reg[3]\,
      m_dest_axi_awaddr(19 downto 0) => m_dest_axi_awaddr(19 downto 0),
      needs_reset_reg => needs_reset_reg_0,
      \reset_gen[0].reset_sync_reg[0]\(0) => \reset_gen[0].reset_sync_reg[0]\(0),
      \reset_gen[0].reset_sync_reg[0]_0\ => \reset_gen[0].reset_sync_reg[0]_0\,
      \reset_gen[0].reset_sync_reg[0]_1\ => \reset_gen[0].reset_sync_reg[0]_1\,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(8 downto 0) => s_axi_araddr(8 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(8 downto 0) => s_axi_awaddr(8 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wvalid => s_axi_wvalid,
      \src_id_reg[2]\ => \src_id_reg[2]\,
      \up_dma_dest_address_reg[10]\ => i_regmap_request_n_58,
      \up_dma_dest_address_reg[11]\ => i_regmap_request_n_59,
      \up_dma_dest_address_reg[12]\ => i_regmap_request_n_60,
      \up_dma_dest_address_reg[13]\ => i_regmap_request_n_61,
      \up_dma_dest_address_reg[15]\ => i_regmap_request_n_62,
      \up_dma_dest_address_reg[16]\ => i_regmap_request_n_63,
      \up_dma_dest_address_reg[17]\ => i_regmap_request_n_64,
      \up_dma_dest_address_reg[18]\ => i_regmap_request_n_65,
      \up_dma_dest_address_reg[19]\ => i_regmap_request_n_66,
      \up_dma_dest_address_reg[20]\ => i_regmap_request_n_67,
      \up_dma_dest_address_reg[21]\ => i_regmap_request_n_68,
      \up_dma_dest_address_reg[23]\ => i_regmap_request_n_69,
      \up_dma_dest_address_reg[31]\(0) => up_dma_dest_address,
      \up_dma_dest_address_reg[31]_0\(11 downto 4) => \^q\(28 downto 21),
      \up_dma_dest_address_reg[31]_0\(3) => \^q\(19),
      \up_dma_dest_address_reg[31]_0\(2) => \^q\(11),
      \up_dma_dest_address_reg[31]_0\(1) => \^q\(2),
      \up_dma_dest_address_reg[31]_0\(0) => \^q\(0),
      \up_dma_dest_address_reg[4]\ => i_regmap_request_n_7,
      \up_dma_dest_address_reg[6]\ => i_regmap_request_n_37,
      \up_dma_dest_address_reg[7]\ => i_regmap_request_n_38,
      \up_dma_dest_address_reg[8]\ => i_regmap_request_n_56,
      \up_dma_dest_address_reg[9]\ => i_regmap_request_n_57,
      up_dma_last_reg => i_up_axi_n_85,
      up_dma_req_valid => \^up_dma_req_valid\,
      up_dma_req_valid_reg => i_up_axi_n_8,
      \up_dma_x_length_reg[22]\(1) => \^up_rdata_reg[23]_0\(15),
      \up_dma_x_length_reg[22]\(0) => \^up_rdata_reg[23]_0\(7),
      \up_dma_x_length_reg[3]\(0) => i_up_axi_n_41,
      \up_dma_x_length_reg[5]\(2) => \^d\(3),
      \up_dma_x_length_reg[5]\(1 downto 0) => \^d\(1 downto 0),
      \up_irq_mask_reg[0]\ => i_up_axi_n_45,
      \up_irq_mask_reg[0]_0\ => \up_irq_mask_reg_n_0_[0]\,
      \up_irq_mask_reg[1]\ => \up_irq_mask_reg_n_0_[1]\,
      \up_irq_source_reg[1]\(1 downto 0) => up_irq_source(1 downto 0),
      up_rack => up_rack,
      \up_rdata_d_reg[31]_0\ => \^up_rdata_d_reg[31]\,
      \up_rdata_reg[1]\ => i_up_axi_n_84,
      \up_rdata_reg[31]\(31 downto 0) => up_rdata_0(31 downto 0),
      \up_rdata_reg[31]_0\(31 downto 0) => up_rdata(31 downto 0),
      \up_rdata_reg[5]\ => i_up_axi_n_83,
      \up_rdata_reg[9]\ => \up_rdata_reg[9]_0\,
      \up_rdata_reg[9]_0\ => \up_rdata_reg[9]_1\,
      \up_rdata_reg[9]_1\(1) => up_raddr(3),
      \up_rdata_reg[9]_1\(0) => up_raddr(1),
      up_req_eot => up_req_eot,
      \up_scratch_reg[0]\(0) => i_up_axi_n_42,
      \up_scratch_reg[31]\(31 downto 0) => up_scratch(31 downto 0),
      up_sot => up_sot,
      \up_transfer_done_bitmap_reg[0]\ => i_regmap_request_n_75,
      \up_transfer_done_bitmap_reg[1]\ => i_regmap_request_n_74,
      \up_transfer_done_bitmap_reg[2]\ => i_regmap_request_n_73,
      \up_transfer_done_bitmap_reg[3]\ => i_regmap_request_n_72,
      \up_transfer_id_eot_reg[0]\(0) => up_transfer_id_eot(0),
      \up_transfer_id_reg[0]\(0) => up_transfer_id(0),
      \up_transfer_id_reg[1]\ => i_regmap_request_n_70,
      up_wack => up_wack,
      up_wreq => up_wreq
    );
irq_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \up_irq_mask_reg_n_0_[1]\,
      I1 => up_irq_source(1),
      I2 => \up_irq_mask_reg_n_0_[0]\,
      I3 => up_irq_source(0),
      O => irq_i_1_n_0
    );
irq_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => irq_i_1_n_0,
      Q => irq,
      R => \^up_rdata_d_reg[31]\
    );
needs_reset_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"D"
    )
        port map (
      I0 => \^ctrl_enable\,
      I1 => dbg_status(4),
      O => needs_reset_reg
    );
\up_irq_mask[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_up_axi_n_40,
      I1 => i_up_axi_n_45,
      I2 => \up_irq_mask_reg_n_0_[0]\,
      O => \up_irq_mask[0]_i_1_n_0\
    );
\up_irq_mask[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_up_axi_n_39,
      I1 => i_up_axi_n_45,
      I2 => \up_irq_mask_reg_n_0_[1]\,
      O => \up_irq_mask[1]_i_1_n_0\
    );
\up_irq_mask_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_irq_mask[0]_i_1_n_0\,
      Q => \up_irq_mask_reg_n_0_[0]\,
      S => \^up_rdata_d_reg[31]\
    );
\up_irq_mask_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_irq_mask[1]_i_1_n_0\,
      Q => \up_irq_mask_reg_n_0_[1]\,
      S => \^up_rdata_d_reg[31]\
    );
\up_irq_source_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => i_up_axi_n_44,
      Q => up_irq_source(0),
      R => \^up_rdata_d_reg[31]\
    );
\up_irq_source_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => i_up_axi_n_43,
      Q => up_irq_source(1),
      R => \^up_rdata_d_reg[31]\
    );
up_rack_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rreq,
      Q => up_rack,
      R => \^up_rdata_d_reg[31]\
    );
\up_rdata_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(0),
      Q => up_rdata(0),
      R => '0'
    );
\up_rdata_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(10),
      Q => up_rdata(10),
      R => '0'
    );
\up_rdata_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(11),
      Q => up_rdata(11),
      R => '0'
    );
\up_rdata_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(12),
      Q => up_rdata(12),
      R => '0'
    );
\up_rdata_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(13),
      Q => up_rdata(13),
      R => '0'
    );
\up_rdata_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(14),
      Q => up_rdata(14),
      R => '0'
    );
\up_rdata_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(15),
      Q => up_rdata(15),
      R => '0'
    );
\up_rdata_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(16),
      Q => up_rdata(16),
      R => '0'
    );
\up_rdata_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(17),
      Q => up_rdata(17),
      R => '0'
    );
\up_rdata_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(18),
      Q => up_rdata(18),
      R => '0'
    );
\up_rdata_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(19),
      Q => up_rdata(19),
      R => '0'
    );
\up_rdata_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(1),
      Q => up_rdata(1),
      R => '0'
    );
\up_rdata_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(20),
      Q => up_rdata(20),
      R => '0'
    );
\up_rdata_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(21),
      Q => up_rdata(21),
      R => '0'
    );
\up_rdata_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(22),
      Q => up_rdata(22),
      R => '0'
    );
\up_rdata_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(23),
      Q => up_rdata(23),
      R => '0'
    );
\up_rdata_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(24),
      Q => up_rdata(24),
      R => '0'
    );
\up_rdata_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(25),
      Q => up_rdata(25),
      R => '0'
    );
\up_rdata_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(26),
      Q => up_rdata(26),
      R => '0'
    );
\up_rdata_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(27),
      Q => up_rdata(27),
      R => '0'
    );
\up_rdata_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(28),
      Q => up_rdata(28),
      R => '0'
    );
\up_rdata_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(29),
      Q => up_rdata(29),
      R => '0'
    );
\up_rdata_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(2),
      Q => up_rdata(2),
      R => '0'
    );
\up_rdata_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(30),
      Q => up_rdata(30),
      R => '0'
    );
\up_rdata_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(31),
      Q => up_rdata(31),
      R => '0'
    );
\up_rdata_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(3),
      Q => up_rdata(3),
      R => '0'
    );
\up_rdata_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(4),
      Q => up_rdata(4),
      R => '0'
    );
\up_rdata_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(5),
      Q => up_rdata(5),
      R => '0'
    );
\up_rdata_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(6),
      Q => up_rdata(6),
      R => '0'
    );
\up_rdata_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(7),
      Q => up_rdata(7),
      R => '0'
    );
\up_rdata_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(8),
      Q => up_rdata(8),
      R => '0'
    );
\up_rdata_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(9),
      Q => up_rdata(9),
      R => '0'
    );
\up_scratch_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_42,
      D => i_up_axi_n_40,
      Q => up_scratch(0),
      R => \^up_rdata_d_reg[31]\
    );
\up_scratch_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_42,
      D => up_dma_x_length0_in(10),
      Q => up_scratch(10),
      R => \^up_rdata_d_reg[31]\
    );
\up_scratch_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_42,
      D => up_dma_x_length0_in(11),
      Q => up_scratch(11),
      R => \^up_rdata_d_reg[31]\
    );
\up_scratch_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_42,
      D => up_dma_x_length0_in(12),
      Q => up_scratch(12),
      R => \^up_rdata_d_reg[31]\
    );
\up_scratch_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_42,
      D => up_dma_x_length0_in(13),
      Q => up_scratch(13),
      R => \^up_rdata_d_reg[31]\
    );
\up_scratch_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_42,
      D => up_dma_x_length0_in(14),
      Q => up_scratch(14),
      R => \^up_rdata_d_reg[31]\
    );
\up_scratch_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_42,
      D => up_dma_x_length0_in(15),
      Q => up_scratch(15),
      R => \^up_rdata_d_reg[31]\
    );
\up_scratch_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_42,
      D => up_dma_x_length0_in(16),
      Q => up_scratch(16),
      R => \^up_rdata_d_reg[31]\
    );
\up_scratch_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_42,
      D => up_dma_x_length0_in(17),
      Q => up_scratch(17),
      R => \^up_rdata_d_reg[31]\
    );
\up_scratch_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_42,
      D => up_dma_x_length0_in(18),
      Q => up_scratch(18),
      R => \^up_rdata_d_reg[31]\
    );
\up_scratch_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_42,
      D => up_dma_x_length0_in(19),
      Q => up_scratch(19),
      R => \^up_rdata_d_reg[31]\
    );
\up_scratch_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_42,
      D => i_up_axi_n_39,
      Q => up_scratch(1),
      R => \^up_rdata_d_reg[31]\
    );
\up_scratch_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_42,
      D => up_dma_x_length0_in(20),
      Q => up_scratch(20),
      R => \^up_rdata_d_reg[31]\
    );
\up_scratch_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_42,
      D => up_dma_x_length0_in(21),
      Q => up_scratch(21),
      R => \^up_rdata_d_reg[31]\
    );
\up_scratch_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_42,
      D => up_dma_x_length0_in(22),
      Q => up_scratch(22),
      R => \^up_rdata_d_reg[31]\
    );
\up_scratch_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_42,
      D => up_dma_x_length0_in(23),
      Q => up_scratch(23),
      R => \^up_rdata_d_reg[31]\
    );
\up_scratch_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_42,
      D => i_up_axi_n_16,
      Q => up_scratch(24),
      R => \^up_rdata_d_reg[31]\
    );
\up_scratch_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_42,
      D => i_up_axi_n_15,
      Q => up_scratch(25),
      R => \^up_rdata_d_reg[31]\
    );
\up_scratch_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_42,
      D => i_up_axi_n_14,
      Q => up_scratch(26),
      R => \^up_rdata_d_reg[31]\
    );
\up_scratch_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_42,
      D => i_up_axi_n_13,
      Q => up_scratch(27),
      R => \^up_rdata_d_reg[31]\
    );
\up_scratch_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_42,
      D => i_up_axi_n_12,
      Q => up_scratch(28),
      R => \^up_rdata_d_reg[31]\
    );
\up_scratch_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_42,
      D => i_up_axi_n_11,
      Q => up_scratch(29),
      R => \^up_rdata_d_reg[31]\
    );
\up_scratch_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_42,
      D => i_up_axi_n_38,
      Q => up_scratch(2),
      R => \^up_rdata_d_reg[31]\
    );
\up_scratch_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_42,
      D => i_up_axi_n_10,
      Q => up_scratch(30),
      R => \^up_rdata_d_reg[31]\
    );
\up_scratch_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_42,
      D => i_up_axi_n_9,
      Q => up_scratch(31),
      R => \^up_rdata_d_reg[31]\
    );
\up_scratch_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_42,
      D => up_dma_x_length0_in(3),
      Q => up_scratch(3),
      R => \^up_rdata_d_reg[31]\
    );
\up_scratch_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_42,
      D => up_dma_x_length0_in(4),
      Q => up_scratch(4),
      R => \^up_rdata_d_reg[31]\
    );
\up_scratch_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_42,
      D => up_dma_x_length0_in(5),
      Q => up_scratch(5),
      R => \^up_rdata_d_reg[31]\
    );
\up_scratch_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_42,
      D => up_dma_x_length0_in(6),
      Q => up_scratch(6),
      R => \^up_rdata_d_reg[31]\
    );
\up_scratch_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_42,
      D => up_dma_x_length0_in(7),
      Q => up_scratch(7),
      R => \^up_rdata_d_reg[31]\
    );
\up_scratch_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_42,
      D => up_dma_x_length0_in(8),
      Q => up_scratch(8),
      R => \^up_rdata_d_reg[31]\
    );
\up_scratch_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_42,
      D => up_dma_x_length0_in(9),
      Q => up_scratch(9),
      R => \^up_rdata_d_reg[31]\
    );
up_wack_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_wreq,
      Q => up_wack,
      R => \^up_rdata_d_reg[31]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_axi_dmac_0_0_dmac_dest_mm_axi is
  port (
    m_dest_axi_awvalid : out STD_LOGIC;
    dbg_ids0 : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \id_reg[0]\ : out STD_LOGIC;
    m_dest_axi_awaddr : out STD_LOGIC_VECTOR ( 28 downto 0 );
    enabled_reg : out STD_LOGIC;
    dest_req_ready : out STD_LOGIC;
    enabled_reg_0 : out STD_LOGIC;
    \up_rdata_reg[26]\ : out STD_LOGIC;
    \up_rdata_reg[3]\ : out STD_LOGIC;
    \up_rdata_reg[8]\ : out STD_LOGIC;
    \up_rdata_reg[10]\ : out STD_LOGIC;
    \up_rdata_reg[11]\ : out STD_LOGIC;
    \up_rdata_reg[24]\ : out STD_LOGIC;
    \up_rdata_reg[25]\ : out STD_LOGIC;
    \up_rdata_reg[27]\ : out STD_LOGIC;
    m_dest_axi_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_dest_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    id0 : in STD_LOGIC;
    dest_address_eot : in STD_LOGIC;
    m_dest_axi_awready : in STD_LOGIC;
    \cdc_sync_fifo_ram_reg[33]\ : in STD_LOGIC_VECTOR ( 32 downto 0 );
    \up_raddr_int_reg[2]\ : in STD_LOGIC;
    \up_raddr_int_reg[2]_0\ : in STD_LOGIC;
    \src_id_reg[3]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    needs_reset_reg : in STD_LOGIC;
    do_enable_reg : in STD_LOGIC;
    s_axis_waddr : in STD_LOGIC;
    m_axis_raddr : in STD_LOGIC;
    \src_id_reg[0]\ : in STD_LOGIC
  );
end zsys_axi_dmac_0_0_dmac_dest_mm_axi;

architecture STRUCTURE of zsys_axi_dmac_0_0_dmac_dest_mm_axi is
  signal address_enabled : STD_LOGIC;
  signal \^dbg_ids0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^id_reg[0]\ : STD_LOGIC;
  signal \^m_dest_axi_awaddr\ : STD_LOGIC_VECTOR ( 28 downto 0 );
begin
  dbg_ids0(6 downto 0) <= \^dbg_ids0\(6 downto 0);
  \id_reg[0]\ <= \^id_reg[0]\;
  m_dest_axi_awaddr(28 downto 0) <= \^m_dest_axi_awaddr\(28 downto 0);
i_addr_gen: entity work.zsys_axi_dmac_0_0_dmac_address_generator
     port map (
      E(0) => dest_req_ready,
      Q(0) => Q(0),
      address_enabled => address_enabled,
      \cdc_sync_fifo_ram_reg[33]\(32 downto 0) => \cdc_sync_fifo_ram_reg[33]\(32 downto 0),
      dest_address_eot => dest_address_eot,
      do_enable_reg => do_enable_reg,
      \id_reg[0]_0\ => \^dbg_ids0\(2),
      \id_reg[0]_1\ => \^dbg_ids0\(1),
      \id_reg[0]_2\ => \^id_reg[0]\,
      \id_reg[3]_0\ => \^dbg_ids0\(0),
      m_axis_raddr => m_axis_raddr,
      m_dest_axi_aclk => m_dest_axi_aclk,
      m_dest_axi_awaddr(28 downto 0) => \^m_dest_axi_awaddr\(28 downto 0),
      m_dest_axi_awlen(3 downto 0) => m_dest_axi_awlen(3 downto 0),
      m_dest_axi_awready => m_dest_axi_awready,
      m_dest_axi_awvalid => m_dest_axi_awvalid,
      needs_reset_reg => needs_reset_reg,
      s_axis_waddr => s_axis_waddr,
      \src_id_reg[0]\ => \src_id_reg[0]\,
      \src_id_reg[3]\(0) => \src_id_reg[3]\(0),
      \up_raddr_int_reg[2]\ => \up_raddr_int_reg[2]_0\,
      \up_raddr_int_reg[2]_0\ => \up_raddr_int_reg[2]\,
      \up_rdata_reg[10]\ => \up_rdata_reg[10]\,
      \up_rdata_reg[11]\ => \up_rdata_reg[11]\,
      \up_rdata_reg[3]\ => \up_rdata_reg[3]\,
      \up_rdata_reg[8]\ => \up_rdata_reg[8]\
    );
i_response_handler: entity work.zsys_axi_dmac_0_0_dmac_response_handler
     port map (
      Q(0) => Q(0),
      address_enabled => address_enabled,
      dbg_ids0(2 downto 0) => \^dbg_ids0\(2 downto 0),
      enabled_reg_0 => enabled_reg,
      enabled_reg_1 => enabled_reg_0,
      id0 => id0,
      \id_reg[0]_0\ => \^dbg_ids0\(6),
      \id_reg[0]_1\ => \^dbg_ids0\(5),
      \id_reg[0]_2\ => \^dbg_ids0\(4),
      \id_reg[1]_0\ => \^id_reg[0]\,
      \id_reg[3]_0\ => \^dbg_ids0\(3),
      m_dest_axi_aclk => m_dest_axi_aclk,
      m_dest_axi_awaddr(3 downto 0) => \^m_dest_axi_awaddr\(24 downto 21),
      \up_raddr_int_reg[2]\ => \up_raddr_int_reg[2]\,
      \up_raddr_int_reg[2]_0\ => \up_raddr_int_reg[2]_0\,
      \up_rdata_reg[24]\ => \up_rdata_reg[24]\,
      \up_rdata_reg[25]\ => \up_rdata_reg[25]\,
      \up_rdata_reg[26]\ => \up_rdata_reg[26]\,
      \up_rdata_reg[27]\ => \up_rdata_reg[27]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_axi_dmac_0_0_dmac_src_axi_stream is
  port (
    pending_burst : out STD_LOGIC;
    \id_reg[3]\ : out STD_LOGIC;
    \id_reg[3]_0\ : out STD_LOGIC;
    \id_reg[3]_1\ : out STD_LOGIC;
    \id_reg[3]_2\ : out STD_LOGIC;
    \beat_counter_reg[0]\ : out STD_LOGIC;
    s_axis_xfer_req : out STD_LOGIC;
    s_axis_ready : out STD_LOGIC;
    valid_reg : out STD_LOGIC;
    src_last : out STD_LOGIC;
    m_axis_raddr_reg : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axis_aclk : in STD_LOGIC;
    \reset_gen[0].reset_sync_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_last : in STD_LOGIC;
    s_axis_valid : in STD_LOGIC;
    src_eot : in STD_LOGIC;
    p_1_out0 : in STD_LOGIC;
    \src_throttled_request_id_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_raddr_reg_0 : in STD_LOGIC;
    s_axis_waddr_reg : in STD_LOGIC
  );
end zsys_axi_dmac_0_0_dmac_src_axi_stream;

architecture STRUCTURE of zsys_axi_dmac_0_0_dmac_src_axi_stream is
begin
i_data_mover: entity work.zsys_axi_dmac_0_0_dmac_data_mover
     port map (
      Q(4 downto 0) => Q(4 downto 0),
      \beat_counter_reg[0]_0\ => pending_burst,
      \beat_counter_reg[0]_1\ => \beat_counter_reg[0]\,
      \id_reg[3]_0\ => \id_reg[3]\,
      \id_reg[3]_1\ => \id_reg[3]_0\,
      \id_reg[3]_2\ => \id_reg[3]_1\,
      \id_reg[3]_3\ => \id_reg[3]_2\,
      m_axis_raddr_reg => m_axis_raddr_reg,
      m_axis_raddr_reg_0 => m_axis_raddr_reg_0,
      p_1_out0 => p_1_out0,
      \reset_gen[0].reset_sync_reg[0]\(0) => \reset_gen[0].reset_sync_reg[0]\(0),
      s_axis_aclk => s_axis_aclk,
      s_axis_last => s_axis_last,
      s_axis_ready => s_axis_ready,
      s_axis_valid => s_axis_valid,
      s_axis_waddr_reg => s_axis_waddr_reg,
      s_axis_xfer_req => s_axis_xfer_req,
      src_eot => src_eot,
      src_last => src_last,
      \src_throttled_request_id_reg[3]\(3 downto 0) => \src_throttled_request_id_reg[3]\(3 downto 0),
      valid_reg => valid_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_axi_dmac_0_0_dmac_request_arb is
  port (
    m_dest_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_ram_reg : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_dest_axi_awvalid : out STD_LOGIC;
    up_req_eot : out STD_LOGIC;
    g1_in : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_dest_axi_awaddr : out STD_LOGIC_VECTOR ( 28 downto 0 );
    enabled_reg : out STD_LOGIC;
    s_axis_xfer_req : out STD_LOGIC;
    m_dest_axi_wvalid : out STD_LOGIC;
    m_dest_axi_wlast : out STD_LOGIC;
    \acked_reg[2]\ : out STD_LOGIC;
    m_dest_axi_bready : out STD_LOGIC;
    s_axis_ready : out STD_LOGIC;
    \id_reg[2]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \src_throttled_request_id_reg[0]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \up_rdata_reg[26]\ : out STD_LOGIC;
    \up_rdata_reg[3]\ : out STD_LOGIC;
    \up_rdata_reg[8]\ : out STD_LOGIC;
    \up_rdata_reg[10]\ : out STD_LOGIC;
    \up_rdata_reg[11]\ : out STD_LOGIC;
    \up_rdata_reg[17]\ : out STD_LOGIC;
    \up_rdata_reg[24]\ : out STD_LOGIC;
    \up_rdata_reg[25]\ : out STD_LOGIC;
    \up_rdata_reg[27]\ : out STD_LOGIC;
    \up_rdata_reg[2]\ : out STD_LOGIC;
    m_dest_axi_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_dest_axi_aclk : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    m_dest_axi_wready : in STD_LOGIC;
    up_dma_req_valid : in STD_LOGIC;
    do_enable_reg : in STD_LOGIC;
    m_dest_axi_awready : in STD_LOGIC;
    m_dest_axi_bvalid : in STD_LOGIC;
    s_axis_last : in STD_LOGIC;
    s_axis_valid : in STD_LOGIC;
    up_dma_x_length : in STD_LOGIC_VECTOR ( 20 downto 0 );
    \up_raddr_int_reg[2]\ : in STD_LOGIC;
    \up_raddr_int_reg[2]_0\ : in STD_LOGIC;
    needs_reset_reg : in STD_LOGIC;
    \state_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 28 downto 0 );
    up_dma_last_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \reset_gen[0].reset_sync_reg[0]\ : in STD_LOGIC
  );
end zsys_axi_dmac_0_0_dmac_request_arb;

architecture STRUCTURE of zsys_axi_dmac_0_0_dmac_request_arb is
  signal acked : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal cdc_sync_fifo_ram0 : STD_LOGIC;
  signal dbg_ids0 : STD_LOGIC_VECTOR ( 27 downto 3 );
  signal dest_address_eot : STD_LOGIC;
  signal dest_req_ready : STD_LOGIC;
  signal dest_response_eot : STD_LOGIC;
  signal eot0 : STD_LOGIC;
  signal \^g1_in\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \i_data_mover/pending_burst\ : STD_LOGIC;
  signal i_dest_dma_mm_n_40 : STD_LOGIC;
  signal i_dest_req_fifo_n_10 : STD_LOGIC;
  signal i_dest_req_fifo_n_11 : STD_LOGIC;
  signal i_dest_req_fifo_n_12 : STD_LOGIC;
  signal i_dest_req_fifo_n_13 : STD_LOGIC;
  signal i_dest_req_fifo_n_14 : STD_LOGIC;
  signal i_dest_req_fifo_n_15 : STD_LOGIC;
  signal i_dest_req_fifo_n_16 : STD_LOGIC;
  signal i_dest_req_fifo_n_17 : STD_LOGIC;
  signal i_dest_req_fifo_n_18 : STD_LOGIC;
  signal i_dest_req_fifo_n_19 : STD_LOGIC;
  signal i_dest_req_fifo_n_2 : STD_LOGIC;
  signal i_dest_req_fifo_n_20 : STD_LOGIC;
  signal i_dest_req_fifo_n_21 : STD_LOGIC;
  signal i_dest_req_fifo_n_22 : STD_LOGIC;
  signal i_dest_req_fifo_n_23 : STD_LOGIC;
  signal i_dest_req_fifo_n_24 : STD_LOGIC;
  signal i_dest_req_fifo_n_25 : STD_LOGIC;
  signal i_dest_req_fifo_n_26 : STD_LOGIC;
  signal i_dest_req_fifo_n_27 : STD_LOGIC;
  signal i_dest_req_fifo_n_28 : STD_LOGIC;
  signal i_dest_req_fifo_n_29 : STD_LOGIC;
  signal i_dest_req_fifo_n_3 : STD_LOGIC;
  signal i_dest_req_fifo_n_30 : STD_LOGIC;
  signal i_dest_req_fifo_n_4 : STD_LOGIC;
  signal i_dest_req_fifo_n_5 : STD_LOGIC;
  signal i_dest_req_fifo_n_6 : STD_LOGIC;
  signal i_dest_req_fifo_n_7 : STD_LOGIC;
  signal i_dest_req_fifo_n_8 : STD_LOGIC;
  signal i_dest_req_fifo_n_9 : STD_LOGIC;
  signal i_req_gen_n_6 : STD_LOGIC;
  signal \i_response_handler/id0\ : STD_LOGIC;
  signal i_src_dma_stream_n_10 : STD_LOGIC;
  signal i_src_dma_stream_n_5 : STD_LOGIC;
  signal i_src_dma_stream_n_8 : STD_LOGIC;
  signal i_src_req_fifo_n_0 : STD_LOGIC;
  signal i_src_req_fifo_n_1 : STD_LOGIC;
  signal i_src_req_fifo_n_4 : STD_LOGIC;
  signal i_src_req_fifo_n_5 : STD_LOGIC;
  signal i_src_req_fifo_n_6 : STD_LOGIC;
  signal i_src_req_fifo_n_7 : STD_LOGIC;
  signal i_src_req_fifo_n_8 : STD_LOGIC;
  signal i_store_and_forward_n_73 : STD_LOGIC;
  signal \^id_reg[2]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal inc_id_return : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal m_axis_raddr : STD_LOGIC;
  signal \^m_dest_axi_awaddr\ : STD_LOGIC_VECTOR ( 28 downto 0 );
  signal \^m_ram_reg\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_1_in : STD_LOGIC;
  signal p_1_in1_in : STD_LOGIC;
  signal p_1_out0 : STD_LOGIC;
  signal req_gen_ready : STD_LOGIC;
  signal req_last_burst_length : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal request_eot : STD_LOGIC;
  signal s_axis_waddr : STD_LOGIC;
  signal \^s_axis_xfer_req\ : STD_LOGIC;
  signal src_eot : STD_LOGIC;
  signal src_last : STD_LOGIC;
  signal src_req_valid : STD_LOGIC;
  signal src_throttled_request_id0 : STD_LOGIC;
  signal \src_throttled_request_id[0]_i_1_n_0\ : STD_LOGIC;
  signal \src_throttled_request_id[3]_i_2_n_0\ : STD_LOGIC;
  signal \src_throttled_request_id_reg_n_0_[0]\ : STD_LOGIC;
  signal \src_throttled_request_id_reg_n_0_[1]\ : STD_LOGIC;
  signal NLW_eot_mem_reg_r1_0_15_0_0_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_eot_mem_reg_r2_0_15_0_0_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_eot_mem_reg_r3_0_15_0_0_SPO_UNCONNECTED : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of eot_mem_reg_r1_0_15_0_0 : label is "RAM16X1D";
  attribute XILINX_LEGACY_PRIM of eot_mem_reg_r2_0_15_0_0 : label is "RAM16X1D";
  attribute XILINX_LEGACY_PRIM of eot_mem_reg_r3_0_15_0_0 : label is "RAM16X1D";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_throttled_request_id[0]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \src_throttled_request_id[1]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \src_throttled_request_id[2]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \src_throttled_request_id[3]_i_2\ : label is "soft_lutpair49";
begin
  g1_in(3 downto 0) <= \^g1_in\(3 downto 0);
  \id_reg[2]\(3 downto 0) <= \^id_reg[2]\(3 downto 0);
  m_dest_axi_awaddr(28 downto 0) <= \^m_dest_axi_awaddr\(28 downto 0);
  m_ram_reg(3 downto 0) <= \^m_ram_reg\(3 downto 0);
  s_axis_xfer_req <= \^s_axis_xfer_req\;
eot_mem_reg_r1_0_15_0_0: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \^id_reg[2]\(0),
      A1 => \^id_reg[2]\(1),
      A2 => \^id_reg[2]\(2),
      A3 => \^id_reg[2]\(3),
      A4 => '0',
      D => request_eot,
      DPO => src_eot,
      DPRA0 => \^g1_in\(0),
      DPRA1 => \^g1_in\(1),
      DPRA2 => \^g1_in\(2),
      DPRA3 => \^g1_in\(3),
      DPRA4 => '0',
      SPO => NLW_eot_mem_reg_r1_0_15_0_0_SPO_UNCONNECTED,
      WCLK => s_axi_aclk,
      WE => '1'
    );
eot_mem_reg_r2_0_15_0_0: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \^id_reg[2]\(0),
      A1 => \^id_reg[2]\(1),
      A2 => \^id_reg[2]\(2),
      A3 => \^id_reg[2]\(3),
      A4 => '0',
      D => request_eot,
      DPO => dest_response_eot,
      DPRA0 => dbg_ids0(24),
      DPRA1 => dbg_ids0(25),
      DPRA2 => dbg_ids0(26),
      DPRA3 => dbg_ids0(27),
      DPRA4 => '0',
      SPO => NLW_eot_mem_reg_r2_0_15_0_0_SPO_UNCONNECTED,
      WCLK => s_axi_aclk,
      WE => '1'
    );
eot_mem_reg_r3_0_15_0_0: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \^id_reg[2]\(0),
      A1 => \^id_reg[2]\(1),
      A2 => \^id_reg[2]\(2),
      A3 => \^id_reg[2]\(3),
      A4 => '0',
      D => request_eot,
      DPO => dest_address_eot,
      DPRA0 => dbg_ids0(8),
      DPRA1 => \^m_ram_reg\(2),
      DPRA2 => dbg_ids0(10),
      DPRA3 => dbg_ids0(11),
      DPRA4 => '0',
      SPO => NLW_eot_mem_reg_r3_0_15_0_0_SPO_UNCONNECTED,
      WCLK => s_axi_aclk,
      WE => '1'
    );
eot_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => eot0,
      Q => up_req_eot,
      R => Q(0)
    );
i_dest_dma_mm: entity work.zsys_axi_dmac_0_0_dmac_dest_mm_axi
     port map (
      Q(0) => Q(0),
      \cdc_sync_fifo_ram_reg[33]\(32) => i_dest_req_fifo_n_2,
      \cdc_sync_fifo_ram_reg[33]\(31) => i_dest_req_fifo_n_3,
      \cdc_sync_fifo_ram_reg[33]\(30) => i_dest_req_fifo_n_4,
      \cdc_sync_fifo_ram_reg[33]\(29) => i_dest_req_fifo_n_5,
      \cdc_sync_fifo_ram_reg[33]\(28) => i_dest_req_fifo_n_6,
      \cdc_sync_fifo_ram_reg[33]\(27) => i_dest_req_fifo_n_7,
      \cdc_sync_fifo_ram_reg[33]\(26) => i_dest_req_fifo_n_8,
      \cdc_sync_fifo_ram_reg[33]\(25) => i_dest_req_fifo_n_9,
      \cdc_sync_fifo_ram_reg[33]\(24) => i_dest_req_fifo_n_10,
      \cdc_sync_fifo_ram_reg[33]\(23) => i_dest_req_fifo_n_11,
      \cdc_sync_fifo_ram_reg[33]\(22) => i_dest_req_fifo_n_12,
      \cdc_sync_fifo_ram_reg[33]\(21) => i_dest_req_fifo_n_13,
      \cdc_sync_fifo_ram_reg[33]\(20) => i_dest_req_fifo_n_14,
      \cdc_sync_fifo_ram_reg[33]\(19) => i_dest_req_fifo_n_15,
      \cdc_sync_fifo_ram_reg[33]\(18) => i_dest_req_fifo_n_16,
      \cdc_sync_fifo_ram_reg[33]\(17) => i_dest_req_fifo_n_17,
      \cdc_sync_fifo_ram_reg[33]\(16) => i_dest_req_fifo_n_18,
      \cdc_sync_fifo_ram_reg[33]\(15) => i_dest_req_fifo_n_19,
      \cdc_sync_fifo_ram_reg[33]\(14) => i_dest_req_fifo_n_20,
      \cdc_sync_fifo_ram_reg[33]\(13) => i_dest_req_fifo_n_21,
      \cdc_sync_fifo_ram_reg[33]\(12) => i_dest_req_fifo_n_22,
      \cdc_sync_fifo_ram_reg[33]\(11) => i_dest_req_fifo_n_23,
      \cdc_sync_fifo_ram_reg[33]\(10) => i_dest_req_fifo_n_24,
      \cdc_sync_fifo_ram_reg[33]\(9) => i_dest_req_fifo_n_25,
      \cdc_sync_fifo_ram_reg[33]\(8) => i_dest_req_fifo_n_26,
      \cdc_sync_fifo_ram_reg[33]\(7) => i_dest_req_fifo_n_27,
      \cdc_sync_fifo_ram_reg[33]\(6) => i_dest_req_fifo_n_28,
      \cdc_sync_fifo_ram_reg[33]\(5) => i_dest_req_fifo_n_29,
      \cdc_sync_fifo_ram_reg[33]\(4) => i_dest_req_fifo_n_30,
      \cdc_sync_fifo_ram_reg[33]\(3 downto 0) => req_last_burst_length(3 downto 0),
      dbg_ids0(6 downto 3) => dbg_ids0(27 downto 24),
      dbg_ids0(2 downto 1) => dbg_ids0(11 downto 10),
      dbg_ids0(0) => dbg_ids0(8),
      dest_address_eot => dest_address_eot,
      dest_req_ready => dest_req_ready,
      do_enable_reg => do_enable_reg,
      enabled_reg => enabled_reg,
      enabled_reg_0 => i_dest_dma_mm_n_40,
      id0 => \i_response_handler/id0\,
      \id_reg[0]\ => \^m_ram_reg\(2),
      m_axis_raddr => m_axis_raddr,
      m_dest_axi_aclk => m_dest_axi_aclk,
      m_dest_axi_awaddr(28 downto 0) => \^m_dest_axi_awaddr\(28 downto 0),
      m_dest_axi_awlen(3 downto 0) => m_dest_axi_awlen(3 downto 0),
      m_dest_axi_awready => m_dest_axi_awready,
      m_dest_axi_awvalid => m_dest_axi_awvalid,
      needs_reset_reg => needs_reset_reg,
      s_axis_waddr => s_axis_waddr,
      \src_id_reg[0]\ => i_store_and_forward_n_73,
      \src_id_reg[3]\(0) => dbg_ids0(3),
      \up_raddr_int_reg[2]\ => \up_raddr_int_reg[2]\,
      \up_raddr_int_reg[2]_0\ => \up_raddr_int_reg[2]_0\,
      \up_rdata_reg[10]\ => \up_rdata_reg[10]\,
      \up_rdata_reg[11]\ => \up_rdata_reg[11]\,
      \up_rdata_reg[24]\ => \up_rdata_reg[24]\,
      \up_rdata_reg[25]\ => \up_rdata_reg[25]\,
      \up_rdata_reg[26]\ => \up_rdata_reg[26]\,
      \up_rdata_reg[27]\ => \up_rdata_reg[27]\,
      \up_rdata_reg[3]\ => \up_rdata_reg[3]\,
      \up_rdata_reg[8]\ => \up_rdata_reg[8]\
    );
i_dest_req_fifo: entity work.zsys_axi_dmac_0_0_util_axis_fifo
     port map (
      D(32 downto 4) => D(28 downto 0),
      D(3 downto 0) => up_dma_x_length(3 downto 0),
      Q(0) => Q(0),
      acked(0) => acked(1),
      \address_reg[28]\(32) => i_dest_req_fifo_n_2,
      \address_reg[28]\(31) => i_dest_req_fifo_n_3,
      \address_reg[28]\(30) => i_dest_req_fifo_n_4,
      \address_reg[28]\(29) => i_dest_req_fifo_n_5,
      \address_reg[28]\(28) => i_dest_req_fifo_n_6,
      \address_reg[28]\(27) => i_dest_req_fifo_n_7,
      \address_reg[28]\(26) => i_dest_req_fifo_n_8,
      \address_reg[28]\(25) => i_dest_req_fifo_n_9,
      \address_reg[28]\(24) => i_dest_req_fifo_n_10,
      \address_reg[28]\(23) => i_dest_req_fifo_n_11,
      \address_reg[28]\(22) => i_dest_req_fifo_n_12,
      \address_reg[28]\(21) => i_dest_req_fifo_n_13,
      \address_reg[28]\(20) => i_dest_req_fifo_n_14,
      \address_reg[28]\(19) => i_dest_req_fifo_n_15,
      \address_reg[28]\(18) => i_dest_req_fifo_n_16,
      \address_reg[28]\(17) => i_dest_req_fifo_n_17,
      \address_reg[28]\(16) => i_dest_req_fifo_n_18,
      \address_reg[28]\(15) => i_dest_req_fifo_n_19,
      \address_reg[28]\(14) => i_dest_req_fifo_n_20,
      \address_reg[28]\(13) => i_dest_req_fifo_n_21,
      \address_reg[28]\(12) => i_dest_req_fifo_n_22,
      \address_reg[28]\(11) => i_dest_req_fifo_n_23,
      \address_reg[28]\(10) => i_dest_req_fifo_n_24,
      \address_reg[28]\(9) => i_dest_req_fifo_n_25,
      \address_reg[28]\(8) => i_dest_req_fifo_n_26,
      \address_reg[28]\(7) => i_dest_req_fifo_n_27,
      \address_reg[28]\(6) => i_dest_req_fifo_n_28,
      \address_reg[28]\(5) => i_dest_req_fifo_n_29,
      \address_reg[28]\(4) => i_dest_req_fifo_n_30,
      \address_reg[28]\(3 downto 0) => req_last_burst_length(3 downto 0),
      dest_req_ready => dest_req_ready,
      do_enable_reg => do_enable_reg,
      m_axis_raddr => m_axis_raddr,
      m_dest_axi_aclk => m_dest_axi_aclk,
      s_axi_aclk => s_axi_aclk,
      s_axis_waddr => s_axis_waddr,
      up_dma_req_valid => up_dma_req_valid
    );
i_dest_response_fifo: entity work.\zsys_axi_dmac_0_0_util_axis_fifo__parameterized1\
     port map (
      Q(0) => Q(0),
      dest_response_eot => dest_response_eot,
      eot0 => eot0,
      id0 => \i_response_handler/id0\,
      \id_reg[3]\ => i_dest_dma_mm_n_40,
      m_dest_axi_aclk => m_dest_axi_aclk,
      m_dest_axi_bready => m_dest_axi_bready,
      m_dest_axi_bvalid => m_dest_axi_bvalid,
      s_axi_aclk => s_axi_aclk
    );
i_req_gen: entity work.zsys_axi_dmac_0_0_dmac_request_generator
     port map (
      Q(0) => Q(0),
      acked(0) => acked(2),
      dbg_ids0(3 downto 0) => dbg_ids0(27 downto 24),
      do_enable_reg => do_enable_reg,
      \id_reg[2]_0\(3 downto 0) => \^id_reg[2]\(3 downto 0),
      req_gen_ready => req_gen_ready,
      request_eot => request_eot,
      s_axi_aclk => s_axi_aclk,
      \src_throttled_request_id_reg[0]\ => i_req_gen_n_6,
      \src_throttled_request_id_reg[3]\(3) => p_1_in,
      \src_throttled_request_id_reg[3]\(2) => p_1_in1_in,
      \src_throttled_request_id_reg[3]\(1) => \src_throttled_request_id_reg_n_0_[1]\,
      \src_throttled_request_id_reg[3]\(0) => \src_throttled_request_id_reg_n_0_[0]\,
      up_dma_req_valid => up_dma_req_valid,
      up_dma_x_length(16 downto 0) => up_dma_x_length(20 downto 4)
    );
i_req_splitter: entity work.zsys_axi_dmac_0_0_splitter
     port map (
      E(0) => cdc_sync_fifo_ram0,
      Q(0) => Q(0),
      acked(2 downto 0) => acked(2 downto 0),
      \acked_reg[2]_0\ => \acked_reg[2]\,
      do_enable_reg => do_enable_reg,
      m_axis_raddr => m_axis_raddr,
      req_gen_ready => req_gen_ready,
      \reset_gen[0].reset_sync_reg[0]\ => \reset_gen[0].reset_sync_reg[0]\,
      s_axi_aclk => s_axi_aclk,
      s_axis_waddr => s_axis_waddr,
      src_req_valid => src_req_valid,
      up_dma_req_valid => up_dma_req_valid
    );
i_src_dma_stream: entity work.zsys_axi_dmac_0_0_dmac_src_axi_stream
     port map (
      Q(4) => i_src_req_fifo_n_4,
      Q(3) => i_src_req_fifo_n_5,
      Q(2) => i_src_req_fifo_n_6,
      Q(1) => i_src_req_fifo_n_7,
      Q(0) => i_src_req_fifo_n_8,
      \beat_counter_reg[0]\ => i_src_dma_stream_n_5,
      \id_reg[3]\ => \^g1_in\(3),
      \id_reg[3]_0\ => \^g1_in\(2),
      \id_reg[3]_1\ => \^g1_in\(1),
      \id_reg[3]_2\ => \^g1_in\(0),
      m_axis_raddr_reg => i_src_dma_stream_n_10,
      m_axis_raddr_reg_0 => i_src_req_fifo_n_1,
      p_1_out0 => p_1_out0,
      pending_burst => \i_data_mover/pending_burst\,
      \reset_gen[0].reset_sync_reg[0]\(0) => Q(0),
      s_axis_aclk => s_axis_aclk,
      s_axis_last => s_axis_last,
      s_axis_ready => s_axis_ready,
      s_axis_valid => s_axis_valid,
      s_axis_waddr_reg => i_src_req_fifo_n_0,
      s_axis_xfer_req => \^s_axis_xfer_req\,
      src_eot => src_eot,
      src_last => src_last,
      \src_throttled_request_id_reg[3]\(3) => p_1_in,
      \src_throttled_request_id_reg[3]\(2) => p_1_in1_in,
      \src_throttled_request_id_reg[3]\(1) => \src_throttled_request_id_reg_n_0_[1]\,
      \src_throttled_request_id_reg[3]\(0) => \src_throttled_request_id_reg_n_0_[0]\,
      valid_reg => i_src_dma_stream_n_8
    );
i_src_req_fifo: entity work.\zsys_axi_dmac_0_0_util_axis_fifo__parameterized0\
     port map (
      D(4 downto 1) => up_dma_x_length(3 downto 0),
      D(0) => up_dma_last_reg(0),
      E(0) => cdc_sync_fifo_ram0,
      Q(0) => Q(0),
      acked(0) => acked(0),
      active_reg => i_src_dma_stream_n_10,
      do_enable_reg => do_enable_reg,
      \last_burst_length_reg[4]\(4) => i_src_req_fifo_n_4,
      \last_burst_length_reg[4]\(3) => i_src_req_fifo_n_5,
      \last_burst_length_reg[4]\(2) => i_src_req_fifo_n_6,
      \last_burst_length_reg[4]\(1) => i_src_req_fifo_n_7,
      \last_burst_length_reg[4]\(0) => i_src_req_fifo_n_8,
      s_axi_aclk => s_axi_aclk,
      s_axis_aclk => s_axis_aclk,
      s_axis_waddr_reg_0 => i_src_req_fifo_n_0,
      s_axis_waddr_reg_1 => i_src_req_fifo_n_1,
      src_req_valid => src_req_valid,
      up_dma_req_valid => up_dma_req_valid
    );
i_store_and_forward: entity work.zsys_axi_dmac_0_0_axi_dmac_burst_memory
     port map (
      E(0) => src_throttled_request_id0,
      Q(2) => dbg_ids0(3),
      Q(1 downto 0) => \^m_ram_reg\(1 downto 0),
      active_reg => \^s_axis_xfer_req\,
      addr_valid_reg => i_store_and_forward_n_73,
      \id_reg[1]\ => \^m_ram_reg\(2),
      \id_reg[3]\(2 downto 1) => dbg_ids0(11 downto 10),
      \id_reg[3]\(0) => dbg_ids0(8),
      m_dest_axi_aclk => m_dest_axi_aclk,
      m_dest_axi_awaddr(0) => \^m_dest_axi_awaddr\(14),
      m_dest_axi_wdata(63 downto 0) => m_dest_axi_wdata(63 downto 0),
      m_dest_axi_wlast => m_dest_axi_wlast,
      m_dest_axi_wready => m_dest_axi_wready,
      m_dest_axi_wvalid => m_dest_axi_wvalid,
      p_1_out0 => p_1_out0,
      pending_burst => \i_data_mover/pending_burst\,
      pending_burst_reg => i_src_dma_stream_n_8,
      \reset_gen[0].reset_sync_reg[0]\(0) => Q(0),
      s_axis_aclk => s_axis_aclk,
      s_axis_data(31 downto 0) => s_axis_data(31 downto 0),
      s_axis_valid => s_axis_valid,
      src_last => src_last,
      \src_throttled_request_id_reg[0]\(2 downto 1) => \src_throttled_request_id_reg[0]_0\(1 downto 0),
      \src_throttled_request_id_reg[0]\(0) => \^m_ram_reg\(3),
      \src_throttled_request_id_reg[3]\(3) => p_1_in,
      \src_throttled_request_id_reg[3]\(2) => p_1_in1_in,
      \src_throttled_request_id_reg[3]\(1) => \src_throttled_request_id_reg_n_0_[1]\,
      \src_throttled_request_id_reg[3]\(0) => \src_throttled_request_id_reg_n_0_[0]\,
      \src_throttled_request_id_reg[3]_0\ => i_req_gen_n_6,
      \state_reg[2]\(0) => \state_reg[2]\(0),
      transfer_abort_reg => i_src_dma_stream_n_5,
      \up_raddr_int_reg[2]\ => \up_raddr_int_reg[2]\,
      \up_raddr_int_reg[2]_0\ => \up_raddr_int_reg[2]_0\,
      \up_rdata_reg[17]\ => \up_rdata_reg[17]\,
      \up_rdata_reg[2]\ => \up_rdata_reg[2]\
    );
\src_throttled_request_id[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \src_throttled_request_id_reg_n_0_[1]\,
      I1 => p_1_in,
      I2 => p_1_in1_in,
      O => \src_throttled_request_id[0]_i_1_n_0\
    );
\src_throttled_request_id[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D782"
    )
        port map (
      I0 => \src_throttled_request_id_reg_n_0_[0]\,
      I1 => p_1_in1_in,
      I2 => p_1_in,
      I3 => \src_throttled_request_id_reg_n_0_[1]\,
      O => inc_id_return(1)
    );
\src_throttled_request_id[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8DCC"
    )
        port map (
      I0 => \src_throttled_request_id_reg_n_0_[0]\,
      I1 => p_1_in1_in,
      I2 => p_1_in,
      I3 => \src_throttled_request_id_reg_n_0_[1]\,
      O => inc_id_return(2)
    );
\src_throttled_request_id[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0E4"
    )
        port map (
      I0 => \src_throttled_request_id_reg_n_0_[0]\,
      I1 => p_1_in1_in,
      I2 => p_1_in,
      I3 => \src_throttled_request_id_reg_n_0_[1]\,
      O => \src_throttled_request_id[3]_i_2_n_0\
    );
\src_throttled_request_id_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => src_throttled_request_id0,
      D => \src_throttled_request_id[0]_i_1_n_0\,
      Q => \src_throttled_request_id_reg_n_0_[0]\,
      R => Q(0)
    );
\src_throttled_request_id_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => src_throttled_request_id0,
      D => inc_id_return(1),
      Q => \src_throttled_request_id_reg_n_0_[1]\,
      R => Q(0)
    );
\src_throttled_request_id_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => src_throttled_request_id0,
      D => inc_id_return(2),
      Q => p_1_in1_in,
      R => Q(0)
    );
\src_throttled_request_id_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => src_throttled_request_id0,
      D => \src_throttled_request_id[3]_i_2_n_0\,
      Q => p_1_in,
      R => Q(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_axi_dmac_0_0_axi_dmac_transfer is
  port (
    m_dest_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_ram_reg : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \state_reg[0]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m_dest_axi_awvalid : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    up_req_eot : out STD_LOGIC;
    dbg_ids1 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_dest_axi_awaddr : out STD_LOGIC_VECTOR ( 28 downto 0 );
    s_axis_xfer_req : out STD_LOGIC;
    m_dest_axi_wvalid : out STD_LOGIC;
    m_dest_axi_wlast : out STD_LOGIC;
    up_sot : out STD_LOGIC;
    m_dest_axi_bready : out STD_LOGIC;
    s_axis_ready : out STD_LOGIC;
    \src_throttled_request_id_reg[0]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \up_rdata_reg[26]\ : out STD_LOGIC;
    \up_rdata_reg[3]\ : out STD_LOGIC;
    \up_rdata_reg[8]\ : out STD_LOGIC;
    \up_rdata_reg[10]\ : out STD_LOGIC;
    \up_rdata_reg[11]\ : out STD_LOGIC;
    \up_rdata_reg[17]\ : out STD_LOGIC;
    \up_rdata_reg[24]\ : out STD_LOGIC;
    \up_rdata_reg[25]\ : out STD_LOGIC;
    \up_rdata_reg[27]\ : out STD_LOGIC;
    \up_rdata_reg[2]\ : out STD_LOGIC;
    m_dest_axi_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_dest_axi_aclk : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    ctrl_enable_reg : in STD_LOGIC;
    m_dest_axi_wready : in STD_LOGIC;
    up_dma_req_valid : in STD_LOGIC;
    m_dest_axi_awready : in STD_LOGIC;
    m_dest_axi_bvalid : in STD_LOGIC;
    s_axis_last : in STD_LOGIC;
    s_axis_valid : in STD_LOGIC;
    up_dma_x_length : in STD_LOGIC_VECTOR ( 20 downto 0 );
    ctrl_pause : in STD_LOGIC;
    ctrl_enable : in STD_LOGIC;
    \up_raddr_int_reg[2]\ : in STD_LOGIC;
    \up_raddr_int_reg[2]_0\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 28 downto 0 );
    up_dma_last_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_data : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end zsys_axi_dmac_0_0_axi_dmac_transfer;

architecture STRUCTURE of zsys_axi_dmac_0_0_axi_dmac_transfer is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal dbg_status : STD_LOGIC_VECTOR ( 2 to 2 );
  signal i_reset_manager_n_2 : STD_LOGIC;
  signal \^state_reg[0]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^up_sot\ : STD_LOGIC;
begin
  Q(0) <= \^q\(0);
  \state_reg[0]\(4 downto 0) <= \^state_reg[0]\(4 downto 0);
  up_sot <= \^up_sot\;
i_request_arb: entity work.zsys_axi_dmac_0_0_dmac_request_arb
     port map (
      D(28 downto 0) => D(28 downto 0),
      Q(0) => \^q\(0),
      \acked_reg[2]\ => \^up_sot\,
      do_enable_reg => \^state_reg[0]\(3),
      enabled_reg => \^state_reg[0]\(2),
      g1_in(3 downto 0) => dbg_ids1(7 downto 4),
      \id_reg[2]\(3 downto 0) => dbg_ids1(3 downto 0),
      m_dest_axi_aclk => m_dest_axi_aclk,
      m_dest_axi_awaddr(28 downto 0) => m_dest_axi_awaddr(28 downto 0),
      m_dest_axi_awlen(3 downto 0) => m_dest_axi_awlen(3 downto 0),
      m_dest_axi_awready => m_dest_axi_awready,
      m_dest_axi_awvalid => m_dest_axi_awvalid,
      m_dest_axi_bready => m_dest_axi_bready,
      m_dest_axi_bvalid => m_dest_axi_bvalid,
      m_dest_axi_wdata(63 downto 0) => m_dest_axi_wdata(63 downto 0),
      m_dest_axi_wlast => m_dest_axi_wlast,
      m_dest_axi_wready => m_dest_axi_wready,
      m_dest_axi_wvalid => m_dest_axi_wvalid,
      m_ram_reg(3 downto 0) => m_ram_reg(3 downto 0),
      needs_reset_reg => \^state_reg[0]\(4),
      \reset_gen[0].reset_sync_reg[0]\ => i_reset_manager_n_2,
      s_axi_aclk => s_axi_aclk,
      s_axis_aclk => s_axis_aclk,
      s_axis_data(31 downto 0) => s_axis_data(31 downto 0),
      s_axis_last => s_axis_last,
      s_axis_ready => s_axis_ready,
      s_axis_valid => s_axis_valid,
      s_axis_xfer_req => s_axis_xfer_req,
      \src_throttled_request_id_reg[0]_0\(1 downto 0) => \src_throttled_request_id_reg[0]\(1 downto 0),
      \state_reg[2]\(0) => dbg_status(2),
      up_dma_last_reg(0) => up_dma_last_reg(0),
      up_dma_req_valid => up_dma_req_valid,
      up_dma_x_length(20 downto 0) => up_dma_x_length(20 downto 0),
      \up_raddr_int_reg[2]\ => \up_raddr_int_reg[2]\,
      \up_raddr_int_reg[2]_0\ => \up_raddr_int_reg[2]_0\,
      \up_rdata_reg[10]\ => \up_rdata_reg[10]\,
      \up_rdata_reg[11]\ => \up_rdata_reg[11]\,
      \up_rdata_reg[17]\ => \up_rdata_reg[17]\,
      \up_rdata_reg[24]\ => \up_rdata_reg[24]\,
      \up_rdata_reg[25]\ => \up_rdata_reg[25]\,
      \up_rdata_reg[26]\ => \up_rdata_reg[26]\,
      \up_rdata_reg[27]\ => \up_rdata_reg[27]\,
      \up_rdata_reg[2]\ => \up_rdata_reg[2]\,
      \up_rdata_reg[3]\ => \up_rdata_reg[3]\,
      \up_rdata_reg[8]\ => \up_rdata_reg[8]\,
      up_req_eot => up_req_eot
    );
i_reset_manager: entity work.zsys_axi_dmac_0_0_axi_dmac_reset_manager
     port map (
      Q(0) => \^q\(0),
      SR(0) => SR(0),
      \acked_reg[1]\ => i_reset_manager_n_2,
      ctrl_enable => ctrl_enable,
      ctrl_enable_reg => ctrl_enable_reg,
      ctrl_pause => ctrl_pause,
      enabled_reg(0) => \^state_reg[0]\(2),
      m_dest_axi_aclk => m_dest_axi_aclk,
      s_axi_aclk => s_axi_aclk,
      s_axis_waddr_reg => \^state_reg[0]\(3),
      \state_reg[0]_0\ => \^state_reg[0]\(4),
      \state_reg[2]_0\(2) => dbg_status(2),
      \state_reg[2]_0\(1 downto 0) => \^state_reg[0]\(1 downto 0),
      up_sot => \^up_sot\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_axi_dmac_0_0_axi_dmac is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awready : out STD_LOGIC;
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wready : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bready : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_arready : out STD_LOGIC;
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    irq : out STD_LOGIC;
    m_dest_axi_aclk : in STD_LOGIC;
    m_dest_axi_aresetn : in STD_LOGIC;
    m_dest_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_dest_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_dest_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_dest_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_dest_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_dest_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_dest_axi_awvalid : out STD_LOGIC;
    m_dest_axi_awready : in STD_LOGIC;
    m_dest_axi_awid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_dest_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_dest_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_dest_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_dest_axi_wready : in STD_LOGIC;
    m_dest_axi_wvalid : out STD_LOGIC;
    m_dest_axi_wlast : out STD_LOGIC;
    m_dest_axi_wid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_dest_axi_bvalid : in STD_LOGIC;
    m_dest_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_dest_axi_bready : out STD_LOGIC;
    m_dest_axi_bid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_dest_axi_arvalid : out STD_LOGIC;
    m_dest_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_dest_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_dest_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_dest_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_dest_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_dest_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_dest_axi_arready : in STD_LOGIC;
    m_dest_axi_rvalid : in STD_LOGIC;
    m_dest_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_dest_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_dest_axi_rready : out STD_LOGIC;
    m_dest_axi_arid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_dest_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_dest_axi_rid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_dest_axi_rlast : in STD_LOGIC;
    m_src_axi_aclk : in STD_LOGIC;
    m_src_axi_aresetn : in STD_LOGIC;
    m_src_axi_arready : in STD_LOGIC;
    m_src_axi_arvalid : out STD_LOGIC;
    m_src_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_src_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_src_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_src_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_src_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_src_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_src_axi_arid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_src_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_src_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_src_axi_rready : out STD_LOGIC;
    m_src_axi_rvalid : in STD_LOGIC;
    m_src_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_src_axi_rid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_src_axi_rlast : in STD_LOGIC;
    m_src_axi_awvalid : out STD_LOGIC;
    m_src_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_src_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_src_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_src_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_src_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_src_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_src_axi_awready : in STD_LOGIC;
    m_src_axi_wvalid : out STD_LOGIC;
    m_src_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_src_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_src_axi_wlast : out STD_LOGIC;
    m_src_axi_wready : in STD_LOGIC;
    m_src_axi_bvalid : in STD_LOGIC;
    m_src_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_src_axi_bready : out STD_LOGIC;
    m_src_axi_awid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_src_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_src_axi_wid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_src_axi_bid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_aclk : in STD_LOGIC;
    s_axis_ready : out STD_LOGIC;
    s_axis_valid : in STD_LOGIC;
    s_axis_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_user : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_last : in STD_LOGIC;
    s_axis_xfer_req : out STD_LOGIC;
    m_axis_aclk : in STD_LOGIC;
    m_axis_ready : in STD_LOGIC;
    m_axis_valid : out STD_LOGIC;
    m_axis_data : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_last : out STD_LOGIC;
    m_axis_xfer_req : out STD_LOGIC;
    fifo_wr_clk : in STD_LOGIC;
    fifo_wr_en : in STD_LOGIC;
    fifo_wr_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    fifo_wr_overflow : out STD_LOGIC;
    fifo_wr_sync : in STD_LOGIC;
    fifo_wr_xfer_req : out STD_LOGIC;
    fifo_rd_clk : in STD_LOGIC;
    fifo_rd_en : in STD_LOGIC;
    fifo_rd_valid : out STD_LOGIC;
    fifo_rd_dout : out STD_LOGIC_VECTOR ( 63 downto 0 );
    fifo_rd_underflow : out STD_LOGIC;
    fifo_rd_xfer_req : out STD_LOGIC
  );
  attribute ASYNC_CLK_DEST_REQ : string;
  attribute ASYNC_CLK_DEST_REQ of zsys_axi_dmac_0_0_axi_dmac : entity is "1'b0";
  attribute ASYNC_CLK_REQ_SRC : string;
  attribute ASYNC_CLK_REQ_SRC of zsys_axi_dmac_0_0_axi_dmac : entity is "1'b0";
  attribute ASYNC_CLK_SRC_DEST : string;
  attribute ASYNC_CLK_SRC_DEST of zsys_axi_dmac_0_0_axi_dmac : entity is "1'b0";
  attribute AXI_ID_WIDTH_DEST : integer;
  attribute AXI_ID_WIDTH_DEST of zsys_axi_dmac_0_0_axi_dmac : entity is 4;
  attribute AXI_ID_WIDTH_SRC : integer;
  attribute AXI_ID_WIDTH_SRC of zsys_axi_dmac_0_0_axi_dmac : entity is 4;
  attribute AXI_SLICE_DEST : string;
  attribute AXI_SLICE_DEST of zsys_axi_dmac_0_0_axi_dmac : entity is "1'b0";
  attribute AXI_SLICE_SRC : string;
  attribute AXI_SLICE_SRC of zsys_axi_dmac_0_0_axi_dmac : entity is "1'b0";
  attribute BEATS_PER_BURST_LIMIT_DEST : integer;
  attribute BEATS_PER_BURST_LIMIT_DEST of zsys_axi_dmac_0_0_axi_dmac : entity is 256;
  attribute BEATS_PER_BURST_LIMIT_SRC : integer;
  attribute BEATS_PER_BURST_LIMIT_SRC of zsys_axi_dmac_0_0_axi_dmac : entity is 1024;
  attribute BYTES_PER_BEAT_WIDTH_DEST : integer;
  attribute BYTES_PER_BEAT_WIDTH_DEST of zsys_axi_dmac_0_0_axi_dmac : entity is 3;
  attribute BYTES_PER_BEAT_WIDTH_SRC : integer;
  attribute BYTES_PER_BEAT_WIDTH_SRC of zsys_axi_dmac_0_0_axi_dmac : entity is 2;
  attribute BYTES_PER_BURST_LIMIT : integer;
  attribute BYTES_PER_BURST_LIMIT of zsys_axi_dmac_0_0_axi_dmac : entity is 2048;
  attribute BYTES_PER_BURST_LIMIT_DEST : integer;
  attribute BYTES_PER_BURST_LIMIT_DEST of zsys_axi_dmac_0_0_axi_dmac : entity is 2048;
  attribute BYTES_PER_BURST_LIMIT_SRC : integer;
  attribute BYTES_PER_BURST_LIMIT_SRC of zsys_axi_dmac_0_0_axi_dmac : entity is 4096;
  attribute CYCLIC : string;
  attribute CYCLIC of zsys_axi_dmac_0_0_axi_dmac : entity is "1'b0";
  attribute DBG_ID_PADDING : integer;
  attribute DBG_ID_PADDING of zsys_axi_dmac_0_0_axi_dmac : entity is 4;
  attribute DISABLE_DEBUG_REGISTERS : string;
  attribute DISABLE_DEBUG_REGISTERS of zsys_axi_dmac_0_0_axi_dmac : entity is "1'b0";
  attribute DMA_2D_TRANSFER : string;
  attribute DMA_2D_TRANSFER of zsys_axi_dmac_0_0_axi_dmac : entity is "1'b0";
  attribute DMA_AXI_ADDR_WIDTH : integer;
  attribute DMA_AXI_ADDR_WIDTH of zsys_axi_dmac_0_0_axi_dmac : entity is 32;
  attribute DMA_AXI_PROTOCOL_DEST : integer;
  attribute DMA_AXI_PROTOCOL_DEST of zsys_axi_dmac_0_0_axi_dmac : entity is 0;
  attribute DMA_AXI_PROTOCOL_SRC : integer;
  attribute DMA_AXI_PROTOCOL_SRC of zsys_axi_dmac_0_0_axi_dmac : entity is 0;
  attribute DMA_DATA_WIDTH_DEST : integer;
  attribute DMA_DATA_WIDTH_DEST of zsys_axi_dmac_0_0_axi_dmac : entity is 64;
  attribute DMA_DATA_WIDTH_SRC : integer;
  attribute DMA_DATA_WIDTH_SRC of zsys_axi_dmac_0_0_axi_dmac : entity is 32;
  attribute DMA_LENGTH_ALIGN : integer;
  attribute DMA_LENGTH_ALIGN of zsys_axi_dmac_0_0_axi_dmac : entity is 3;
  attribute DMA_LENGTH_WIDTH : integer;
  attribute DMA_LENGTH_WIDTH of zsys_axi_dmac_0_0_axi_dmac : entity is 24;
  attribute DMA_TYPE_AXI_MM : integer;
  attribute DMA_TYPE_AXI_MM of zsys_axi_dmac_0_0_axi_dmac : entity is 0;
  attribute DMA_TYPE_AXI_STREAM : integer;
  attribute DMA_TYPE_AXI_STREAM of zsys_axi_dmac_0_0_axi_dmac : entity is 1;
  attribute DMA_TYPE_DEST : integer;
  attribute DMA_TYPE_DEST of zsys_axi_dmac_0_0_axi_dmac : entity is 0;
  attribute DMA_TYPE_FIFO : integer;
  attribute DMA_TYPE_FIFO of zsys_axi_dmac_0_0_axi_dmac : entity is 2;
  attribute DMA_TYPE_SRC : integer;
  attribute DMA_TYPE_SRC of zsys_axi_dmac_0_0_axi_dmac : entity is 1;
  attribute FIFO_SIZE : integer;
  attribute FIFO_SIZE of zsys_axi_dmac_0_0_axi_dmac : entity is 8;
  attribute HAS_DEST_ADDR : string;
  attribute HAS_DEST_ADDR of zsys_axi_dmac_0_0_axi_dmac : entity is "1'b1";
  attribute HAS_SRC_ADDR : string;
  attribute HAS_SRC_ADDR of zsys_axi_dmac_0_0_axi_dmac : entity is "1'b0";
  attribute ID : integer;
  attribute ID of zsys_axi_dmac_0_0_axi_dmac : entity is 0;
  attribute ID_WIDTH : integer;
  attribute ID_WIDTH of zsys_axi_dmac_0_0_axi_dmac : entity is 4;
  attribute MAX_BYTES_PER_BURST : integer;
  attribute MAX_BYTES_PER_BURST of zsys_axi_dmac_0_0_axi_dmac : entity is 128;
  attribute REAL_MAX_BYTES_PER_BURST : integer;
  attribute REAL_MAX_BYTES_PER_BURST of zsys_axi_dmac_0_0_axi_dmac : entity is 128;
  attribute SYNC_TRANSFER_START : string;
  attribute SYNC_TRANSFER_START of zsys_axi_dmac_0_0_axi_dmac : entity is "1'b0";
end zsys_axi_dmac_0_0_axi_dmac;

architecture STRUCTURE of zsys_axi_dmac_0_0_axi_dmac is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal ctrl_enable : STD_LOGIC;
  signal ctrl_pause : STD_LOGIC;
  signal data8 : STD_LOGIC_VECTOR ( 19 to 19 );
  signal dbg_ids0 : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal dbg_ids1 : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal dbg_status : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal i_regmap_n_0 : STD_LOGIC;
  signal i_regmap_n_15 : STD_LOGIC;
  signal i_regmap_n_16 : STD_LOGIC;
  signal i_regmap_n_63 : STD_LOGIC;
  signal i_transfer_n_121 : STD_LOGIC;
  signal i_transfer_n_122 : STD_LOGIC;
  signal i_transfer_n_123 : STD_LOGIC;
  signal i_transfer_n_124 : STD_LOGIC;
  signal i_transfer_n_125 : STD_LOGIC;
  signal i_transfer_n_126 : STD_LOGIC;
  signal i_transfer_n_127 : STD_LOGIC;
  signal i_transfer_n_128 : STD_LOGIC;
  signal i_transfer_n_129 : STD_LOGIC;
  signal i_transfer_n_130 : STD_LOGIC;
  signal i_transfer_n_74 : STD_LOGIC;
  signal \^m_dest_axi_awaddr\ : STD_LOGIC_VECTOR ( 31 downto 3 );
  signal \^m_dest_axi_awlen\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_0_in0_in : STD_LOGIC;
  signal up_dma_dest_address : STD_LOGIC_VECTOR ( 31 downto 3 );
  signal up_dma_last : STD_LOGIC;
  signal up_dma_req_valid : STD_LOGIC;
  signal up_dma_x_length : STD_LOGIC_VECTOR ( 23 downto 3 );
  signal up_req_eot : STD_LOGIC;
  signal up_sot : STD_LOGIC;
begin
  fifo_rd_dout(63) <= \<const0>\;
  fifo_rd_dout(62) <= \<const0>\;
  fifo_rd_dout(61) <= \<const0>\;
  fifo_rd_dout(60) <= \<const0>\;
  fifo_rd_dout(59) <= \<const0>\;
  fifo_rd_dout(58) <= \<const0>\;
  fifo_rd_dout(57) <= \<const0>\;
  fifo_rd_dout(56) <= \<const0>\;
  fifo_rd_dout(55) <= \<const0>\;
  fifo_rd_dout(54) <= \<const0>\;
  fifo_rd_dout(53) <= \<const0>\;
  fifo_rd_dout(52) <= \<const0>\;
  fifo_rd_dout(51) <= \<const0>\;
  fifo_rd_dout(50) <= \<const0>\;
  fifo_rd_dout(49) <= \<const0>\;
  fifo_rd_dout(48) <= \<const0>\;
  fifo_rd_dout(47) <= \<const0>\;
  fifo_rd_dout(46) <= \<const0>\;
  fifo_rd_dout(45) <= \<const0>\;
  fifo_rd_dout(44) <= \<const0>\;
  fifo_rd_dout(43) <= \<const0>\;
  fifo_rd_dout(42) <= \<const0>\;
  fifo_rd_dout(41) <= \<const0>\;
  fifo_rd_dout(40) <= \<const0>\;
  fifo_rd_dout(39) <= \<const0>\;
  fifo_rd_dout(38) <= \<const0>\;
  fifo_rd_dout(37) <= \<const0>\;
  fifo_rd_dout(36) <= \<const0>\;
  fifo_rd_dout(35) <= \<const0>\;
  fifo_rd_dout(34) <= \<const0>\;
  fifo_rd_dout(33) <= \<const0>\;
  fifo_rd_dout(32) <= \<const0>\;
  fifo_rd_dout(31) <= \<const0>\;
  fifo_rd_dout(30) <= \<const0>\;
  fifo_rd_dout(29) <= \<const0>\;
  fifo_rd_dout(28) <= \<const0>\;
  fifo_rd_dout(27) <= \<const0>\;
  fifo_rd_dout(26) <= \<const0>\;
  fifo_rd_dout(25) <= \<const0>\;
  fifo_rd_dout(24) <= \<const0>\;
  fifo_rd_dout(23) <= \<const0>\;
  fifo_rd_dout(22) <= \<const0>\;
  fifo_rd_dout(21) <= \<const0>\;
  fifo_rd_dout(20) <= \<const0>\;
  fifo_rd_dout(19) <= \<const0>\;
  fifo_rd_dout(18) <= \<const0>\;
  fifo_rd_dout(17) <= \<const0>\;
  fifo_rd_dout(16) <= \<const0>\;
  fifo_rd_dout(15) <= \<const0>\;
  fifo_rd_dout(14) <= \<const0>\;
  fifo_rd_dout(13) <= \<const0>\;
  fifo_rd_dout(12) <= \<const0>\;
  fifo_rd_dout(11) <= \<const0>\;
  fifo_rd_dout(10) <= \<const0>\;
  fifo_rd_dout(9) <= \<const0>\;
  fifo_rd_dout(8) <= \<const0>\;
  fifo_rd_dout(7) <= \<const0>\;
  fifo_rd_dout(6) <= \<const0>\;
  fifo_rd_dout(5) <= \<const0>\;
  fifo_rd_dout(4) <= \<const0>\;
  fifo_rd_dout(3) <= \<const0>\;
  fifo_rd_dout(2) <= \<const0>\;
  fifo_rd_dout(1) <= \<const0>\;
  fifo_rd_dout(0) <= \<const0>\;
  fifo_rd_underflow <= \<const0>\;
  fifo_rd_valid <= \<const0>\;
  fifo_rd_xfer_req <= \<const0>\;
  fifo_wr_overflow <= \<const0>\;
  fifo_wr_xfer_req <= \<const0>\;
  m_axis_data(63) <= \<const0>\;
  m_axis_data(62) <= \<const0>\;
  m_axis_data(61) <= \<const0>\;
  m_axis_data(60) <= \<const0>\;
  m_axis_data(59) <= \<const0>\;
  m_axis_data(58) <= \<const0>\;
  m_axis_data(57) <= \<const0>\;
  m_axis_data(56) <= \<const0>\;
  m_axis_data(55) <= \<const0>\;
  m_axis_data(54) <= \<const0>\;
  m_axis_data(53) <= \<const0>\;
  m_axis_data(52) <= \<const0>\;
  m_axis_data(51) <= \<const0>\;
  m_axis_data(50) <= \<const0>\;
  m_axis_data(49) <= \<const0>\;
  m_axis_data(48) <= \<const0>\;
  m_axis_data(47) <= \<const0>\;
  m_axis_data(46) <= \<const0>\;
  m_axis_data(45) <= \<const0>\;
  m_axis_data(44) <= \<const0>\;
  m_axis_data(43) <= \<const0>\;
  m_axis_data(42) <= \<const0>\;
  m_axis_data(41) <= \<const0>\;
  m_axis_data(40) <= \<const0>\;
  m_axis_data(39) <= \<const0>\;
  m_axis_data(38) <= \<const0>\;
  m_axis_data(37) <= \<const0>\;
  m_axis_data(36) <= \<const0>\;
  m_axis_data(35) <= \<const0>\;
  m_axis_data(34) <= \<const0>\;
  m_axis_data(33) <= \<const0>\;
  m_axis_data(32) <= \<const0>\;
  m_axis_data(31) <= \<const0>\;
  m_axis_data(30) <= \<const0>\;
  m_axis_data(29) <= \<const0>\;
  m_axis_data(28) <= \<const0>\;
  m_axis_data(27) <= \<const0>\;
  m_axis_data(26) <= \<const0>\;
  m_axis_data(25) <= \<const0>\;
  m_axis_data(24) <= \<const0>\;
  m_axis_data(23) <= \<const0>\;
  m_axis_data(22) <= \<const0>\;
  m_axis_data(21) <= \<const0>\;
  m_axis_data(20) <= \<const0>\;
  m_axis_data(19) <= \<const0>\;
  m_axis_data(18) <= \<const0>\;
  m_axis_data(17) <= \<const0>\;
  m_axis_data(16) <= \<const0>\;
  m_axis_data(15) <= \<const0>\;
  m_axis_data(14) <= \<const0>\;
  m_axis_data(13) <= \<const0>\;
  m_axis_data(12) <= \<const0>\;
  m_axis_data(11) <= \<const0>\;
  m_axis_data(10) <= \<const0>\;
  m_axis_data(9) <= \<const0>\;
  m_axis_data(8) <= \<const0>\;
  m_axis_data(7) <= \<const0>\;
  m_axis_data(6) <= \<const0>\;
  m_axis_data(5) <= \<const0>\;
  m_axis_data(4) <= \<const0>\;
  m_axis_data(3) <= \<const0>\;
  m_axis_data(2) <= \<const0>\;
  m_axis_data(1) <= \<const0>\;
  m_axis_data(0) <= \<const0>\;
  m_axis_last <= \<const0>\;
  m_axis_valid <= \<const0>\;
  m_axis_xfer_req <= \<const0>\;
  m_dest_axi_araddr(31) <= \<const0>\;
  m_dest_axi_araddr(30) <= \<const0>\;
  m_dest_axi_araddr(29) <= \<const0>\;
  m_dest_axi_araddr(28) <= \<const0>\;
  m_dest_axi_araddr(27) <= \<const0>\;
  m_dest_axi_araddr(26) <= \<const0>\;
  m_dest_axi_araddr(25) <= \<const0>\;
  m_dest_axi_araddr(24) <= \<const0>\;
  m_dest_axi_araddr(23) <= \<const0>\;
  m_dest_axi_araddr(22) <= \<const0>\;
  m_dest_axi_araddr(21) <= \<const0>\;
  m_dest_axi_araddr(20) <= \<const0>\;
  m_dest_axi_araddr(19) <= \<const0>\;
  m_dest_axi_araddr(18) <= \<const0>\;
  m_dest_axi_araddr(17) <= \<const0>\;
  m_dest_axi_araddr(16) <= \<const0>\;
  m_dest_axi_araddr(15) <= \<const0>\;
  m_dest_axi_araddr(14) <= \<const0>\;
  m_dest_axi_araddr(13) <= \<const0>\;
  m_dest_axi_araddr(12) <= \<const0>\;
  m_dest_axi_araddr(11) <= \<const0>\;
  m_dest_axi_araddr(10) <= \<const0>\;
  m_dest_axi_araddr(9) <= \<const0>\;
  m_dest_axi_araddr(8) <= \<const0>\;
  m_dest_axi_araddr(7) <= \<const0>\;
  m_dest_axi_araddr(6) <= \<const0>\;
  m_dest_axi_araddr(5) <= \<const0>\;
  m_dest_axi_araddr(4) <= \<const0>\;
  m_dest_axi_araddr(3) <= \<const0>\;
  m_dest_axi_araddr(2) <= \<const0>\;
  m_dest_axi_araddr(1) <= \<const0>\;
  m_dest_axi_araddr(0) <= \<const0>\;
  m_dest_axi_arburst(1) <= \<const0>\;
  m_dest_axi_arburst(0) <= \<const0>\;
  m_dest_axi_arcache(3) <= \<const0>\;
  m_dest_axi_arcache(2) <= \<const0>\;
  m_dest_axi_arcache(1) <= \<const0>\;
  m_dest_axi_arcache(0) <= \<const0>\;
  m_dest_axi_arid(3) <= \<const0>\;
  m_dest_axi_arid(2) <= \<const0>\;
  m_dest_axi_arid(1) <= \<const0>\;
  m_dest_axi_arid(0) <= \<const0>\;
  m_dest_axi_arlen(7) <= \<const0>\;
  m_dest_axi_arlen(6) <= \<const0>\;
  m_dest_axi_arlen(5) <= \<const0>\;
  m_dest_axi_arlen(4) <= \<const0>\;
  m_dest_axi_arlen(3) <= \<const0>\;
  m_dest_axi_arlen(2) <= \<const0>\;
  m_dest_axi_arlen(1) <= \<const0>\;
  m_dest_axi_arlen(0) <= \<const0>\;
  m_dest_axi_arlock(0) <= \<const0>\;
  m_dest_axi_arprot(2) <= \<const0>\;
  m_dest_axi_arprot(1) <= \<const0>\;
  m_dest_axi_arprot(0) <= \<const0>\;
  m_dest_axi_arsize(2) <= \<const0>\;
  m_dest_axi_arsize(1) <= \<const0>\;
  m_dest_axi_arsize(0) <= \<const0>\;
  m_dest_axi_arvalid <= \<const0>\;
  m_dest_axi_awaddr(31 downto 3) <= \^m_dest_axi_awaddr\(31 downto 3);
  m_dest_axi_awaddr(2) <= \<const0>\;
  m_dest_axi_awaddr(1) <= \<const0>\;
  m_dest_axi_awaddr(0) <= \<const0>\;
  m_dest_axi_awburst(1) <= \<const0>\;
  m_dest_axi_awburst(0) <= \<const1>\;
  m_dest_axi_awcache(3) <= \<const0>\;
  m_dest_axi_awcache(2) <= \<const0>\;
  m_dest_axi_awcache(1) <= \<const1>\;
  m_dest_axi_awcache(0) <= \<const1>\;
  m_dest_axi_awid(3) <= \<const0>\;
  m_dest_axi_awid(2) <= \<const0>\;
  m_dest_axi_awid(1) <= \<const0>\;
  m_dest_axi_awid(0) <= \<const0>\;
  m_dest_axi_awlen(7) <= \<const0>\;
  m_dest_axi_awlen(6) <= \<const0>\;
  m_dest_axi_awlen(5) <= \<const0>\;
  m_dest_axi_awlen(4) <= \<const0>\;
  m_dest_axi_awlen(3 downto 0) <= \^m_dest_axi_awlen\(3 downto 0);
  m_dest_axi_awlock(0) <= \<const0>\;
  m_dest_axi_awprot(2) <= \<const0>\;
  m_dest_axi_awprot(1) <= \<const0>\;
  m_dest_axi_awprot(0) <= \<const0>\;
  m_dest_axi_awsize(2) <= \<const0>\;
  m_dest_axi_awsize(1) <= \<const1>\;
  m_dest_axi_awsize(0) <= \<const1>\;
  m_dest_axi_rready <= \<const0>\;
  m_dest_axi_wid(3) <= \<const0>\;
  m_dest_axi_wid(2) <= \<const0>\;
  m_dest_axi_wid(1) <= \<const0>\;
  m_dest_axi_wid(0) <= \<const0>\;
  m_dest_axi_wstrb(7) <= \<const1>\;
  m_dest_axi_wstrb(6) <= \<const1>\;
  m_dest_axi_wstrb(5) <= \<const1>\;
  m_dest_axi_wstrb(4) <= \<const1>\;
  m_dest_axi_wstrb(3) <= \<const1>\;
  m_dest_axi_wstrb(2) <= \<const1>\;
  m_dest_axi_wstrb(1) <= \<const1>\;
  m_dest_axi_wstrb(0) <= \<const1>\;
  m_src_axi_araddr(31) <= \<const0>\;
  m_src_axi_araddr(30) <= \<const0>\;
  m_src_axi_araddr(29) <= \<const0>\;
  m_src_axi_araddr(28) <= \<const0>\;
  m_src_axi_araddr(27) <= \<const0>\;
  m_src_axi_araddr(26) <= \<const0>\;
  m_src_axi_araddr(25) <= \<const0>\;
  m_src_axi_araddr(24) <= \<const0>\;
  m_src_axi_araddr(23) <= \<const0>\;
  m_src_axi_araddr(22) <= \<const0>\;
  m_src_axi_araddr(21) <= \<const0>\;
  m_src_axi_araddr(20) <= \<const0>\;
  m_src_axi_araddr(19) <= \<const0>\;
  m_src_axi_araddr(18) <= \<const0>\;
  m_src_axi_araddr(17) <= \<const0>\;
  m_src_axi_araddr(16) <= \<const0>\;
  m_src_axi_araddr(15) <= \<const0>\;
  m_src_axi_araddr(14) <= \<const0>\;
  m_src_axi_araddr(13) <= \<const0>\;
  m_src_axi_araddr(12) <= \<const0>\;
  m_src_axi_araddr(11) <= \<const0>\;
  m_src_axi_araddr(10) <= \<const0>\;
  m_src_axi_araddr(9) <= \<const0>\;
  m_src_axi_araddr(8) <= \<const0>\;
  m_src_axi_araddr(7) <= \<const0>\;
  m_src_axi_araddr(6) <= \<const0>\;
  m_src_axi_araddr(5) <= \<const0>\;
  m_src_axi_araddr(4) <= \<const0>\;
  m_src_axi_araddr(3) <= \<const0>\;
  m_src_axi_araddr(2) <= \<const0>\;
  m_src_axi_araddr(1) <= \<const0>\;
  m_src_axi_araddr(0) <= \<const0>\;
  m_src_axi_arburst(1) <= \<const0>\;
  m_src_axi_arburst(0) <= \<const0>\;
  m_src_axi_arcache(3) <= \<const0>\;
  m_src_axi_arcache(2) <= \<const0>\;
  m_src_axi_arcache(1) <= \<const0>\;
  m_src_axi_arcache(0) <= \<const0>\;
  m_src_axi_arid(3) <= \<const0>\;
  m_src_axi_arid(2) <= \<const0>\;
  m_src_axi_arid(1) <= \<const0>\;
  m_src_axi_arid(0) <= \<const0>\;
  m_src_axi_arlen(7) <= \<const0>\;
  m_src_axi_arlen(6) <= \<const0>\;
  m_src_axi_arlen(5) <= \<const0>\;
  m_src_axi_arlen(4) <= \<const0>\;
  m_src_axi_arlen(3) <= \<const0>\;
  m_src_axi_arlen(2) <= \<const0>\;
  m_src_axi_arlen(1) <= \<const0>\;
  m_src_axi_arlen(0) <= \<const0>\;
  m_src_axi_arlock(0) <= \<const0>\;
  m_src_axi_arprot(2) <= \<const0>\;
  m_src_axi_arprot(1) <= \<const0>\;
  m_src_axi_arprot(0) <= \<const0>\;
  m_src_axi_arsize(2) <= \<const0>\;
  m_src_axi_arsize(1) <= \<const0>\;
  m_src_axi_arsize(0) <= \<const0>\;
  m_src_axi_arvalid <= \<const0>\;
  m_src_axi_awaddr(31) <= \<const0>\;
  m_src_axi_awaddr(30) <= \<const0>\;
  m_src_axi_awaddr(29) <= \<const0>\;
  m_src_axi_awaddr(28) <= \<const0>\;
  m_src_axi_awaddr(27) <= \<const0>\;
  m_src_axi_awaddr(26) <= \<const0>\;
  m_src_axi_awaddr(25) <= \<const0>\;
  m_src_axi_awaddr(24) <= \<const0>\;
  m_src_axi_awaddr(23) <= \<const0>\;
  m_src_axi_awaddr(22) <= \<const0>\;
  m_src_axi_awaddr(21) <= \<const0>\;
  m_src_axi_awaddr(20) <= \<const0>\;
  m_src_axi_awaddr(19) <= \<const0>\;
  m_src_axi_awaddr(18) <= \<const0>\;
  m_src_axi_awaddr(17) <= \<const0>\;
  m_src_axi_awaddr(16) <= \<const0>\;
  m_src_axi_awaddr(15) <= \<const0>\;
  m_src_axi_awaddr(14) <= \<const0>\;
  m_src_axi_awaddr(13) <= \<const0>\;
  m_src_axi_awaddr(12) <= \<const0>\;
  m_src_axi_awaddr(11) <= \<const0>\;
  m_src_axi_awaddr(10) <= \<const0>\;
  m_src_axi_awaddr(9) <= \<const0>\;
  m_src_axi_awaddr(8) <= \<const0>\;
  m_src_axi_awaddr(7) <= \<const0>\;
  m_src_axi_awaddr(6) <= \<const0>\;
  m_src_axi_awaddr(5) <= \<const0>\;
  m_src_axi_awaddr(4) <= \<const0>\;
  m_src_axi_awaddr(3) <= \<const0>\;
  m_src_axi_awaddr(2) <= \<const0>\;
  m_src_axi_awaddr(1) <= \<const0>\;
  m_src_axi_awaddr(0) <= \<const0>\;
  m_src_axi_awburst(1) <= \<const0>\;
  m_src_axi_awburst(0) <= \<const0>\;
  m_src_axi_awcache(3) <= \<const0>\;
  m_src_axi_awcache(2) <= \<const0>\;
  m_src_axi_awcache(1) <= \<const0>\;
  m_src_axi_awcache(0) <= \<const0>\;
  m_src_axi_awid(3) <= \<const0>\;
  m_src_axi_awid(2) <= \<const0>\;
  m_src_axi_awid(1) <= \<const0>\;
  m_src_axi_awid(0) <= \<const0>\;
  m_src_axi_awlen(7) <= \<const0>\;
  m_src_axi_awlen(6) <= \<const0>\;
  m_src_axi_awlen(5) <= \<const0>\;
  m_src_axi_awlen(4) <= \<const0>\;
  m_src_axi_awlen(3) <= \<const0>\;
  m_src_axi_awlen(2) <= \<const0>\;
  m_src_axi_awlen(1) <= \<const0>\;
  m_src_axi_awlen(0) <= \<const0>\;
  m_src_axi_awlock(0) <= \<const0>\;
  m_src_axi_awprot(2) <= \<const0>\;
  m_src_axi_awprot(1) <= \<const0>\;
  m_src_axi_awprot(0) <= \<const0>\;
  m_src_axi_awsize(2) <= \<const0>\;
  m_src_axi_awsize(1) <= \<const0>\;
  m_src_axi_awsize(0) <= \<const0>\;
  m_src_axi_awvalid <= \<const0>\;
  m_src_axi_bready <= \<const0>\;
  m_src_axi_rready <= \<const0>\;
  m_src_axi_wdata(31) <= \<const0>\;
  m_src_axi_wdata(30) <= \<const0>\;
  m_src_axi_wdata(29) <= \<const0>\;
  m_src_axi_wdata(28) <= \<const0>\;
  m_src_axi_wdata(27) <= \<const0>\;
  m_src_axi_wdata(26) <= \<const0>\;
  m_src_axi_wdata(25) <= \<const0>\;
  m_src_axi_wdata(24) <= \<const0>\;
  m_src_axi_wdata(23) <= \<const0>\;
  m_src_axi_wdata(22) <= \<const0>\;
  m_src_axi_wdata(21) <= \<const0>\;
  m_src_axi_wdata(20) <= \<const0>\;
  m_src_axi_wdata(19) <= \<const0>\;
  m_src_axi_wdata(18) <= \<const0>\;
  m_src_axi_wdata(17) <= \<const0>\;
  m_src_axi_wdata(16) <= \<const0>\;
  m_src_axi_wdata(15) <= \<const0>\;
  m_src_axi_wdata(14) <= \<const0>\;
  m_src_axi_wdata(13) <= \<const0>\;
  m_src_axi_wdata(12) <= \<const0>\;
  m_src_axi_wdata(11) <= \<const0>\;
  m_src_axi_wdata(10) <= \<const0>\;
  m_src_axi_wdata(9) <= \<const0>\;
  m_src_axi_wdata(8) <= \<const0>\;
  m_src_axi_wdata(7) <= \<const0>\;
  m_src_axi_wdata(6) <= \<const0>\;
  m_src_axi_wdata(5) <= \<const0>\;
  m_src_axi_wdata(4) <= \<const0>\;
  m_src_axi_wdata(3) <= \<const0>\;
  m_src_axi_wdata(2) <= \<const0>\;
  m_src_axi_wdata(1) <= \<const0>\;
  m_src_axi_wdata(0) <= \<const0>\;
  m_src_axi_wid(3) <= \<const0>\;
  m_src_axi_wid(2) <= \<const0>\;
  m_src_axi_wid(1) <= \<const0>\;
  m_src_axi_wid(0) <= \<const0>\;
  m_src_axi_wlast <= \<const0>\;
  m_src_axi_wstrb(3) <= \<const0>\;
  m_src_axi_wstrb(2) <= \<const0>\;
  m_src_axi_wstrb(1) <= \<const0>\;
  m_src_axi_wstrb(0) <= \<const0>\;
  m_src_axi_wvalid <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
i_regmap: entity work.zsys_axi_dmac_0_0_axi_dmac_regmap
     port map (
      D(4 downto 1) => up_dma_x_length(6 downto 3),
      D(0) => up_dma_last,
      Q(28 downto 0) => up_dma_dest_address(31 downto 3),
      \address_reg[0]\ => i_transfer_n_122,
      ctrl_enable => ctrl_enable,
      ctrl_pause => ctrl_pause,
      dbg_ids0(3) => dbg_ids0(16),
      dbg_ids0(2) => dbg_ids0(9),
      dbg_ids0(1 downto 0) => dbg_ids0(1 downto 0),
      dbg_ids1(7 downto 4) => dbg_ids1(27 downto 24),
      dbg_ids1(3 downto 0) => dbg_ids1(3 downto 0),
      dbg_status(4) => dbg_status(11),
      dbg_status(3 downto 2) => dbg_status(5 downto 4),
      dbg_status(1 downto 0) => dbg_status(1 downto 0),
      \dest_id_reg[1]\ => i_transfer_n_126,
      \dest_id_reg[3]\(1) => data8(19),
      \dest_id_reg[3]\(0) => p_0_in0_in,
      \id_reg[0]\ => i_transfer_n_127,
      \id_reg[1]\ => i_transfer_n_128,
      \id_reg[2]\ => i_transfer_n_121,
      \id_reg[3]\ => i_transfer_n_129,
      irq => irq,
      m_dest_axi_awaddr(19 downto 16) => \^m_dest_axi_awaddr\(31 downto 28),
      m_dest_axi_awaddr(15 downto 10) => \^m_dest_axi_awaddr\(23 downto 18),
      m_dest_axi_awaddr(9 downto 5) => \^m_dest_axi_awaddr\(16 downto 12),
      m_dest_axi_awaddr(4) => \^m_dest_axi_awaddr\(9),
      m_dest_axi_awaddr(3 downto 0) => \^m_dest_axi_awaddr\(7 downto 4),
      needs_reset_reg => i_regmap_n_63,
      needs_reset_reg_0 => i_transfer_n_125,
      \reset_gen[0].reset_sync_reg[0]\(0) => i_transfer_n_74,
      \reset_gen[0].reset_sync_reg[0]_0\ => i_transfer_n_124,
      \reset_gen[0].reset_sync_reg[0]_1\ => i_transfer_n_123,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(8 downto 0) => s_axi_araddr(10 downto 2),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(8 downto 0) => s_axi_awaddr(10 downto 2),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wvalid => s_axi_wvalid,
      \src_id_reg[2]\ => i_transfer_n_130,
      up_dma_req_valid => up_dma_req_valid,
      \up_rdata_d_reg[31]\ => i_regmap_n_0,
      \up_rdata_reg[23]_0\(16 downto 0) => up_dma_x_length(23 downto 7),
      \up_rdata_reg[9]_0\ => i_regmap_n_15,
      \up_rdata_reg[9]_1\ => i_regmap_n_16,
      up_req_eot => up_req_eot,
      up_sot => up_sot
    );
i_transfer: entity work.zsys_axi_dmac_0_0_axi_dmac_transfer
     port map (
      D(28 downto 0) => up_dma_dest_address(31 downto 3),
      Q(0) => i_transfer_n_74,
      SR(0) => i_regmap_n_0,
      ctrl_enable => ctrl_enable,
      ctrl_enable_reg => i_regmap_n_63,
      ctrl_pause => ctrl_pause,
      dbg_ids1(7 downto 4) => dbg_ids1(27 downto 24),
      dbg_ids1(3 downto 0) => dbg_ids1(3 downto 0),
      m_dest_axi_aclk => m_dest_axi_aclk,
      m_dest_axi_awaddr(28 downto 0) => \^m_dest_axi_awaddr\(31 downto 3),
      m_dest_axi_awlen(3 downto 0) => \^m_dest_axi_awlen\(3 downto 0),
      m_dest_axi_awready => m_dest_axi_awready,
      m_dest_axi_awvalid => m_dest_axi_awvalid,
      m_dest_axi_bready => m_dest_axi_bready,
      m_dest_axi_bvalid => m_dest_axi_bvalid,
      m_dest_axi_wdata(63 downto 0) => m_dest_axi_wdata(63 downto 0),
      m_dest_axi_wlast => m_dest_axi_wlast,
      m_dest_axi_wready => m_dest_axi_wready,
      m_dest_axi_wvalid => m_dest_axi_wvalid,
      m_ram_reg(3) => dbg_ids0(16),
      m_ram_reg(2) => dbg_ids0(9),
      m_ram_reg(1 downto 0) => dbg_ids0(1 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axis_aclk => s_axis_aclk,
      s_axis_data(31 downto 0) => s_axis_data(31 downto 0),
      s_axis_last => s_axis_last,
      s_axis_ready => s_axis_ready,
      s_axis_valid => s_axis_valid,
      s_axis_xfer_req => s_axis_xfer_req,
      \src_throttled_request_id_reg[0]\(1) => data8(19),
      \src_throttled_request_id_reg[0]\(0) => p_0_in0_in,
      \state_reg[0]\(4) => dbg_status(11),
      \state_reg[0]\(3 downto 2) => dbg_status(5 downto 4),
      \state_reg[0]\(1 downto 0) => dbg_status(1 downto 0),
      up_dma_last_reg(0) => up_dma_last,
      up_dma_req_valid => up_dma_req_valid,
      up_dma_x_length(20 downto 0) => up_dma_x_length(23 downto 3),
      \up_raddr_int_reg[2]\ => i_regmap_n_15,
      \up_raddr_int_reg[2]_0\ => i_regmap_n_16,
      \up_rdata_reg[10]\ => i_transfer_n_124,
      \up_rdata_reg[11]\ => i_transfer_n_125,
      \up_rdata_reg[17]\ => i_transfer_n_126,
      \up_rdata_reg[24]\ => i_transfer_n_127,
      \up_rdata_reg[25]\ => i_transfer_n_128,
      \up_rdata_reg[26]\ => i_transfer_n_121,
      \up_rdata_reg[27]\ => i_transfer_n_129,
      \up_rdata_reg[2]\ => i_transfer_n_130,
      \up_rdata_reg[3]\ => i_transfer_n_122,
      \up_rdata_reg[8]\ => i_transfer_n_123,
      up_req_eot => up_req_eot,
      up_sot => up_sot
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_axi_dmac_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awready : out STD_LOGIC;
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wready : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bready : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_arready : out STD_LOGIC;
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    irq : out STD_LOGIC;
    m_dest_axi_aclk : in STD_LOGIC;
    m_dest_axi_aresetn : in STD_LOGIC;
    m_dest_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_dest_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_dest_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_dest_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_dest_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_dest_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_dest_axi_awvalid : out STD_LOGIC;
    m_dest_axi_awready : in STD_LOGIC;
    m_dest_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_dest_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_dest_axi_wready : in STD_LOGIC;
    m_dest_axi_wvalid : out STD_LOGIC;
    m_dest_axi_wlast : out STD_LOGIC;
    m_dest_axi_bvalid : in STD_LOGIC;
    m_dest_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_dest_axi_bready : out STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_ready : out STD_LOGIC;
    s_axis_valid : in STD_LOGIC;
    s_axis_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_user : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_last : in STD_LOGIC;
    s_axis_xfer_req : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of zsys_axi_dmac_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of zsys_axi_dmac_0_0 : entity is "zsys_axi_dmac_0_0,axi_dmac,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of zsys_axi_dmac_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of zsys_axi_dmac_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of zsys_axi_dmac_0_0 : entity is "axi_dmac,Vivado 2018.2";
end zsys_axi_dmac_0_0;

architecture STRUCTURE of zsys_axi_dmac_0_0 is
  signal NLW_inst_fifo_rd_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_fifo_rd_valid_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_fifo_rd_xfer_req_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_fifo_wr_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_fifo_wr_xfer_req_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_axis_last_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_axis_valid_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_axis_xfer_req_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_dest_axi_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_dest_axi_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_src_axi_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_src_axi_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_src_axi_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_src_axi_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_src_axi_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_src_axi_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_fifo_rd_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_inst_m_axis_data_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_inst_m_dest_axi_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_m_dest_axi_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_m_dest_axi_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_dest_axi_arid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_dest_axi_arlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_m_dest_axi_arlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_dest_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_m_dest_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_m_dest_axi_awid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_dest_axi_awlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_dest_axi_wid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_src_axi_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_m_src_axi_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_m_src_axi_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_src_axi_arid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_src_axi_arlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_m_src_axi_arlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_src_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_m_src_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_m_src_axi_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_m_src_axi_awburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_m_src_axi_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_src_axi_awid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_src_axi_awlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_m_src_axi_awlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_src_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_m_src_axi_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_m_src_axi_wdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_m_src_axi_wid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_src_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute ASYNC_CLK_DEST_REQ : string;
  attribute ASYNC_CLK_DEST_REQ of inst : label is "1'b0";
  attribute ASYNC_CLK_REQ_SRC : string;
  attribute ASYNC_CLK_REQ_SRC of inst : label is "1'b0";
  attribute ASYNC_CLK_SRC_DEST : string;
  attribute ASYNC_CLK_SRC_DEST of inst : label is "1'b0";
  attribute AXI_ID_WIDTH_DEST : integer;
  attribute AXI_ID_WIDTH_DEST of inst : label is 4;
  attribute AXI_ID_WIDTH_SRC : integer;
  attribute AXI_ID_WIDTH_SRC of inst : label is 4;
  attribute AXI_SLICE_DEST : string;
  attribute AXI_SLICE_DEST of inst : label is "1'b0";
  attribute AXI_SLICE_SRC : string;
  attribute AXI_SLICE_SRC of inst : label is "1'b0";
  attribute BEATS_PER_BURST_LIMIT_DEST : integer;
  attribute BEATS_PER_BURST_LIMIT_DEST of inst : label is 256;
  attribute BEATS_PER_BURST_LIMIT_SRC : integer;
  attribute BEATS_PER_BURST_LIMIT_SRC of inst : label is 1024;
  attribute BYTES_PER_BEAT_WIDTH_DEST : integer;
  attribute BYTES_PER_BEAT_WIDTH_DEST of inst : label is 3;
  attribute BYTES_PER_BEAT_WIDTH_SRC : integer;
  attribute BYTES_PER_BEAT_WIDTH_SRC of inst : label is 2;
  attribute BYTES_PER_BURST_LIMIT : integer;
  attribute BYTES_PER_BURST_LIMIT of inst : label is 2048;
  attribute BYTES_PER_BURST_LIMIT_DEST : integer;
  attribute BYTES_PER_BURST_LIMIT_DEST of inst : label is 2048;
  attribute BYTES_PER_BURST_LIMIT_SRC : integer;
  attribute BYTES_PER_BURST_LIMIT_SRC of inst : label is 4096;
  attribute CYCLIC : string;
  attribute CYCLIC of inst : label is "1'b0";
  attribute DBG_ID_PADDING : integer;
  attribute DBG_ID_PADDING of inst : label is 4;
  attribute DISABLE_DEBUG_REGISTERS : string;
  attribute DISABLE_DEBUG_REGISTERS of inst : label is "1'b0";
  attribute DMA_2D_TRANSFER : string;
  attribute DMA_2D_TRANSFER of inst : label is "1'b0";
  attribute DMA_AXI_ADDR_WIDTH : integer;
  attribute DMA_AXI_ADDR_WIDTH of inst : label is 32;
  attribute DMA_AXI_PROTOCOL_DEST : integer;
  attribute DMA_AXI_PROTOCOL_DEST of inst : label is 0;
  attribute DMA_AXI_PROTOCOL_SRC : integer;
  attribute DMA_AXI_PROTOCOL_SRC of inst : label is 0;
  attribute DMA_DATA_WIDTH_DEST : integer;
  attribute DMA_DATA_WIDTH_DEST of inst : label is 64;
  attribute DMA_DATA_WIDTH_SRC : integer;
  attribute DMA_DATA_WIDTH_SRC of inst : label is 32;
  attribute DMA_LENGTH_ALIGN : integer;
  attribute DMA_LENGTH_ALIGN of inst : label is 3;
  attribute DMA_LENGTH_WIDTH : integer;
  attribute DMA_LENGTH_WIDTH of inst : label is 24;
  attribute DMA_TYPE_AXI_MM : integer;
  attribute DMA_TYPE_AXI_MM of inst : label is 0;
  attribute DMA_TYPE_AXI_STREAM : integer;
  attribute DMA_TYPE_AXI_STREAM of inst : label is 1;
  attribute DMA_TYPE_DEST : integer;
  attribute DMA_TYPE_DEST of inst : label is 0;
  attribute DMA_TYPE_FIFO : integer;
  attribute DMA_TYPE_FIFO of inst : label is 2;
  attribute DMA_TYPE_SRC : integer;
  attribute DMA_TYPE_SRC of inst : label is 1;
  attribute FIFO_SIZE : integer;
  attribute FIFO_SIZE of inst : label is 8;
  attribute HAS_DEST_ADDR : string;
  attribute HAS_DEST_ADDR of inst : label is "1'b1";
  attribute HAS_SRC_ADDR : string;
  attribute HAS_SRC_ADDR of inst : label is "1'b0";
  attribute ID : integer;
  attribute ID of inst : label is 0;
  attribute ID_WIDTH : integer;
  attribute ID_WIDTH of inst : label is 4;
  attribute MAX_BYTES_PER_BURST : integer;
  attribute MAX_BYTES_PER_BURST of inst : label is 128;
  attribute REAL_MAX_BYTES_PER_BURST : integer;
  attribute REAL_MAX_BYTES_PER_BURST of inst : label is 128;
  attribute SYNC_TRANSFER_START : string;
  attribute SYNC_TRANSFER_START of inst : label is "1'b0";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of irq : signal is "xilinx.com:signal:interrupt:1.0 irq INTERRUPT";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of irq : signal is "XIL_INTERFACENAME irq, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute X_INTERFACE_INFO of m_dest_axi_aclk : signal is "xilinx.com:signal:clock:1.0 m_dest_axi_aclk CLK";
  attribute X_INTERFACE_PARAMETER of m_dest_axi_aclk : signal is "XIL_INTERFACENAME m_dest_axi_aclk, ASSOCIATED_BUSIF m_dest_axi, ASSOCIATED_RESET m_dest_axi_aresetn, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN zsys_processing_system7_0_0_FCLK_CLK0";
  attribute X_INTERFACE_INFO of m_dest_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 m_dest_axi_aresetn RST";
  attribute X_INTERFACE_PARAMETER of m_dest_axi_aresetn : signal is "XIL_INTERFACENAME m_dest_axi_aresetn, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of m_dest_axi_awready : signal is "xilinx.com:interface:aximm:1.0 m_dest_axi AWREADY";
  attribute X_INTERFACE_INFO of m_dest_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 m_dest_axi AWVALID";
  attribute X_INTERFACE_INFO of m_dest_axi_bready : signal is "xilinx.com:interface:aximm:1.0 m_dest_axi BREADY";
  attribute X_INTERFACE_PARAMETER of m_dest_axi_bready : signal is "XIL_INTERFACENAME m_dest_axi, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 1e+08, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 0, NUM_READ_OUTSTANDING 0, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 16, PHASE 0.000, CLK_DOMAIN zsys_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  attribute X_INTERFACE_INFO of m_dest_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 m_dest_axi BVALID";
  attribute X_INTERFACE_INFO of m_dest_axi_wlast : signal is "xilinx.com:interface:aximm:1.0 m_dest_axi WLAST";
  attribute X_INTERFACE_INFO of m_dest_axi_wready : signal is "xilinx.com:interface:aximm:1.0 m_dest_axi WREADY";
  attribute X_INTERFACE_INFO of m_dest_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 m_dest_axi WVALID";
  attribute X_INTERFACE_INFO of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 s_axi_aclk CLK";
  attribute X_INTERFACE_PARAMETER of s_axi_aclk : signal is "XIL_INTERFACENAME s_axi_aclk, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN zsys_processing_system7_0_0_FCLK_CLK0";
  attribute X_INTERFACE_INFO of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 s_axi_aresetn RST";
  attribute X_INTERFACE_PARAMETER of s_axi_aresetn : signal is "XIL_INTERFACENAME s_axi_aresetn, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 s_axi ARREADY";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi ARVALID";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 s_axi AWREADY";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi AWVALID";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 s_axi BREADY";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi BVALID";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 s_axi RREADY";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi RVALID";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 s_axi WREADY";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi WVALID";
  attribute X_INTERFACE_INFO of s_axis_aclk : signal is "xilinx.com:signal:clock:1.0 s_axis_aclk CLK, xilinx.com:signal:clock:1.0 s_axis_signal_clock CLK";
  attribute X_INTERFACE_PARAMETER of s_axis_aclk : signal is "XIL_INTERFACENAME s_axis_aclk, FREQ_HZ 100000000, PHASE 0.000, XIL_INTERFACENAME s_axis_signal_clock, ASSOCIATED_BUSIF s_axis, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN zsys_processing_system7_0_0_FCLK_CLK0";
  attribute X_INTERFACE_INFO of s_axis_last : signal is "xilinx.com:interface:axis:1.0 s_axis TLAST";
  attribute X_INTERFACE_PARAMETER of s_axis_last : signal is "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN zsys_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of s_axis_ready : signal is "xilinx.com:interface:axis:1.0 s_axis TREADY";
  attribute X_INTERFACE_INFO of s_axis_valid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute X_INTERFACE_INFO of m_dest_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 m_dest_axi AWADDR";
  attribute X_INTERFACE_INFO of m_dest_axi_awburst : signal is "xilinx.com:interface:aximm:1.0 m_dest_axi AWBURST";
  attribute X_INTERFACE_INFO of m_dest_axi_awcache : signal is "xilinx.com:interface:aximm:1.0 m_dest_axi AWCACHE";
  attribute X_INTERFACE_INFO of m_dest_axi_awlen : signal is "xilinx.com:interface:aximm:1.0 m_dest_axi AWLEN";
  attribute X_INTERFACE_INFO of m_dest_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 m_dest_axi AWPROT";
  attribute X_INTERFACE_INFO of m_dest_axi_awsize : signal is "xilinx.com:interface:aximm:1.0 m_dest_axi AWSIZE";
  attribute X_INTERFACE_INFO of m_dest_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 m_dest_axi BRESP";
  attribute X_INTERFACE_INFO of m_dest_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 m_dest_axi WDATA";
  attribute X_INTERFACE_INFO of m_dest_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 m_dest_axi WSTRB";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 s_axi ARADDR";
  attribute X_INTERFACE_INFO of s_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 s_axi ARPROT";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 s_axi AWADDR";
  attribute X_INTERFACE_INFO of s_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 s_axi AWPROT";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 s_axi BRESP";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_PARAMETER of s_axi_rdata : signal is "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 1e+08, ID_WIDTH 0, ADDR_WIDTH 12, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN zsys_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 s_axi RRESP";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 s_axi WDATA";
  attribute X_INTERFACE_INFO of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 s_axi WSTRB";
  attribute X_INTERFACE_INFO of s_axis_data : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
  attribute X_INTERFACE_INFO of s_axis_user : signal is "xilinx.com:interface:axis:1.0 s_axis TUSER";
begin
inst: entity work.zsys_axi_dmac_0_0_axi_dmac
     port map (
      fifo_rd_clk => '0',
      fifo_rd_dout(63 downto 0) => NLW_inst_fifo_rd_dout_UNCONNECTED(63 downto 0),
      fifo_rd_en => '0',
      fifo_rd_underflow => NLW_inst_fifo_rd_underflow_UNCONNECTED,
      fifo_rd_valid => NLW_inst_fifo_rd_valid_UNCONNECTED,
      fifo_rd_xfer_req => NLW_inst_fifo_rd_xfer_req_UNCONNECTED,
      fifo_wr_clk => '0',
      fifo_wr_din(31 downto 0) => B"00000000000000000000000000000000",
      fifo_wr_en => '0',
      fifo_wr_overflow => NLW_inst_fifo_wr_overflow_UNCONNECTED,
      fifo_wr_sync => '1',
      fifo_wr_xfer_req => NLW_inst_fifo_wr_xfer_req_UNCONNECTED,
      irq => irq,
      m_axis_aclk => '0',
      m_axis_data(63 downto 0) => NLW_inst_m_axis_data_UNCONNECTED(63 downto 0),
      m_axis_last => NLW_inst_m_axis_last_UNCONNECTED,
      m_axis_ready => '0',
      m_axis_valid => NLW_inst_m_axis_valid_UNCONNECTED,
      m_axis_xfer_req => NLW_inst_m_axis_xfer_req_UNCONNECTED,
      m_dest_axi_aclk => m_dest_axi_aclk,
      m_dest_axi_araddr(31 downto 0) => NLW_inst_m_dest_axi_araddr_UNCONNECTED(31 downto 0),
      m_dest_axi_arburst(1 downto 0) => NLW_inst_m_dest_axi_arburst_UNCONNECTED(1 downto 0),
      m_dest_axi_arcache(3 downto 0) => NLW_inst_m_dest_axi_arcache_UNCONNECTED(3 downto 0),
      m_dest_axi_aresetn => m_dest_axi_aresetn,
      m_dest_axi_arid(3 downto 0) => NLW_inst_m_dest_axi_arid_UNCONNECTED(3 downto 0),
      m_dest_axi_arlen(7 downto 0) => NLW_inst_m_dest_axi_arlen_UNCONNECTED(7 downto 0),
      m_dest_axi_arlock(0) => NLW_inst_m_dest_axi_arlock_UNCONNECTED(0),
      m_dest_axi_arprot(2 downto 0) => NLW_inst_m_dest_axi_arprot_UNCONNECTED(2 downto 0),
      m_dest_axi_arready => '0',
      m_dest_axi_arsize(2 downto 0) => NLW_inst_m_dest_axi_arsize_UNCONNECTED(2 downto 0),
      m_dest_axi_arvalid => NLW_inst_m_dest_axi_arvalid_UNCONNECTED,
      m_dest_axi_awaddr(31 downto 0) => m_dest_axi_awaddr(31 downto 0),
      m_dest_axi_awburst(1 downto 0) => m_dest_axi_awburst(1 downto 0),
      m_dest_axi_awcache(3 downto 0) => m_dest_axi_awcache(3 downto 0),
      m_dest_axi_awid(3 downto 0) => NLW_inst_m_dest_axi_awid_UNCONNECTED(3 downto 0),
      m_dest_axi_awlen(7 downto 0) => m_dest_axi_awlen(7 downto 0),
      m_dest_axi_awlock(0) => NLW_inst_m_dest_axi_awlock_UNCONNECTED(0),
      m_dest_axi_awprot(2 downto 0) => m_dest_axi_awprot(2 downto 0),
      m_dest_axi_awready => m_dest_axi_awready,
      m_dest_axi_awsize(2 downto 0) => m_dest_axi_awsize(2 downto 0),
      m_dest_axi_awvalid => m_dest_axi_awvalid,
      m_dest_axi_bid(3 downto 0) => B"0000",
      m_dest_axi_bready => m_dest_axi_bready,
      m_dest_axi_bresp(1 downto 0) => m_dest_axi_bresp(1 downto 0),
      m_dest_axi_bvalid => m_dest_axi_bvalid,
      m_dest_axi_rdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      m_dest_axi_rid(3 downto 0) => B"0000",
      m_dest_axi_rlast => '0',
      m_dest_axi_rready => NLW_inst_m_dest_axi_rready_UNCONNECTED,
      m_dest_axi_rresp(1 downto 0) => B"00",
      m_dest_axi_rvalid => '0',
      m_dest_axi_wdata(63 downto 0) => m_dest_axi_wdata(63 downto 0),
      m_dest_axi_wid(3 downto 0) => NLW_inst_m_dest_axi_wid_UNCONNECTED(3 downto 0),
      m_dest_axi_wlast => m_dest_axi_wlast,
      m_dest_axi_wready => m_dest_axi_wready,
      m_dest_axi_wstrb(7 downto 0) => m_dest_axi_wstrb(7 downto 0),
      m_dest_axi_wvalid => m_dest_axi_wvalid,
      m_src_axi_aclk => '0',
      m_src_axi_araddr(31 downto 0) => NLW_inst_m_src_axi_araddr_UNCONNECTED(31 downto 0),
      m_src_axi_arburst(1 downto 0) => NLW_inst_m_src_axi_arburst_UNCONNECTED(1 downto 0),
      m_src_axi_arcache(3 downto 0) => NLW_inst_m_src_axi_arcache_UNCONNECTED(3 downto 0),
      m_src_axi_aresetn => '0',
      m_src_axi_arid(3 downto 0) => NLW_inst_m_src_axi_arid_UNCONNECTED(3 downto 0),
      m_src_axi_arlen(7 downto 0) => NLW_inst_m_src_axi_arlen_UNCONNECTED(7 downto 0),
      m_src_axi_arlock(0) => NLW_inst_m_src_axi_arlock_UNCONNECTED(0),
      m_src_axi_arprot(2 downto 0) => NLW_inst_m_src_axi_arprot_UNCONNECTED(2 downto 0),
      m_src_axi_arready => '0',
      m_src_axi_arsize(2 downto 0) => NLW_inst_m_src_axi_arsize_UNCONNECTED(2 downto 0),
      m_src_axi_arvalid => NLW_inst_m_src_axi_arvalid_UNCONNECTED,
      m_src_axi_awaddr(31 downto 0) => NLW_inst_m_src_axi_awaddr_UNCONNECTED(31 downto 0),
      m_src_axi_awburst(1 downto 0) => NLW_inst_m_src_axi_awburst_UNCONNECTED(1 downto 0),
      m_src_axi_awcache(3 downto 0) => NLW_inst_m_src_axi_awcache_UNCONNECTED(3 downto 0),
      m_src_axi_awid(3 downto 0) => NLW_inst_m_src_axi_awid_UNCONNECTED(3 downto 0),
      m_src_axi_awlen(7 downto 0) => NLW_inst_m_src_axi_awlen_UNCONNECTED(7 downto 0),
      m_src_axi_awlock(0) => NLW_inst_m_src_axi_awlock_UNCONNECTED(0),
      m_src_axi_awprot(2 downto 0) => NLW_inst_m_src_axi_awprot_UNCONNECTED(2 downto 0),
      m_src_axi_awready => '0',
      m_src_axi_awsize(2 downto 0) => NLW_inst_m_src_axi_awsize_UNCONNECTED(2 downto 0),
      m_src_axi_awvalid => NLW_inst_m_src_axi_awvalid_UNCONNECTED,
      m_src_axi_bid(3 downto 0) => B"0000",
      m_src_axi_bready => NLW_inst_m_src_axi_bready_UNCONNECTED,
      m_src_axi_bresp(1 downto 0) => B"00",
      m_src_axi_bvalid => '0',
      m_src_axi_rdata(31 downto 0) => B"00000000000000000000000000000000",
      m_src_axi_rid(3 downto 0) => B"0000",
      m_src_axi_rlast => '0',
      m_src_axi_rready => NLW_inst_m_src_axi_rready_UNCONNECTED,
      m_src_axi_rresp(1 downto 0) => B"00",
      m_src_axi_rvalid => '0',
      m_src_axi_wdata(31 downto 0) => NLW_inst_m_src_axi_wdata_UNCONNECTED(31 downto 0),
      m_src_axi_wid(3 downto 0) => NLW_inst_m_src_axi_wid_UNCONNECTED(3 downto 0),
      m_src_axi_wlast => NLW_inst_m_src_axi_wlast_UNCONNECTED,
      m_src_axi_wready => '0',
      m_src_axi_wstrb(3 downto 0) => NLW_inst_m_src_axi_wstrb_UNCONNECTED(3 downto 0),
      m_src_axi_wvalid => NLW_inst_m_src_axi_wvalid_UNCONNECTED,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(11 downto 0) => s_axi_araddr(11 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arprot(2 downto 0) => s_axi_arprot(2 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(11 downto 0) => s_axi_awaddr(11 downto 0),
      s_axi_awprot(2 downto 0) => s_axi_awprot(2 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      s_axis_aclk => s_axis_aclk,
      s_axis_data(31 downto 0) => s_axis_data(31 downto 0),
      s_axis_last => s_axis_last,
      s_axis_ready => s_axis_ready,
      s_axis_user(0) => s_axis_user(0),
      s_axis_valid => s_axis_valid,
      s_axis_xfer_req => s_axis_xfer_req
    );
end STRUCTURE;
