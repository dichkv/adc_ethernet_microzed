-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
-- Date        : Sat Feb 23 11:24:05 2019
-- Host        : kdichpc running 64-bit Ubuntu 16.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ zsys_axis_adc_0_0_sim_netlist.vhdl
-- Design      : zsys_axis_adc_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_adc_v1_0_M00_AXIS is
  port (
    M_AXIS_TVALID : out STD_LOGIC;
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axis_tlast : out STD_LOGIC;
    irq : out STD_LOGIC;
    m00_axis_aresetn : in STD_LOGIC;
    wr_ena : in STD_LOGIC;
    m00_axis_tready : in STD_LOGIC;
    m00_axis_aclk : in STD_LOGIC;
    wr_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    wr_clk : in STD_LOGIC;
    wr_sync : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_adc_v1_0_M00_AXIS;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_adc_v1_0_M00_AXIS is
  signal \^m_axis_tvalid\ : STD_LOGIC;
  signal axis_tlast_delay_i_1_n_0 : STD_LOGIC;
  signal axis_tlast_delay_i_3_n_0 : STD_LOGIC;
  signal axis_tvalid : STD_LOGIC;
  signal axis_tvalid_delay_i_2_n_0 : STD_LOGIC;
  signal data_fifo_reg_i_1_n_0 : STD_LOGIC;
  signal data_fifo_reg_i_2_n_0 : STD_LOGIC;
  signal data_fifo_reg_i_4_n_0 : STD_LOGIC;
  signal data_fifo_reg_i_5_n_0 : STD_LOGIC;
  signal irq_INST_0_i_1_n_0 : STD_LOGIC;
  signal mst_exec_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \mst_exec_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \mst_exec_state_reg_n_0_[1]\ : STD_LOGIC;
  signal mst_wr_state_i_1_n_0 : STD_LOGIC;
  signal mst_wr_state_reg_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 8 downto 1 );
  signal rx_done_d1 : STD_LOGIC;
  signal rx_done_i_1_n_0 : STD_LOGIC;
  signal rx_done_reg_n_0 : STD_LOGIC;
  signal sys_enable : STD_LOGIC;
  signal tx_done2_out : STD_LOGIC;
  signal tx_done_i_1_n_0 : STD_LOGIC;
  signal tx_done_reg_n_0 : STD_LOGIC;
  signal \v_read_pointer[0]_i_1_n_0\ : STD_LOGIC;
  signal \v_read_pointer[0]_i_2_n_0\ : STD_LOGIC;
  signal \v_read_pointer[1]_i_1_n_0\ : STD_LOGIC;
  signal \v_read_pointer[2]_i_1_n_0\ : STD_LOGIC;
  signal \v_read_pointer[3]_i_1_n_0\ : STD_LOGIC;
  signal \v_read_pointer[4]_i_1_n_0\ : STD_LOGIC;
  signal \v_read_pointer[5]_i_1_n_0\ : STD_LOGIC;
  signal \v_read_pointer[5]_i_2_n_0\ : STD_LOGIC;
  signal \v_read_pointer[6]_i_1_n_0\ : STD_LOGIC;
  signal \v_read_pointer[6]_i_2_n_0\ : STD_LOGIC;
  signal \v_read_pointer[7]_i_1_n_0\ : STD_LOGIC;
  signal \v_read_pointer[8]_i_1_n_0\ : STD_LOGIC;
  signal \v_read_pointer[8]_i_2_n_0\ : STD_LOGIC;
  signal v_read_pointer_reg : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \v_write_pointer[0]_i_1_n_0\ : STD_LOGIC;
  signal \v_write_pointer[8]_i_1_n_0\ : STD_LOGIC;
  signal \v_write_pointer[8]_i_3_n_0\ : STD_LOGIC;
  signal \v_write_pointer_reg__0\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal wr_clk_d1 : STD_LOGIC;
  signal wr_clk_d2 : STD_LOGIC;
  signal wr_sync_d1 : STD_LOGIC;
  signal wr_sync_d2 : STD_LOGIC;
  signal NLW_data_fifo_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_data_fifo_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axis_tlast_delay_i_3 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of axis_tvalid_delay_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of axis_tvalid_delay_i_2 : label is "soft_lutpair6";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of data_fifo_reg : label is "p0_d32";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of data_fifo_reg : label is "p0_d32";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of data_fifo_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of data_fifo_reg : label is 8480;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of data_fifo_reg : label is "data_fifo";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of data_fifo_reg : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of data_fifo_reg : label is 511;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of data_fifo_reg : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of data_fifo_reg : label is 31;
  attribute SOFT_HLUTNM of \mst_exec_state[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \v_read_pointer[0]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \v_read_pointer[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \v_read_pointer[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \v_read_pointer[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \v_read_pointer[5]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \v_read_pointer[6]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \v_read_pointer[7]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \v_read_pointer[8]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \v_write_pointer[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \v_write_pointer[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \v_write_pointer[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \v_write_pointer[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \v_write_pointer[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \v_write_pointer[6]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \v_write_pointer[7]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \v_write_pointer[8]_i_3\ : label is "soft_lutpair7";
begin
  M_AXIS_TVALID <= \^m_axis_tvalid\;
axis_tlast_delay_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => m00_axis_aresetn,
      I1 => wr_ena,
      O => axis_tlast_delay_i_1_n_0
    );
axis_tlast_delay_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => v_read_pointer_reg(2),
      I1 => v_read_pointer_reg(1),
      I2 => v_read_pointer_reg(0),
      I3 => axis_tlast_delay_i_3_n_0,
      I4 => v_read_pointer_reg(3),
      I5 => v_read_pointer_reg(8),
      O => tx_done2_out
    );
axis_tlast_delay_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => v_read_pointer_reg(7),
      I1 => v_read_pointer_reg(4),
      I2 => v_read_pointer_reg(6),
      I3 => v_read_pointer_reg(5),
      O => axis_tlast_delay_i_3_n_0
    );
axis_tlast_delay_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => tx_done2_out,
      Q => m00_axis_tlast,
      R => axis_tlast_delay_i_1_n_0
    );
axis_tvalid_delay_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => axis_tvalid_delay_i_2_n_0,
      I1 => data_fifo_reg_i_4_n_0,
      I2 => \mst_exec_state_reg_n_0_[1]\,
      I3 => \mst_exec_state_reg_n_0_[0]\,
      O => axis_tvalid
    );
axis_tvalid_delay_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => axis_tlast_delay_i_3_n_0,
      I1 => v_read_pointer_reg(0),
      I2 => v_read_pointer_reg(1),
      I3 => v_read_pointer_reg(2),
      O => axis_tvalid_delay_i_2_n_0
    );
axis_tvalid_delay_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => axis_tvalid,
      Q => \^m_axis_tvalid\,
      R => axis_tlast_delay_i_1_n_0
    );
data_fifo_reg: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "SDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 0,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(13 downto 5) => v_read_pointer_reg(8 downto 0),
      ADDRARDADDR(4 downto 0) => B"11111",
      ADDRBWRADDR(13 downto 5) => \v_write_pointer_reg__0\(8 downto 0),
      ADDRBWRADDR(4 downto 0) => B"11111",
      CLKARDCLK => m00_axis_aclk,
      CLKBWRCLK => m00_axis_aclk,
      DIADI(15 downto 0) => wr_data(15 downto 0),
      DIBDI(15 downto 0) => wr_data(31 downto 16),
      DIPADIP(1 downto 0) => B"11",
      DIPBDIP(1 downto 0) => B"11",
      DOADO(15 downto 0) => m00_axis_tdata(15 downto 0),
      DOBDO(15 downto 0) => m00_axis_tdata(31 downto 16),
      DOPADOP(1 downto 0) => NLW_data_fifo_reg_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_data_fifo_reg_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => data_fifo_reg_i_1_n_0,
      ENBWREN => data_fifo_reg_i_2_n_0,
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3) => sys_enable,
      WEBWE(2) => sys_enable,
      WEBWE(1) => sys_enable,
      WEBWE(0) => sys_enable
    );
data_fifo_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF80000000000000"
    )
        port map (
      I0 => m00_axis_tready,
      I1 => \^m_axis_tvalid\,
      I2 => data_fifo_reg_i_4_n_0,
      I3 => tx_done2_out,
      I4 => m00_axis_aresetn,
      I5 => wr_ena,
      O => data_fifo_reg_i_1_n_0
    );
data_fifo_reg_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => data_fifo_reg_i_5_n_0,
      I1 => mst_wr_state_reg_n_0,
      I2 => wr_clk_d2,
      I3 => wr_clk_d1,
      O => data_fifo_reg_i_2_n_0
    );
data_fifo_reg_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => wr_ena,
      I1 => m00_axis_aresetn,
      O => sys_enable
    );
data_fifo_reg_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFF"
    )
        port map (
      I0 => v_read_pointer_reg(3),
      I1 => v_read_pointer_reg(7),
      I2 => v_read_pointer_reg(4),
      I3 => v_read_pointer_reg(6),
      I4 => v_read_pointer_reg(5),
      I5 => v_read_pointer_reg(8),
      O => data_fifo_reg_i_4_n_0
    );
data_fifo_reg_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFBFFFFFFFF"
    )
        port map (
      I0 => \v_write_pointer_reg__0\(1),
      I1 => \v_write_pointer_reg__0\(0),
      I2 => \v_write_pointer_reg__0\(2),
      I3 => \v_write_pointer_reg__0\(4),
      I4 => \v_write_pointer_reg__0\(7),
      I5 => irq_INST_0_i_1_n_0,
      O => data_fifo_reg_i_5_n_0
    );
irq_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => irq_INST_0_i_1_n_0,
      I1 => \v_write_pointer_reg__0\(2),
      I2 => \v_write_pointer_reg__0\(7),
      I3 => \v_write_pointer_reg__0\(4),
      I4 => \v_write_pointer_reg__0\(1),
      I5 => \v_write_pointer_reg__0\(0),
      O => irq
    );
irq_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \v_write_pointer_reg__0\(6),
      I1 => \v_write_pointer_reg__0\(3),
      I2 => \v_write_pointer_reg__0\(8),
      I3 => \v_write_pointer_reg__0\(5),
      O => irq_INST_0_i_1_n_0
    );
\mst_exec_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \mst_exec_state_reg_n_0_[1]\,
      I1 => \mst_exec_state_reg_n_0_[0]\,
      I2 => rx_done_reg_n_0,
      I3 => rx_done_d1,
      O => mst_exec_state(0)
    );
\mst_exec_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"34"
    )
        port map (
      I0 => tx_done_reg_n_0,
      I1 => \mst_exec_state_reg_n_0_[1]\,
      I2 => \mst_exec_state_reg_n_0_[0]\,
      O => mst_exec_state(1)
    );
\mst_exec_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => mst_exec_state(0),
      Q => \mst_exec_state_reg_n_0_[0]\,
      R => axis_tlast_delay_i_1_n_0
    );
\mst_exec_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => mst_exec_state(1),
      Q => \mst_exec_state_reg_n_0_[1]\,
      R => axis_tlast_delay_i_1_n_0
    );
mst_wr_state_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF4444FF0F4444"
    )
        port map (
      I0 => wr_sync_d2,
      I1 => wr_sync_d1,
      I2 => wr_clk_d1,
      I3 => wr_clk_d2,
      I4 => mst_wr_state_reg_n_0,
      I5 => data_fifo_reg_i_5_n_0,
      O => mst_wr_state_i_1_n_0
    );
mst_wr_state_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => mst_wr_state_i_1_n_0,
      Q => mst_wr_state_reg_n_0,
      R => axis_tlast_delay_i_1_n_0
    );
rx_done_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => rx_done_reg_n_0,
      Q => rx_done_d1,
      R => '0'
    );
rx_done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AABAAAAA"
    )
        port map (
      I0 => rx_done_reg_n_0,
      I1 => data_fifo_reg_i_5_n_0,
      I2 => mst_wr_state_reg_n_0,
      I3 => wr_clk_d2,
      I4 => wr_clk_d1,
      I5 => \v_write_pointer[8]_i_1_n_0\,
      O => rx_done_i_1_n_0
    );
rx_done_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => rx_done_i_1_n_0,
      Q => rx_done_reg_n_0,
      R => '0'
    );
tx_done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F007F007F000000"
    )
        port map (
      I0 => data_fifo_reg_i_4_n_0,
      I1 => \^m_axis_tvalid\,
      I2 => m00_axis_tready,
      I3 => sys_enable,
      I4 => tx_done2_out,
      I5 => tx_done_reg_n_0,
      O => tx_done_i_1_n_0
    );
tx_done_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => tx_done_i_1_n_0,
      Q => tx_done_reg_n_0,
      R => '0'
    );
\v_read_pointer[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAAA"
    )
        port map (
      I0 => tx_done2_out,
      I1 => data_fifo_reg_i_4_n_0,
      I2 => \^m_axis_tvalid\,
      I3 => m00_axis_tready,
      O => \v_read_pointer[0]_i_1_n_0\
    );
\v_read_pointer[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_fifo_reg_i_4_n_0,
      I1 => v_read_pointer_reg(0),
      O => \v_read_pointer[0]_i_2_n_0\
    );
\v_read_pointer[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => data_fifo_reg_i_4_n_0,
      I1 => v_read_pointer_reg(1),
      I2 => v_read_pointer_reg(0),
      O => \v_read_pointer[1]_i_1_n_0\
    );
\v_read_pointer[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => data_fifo_reg_i_4_n_0,
      I1 => v_read_pointer_reg(0),
      I2 => v_read_pointer_reg(1),
      I3 => v_read_pointer_reg(2),
      O => \v_read_pointer[2]_i_1_n_0\
    );
\v_read_pointer[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => data_fifo_reg_i_4_n_0,
      I1 => v_read_pointer_reg(1),
      I2 => v_read_pointer_reg(0),
      I3 => v_read_pointer_reg(2),
      I4 => v_read_pointer_reg(3),
      O => \v_read_pointer[3]_i_1_n_0\
    );
\v_read_pointer[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => data_fifo_reg_i_4_n_0,
      I1 => v_read_pointer_reg(2),
      I2 => v_read_pointer_reg(0),
      I3 => v_read_pointer_reg(1),
      I4 => v_read_pointer_reg(3),
      I5 => v_read_pointer_reg(4),
      O => \v_read_pointer[4]_i_1_n_0\
    );
\v_read_pointer[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => data_fifo_reg_i_4_n_0,
      I1 => \v_read_pointer[5]_i_2_n_0\,
      I2 => v_read_pointer_reg(5),
      O => \v_read_pointer[5]_i_1_n_0\
    );
\v_read_pointer[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => v_read_pointer_reg(3),
      I1 => v_read_pointer_reg(1),
      I2 => v_read_pointer_reg(0),
      I3 => v_read_pointer_reg(2),
      I4 => v_read_pointer_reg(4),
      O => \v_read_pointer[5]_i_2_n_0\
    );
\v_read_pointer[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => data_fifo_reg_i_4_n_0,
      I1 => \v_read_pointer[6]_i_2_n_0\,
      I2 => v_read_pointer_reg(6),
      O => \v_read_pointer[6]_i_1_n_0\
    );
\v_read_pointer[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => v_read_pointer_reg(5),
      I1 => v_read_pointer_reg(4),
      I2 => v_read_pointer_reg(2),
      I3 => v_read_pointer_reg(0),
      I4 => v_read_pointer_reg(1),
      I5 => v_read_pointer_reg(3),
      O => \v_read_pointer[6]_i_2_n_0\
    );
\v_read_pointer[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7800"
    )
        port map (
      I0 => \v_read_pointer[6]_i_2_n_0\,
      I1 => v_read_pointer_reg(6),
      I2 => v_read_pointer_reg(7),
      I3 => data_fifo_reg_i_4_n_0,
      O => \v_read_pointer[7]_i_1_n_0\
    );
\v_read_pointer[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF00800"
    )
        port map (
      I0 => \v_read_pointer[6]_i_2_n_0\,
      I1 => v_read_pointer_reg(6),
      I2 => v_read_pointer_reg(8),
      I3 => v_read_pointer_reg(7),
      I4 => \v_read_pointer[8]_i_2_n_0\,
      O => \v_read_pointer[8]_i_1_n_0\
    );
\v_read_pointer[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => v_read_pointer_reg(5),
      I1 => v_read_pointer_reg(6),
      I2 => v_read_pointer_reg(4),
      I3 => v_read_pointer_reg(7),
      I4 => v_read_pointer_reg(3),
      O => \v_read_pointer[8]_i_2_n_0\
    );
\v_read_pointer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \v_read_pointer[0]_i_1_n_0\,
      D => \v_read_pointer[0]_i_2_n_0\,
      Q => v_read_pointer_reg(0),
      R => axis_tlast_delay_i_1_n_0
    );
\v_read_pointer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \v_read_pointer[0]_i_1_n_0\,
      D => \v_read_pointer[1]_i_1_n_0\,
      Q => v_read_pointer_reg(1),
      R => axis_tlast_delay_i_1_n_0
    );
\v_read_pointer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \v_read_pointer[0]_i_1_n_0\,
      D => \v_read_pointer[2]_i_1_n_0\,
      Q => v_read_pointer_reg(2),
      R => axis_tlast_delay_i_1_n_0
    );
\v_read_pointer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \v_read_pointer[0]_i_1_n_0\,
      D => \v_read_pointer[3]_i_1_n_0\,
      Q => v_read_pointer_reg(3),
      R => axis_tlast_delay_i_1_n_0
    );
\v_read_pointer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \v_read_pointer[0]_i_1_n_0\,
      D => \v_read_pointer[4]_i_1_n_0\,
      Q => v_read_pointer_reg(4),
      R => axis_tlast_delay_i_1_n_0
    );
\v_read_pointer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \v_read_pointer[0]_i_1_n_0\,
      D => \v_read_pointer[5]_i_1_n_0\,
      Q => v_read_pointer_reg(5),
      R => axis_tlast_delay_i_1_n_0
    );
\v_read_pointer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \v_read_pointer[0]_i_1_n_0\,
      D => \v_read_pointer[6]_i_1_n_0\,
      Q => v_read_pointer_reg(6),
      R => axis_tlast_delay_i_1_n_0
    );
\v_read_pointer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \v_read_pointer[0]_i_1_n_0\,
      D => \v_read_pointer[7]_i_1_n_0\,
      Q => v_read_pointer_reg(7),
      R => axis_tlast_delay_i_1_n_0
    );
\v_read_pointer_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \v_read_pointer[0]_i_1_n_0\,
      D => \v_read_pointer[8]_i_1_n_0\,
      Q => v_read_pointer_reg(8),
      R => axis_tlast_delay_i_1_n_0
    );
\v_write_pointer[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \v_write_pointer_reg__0\(0),
      O => \v_write_pointer[0]_i_1_n_0\
    );
\v_write_pointer[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v_write_pointer_reg__0\(1),
      I1 => \v_write_pointer_reg__0\(0),
      O => p_0_in(1)
    );
\v_write_pointer[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \v_write_pointer_reg__0\(2),
      I1 => \v_write_pointer_reg__0\(1),
      I2 => \v_write_pointer_reg__0\(0),
      O => p_0_in(2)
    );
\v_write_pointer[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \v_write_pointer_reg__0\(0),
      I1 => \v_write_pointer_reg__0\(1),
      I2 => \v_write_pointer_reg__0\(2),
      I3 => \v_write_pointer_reg__0\(3),
      O => p_0_in(3)
    );
\v_write_pointer[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \v_write_pointer_reg__0\(4),
      I1 => \v_write_pointer_reg__0\(0),
      I2 => \v_write_pointer_reg__0\(1),
      I3 => \v_write_pointer_reg__0\(2),
      I4 => \v_write_pointer_reg__0\(3),
      O => p_0_in(4)
    );
\v_write_pointer[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \v_write_pointer_reg__0\(5),
      I1 => \v_write_pointer_reg__0\(3),
      I2 => \v_write_pointer_reg__0\(2),
      I3 => \v_write_pointer_reg__0\(1),
      I4 => \v_write_pointer_reg__0\(0),
      I5 => \v_write_pointer_reg__0\(4),
      O => p_0_in(5)
    );
\v_write_pointer[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \v_write_pointer_reg__0\(6),
      I1 => \v_write_pointer_reg__0\(4),
      I2 => \v_write_pointer[8]_i_3_n_0\,
      I3 => \v_write_pointer_reg__0\(5),
      O => p_0_in(6)
    );
\v_write_pointer[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \v_write_pointer_reg__0\(7),
      I1 => \v_write_pointer_reg__0\(5),
      I2 => \v_write_pointer[8]_i_3_n_0\,
      I3 => \v_write_pointer_reg__0\(4),
      I4 => \v_write_pointer_reg__0\(6),
      O => p_0_in(7)
    );
\v_write_pointer[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FFFFFF"
    )
        port map (
      I0 => wr_sync_d2,
      I1 => wr_sync_d1,
      I2 => mst_wr_state_reg_n_0,
      I3 => m00_axis_aresetn,
      I4 => wr_ena,
      O => \v_write_pointer[8]_i_1_n_0\
    );
\v_write_pointer[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \v_write_pointer_reg__0\(8),
      I1 => \v_write_pointer_reg__0\(6),
      I2 => \v_write_pointer_reg__0\(4),
      I3 => \v_write_pointer[8]_i_3_n_0\,
      I4 => \v_write_pointer_reg__0\(5),
      I5 => \v_write_pointer_reg__0\(7),
      O => p_0_in(8)
    );
\v_write_pointer[8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \v_write_pointer_reg__0\(3),
      I1 => \v_write_pointer_reg__0\(2),
      I2 => \v_write_pointer_reg__0\(1),
      I3 => \v_write_pointer_reg__0\(0),
      O => \v_write_pointer[8]_i_3_n_0\
    );
\v_write_pointer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => data_fifo_reg_i_2_n_0,
      D => \v_write_pointer[0]_i_1_n_0\,
      Q => \v_write_pointer_reg__0\(0),
      R => \v_write_pointer[8]_i_1_n_0\
    );
\v_write_pointer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => data_fifo_reg_i_2_n_0,
      D => p_0_in(1),
      Q => \v_write_pointer_reg__0\(1),
      R => \v_write_pointer[8]_i_1_n_0\
    );
\v_write_pointer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => data_fifo_reg_i_2_n_0,
      D => p_0_in(2),
      Q => \v_write_pointer_reg__0\(2),
      R => \v_write_pointer[8]_i_1_n_0\
    );
\v_write_pointer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => data_fifo_reg_i_2_n_0,
      D => p_0_in(3),
      Q => \v_write_pointer_reg__0\(3),
      R => \v_write_pointer[8]_i_1_n_0\
    );
\v_write_pointer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => data_fifo_reg_i_2_n_0,
      D => p_0_in(4),
      Q => \v_write_pointer_reg__0\(4),
      R => \v_write_pointer[8]_i_1_n_0\
    );
\v_write_pointer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => data_fifo_reg_i_2_n_0,
      D => p_0_in(5),
      Q => \v_write_pointer_reg__0\(5),
      R => \v_write_pointer[8]_i_1_n_0\
    );
\v_write_pointer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => data_fifo_reg_i_2_n_0,
      D => p_0_in(6),
      Q => \v_write_pointer_reg__0\(6),
      R => \v_write_pointer[8]_i_1_n_0\
    );
\v_write_pointer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => data_fifo_reg_i_2_n_0,
      D => p_0_in(7),
      Q => \v_write_pointer_reg__0\(7),
      R => \v_write_pointer[8]_i_1_n_0\
    );
\v_write_pointer_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => data_fifo_reg_i_2_n_0,
      D => p_0_in(8),
      Q => \v_write_pointer_reg__0\(8),
      R => \v_write_pointer[8]_i_1_n_0\
    );
wr_clk_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => wr_clk,
      Q => wr_clk_d1,
      R => axis_tlast_delay_i_1_n_0
    );
wr_clk_d2_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => wr_clk_d1,
      Q => wr_clk_d2,
      R => axis_tlast_delay_i_1_n_0
    );
wr_sync_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => wr_sync,
      Q => wr_sync_d1,
      R => axis_tlast_delay_i_1_n_0
    );
wr_sync_d2_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => wr_sync_d1,
      Q => wr_sync_d2,
      R => axis_tlast_delay_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_adc_v1_0 is
  port (
    M_AXIS_TVALID : out STD_LOGIC;
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axis_tlast : out STD_LOGIC;
    irq : out STD_LOGIC;
    m00_axis_aresetn : in STD_LOGIC;
    wr_ena : in STD_LOGIC;
    m00_axis_tready : in STD_LOGIC;
    m00_axis_aclk : in STD_LOGIC;
    wr_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    wr_clk : in STD_LOGIC;
    wr_sync : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_adc_v1_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_adc_v1_0 is
begin
axis_adc_v1_0_M00_AXIS_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_adc_v1_0_M00_AXIS
     port map (
      M_AXIS_TVALID => M_AXIS_TVALID,
      irq => irq,
      m00_axis_aclk => m00_axis_aclk,
      m00_axis_aresetn => m00_axis_aresetn,
      m00_axis_tdata(31 downto 0) => m00_axis_tdata(31 downto 0),
      m00_axis_tlast => m00_axis_tlast,
      m00_axis_tready => m00_axis_tready,
      wr_clk => wr_clk,
      wr_data(31 downto 0) => wr_data(31 downto 0),
      wr_ena => wr_ena,
      wr_sync => wr_sync
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    wr_ena : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_sync : in STD_LOGIC;
    wr_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    irq : out STD_LOGIC;
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axis_tlast : out STD_LOGIC;
    m00_axis_tvalid : out STD_LOGIC;
    m00_axis_tready : in STD_LOGIC;
    m00_axis_aclk : in STD_LOGIC;
    m00_axis_aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "zsys_axis_adc_0_0,axis_adc_v1_0,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "axis_adc_v1_0,Vivado 2018.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute x_interface_info : string;
  attribute x_interface_info of irq : signal is "xilinx.com:signal:interrupt:1.0 irq INTERRUPT";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of irq : signal is "XIL_INTERFACENAME irq, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute x_interface_info of m00_axis_aclk : signal is "xilinx.com:signal:clock:1.0 M00_AXIS_CLK CLK";
  attribute x_interface_parameter of m00_axis_aclk : signal is "XIL_INTERFACENAME M00_AXIS_CLK, ASSOCIATED_BUSIF M00_AXIS, ASSOCIATED_RESET m00_axis_aresetn, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN zsys_processing_system7_0_0_FCLK_CLK0";
  attribute x_interface_info of m00_axis_aresetn : signal is "xilinx.com:signal:reset:1.0 M00_AXIS_RST RST";
  attribute x_interface_parameter of m00_axis_aresetn : signal is "XIL_INTERFACENAME M00_AXIS_RST, POLARITY ACTIVE_LOW";
  attribute x_interface_info of m00_axis_tlast : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TLAST";
  attribute x_interface_info of m00_axis_tready : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TREADY";
  attribute x_interface_info of m00_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TVALID";
  attribute x_interface_info of wr_clk : signal is "xilinx.com:signal:clock:1.0 wr_clk CLK";
  attribute x_interface_parameter of wr_clk : signal is "XIL_INTERFACENAME wr_clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN zsys_wr_clk_0";
  attribute x_interface_info of m00_axis_tdata : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TDATA";
  attribute x_interface_parameter of m00_axis_tdata : signal is "XIL_INTERFACENAME M00_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN zsys_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_adc_v1_0
     port map (
      M_AXIS_TVALID => m00_axis_tvalid,
      irq => irq,
      m00_axis_aclk => m00_axis_aclk,
      m00_axis_aresetn => m00_axis_aresetn,
      m00_axis_tdata(31 downto 0) => m00_axis_tdata(31 downto 0),
      m00_axis_tlast => m00_axis_tlast,
      m00_axis_tready => m00_axis_tready,
      wr_clk => wr_clk,
      wr_data(31 downto 0) => wr_data(31 downto 0),
      wr_ena => wr_ena,
      wr_sync => wr_sync
    );
end STRUCTURE;
