-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
-- Date        : Sun Jan 27 20:52:49 2019
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
    m00_axis_tvalid : out STD_LOGIC;
    m00_axis_tlast : out STD_LOGIC;
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    irq : out STD_LOGIC;
    m00_axis_aresetn : in STD_LOGIC;
    wr_ena : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    m00_axis_aclk : in STD_LOGIC;
    wr_sync : in STD_LOGIC;
    wr_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axis_tready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_adc_v1_0_M00_AXIS;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_adc_v1_0_M00_AXIS is
  signal axis_tlast_delay_i_1_n_0 : STD_LOGIC;
  signal axis_tlast_delay_i_3_n_0 : STD_LOGIC;
  signal axis_tvalid : STD_LOGIC;
  signal axis_tvalid_delay_i_2_n_0 : STD_LOGIC;
  signal data_fifo_reg_0_63_0_2_i_1_n_0 : STD_LOGIC;
  signal data_fifo_reg_0_63_0_2_i_2_n_0 : STD_LOGIC;
  signal data_fifo_reg_0_63_0_2_i_3_n_0 : STD_LOGIC;
  signal data_fifo_reg_0_63_0_2_n_0 : STD_LOGIC;
  signal data_fifo_reg_0_63_0_2_n_1 : STD_LOGIC;
  signal data_fifo_reg_0_63_0_2_n_2 : STD_LOGIC;
  signal data_fifo_reg_0_63_12_14_n_0 : STD_LOGIC;
  signal data_fifo_reg_0_63_12_14_n_1 : STD_LOGIC;
  signal data_fifo_reg_0_63_12_14_n_2 : STD_LOGIC;
  signal data_fifo_reg_0_63_15_17_n_0 : STD_LOGIC;
  signal data_fifo_reg_0_63_15_17_n_1 : STD_LOGIC;
  signal data_fifo_reg_0_63_15_17_n_2 : STD_LOGIC;
  signal data_fifo_reg_0_63_18_20_n_0 : STD_LOGIC;
  signal data_fifo_reg_0_63_18_20_n_1 : STD_LOGIC;
  signal data_fifo_reg_0_63_18_20_n_2 : STD_LOGIC;
  signal data_fifo_reg_0_63_21_23_n_0 : STD_LOGIC;
  signal data_fifo_reg_0_63_21_23_n_1 : STD_LOGIC;
  signal data_fifo_reg_0_63_21_23_n_2 : STD_LOGIC;
  signal data_fifo_reg_0_63_24_26_n_0 : STD_LOGIC;
  signal data_fifo_reg_0_63_24_26_n_1 : STD_LOGIC;
  signal data_fifo_reg_0_63_24_26_n_2 : STD_LOGIC;
  signal data_fifo_reg_0_63_27_29_n_0 : STD_LOGIC;
  signal data_fifo_reg_0_63_27_29_n_1 : STD_LOGIC;
  signal data_fifo_reg_0_63_27_29_n_2 : STD_LOGIC;
  signal data_fifo_reg_0_63_30_30_n_0 : STD_LOGIC;
  signal data_fifo_reg_0_63_31_31_n_0 : STD_LOGIC;
  signal data_fifo_reg_0_63_3_5_n_0 : STD_LOGIC;
  signal data_fifo_reg_0_63_3_5_n_1 : STD_LOGIC;
  signal data_fifo_reg_0_63_3_5_n_2 : STD_LOGIC;
  signal data_fifo_reg_0_63_6_8_n_0 : STD_LOGIC;
  signal data_fifo_reg_0_63_6_8_n_1 : STD_LOGIC;
  signal data_fifo_reg_0_63_6_8_n_2 : STD_LOGIC;
  signal data_fifo_reg_0_63_9_11_n_0 : STD_LOGIC;
  signal data_fifo_reg_0_63_9_11_n_1 : STD_LOGIC;
  signal data_fifo_reg_0_63_9_11_n_2 : STD_LOGIC;
  signal data_fifo_reg_128_191_0_2_i_1_n_0 : STD_LOGIC;
  signal data_fifo_reg_128_191_0_2_n_0 : STD_LOGIC;
  signal data_fifo_reg_128_191_0_2_n_1 : STD_LOGIC;
  signal data_fifo_reg_128_191_0_2_n_2 : STD_LOGIC;
  signal data_fifo_reg_128_191_12_14_n_0 : STD_LOGIC;
  signal data_fifo_reg_128_191_12_14_n_1 : STD_LOGIC;
  signal data_fifo_reg_128_191_12_14_n_2 : STD_LOGIC;
  signal data_fifo_reg_128_191_15_17_n_0 : STD_LOGIC;
  signal data_fifo_reg_128_191_15_17_n_1 : STD_LOGIC;
  signal data_fifo_reg_128_191_15_17_n_2 : STD_LOGIC;
  signal data_fifo_reg_128_191_18_20_n_0 : STD_LOGIC;
  signal data_fifo_reg_128_191_18_20_n_1 : STD_LOGIC;
  signal data_fifo_reg_128_191_18_20_n_2 : STD_LOGIC;
  signal data_fifo_reg_128_191_21_23_n_0 : STD_LOGIC;
  signal data_fifo_reg_128_191_21_23_n_1 : STD_LOGIC;
  signal data_fifo_reg_128_191_21_23_n_2 : STD_LOGIC;
  signal data_fifo_reg_128_191_24_26_n_0 : STD_LOGIC;
  signal data_fifo_reg_128_191_24_26_n_1 : STD_LOGIC;
  signal data_fifo_reg_128_191_24_26_n_2 : STD_LOGIC;
  signal data_fifo_reg_128_191_27_29_n_0 : STD_LOGIC;
  signal data_fifo_reg_128_191_27_29_n_1 : STD_LOGIC;
  signal data_fifo_reg_128_191_27_29_n_2 : STD_LOGIC;
  signal data_fifo_reg_128_191_30_30_n_0 : STD_LOGIC;
  signal data_fifo_reg_128_191_31_31_n_0 : STD_LOGIC;
  signal data_fifo_reg_128_191_3_5_n_0 : STD_LOGIC;
  signal data_fifo_reg_128_191_3_5_n_1 : STD_LOGIC;
  signal data_fifo_reg_128_191_3_5_n_2 : STD_LOGIC;
  signal data_fifo_reg_128_191_6_8_n_0 : STD_LOGIC;
  signal data_fifo_reg_128_191_6_8_n_1 : STD_LOGIC;
  signal data_fifo_reg_128_191_6_8_n_2 : STD_LOGIC;
  signal data_fifo_reg_128_191_9_11_n_0 : STD_LOGIC;
  signal data_fifo_reg_128_191_9_11_n_1 : STD_LOGIC;
  signal data_fifo_reg_128_191_9_11_n_2 : STD_LOGIC;
  signal data_fifo_reg_192_255_0_2_i_1_n_0 : STD_LOGIC;
  signal data_fifo_reg_192_255_0_2_n_0 : STD_LOGIC;
  signal data_fifo_reg_192_255_0_2_n_1 : STD_LOGIC;
  signal data_fifo_reg_192_255_0_2_n_2 : STD_LOGIC;
  signal data_fifo_reg_192_255_12_14_n_0 : STD_LOGIC;
  signal data_fifo_reg_192_255_12_14_n_1 : STD_LOGIC;
  signal data_fifo_reg_192_255_12_14_n_2 : STD_LOGIC;
  signal data_fifo_reg_192_255_15_17_n_0 : STD_LOGIC;
  signal data_fifo_reg_192_255_15_17_n_1 : STD_LOGIC;
  signal data_fifo_reg_192_255_15_17_n_2 : STD_LOGIC;
  signal data_fifo_reg_192_255_18_20_n_0 : STD_LOGIC;
  signal data_fifo_reg_192_255_18_20_n_1 : STD_LOGIC;
  signal data_fifo_reg_192_255_18_20_n_2 : STD_LOGIC;
  signal data_fifo_reg_192_255_21_23_n_0 : STD_LOGIC;
  signal data_fifo_reg_192_255_21_23_n_1 : STD_LOGIC;
  signal data_fifo_reg_192_255_21_23_n_2 : STD_LOGIC;
  signal data_fifo_reg_192_255_24_26_n_0 : STD_LOGIC;
  signal data_fifo_reg_192_255_24_26_n_1 : STD_LOGIC;
  signal data_fifo_reg_192_255_24_26_n_2 : STD_LOGIC;
  signal data_fifo_reg_192_255_27_29_n_0 : STD_LOGIC;
  signal data_fifo_reg_192_255_27_29_n_1 : STD_LOGIC;
  signal data_fifo_reg_192_255_27_29_n_2 : STD_LOGIC;
  signal data_fifo_reg_192_255_30_30_n_0 : STD_LOGIC;
  signal data_fifo_reg_192_255_31_31_n_0 : STD_LOGIC;
  signal data_fifo_reg_192_255_3_5_n_0 : STD_LOGIC;
  signal data_fifo_reg_192_255_3_5_n_1 : STD_LOGIC;
  signal data_fifo_reg_192_255_3_5_n_2 : STD_LOGIC;
  signal data_fifo_reg_192_255_6_8_n_0 : STD_LOGIC;
  signal data_fifo_reg_192_255_6_8_n_1 : STD_LOGIC;
  signal data_fifo_reg_192_255_6_8_n_2 : STD_LOGIC;
  signal data_fifo_reg_192_255_9_11_n_0 : STD_LOGIC;
  signal data_fifo_reg_192_255_9_11_n_1 : STD_LOGIC;
  signal data_fifo_reg_192_255_9_11_n_2 : STD_LOGIC;
  signal data_fifo_reg_256_319_0_2_i_1_n_0 : STD_LOGIC;
  signal data_fifo_reg_256_319_0_2_n_0 : STD_LOGIC;
  signal data_fifo_reg_256_319_0_2_n_1 : STD_LOGIC;
  signal data_fifo_reg_256_319_0_2_n_2 : STD_LOGIC;
  signal data_fifo_reg_256_319_12_14_n_0 : STD_LOGIC;
  signal data_fifo_reg_256_319_12_14_n_1 : STD_LOGIC;
  signal data_fifo_reg_256_319_12_14_n_2 : STD_LOGIC;
  signal data_fifo_reg_256_319_15_17_n_0 : STD_LOGIC;
  signal data_fifo_reg_256_319_15_17_n_1 : STD_LOGIC;
  signal data_fifo_reg_256_319_15_17_n_2 : STD_LOGIC;
  signal data_fifo_reg_256_319_18_20_n_0 : STD_LOGIC;
  signal data_fifo_reg_256_319_18_20_n_1 : STD_LOGIC;
  signal data_fifo_reg_256_319_18_20_n_2 : STD_LOGIC;
  signal data_fifo_reg_256_319_21_23_n_0 : STD_LOGIC;
  signal data_fifo_reg_256_319_21_23_n_1 : STD_LOGIC;
  signal data_fifo_reg_256_319_21_23_n_2 : STD_LOGIC;
  signal data_fifo_reg_256_319_24_26_n_0 : STD_LOGIC;
  signal data_fifo_reg_256_319_24_26_n_1 : STD_LOGIC;
  signal data_fifo_reg_256_319_24_26_n_2 : STD_LOGIC;
  signal data_fifo_reg_256_319_27_29_n_0 : STD_LOGIC;
  signal data_fifo_reg_256_319_27_29_n_1 : STD_LOGIC;
  signal data_fifo_reg_256_319_27_29_n_2 : STD_LOGIC;
  signal data_fifo_reg_256_319_30_30_n_0 : STD_LOGIC;
  signal data_fifo_reg_256_319_31_31_n_0 : STD_LOGIC;
  signal data_fifo_reg_256_319_3_5_n_0 : STD_LOGIC;
  signal data_fifo_reg_256_319_3_5_n_1 : STD_LOGIC;
  signal data_fifo_reg_256_319_3_5_n_2 : STD_LOGIC;
  signal data_fifo_reg_256_319_6_8_n_0 : STD_LOGIC;
  signal data_fifo_reg_256_319_6_8_n_1 : STD_LOGIC;
  signal data_fifo_reg_256_319_6_8_n_2 : STD_LOGIC;
  signal data_fifo_reg_256_319_9_11_n_0 : STD_LOGIC;
  signal data_fifo_reg_256_319_9_11_n_1 : STD_LOGIC;
  signal data_fifo_reg_256_319_9_11_n_2 : STD_LOGIC;
  signal data_fifo_reg_64_127_0_2_i_1_n_0 : STD_LOGIC;
  signal data_fifo_reg_64_127_0_2_n_0 : STD_LOGIC;
  signal data_fifo_reg_64_127_0_2_n_1 : STD_LOGIC;
  signal data_fifo_reg_64_127_0_2_n_2 : STD_LOGIC;
  signal data_fifo_reg_64_127_12_14_n_0 : STD_LOGIC;
  signal data_fifo_reg_64_127_12_14_n_1 : STD_LOGIC;
  signal data_fifo_reg_64_127_12_14_n_2 : STD_LOGIC;
  signal data_fifo_reg_64_127_15_17_n_0 : STD_LOGIC;
  signal data_fifo_reg_64_127_15_17_n_1 : STD_LOGIC;
  signal data_fifo_reg_64_127_15_17_n_2 : STD_LOGIC;
  signal data_fifo_reg_64_127_18_20_n_0 : STD_LOGIC;
  signal data_fifo_reg_64_127_18_20_n_1 : STD_LOGIC;
  signal data_fifo_reg_64_127_18_20_n_2 : STD_LOGIC;
  signal data_fifo_reg_64_127_21_23_n_0 : STD_LOGIC;
  signal data_fifo_reg_64_127_21_23_n_1 : STD_LOGIC;
  signal data_fifo_reg_64_127_21_23_n_2 : STD_LOGIC;
  signal data_fifo_reg_64_127_24_26_n_0 : STD_LOGIC;
  signal data_fifo_reg_64_127_24_26_n_1 : STD_LOGIC;
  signal data_fifo_reg_64_127_24_26_n_2 : STD_LOGIC;
  signal data_fifo_reg_64_127_27_29_n_0 : STD_LOGIC;
  signal data_fifo_reg_64_127_27_29_n_1 : STD_LOGIC;
  signal data_fifo_reg_64_127_27_29_n_2 : STD_LOGIC;
  signal data_fifo_reg_64_127_30_30_n_0 : STD_LOGIC;
  signal data_fifo_reg_64_127_31_31_n_0 : STD_LOGIC;
  signal data_fifo_reg_64_127_3_5_n_0 : STD_LOGIC;
  signal data_fifo_reg_64_127_3_5_n_1 : STD_LOGIC;
  signal data_fifo_reg_64_127_3_5_n_2 : STD_LOGIC;
  signal data_fifo_reg_64_127_6_8_n_0 : STD_LOGIC;
  signal data_fifo_reg_64_127_6_8_n_1 : STD_LOGIC;
  signal data_fifo_reg_64_127_6_8_n_2 : STD_LOGIC;
  signal data_fifo_reg_64_127_9_11_n_0 : STD_LOGIC;
  signal data_fifo_reg_64_127_9_11_n_1 : STD_LOGIC;
  signal data_fifo_reg_64_127_9_11_n_2 : STD_LOGIC;
  signal irq_INST_0_i_1_n_0 : STD_LOGIC;
  signal \m00_axis_tdata[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[11]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[13]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[14]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[16]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[17]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[18]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[19]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[20]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[21]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[22]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[23]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[24]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[25]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[26]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[27]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[28]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[29]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[30]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[31]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[31]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal mst_exec_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \mst_exec_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \mst_exec_state_reg_n_0_[1]\ : STD_LOGIC;
  signal mst_wr_state_i_1_n_0 : STD_LOGIC;
  signal mst_wr_state_reg_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 8 downto 1 );
  signal read_pointer : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal \read_pointer[0]_i_1_n_0\ : STD_LOGIC;
  signal \read_pointer[1]_i_1_n_0\ : STD_LOGIC;
  signal \read_pointer[2]_i_1_n_0\ : STD_LOGIC;
  signal \read_pointer[3]_i_1_n_0\ : STD_LOGIC;
  signal \read_pointer[4]_i_1_n_0\ : STD_LOGIC;
  signal \read_pointer[5]_i_1_n_0\ : STD_LOGIC;
  signal \read_pointer[5]_i_2_n_0\ : STD_LOGIC;
  signal \read_pointer[5]_i_3_n_0\ : STD_LOGIC;
  signal \read_pointer[6]_i_1_n_0\ : STD_LOGIC;
  signal \read_pointer[7]_i_1_n_0\ : STD_LOGIC;
  signal \read_pointer[8]_i_1_n_0\ : STD_LOGIC;
  signal \read_pointer[8]_i_2_n_0\ : STD_LOGIC;
  signal \read_pointer[8]_i_3_n_0\ : STD_LOGIC;
  signal read_pointer_reg : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal rx_done_d1 : STD_LOGIC;
  signal rx_done_i_1_n_0 : STD_LOGIC;
  signal rx_done_reg_n_0 : STD_LOGIC;
  signal sys_enable : STD_LOGIC;
  signal tx_done3_out : STD_LOGIC;
  signal tx_done_i_1_n_0 : STD_LOGIC;
  signal tx_done_reg_n_0 : STD_LOGIC;
  signal wr_clk_d1 : STD_LOGIC;
  signal wr_clk_d2 : STD_LOGIC;
  signal wr_sync_d1 : STD_LOGIC;
  signal wr_sync_d2 : STD_LOGIC;
  signal \write_pointer[0]_i_1_n_0\ : STD_LOGIC;
  signal \write_pointer[8]_i_1_n_0\ : STD_LOGIC;
  signal \write_pointer[8]_i_2_n_0\ : STD_LOGIC;
  signal \write_pointer[8]_i_4_n_0\ : STD_LOGIC;
  signal write_pointer_reg : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_data_fifo_reg_0_63_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_data_fifo_reg_0_63_12_14_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_data_fifo_reg_0_63_15_17_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_data_fifo_reg_0_63_18_20_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_data_fifo_reg_0_63_21_23_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_data_fifo_reg_0_63_24_26_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_data_fifo_reg_0_63_27_29_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_data_fifo_reg_0_63_30_30_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_data_fifo_reg_0_63_31_31_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_data_fifo_reg_0_63_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_data_fifo_reg_0_63_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_data_fifo_reg_0_63_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_data_fifo_reg_128_191_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_data_fifo_reg_128_191_12_14_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_data_fifo_reg_128_191_15_17_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_data_fifo_reg_128_191_18_20_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_data_fifo_reg_128_191_21_23_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_data_fifo_reg_128_191_24_26_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_data_fifo_reg_128_191_27_29_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_data_fifo_reg_128_191_30_30_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_data_fifo_reg_128_191_31_31_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_data_fifo_reg_128_191_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_data_fifo_reg_128_191_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_data_fifo_reg_128_191_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_data_fifo_reg_192_255_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_data_fifo_reg_192_255_12_14_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_data_fifo_reg_192_255_15_17_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_data_fifo_reg_192_255_18_20_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_data_fifo_reg_192_255_21_23_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_data_fifo_reg_192_255_24_26_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_data_fifo_reg_192_255_27_29_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_data_fifo_reg_192_255_30_30_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_data_fifo_reg_192_255_31_31_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_data_fifo_reg_192_255_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_data_fifo_reg_192_255_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_data_fifo_reg_192_255_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_data_fifo_reg_256_319_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_data_fifo_reg_256_319_12_14_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_data_fifo_reg_256_319_15_17_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_data_fifo_reg_256_319_18_20_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_data_fifo_reg_256_319_21_23_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_data_fifo_reg_256_319_24_26_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_data_fifo_reg_256_319_27_29_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_data_fifo_reg_256_319_30_30_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_data_fifo_reg_256_319_31_31_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_data_fifo_reg_256_319_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_data_fifo_reg_256_319_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_data_fifo_reg_256_319_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_data_fifo_reg_64_127_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_data_fifo_reg_64_127_12_14_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_data_fifo_reg_64_127_15_17_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_data_fifo_reg_64_127_18_20_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_data_fifo_reg_64_127_21_23_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_data_fifo_reg_64_127_24_26_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_data_fifo_reg_64_127_27_29_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_data_fifo_reg_64_127_30_30_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_data_fifo_reg_64_127_31_31_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_data_fifo_reg_64_127_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_data_fifo_reg_64_127_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_data_fifo_reg_64_127_9_11_DOD_UNCONNECTED : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axis_tlast_delay_i_3 : label is "soft_lutpair0";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of data_fifo_reg_0_63_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of data_fifo_reg_0_63_12_14 : label is "";
  attribute METHODOLOGY_DRC_VIOS of data_fifo_reg_0_63_15_17 : label is "";
  attribute METHODOLOGY_DRC_VIOS of data_fifo_reg_0_63_18_20 : label is "";
  attribute METHODOLOGY_DRC_VIOS of data_fifo_reg_0_63_21_23 : label is "";
  attribute METHODOLOGY_DRC_VIOS of data_fifo_reg_0_63_24_26 : label is "";
  attribute METHODOLOGY_DRC_VIOS of data_fifo_reg_0_63_27_29 : label is "";
  attribute METHODOLOGY_DRC_VIOS of data_fifo_reg_0_63_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of data_fifo_reg_0_63_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of data_fifo_reg_0_63_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of data_fifo_reg_128_191_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of data_fifo_reg_128_191_12_14 : label is "";
  attribute METHODOLOGY_DRC_VIOS of data_fifo_reg_128_191_15_17 : label is "";
  attribute METHODOLOGY_DRC_VIOS of data_fifo_reg_128_191_18_20 : label is "";
  attribute METHODOLOGY_DRC_VIOS of data_fifo_reg_128_191_21_23 : label is "";
  attribute METHODOLOGY_DRC_VIOS of data_fifo_reg_128_191_24_26 : label is "";
  attribute METHODOLOGY_DRC_VIOS of data_fifo_reg_128_191_27_29 : label is "";
  attribute METHODOLOGY_DRC_VIOS of data_fifo_reg_128_191_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of data_fifo_reg_128_191_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of data_fifo_reg_128_191_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of data_fifo_reg_192_255_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of data_fifo_reg_192_255_12_14 : label is "";
  attribute METHODOLOGY_DRC_VIOS of data_fifo_reg_192_255_15_17 : label is "";
  attribute METHODOLOGY_DRC_VIOS of data_fifo_reg_192_255_18_20 : label is "";
  attribute METHODOLOGY_DRC_VIOS of data_fifo_reg_192_255_21_23 : label is "";
  attribute METHODOLOGY_DRC_VIOS of data_fifo_reg_192_255_24_26 : label is "";
  attribute METHODOLOGY_DRC_VIOS of data_fifo_reg_192_255_27_29 : label is "";
  attribute METHODOLOGY_DRC_VIOS of data_fifo_reg_192_255_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of data_fifo_reg_192_255_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of data_fifo_reg_192_255_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of data_fifo_reg_256_319_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of data_fifo_reg_256_319_12_14 : label is "";
  attribute METHODOLOGY_DRC_VIOS of data_fifo_reg_256_319_15_17 : label is "";
  attribute METHODOLOGY_DRC_VIOS of data_fifo_reg_256_319_18_20 : label is "";
  attribute METHODOLOGY_DRC_VIOS of data_fifo_reg_256_319_21_23 : label is "";
  attribute METHODOLOGY_DRC_VIOS of data_fifo_reg_256_319_24_26 : label is "";
  attribute METHODOLOGY_DRC_VIOS of data_fifo_reg_256_319_27_29 : label is "";
  attribute METHODOLOGY_DRC_VIOS of data_fifo_reg_256_319_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of data_fifo_reg_256_319_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of data_fifo_reg_256_319_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of data_fifo_reg_64_127_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of data_fifo_reg_64_127_12_14 : label is "";
  attribute METHODOLOGY_DRC_VIOS of data_fifo_reg_64_127_15_17 : label is "";
  attribute METHODOLOGY_DRC_VIOS of data_fifo_reg_64_127_18_20 : label is "";
  attribute METHODOLOGY_DRC_VIOS of data_fifo_reg_64_127_21_23 : label is "";
  attribute METHODOLOGY_DRC_VIOS of data_fifo_reg_64_127_24_26 : label is "";
  attribute METHODOLOGY_DRC_VIOS of data_fifo_reg_64_127_27_29 : label is "";
  attribute METHODOLOGY_DRC_VIOS of data_fifo_reg_64_127_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of data_fifo_reg_64_127_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of data_fifo_reg_64_127_9_11 : label is "";
  attribute SOFT_HLUTNM of \mst_exec_state[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \mst_exec_state[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \read_pointer[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \read_pointer[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \read_pointer[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \read_pointer[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \read_pointer[6]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \read_pointer[7]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \read_pointer[8]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \write_pointer[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \write_pointer[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \write_pointer[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \write_pointer[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \write_pointer[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \write_pointer[6]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \write_pointer[7]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \write_pointer[8]_i_4\ : label is "soft_lutpair6";
begin
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
      I0 => read_pointer_reg(2),
      I1 => read_pointer_reg(1),
      I2 => read_pointer_reg(0),
      I3 => axis_tlast_delay_i_3_n_0,
      I4 => read_pointer_reg(3),
      I5 => read_pointer(8),
      O => tx_done3_out
    );
axis_tlast_delay_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => read_pointer(6),
      I1 => read_pointer_reg(5),
      I2 => read_pointer(7),
      I3 => read_pointer_reg(4),
      O => axis_tlast_delay_i_3_n_0
    );
axis_tlast_delay_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => tx_done3_out,
      Q => m00_axis_tlast,
      R => axis_tlast_delay_i_1_n_0
    );
axis_tvalid_delay_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005555555D"
    )
        port map (
      I0 => axis_tvalid_delay_i_2_n_0,
      I1 => axis_tlast_delay_i_3_n_0,
      I2 => read_pointer_reg(0),
      I3 => read_pointer_reg(1),
      I4 => read_pointer_reg(2),
      I5 => \m00_axis_tdata[31]_INST_0_i_2_n_0\,
      O => axis_tvalid
    );
axis_tvalid_delay_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA8"
    )
        port map (
      I0 => read_pointer(8),
      I1 => read_pointer_reg(3),
      I2 => read_pointer(6),
      I3 => read_pointer_reg(5),
      I4 => read_pointer(7),
      I5 => read_pointer_reg(4),
      O => axis_tvalid_delay_i_2_n_0
    );
axis_tvalid_delay_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => axis_tvalid,
      Q => m00_axis_tvalid,
      R => axis_tlast_delay_i_1_n_0
    );
data_fifo_reg_0_63_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => wr_data(0),
      DIB => wr_data(1),
      DIC => wr_data(2),
      DID => '0',
      DOA => data_fifo_reg_0_63_0_2_n_0,
      DOB => data_fifo_reg_0_63_0_2_n_1,
      DOC => data_fifo_reg_0_63_0_2_n_2,
      DOD => NLW_data_fifo_reg_0_63_0_2_DOD_UNCONNECTED,
      WCLK => m00_axis_aclk,
      WE => data_fifo_reg_0_63_0_2_i_1_n_0
    );
data_fifo_reg_0_63_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000040"
    )
        port map (
      I0 => data_fifo_reg_0_63_0_2_i_2_n_0,
      I1 => data_fifo_reg_0_63_0_2_i_3_n_0,
      I2 => sys_enable,
      I3 => write_pointer_reg(8),
      I4 => write_pointer_reg(6),
      I5 => write_pointer_reg(7),
      O => data_fifo_reg_0_63_0_2_i_1_n_0
    );
data_fifo_reg_0_63_0_2_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => irq_INST_0_i_1_n_0,
      I1 => write_pointer_reg(1),
      I2 => write_pointer_reg(0),
      I3 => write_pointer_reg(2),
      I4 => write_pointer_reg(4),
      I5 => write_pointer_reg(7),
      O => data_fifo_reg_0_63_0_2_i_2_n_0
    );
data_fifo_reg_0_63_0_2_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => mst_wr_state_reg_n_0,
      I1 => wr_clk_d1,
      I2 => wr_clk_d2,
      O => data_fifo_reg_0_63_0_2_i_3_n_0
    );
data_fifo_reg_0_63_0_2_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => wr_ena,
      I1 => m00_axis_aresetn,
      O => sys_enable
    );
data_fifo_reg_0_63_12_14: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => wr_data(12),
      DIB => wr_data(13),
      DIC => wr_data(14),
      DID => '0',
      DOA => data_fifo_reg_0_63_12_14_n_0,
      DOB => data_fifo_reg_0_63_12_14_n_1,
      DOC => data_fifo_reg_0_63_12_14_n_2,
      DOD => NLW_data_fifo_reg_0_63_12_14_DOD_UNCONNECTED,
      WCLK => m00_axis_aclk,
      WE => data_fifo_reg_0_63_0_2_i_1_n_0
    );
data_fifo_reg_0_63_15_17: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => wr_data(15),
      DIB => wr_data(16),
      DIC => wr_data(17),
      DID => '0',
      DOA => data_fifo_reg_0_63_15_17_n_0,
      DOB => data_fifo_reg_0_63_15_17_n_1,
      DOC => data_fifo_reg_0_63_15_17_n_2,
      DOD => NLW_data_fifo_reg_0_63_15_17_DOD_UNCONNECTED,
      WCLK => m00_axis_aclk,
      WE => data_fifo_reg_0_63_0_2_i_1_n_0
    );
data_fifo_reg_0_63_18_20: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => wr_data(18),
      DIB => wr_data(19),
      DIC => wr_data(20),
      DID => '0',
      DOA => data_fifo_reg_0_63_18_20_n_0,
      DOB => data_fifo_reg_0_63_18_20_n_1,
      DOC => data_fifo_reg_0_63_18_20_n_2,
      DOD => NLW_data_fifo_reg_0_63_18_20_DOD_UNCONNECTED,
      WCLK => m00_axis_aclk,
      WE => data_fifo_reg_0_63_0_2_i_1_n_0
    );
data_fifo_reg_0_63_21_23: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => wr_data(21),
      DIB => wr_data(22),
      DIC => wr_data(23),
      DID => '0',
      DOA => data_fifo_reg_0_63_21_23_n_0,
      DOB => data_fifo_reg_0_63_21_23_n_1,
      DOC => data_fifo_reg_0_63_21_23_n_2,
      DOD => NLW_data_fifo_reg_0_63_21_23_DOD_UNCONNECTED,
      WCLK => m00_axis_aclk,
      WE => data_fifo_reg_0_63_0_2_i_1_n_0
    );
data_fifo_reg_0_63_24_26: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => wr_data(24),
      DIB => wr_data(25),
      DIC => wr_data(26),
      DID => '0',
      DOA => data_fifo_reg_0_63_24_26_n_0,
      DOB => data_fifo_reg_0_63_24_26_n_1,
      DOC => data_fifo_reg_0_63_24_26_n_2,
      DOD => NLW_data_fifo_reg_0_63_24_26_DOD_UNCONNECTED,
      WCLK => m00_axis_aclk,
      WE => data_fifo_reg_0_63_0_2_i_1_n_0
    );
data_fifo_reg_0_63_27_29: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => wr_data(27),
      DIB => wr_data(28),
      DIC => wr_data(29),
      DID => '0',
      DOA => data_fifo_reg_0_63_27_29_n_0,
      DOB => data_fifo_reg_0_63_27_29_n_1,
      DOC => data_fifo_reg_0_63_27_29_n_2,
      DOD => NLW_data_fifo_reg_0_63_27_29_DOD_UNCONNECTED,
      WCLK => m00_axis_aclk,
      WE => data_fifo_reg_0_63_0_2_i_1_n_0
    );
data_fifo_reg_0_63_30_30: unisim.vcomponents.RAM64X1D
     port map (
      A0 => write_pointer_reg(0),
      A1 => write_pointer_reg(1),
      A2 => write_pointer_reg(2),
      A3 => write_pointer_reg(3),
      A4 => write_pointer_reg(4),
      A5 => write_pointer_reg(5),
      D => wr_data(30),
      DPO => data_fifo_reg_0_63_30_30_n_0,
      DPRA0 => read_pointer_reg(0),
      DPRA1 => read_pointer_reg(1),
      DPRA2 => read_pointer_reg(2),
      DPRA3 => read_pointer_reg(3),
      DPRA4 => read_pointer_reg(4),
      DPRA5 => read_pointer_reg(5),
      SPO => NLW_data_fifo_reg_0_63_30_30_SPO_UNCONNECTED,
      WCLK => m00_axis_aclk,
      WE => data_fifo_reg_0_63_0_2_i_1_n_0
    );
data_fifo_reg_0_63_31_31: unisim.vcomponents.RAM64X1D
     port map (
      A0 => write_pointer_reg(0),
      A1 => write_pointer_reg(1),
      A2 => write_pointer_reg(2),
      A3 => write_pointer_reg(3),
      A4 => write_pointer_reg(4),
      A5 => write_pointer_reg(5),
      D => wr_data(31),
      DPO => data_fifo_reg_0_63_31_31_n_0,
      DPRA0 => read_pointer_reg(0),
      DPRA1 => read_pointer_reg(1),
      DPRA2 => read_pointer_reg(2),
      DPRA3 => read_pointer_reg(3),
      DPRA4 => read_pointer_reg(4),
      DPRA5 => read_pointer_reg(5),
      SPO => NLW_data_fifo_reg_0_63_31_31_SPO_UNCONNECTED,
      WCLK => m00_axis_aclk,
      WE => data_fifo_reg_0_63_0_2_i_1_n_0
    );
data_fifo_reg_0_63_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => wr_data(3),
      DIB => wr_data(4),
      DIC => wr_data(5),
      DID => '0',
      DOA => data_fifo_reg_0_63_3_5_n_0,
      DOB => data_fifo_reg_0_63_3_5_n_1,
      DOC => data_fifo_reg_0_63_3_5_n_2,
      DOD => NLW_data_fifo_reg_0_63_3_5_DOD_UNCONNECTED,
      WCLK => m00_axis_aclk,
      WE => data_fifo_reg_0_63_0_2_i_1_n_0
    );
data_fifo_reg_0_63_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => wr_data(6),
      DIB => wr_data(7),
      DIC => wr_data(8),
      DID => '0',
      DOA => data_fifo_reg_0_63_6_8_n_0,
      DOB => data_fifo_reg_0_63_6_8_n_1,
      DOC => data_fifo_reg_0_63_6_8_n_2,
      DOD => NLW_data_fifo_reg_0_63_6_8_DOD_UNCONNECTED,
      WCLK => m00_axis_aclk,
      WE => data_fifo_reg_0_63_0_2_i_1_n_0
    );
data_fifo_reg_0_63_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => wr_data(9),
      DIB => wr_data(10),
      DIC => wr_data(11),
      DID => '0',
      DOA => data_fifo_reg_0_63_9_11_n_0,
      DOB => data_fifo_reg_0_63_9_11_n_1,
      DOC => data_fifo_reg_0_63_9_11_n_2,
      DOD => NLW_data_fifo_reg_0_63_9_11_DOD_UNCONNECTED,
      WCLK => m00_axis_aclk,
      WE => data_fifo_reg_0_63_0_2_i_1_n_0
    );
data_fifo_reg_128_191_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => wr_data(0),
      DIB => wr_data(1),
      DIC => wr_data(2),
      DID => '0',
      DOA => data_fifo_reg_128_191_0_2_n_0,
      DOB => data_fifo_reg_128_191_0_2_n_1,
      DOC => data_fifo_reg_128_191_0_2_n_2,
      DOD => NLW_data_fifo_reg_128_191_0_2_DOD_UNCONNECTED,
      WCLK => m00_axis_aclk,
      WE => data_fifo_reg_128_191_0_2_i_1_n_0
    );
data_fifo_reg_128_191_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => write_pointer_reg(6),
      I1 => write_pointer_reg(8),
      I2 => write_pointer_reg(7),
      I3 => data_fifo_reg_0_63_0_2_i_2_n_0,
      I4 => data_fifo_reg_0_63_0_2_i_3_n_0,
      I5 => sys_enable,
      O => data_fifo_reg_128_191_0_2_i_1_n_0
    );
data_fifo_reg_128_191_12_14: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => wr_data(12),
      DIB => wr_data(13),
      DIC => wr_data(14),
      DID => '0',
      DOA => data_fifo_reg_128_191_12_14_n_0,
      DOB => data_fifo_reg_128_191_12_14_n_1,
      DOC => data_fifo_reg_128_191_12_14_n_2,
      DOD => NLW_data_fifo_reg_128_191_12_14_DOD_UNCONNECTED,
      WCLK => m00_axis_aclk,
      WE => data_fifo_reg_128_191_0_2_i_1_n_0
    );
data_fifo_reg_128_191_15_17: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => wr_data(15),
      DIB => wr_data(16),
      DIC => wr_data(17),
      DID => '0',
      DOA => data_fifo_reg_128_191_15_17_n_0,
      DOB => data_fifo_reg_128_191_15_17_n_1,
      DOC => data_fifo_reg_128_191_15_17_n_2,
      DOD => NLW_data_fifo_reg_128_191_15_17_DOD_UNCONNECTED,
      WCLK => m00_axis_aclk,
      WE => data_fifo_reg_128_191_0_2_i_1_n_0
    );
data_fifo_reg_128_191_18_20: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => wr_data(18),
      DIB => wr_data(19),
      DIC => wr_data(20),
      DID => '0',
      DOA => data_fifo_reg_128_191_18_20_n_0,
      DOB => data_fifo_reg_128_191_18_20_n_1,
      DOC => data_fifo_reg_128_191_18_20_n_2,
      DOD => NLW_data_fifo_reg_128_191_18_20_DOD_UNCONNECTED,
      WCLK => m00_axis_aclk,
      WE => data_fifo_reg_128_191_0_2_i_1_n_0
    );
data_fifo_reg_128_191_21_23: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => wr_data(21),
      DIB => wr_data(22),
      DIC => wr_data(23),
      DID => '0',
      DOA => data_fifo_reg_128_191_21_23_n_0,
      DOB => data_fifo_reg_128_191_21_23_n_1,
      DOC => data_fifo_reg_128_191_21_23_n_2,
      DOD => NLW_data_fifo_reg_128_191_21_23_DOD_UNCONNECTED,
      WCLK => m00_axis_aclk,
      WE => data_fifo_reg_128_191_0_2_i_1_n_0
    );
data_fifo_reg_128_191_24_26: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => wr_data(24),
      DIB => wr_data(25),
      DIC => wr_data(26),
      DID => '0',
      DOA => data_fifo_reg_128_191_24_26_n_0,
      DOB => data_fifo_reg_128_191_24_26_n_1,
      DOC => data_fifo_reg_128_191_24_26_n_2,
      DOD => NLW_data_fifo_reg_128_191_24_26_DOD_UNCONNECTED,
      WCLK => m00_axis_aclk,
      WE => data_fifo_reg_128_191_0_2_i_1_n_0
    );
data_fifo_reg_128_191_27_29: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => wr_data(27),
      DIB => wr_data(28),
      DIC => wr_data(29),
      DID => '0',
      DOA => data_fifo_reg_128_191_27_29_n_0,
      DOB => data_fifo_reg_128_191_27_29_n_1,
      DOC => data_fifo_reg_128_191_27_29_n_2,
      DOD => NLW_data_fifo_reg_128_191_27_29_DOD_UNCONNECTED,
      WCLK => m00_axis_aclk,
      WE => data_fifo_reg_128_191_0_2_i_1_n_0
    );
data_fifo_reg_128_191_30_30: unisim.vcomponents.RAM64X1D
     port map (
      A0 => write_pointer_reg(0),
      A1 => write_pointer_reg(1),
      A2 => write_pointer_reg(2),
      A3 => write_pointer_reg(3),
      A4 => write_pointer_reg(4),
      A5 => write_pointer_reg(5),
      D => wr_data(30),
      DPO => data_fifo_reg_128_191_30_30_n_0,
      DPRA0 => read_pointer_reg(0),
      DPRA1 => read_pointer_reg(1),
      DPRA2 => read_pointer_reg(2),
      DPRA3 => read_pointer_reg(3),
      DPRA4 => read_pointer_reg(4),
      DPRA5 => read_pointer_reg(5),
      SPO => NLW_data_fifo_reg_128_191_30_30_SPO_UNCONNECTED,
      WCLK => m00_axis_aclk,
      WE => data_fifo_reg_128_191_0_2_i_1_n_0
    );
data_fifo_reg_128_191_31_31: unisim.vcomponents.RAM64X1D
     port map (
      A0 => write_pointer_reg(0),
      A1 => write_pointer_reg(1),
      A2 => write_pointer_reg(2),
      A3 => write_pointer_reg(3),
      A4 => write_pointer_reg(4),
      A5 => write_pointer_reg(5),
      D => wr_data(31),
      DPO => data_fifo_reg_128_191_31_31_n_0,
      DPRA0 => read_pointer_reg(0),
      DPRA1 => read_pointer_reg(1),
      DPRA2 => read_pointer_reg(2),
      DPRA3 => read_pointer_reg(3),
      DPRA4 => read_pointer_reg(4),
      DPRA5 => read_pointer_reg(5),
      SPO => NLW_data_fifo_reg_128_191_31_31_SPO_UNCONNECTED,
      WCLK => m00_axis_aclk,
      WE => data_fifo_reg_128_191_0_2_i_1_n_0
    );
data_fifo_reg_128_191_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => wr_data(3),
      DIB => wr_data(4),
      DIC => wr_data(5),
      DID => '0',
      DOA => data_fifo_reg_128_191_3_5_n_0,
      DOB => data_fifo_reg_128_191_3_5_n_1,
      DOC => data_fifo_reg_128_191_3_5_n_2,
      DOD => NLW_data_fifo_reg_128_191_3_5_DOD_UNCONNECTED,
      WCLK => m00_axis_aclk,
      WE => data_fifo_reg_128_191_0_2_i_1_n_0
    );
data_fifo_reg_128_191_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => wr_data(6),
      DIB => wr_data(7),
      DIC => wr_data(8),
      DID => '0',
      DOA => data_fifo_reg_128_191_6_8_n_0,
      DOB => data_fifo_reg_128_191_6_8_n_1,
      DOC => data_fifo_reg_128_191_6_8_n_2,
      DOD => NLW_data_fifo_reg_128_191_6_8_DOD_UNCONNECTED,
      WCLK => m00_axis_aclk,
      WE => data_fifo_reg_128_191_0_2_i_1_n_0
    );
data_fifo_reg_128_191_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => wr_data(9),
      DIB => wr_data(10),
      DIC => wr_data(11),
      DID => '0',
      DOA => data_fifo_reg_128_191_9_11_n_0,
      DOB => data_fifo_reg_128_191_9_11_n_1,
      DOC => data_fifo_reg_128_191_9_11_n_2,
      DOD => NLW_data_fifo_reg_128_191_9_11_DOD_UNCONNECTED,
      WCLK => m00_axis_aclk,
      WE => data_fifo_reg_128_191_0_2_i_1_n_0
    );
data_fifo_reg_192_255_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => wr_data(0),
      DIB => wr_data(1),
      DIC => wr_data(2),
      DID => '0',
      DOA => data_fifo_reg_192_255_0_2_n_0,
      DOB => data_fifo_reg_192_255_0_2_n_1,
      DOC => data_fifo_reg_192_255_0_2_n_2,
      DOD => NLW_data_fifo_reg_192_255_0_2_DOD_UNCONNECTED,
      WCLK => m00_axis_aclk,
      WE => data_fifo_reg_192_255_0_2_i_1_n_0
    );
data_fifo_reg_192_255_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040000000000000"
    )
        port map (
      I0 => data_fifo_reg_0_63_0_2_i_2_n_0,
      I1 => data_fifo_reg_0_63_0_2_i_3_n_0,
      I2 => sys_enable,
      I3 => write_pointer_reg(8),
      I4 => write_pointer_reg(6),
      I5 => write_pointer_reg(7),
      O => data_fifo_reg_192_255_0_2_i_1_n_0
    );
data_fifo_reg_192_255_12_14: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => wr_data(12),
      DIB => wr_data(13),
      DIC => wr_data(14),
      DID => '0',
      DOA => data_fifo_reg_192_255_12_14_n_0,
      DOB => data_fifo_reg_192_255_12_14_n_1,
      DOC => data_fifo_reg_192_255_12_14_n_2,
      DOD => NLW_data_fifo_reg_192_255_12_14_DOD_UNCONNECTED,
      WCLK => m00_axis_aclk,
      WE => data_fifo_reg_192_255_0_2_i_1_n_0
    );
data_fifo_reg_192_255_15_17: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => wr_data(15),
      DIB => wr_data(16),
      DIC => wr_data(17),
      DID => '0',
      DOA => data_fifo_reg_192_255_15_17_n_0,
      DOB => data_fifo_reg_192_255_15_17_n_1,
      DOC => data_fifo_reg_192_255_15_17_n_2,
      DOD => NLW_data_fifo_reg_192_255_15_17_DOD_UNCONNECTED,
      WCLK => m00_axis_aclk,
      WE => data_fifo_reg_192_255_0_2_i_1_n_0
    );
data_fifo_reg_192_255_18_20: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => wr_data(18),
      DIB => wr_data(19),
      DIC => wr_data(20),
      DID => '0',
      DOA => data_fifo_reg_192_255_18_20_n_0,
      DOB => data_fifo_reg_192_255_18_20_n_1,
      DOC => data_fifo_reg_192_255_18_20_n_2,
      DOD => NLW_data_fifo_reg_192_255_18_20_DOD_UNCONNECTED,
      WCLK => m00_axis_aclk,
      WE => data_fifo_reg_192_255_0_2_i_1_n_0
    );
data_fifo_reg_192_255_21_23: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => wr_data(21),
      DIB => wr_data(22),
      DIC => wr_data(23),
      DID => '0',
      DOA => data_fifo_reg_192_255_21_23_n_0,
      DOB => data_fifo_reg_192_255_21_23_n_1,
      DOC => data_fifo_reg_192_255_21_23_n_2,
      DOD => NLW_data_fifo_reg_192_255_21_23_DOD_UNCONNECTED,
      WCLK => m00_axis_aclk,
      WE => data_fifo_reg_192_255_0_2_i_1_n_0
    );
data_fifo_reg_192_255_24_26: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => wr_data(24),
      DIB => wr_data(25),
      DIC => wr_data(26),
      DID => '0',
      DOA => data_fifo_reg_192_255_24_26_n_0,
      DOB => data_fifo_reg_192_255_24_26_n_1,
      DOC => data_fifo_reg_192_255_24_26_n_2,
      DOD => NLW_data_fifo_reg_192_255_24_26_DOD_UNCONNECTED,
      WCLK => m00_axis_aclk,
      WE => data_fifo_reg_192_255_0_2_i_1_n_0
    );
data_fifo_reg_192_255_27_29: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => wr_data(27),
      DIB => wr_data(28),
      DIC => wr_data(29),
      DID => '0',
      DOA => data_fifo_reg_192_255_27_29_n_0,
      DOB => data_fifo_reg_192_255_27_29_n_1,
      DOC => data_fifo_reg_192_255_27_29_n_2,
      DOD => NLW_data_fifo_reg_192_255_27_29_DOD_UNCONNECTED,
      WCLK => m00_axis_aclk,
      WE => data_fifo_reg_192_255_0_2_i_1_n_0
    );
data_fifo_reg_192_255_30_30: unisim.vcomponents.RAM64X1D
     port map (
      A0 => write_pointer_reg(0),
      A1 => write_pointer_reg(1),
      A2 => write_pointer_reg(2),
      A3 => write_pointer_reg(3),
      A4 => write_pointer_reg(4),
      A5 => write_pointer_reg(5),
      D => wr_data(30),
      DPO => data_fifo_reg_192_255_30_30_n_0,
      DPRA0 => read_pointer_reg(0),
      DPRA1 => read_pointer_reg(1),
      DPRA2 => read_pointer_reg(2),
      DPRA3 => read_pointer_reg(3),
      DPRA4 => read_pointer_reg(4),
      DPRA5 => read_pointer_reg(5),
      SPO => NLW_data_fifo_reg_192_255_30_30_SPO_UNCONNECTED,
      WCLK => m00_axis_aclk,
      WE => data_fifo_reg_192_255_0_2_i_1_n_0
    );
data_fifo_reg_192_255_31_31: unisim.vcomponents.RAM64X1D
     port map (
      A0 => write_pointer_reg(0),
      A1 => write_pointer_reg(1),
      A2 => write_pointer_reg(2),
      A3 => write_pointer_reg(3),
      A4 => write_pointer_reg(4),
      A5 => write_pointer_reg(5),
      D => wr_data(31),
      DPO => data_fifo_reg_192_255_31_31_n_0,
      DPRA0 => read_pointer_reg(0),
      DPRA1 => read_pointer_reg(1),
      DPRA2 => read_pointer_reg(2),
      DPRA3 => read_pointer_reg(3),
      DPRA4 => read_pointer_reg(4),
      DPRA5 => read_pointer_reg(5),
      SPO => NLW_data_fifo_reg_192_255_31_31_SPO_UNCONNECTED,
      WCLK => m00_axis_aclk,
      WE => data_fifo_reg_192_255_0_2_i_1_n_0
    );
data_fifo_reg_192_255_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => wr_data(3),
      DIB => wr_data(4),
      DIC => wr_data(5),
      DID => '0',
      DOA => data_fifo_reg_192_255_3_5_n_0,
      DOB => data_fifo_reg_192_255_3_5_n_1,
      DOC => data_fifo_reg_192_255_3_5_n_2,
      DOD => NLW_data_fifo_reg_192_255_3_5_DOD_UNCONNECTED,
      WCLK => m00_axis_aclk,
      WE => data_fifo_reg_192_255_0_2_i_1_n_0
    );
data_fifo_reg_192_255_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => wr_data(6),
      DIB => wr_data(7),
      DIC => wr_data(8),
      DID => '0',
      DOA => data_fifo_reg_192_255_6_8_n_0,
      DOB => data_fifo_reg_192_255_6_8_n_1,
      DOC => data_fifo_reg_192_255_6_8_n_2,
      DOD => NLW_data_fifo_reg_192_255_6_8_DOD_UNCONNECTED,
      WCLK => m00_axis_aclk,
      WE => data_fifo_reg_192_255_0_2_i_1_n_0
    );
data_fifo_reg_192_255_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => wr_data(9),
      DIB => wr_data(10),
      DIC => wr_data(11),
      DID => '0',
      DOA => data_fifo_reg_192_255_9_11_n_0,
      DOB => data_fifo_reg_192_255_9_11_n_1,
      DOC => data_fifo_reg_192_255_9_11_n_2,
      DOD => NLW_data_fifo_reg_192_255_9_11_DOD_UNCONNECTED,
      WCLK => m00_axis_aclk,
      WE => data_fifo_reg_192_255_0_2_i_1_n_0
    );
data_fifo_reg_256_319_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => wr_data(0),
      DIB => wr_data(1),
      DIC => wr_data(2),
      DID => '0',
      DOA => data_fifo_reg_256_319_0_2_n_0,
      DOB => data_fifo_reg_256_319_0_2_n_1,
      DOC => data_fifo_reg_256_319_0_2_n_2,
      DOD => NLW_data_fifo_reg_256_319_0_2_DOD_UNCONNECTED,
      WCLK => m00_axis_aclk,
      WE => data_fifo_reg_256_319_0_2_i_1_n_0
    );
data_fifo_reg_256_319_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => write_pointer_reg(6),
      I1 => write_pointer_reg(7),
      I2 => write_pointer_reg(8),
      I3 => data_fifo_reg_0_63_0_2_i_2_n_0,
      I4 => data_fifo_reg_0_63_0_2_i_3_n_0,
      I5 => sys_enable,
      O => data_fifo_reg_256_319_0_2_i_1_n_0
    );
data_fifo_reg_256_319_12_14: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => wr_data(12),
      DIB => wr_data(13),
      DIC => wr_data(14),
      DID => '0',
      DOA => data_fifo_reg_256_319_12_14_n_0,
      DOB => data_fifo_reg_256_319_12_14_n_1,
      DOC => data_fifo_reg_256_319_12_14_n_2,
      DOD => NLW_data_fifo_reg_256_319_12_14_DOD_UNCONNECTED,
      WCLK => m00_axis_aclk,
      WE => data_fifo_reg_256_319_0_2_i_1_n_0
    );
data_fifo_reg_256_319_15_17: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => wr_data(15),
      DIB => wr_data(16),
      DIC => wr_data(17),
      DID => '0',
      DOA => data_fifo_reg_256_319_15_17_n_0,
      DOB => data_fifo_reg_256_319_15_17_n_1,
      DOC => data_fifo_reg_256_319_15_17_n_2,
      DOD => NLW_data_fifo_reg_256_319_15_17_DOD_UNCONNECTED,
      WCLK => m00_axis_aclk,
      WE => data_fifo_reg_256_319_0_2_i_1_n_0
    );
data_fifo_reg_256_319_18_20: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => wr_data(18),
      DIB => wr_data(19),
      DIC => wr_data(20),
      DID => '0',
      DOA => data_fifo_reg_256_319_18_20_n_0,
      DOB => data_fifo_reg_256_319_18_20_n_1,
      DOC => data_fifo_reg_256_319_18_20_n_2,
      DOD => NLW_data_fifo_reg_256_319_18_20_DOD_UNCONNECTED,
      WCLK => m00_axis_aclk,
      WE => data_fifo_reg_256_319_0_2_i_1_n_0
    );
data_fifo_reg_256_319_21_23: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => wr_data(21),
      DIB => wr_data(22),
      DIC => wr_data(23),
      DID => '0',
      DOA => data_fifo_reg_256_319_21_23_n_0,
      DOB => data_fifo_reg_256_319_21_23_n_1,
      DOC => data_fifo_reg_256_319_21_23_n_2,
      DOD => NLW_data_fifo_reg_256_319_21_23_DOD_UNCONNECTED,
      WCLK => m00_axis_aclk,
      WE => data_fifo_reg_256_319_0_2_i_1_n_0
    );
data_fifo_reg_256_319_24_26: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => wr_data(24),
      DIB => wr_data(25),
      DIC => wr_data(26),
      DID => '0',
      DOA => data_fifo_reg_256_319_24_26_n_0,
      DOB => data_fifo_reg_256_319_24_26_n_1,
      DOC => data_fifo_reg_256_319_24_26_n_2,
      DOD => NLW_data_fifo_reg_256_319_24_26_DOD_UNCONNECTED,
      WCLK => m00_axis_aclk,
      WE => data_fifo_reg_256_319_0_2_i_1_n_0
    );
data_fifo_reg_256_319_27_29: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => wr_data(27),
      DIB => wr_data(28),
      DIC => wr_data(29),
      DID => '0',
      DOA => data_fifo_reg_256_319_27_29_n_0,
      DOB => data_fifo_reg_256_319_27_29_n_1,
      DOC => data_fifo_reg_256_319_27_29_n_2,
      DOD => NLW_data_fifo_reg_256_319_27_29_DOD_UNCONNECTED,
      WCLK => m00_axis_aclk,
      WE => data_fifo_reg_256_319_0_2_i_1_n_0
    );
data_fifo_reg_256_319_30_30: unisim.vcomponents.RAM64X1D
     port map (
      A0 => write_pointer_reg(0),
      A1 => write_pointer_reg(1),
      A2 => write_pointer_reg(2),
      A3 => write_pointer_reg(3),
      A4 => write_pointer_reg(4),
      A5 => write_pointer_reg(5),
      D => wr_data(30),
      DPO => data_fifo_reg_256_319_30_30_n_0,
      DPRA0 => read_pointer_reg(0),
      DPRA1 => read_pointer_reg(1),
      DPRA2 => read_pointer_reg(2),
      DPRA3 => read_pointer_reg(3),
      DPRA4 => read_pointer_reg(4),
      DPRA5 => read_pointer_reg(5),
      SPO => NLW_data_fifo_reg_256_319_30_30_SPO_UNCONNECTED,
      WCLK => m00_axis_aclk,
      WE => data_fifo_reg_256_319_0_2_i_1_n_0
    );
data_fifo_reg_256_319_31_31: unisim.vcomponents.RAM64X1D
     port map (
      A0 => write_pointer_reg(0),
      A1 => write_pointer_reg(1),
      A2 => write_pointer_reg(2),
      A3 => write_pointer_reg(3),
      A4 => write_pointer_reg(4),
      A5 => write_pointer_reg(5),
      D => wr_data(31),
      DPO => data_fifo_reg_256_319_31_31_n_0,
      DPRA0 => read_pointer_reg(0),
      DPRA1 => read_pointer_reg(1),
      DPRA2 => read_pointer_reg(2),
      DPRA3 => read_pointer_reg(3),
      DPRA4 => read_pointer_reg(4),
      DPRA5 => read_pointer_reg(5),
      SPO => NLW_data_fifo_reg_256_319_31_31_SPO_UNCONNECTED,
      WCLK => m00_axis_aclk,
      WE => data_fifo_reg_256_319_0_2_i_1_n_0
    );
data_fifo_reg_256_319_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => wr_data(3),
      DIB => wr_data(4),
      DIC => wr_data(5),
      DID => '0',
      DOA => data_fifo_reg_256_319_3_5_n_0,
      DOB => data_fifo_reg_256_319_3_5_n_1,
      DOC => data_fifo_reg_256_319_3_5_n_2,
      DOD => NLW_data_fifo_reg_256_319_3_5_DOD_UNCONNECTED,
      WCLK => m00_axis_aclk,
      WE => data_fifo_reg_256_319_0_2_i_1_n_0
    );
data_fifo_reg_256_319_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => wr_data(6),
      DIB => wr_data(7),
      DIC => wr_data(8),
      DID => '0',
      DOA => data_fifo_reg_256_319_6_8_n_0,
      DOB => data_fifo_reg_256_319_6_8_n_1,
      DOC => data_fifo_reg_256_319_6_8_n_2,
      DOD => NLW_data_fifo_reg_256_319_6_8_DOD_UNCONNECTED,
      WCLK => m00_axis_aclk,
      WE => data_fifo_reg_256_319_0_2_i_1_n_0
    );
data_fifo_reg_256_319_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => wr_data(9),
      DIB => wr_data(10),
      DIC => wr_data(11),
      DID => '0',
      DOA => data_fifo_reg_256_319_9_11_n_0,
      DOB => data_fifo_reg_256_319_9_11_n_1,
      DOC => data_fifo_reg_256_319_9_11_n_2,
      DOD => NLW_data_fifo_reg_256_319_9_11_DOD_UNCONNECTED,
      WCLK => m00_axis_aclk,
      WE => data_fifo_reg_256_319_0_2_i_1_n_0
    );
data_fifo_reg_64_127_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => wr_data(0),
      DIB => wr_data(1),
      DIC => wr_data(2),
      DID => '0',
      DOA => data_fifo_reg_64_127_0_2_n_0,
      DOB => data_fifo_reg_64_127_0_2_n_1,
      DOC => data_fifo_reg_64_127_0_2_n_2,
      DOD => NLW_data_fifo_reg_64_127_0_2_DOD_UNCONNECTED,
      WCLK => m00_axis_aclk,
      WE => data_fifo_reg_64_127_0_2_i_1_n_0
    );
data_fifo_reg_64_127_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => write_pointer_reg(7),
      I1 => write_pointer_reg(8),
      I2 => write_pointer_reg(6),
      I3 => data_fifo_reg_0_63_0_2_i_2_n_0,
      I4 => data_fifo_reg_0_63_0_2_i_3_n_0,
      I5 => sys_enable,
      O => data_fifo_reg_64_127_0_2_i_1_n_0
    );
data_fifo_reg_64_127_12_14: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => wr_data(12),
      DIB => wr_data(13),
      DIC => wr_data(14),
      DID => '0',
      DOA => data_fifo_reg_64_127_12_14_n_0,
      DOB => data_fifo_reg_64_127_12_14_n_1,
      DOC => data_fifo_reg_64_127_12_14_n_2,
      DOD => NLW_data_fifo_reg_64_127_12_14_DOD_UNCONNECTED,
      WCLK => m00_axis_aclk,
      WE => data_fifo_reg_64_127_0_2_i_1_n_0
    );
data_fifo_reg_64_127_15_17: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => wr_data(15),
      DIB => wr_data(16),
      DIC => wr_data(17),
      DID => '0',
      DOA => data_fifo_reg_64_127_15_17_n_0,
      DOB => data_fifo_reg_64_127_15_17_n_1,
      DOC => data_fifo_reg_64_127_15_17_n_2,
      DOD => NLW_data_fifo_reg_64_127_15_17_DOD_UNCONNECTED,
      WCLK => m00_axis_aclk,
      WE => data_fifo_reg_64_127_0_2_i_1_n_0
    );
data_fifo_reg_64_127_18_20: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => wr_data(18),
      DIB => wr_data(19),
      DIC => wr_data(20),
      DID => '0',
      DOA => data_fifo_reg_64_127_18_20_n_0,
      DOB => data_fifo_reg_64_127_18_20_n_1,
      DOC => data_fifo_reg_64_127_18_20_n_2,
      DOD => NLW_data_fifo_reg_64_127_18_20_DOD_UNCONNECTED,
      WCLK => m00_axis_aclk,
      WE => data_fifo_reg_64_127_0_2_i_1_n_0
    );
data_fifo_reg_64_127_21_23: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => wr_data(21),
      DIB => wr_data(22),
      DIC => wr_data(23),
      DID => '0',
      DOA => data_fifo_reg_64_127_21_23_n_0,
      DOB => data_fifo_reg_64_127_21_23_n_1,
      DOC => data_fifo_reg_64_127_21_23_n_2,
      DOD => NLW_data_fifo_reg_64_127_21_23_DOD_UNCONNECTED,
      WCLK => m00_axis_aclk,
      WE => data_fifo_reg_64_127_0_2_i_1_n_0
    );
data_fifo_reg_64_127_24_26: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => wr_data(24),
      DIB => wr_data(25),
      DIC => wr_data(26),
      DID => '0',
      DOA => data_fifo_reg_64_127_24_26_n_0,
      DOB => data_fifo_reg_64_127_24_26_n_1,
      DOC => data_fifo_reg_64_127_24_26_n_2,
      DOD => NLW_data_fifo_reg_64_127_24_26_DOD_UNCONNECTED,
      WCLK => m00_axis_aclk,
      WE => data_fifo_reg_64_127_0_2_i_1_n_0
    );
data_fifo_reg_64_127_27_29: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => wr_data(27),
      DIB => wr_data(28),
      DIC => wr_data(29),
      DID => '0',
      DOA => data_fifo_reg_64_127_27_29_n_0,
      DOB => data_fifo_reg_64_127_27_29_n_1,
      DOC => data_fifo_reg_64_127_27_29_n_2,
      DOD => NLW_data_fifo_reg_64_127_27_29_DOD_UNCONNECTED,
      WCLK => m00_axis_aclk,
      WE => data_fifo_reg_64_127_0_2_i_1_n_0
    );
data_fifo_reg_64_127_30_30: unisim.vcomponents.RAM64X1D
     port map (
      A0 => write_pointer_reg(0),
      A1 => write_pointer_reg(1),
      A2 => write_pointer_reg(2),
      A3 => write_pointer_reg(3),
      A4 => write_pointer_reg(4),
      A5 => write_pointer_reg(5),
      D => wr_data(30),
      DPO => data_fifo_reg_64_127_30_30_n_0,
      DPRA0 => read_pointer_reg(0),
      DPRA1 => read_pointer_reg(1),
      DPRA2 => read_pointer_reg(2),
      DPRA3 => read_pointer_reg(3),
      DPRA4 => read_pointer_reg(4),
      DPRA5 => read_pointer_reg(5),
      SPO => NLW_data_fifo_reg_64_127_30_30_SPO_UNCONNECTED,
      WCLK => m00_axis_aclk,
      WE => data_fifo_reg_64_127_0_2_i_1_n_0
    );
data_fifo_reg_64_127_31_31: unisim.vcomponents.RAM64X1D
     port map (
      A0 => write_pointer_reg(0),
      A1 => write_pointer_reg(1),
      A2 => write_pointer_reg(2),
      A3 => write_pointer_reg(3),
      A4 => write_pointer_reg(4),
      A5 => write_pointer_reg(5),
      D => wr_data(31),
      DPO => data_fifo_reg_64_127_31_31_n_0,
      DPRA0 => read_pointer_reg(0),
      DPRA1 => read_pointer_reg(1),
      DPRA2 => read_pointer_reg(2),
      DPRA3 => read_pointer_reg(3),
      DPRA4 => read_pointer_reg(4),
      DPRA5 => read_pointer_reg(5),
      SPO => NLW_data_fifo_reg_64_127_31_31_SPO_UNCONNECTED,
      WCLK => m00_axis_aclk,
      WE => data_fifo_reg_64_127_0_2_i_1_n_0
    );
data_fifo_reg_64_127_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => wr_data(3),
      DIB => wr_data(4),
      DIC => wr_data(5),
      DID => '0',
      DOA => data_fifo_reg_64_127_3_5_n_0,
      DOB => data_fifo_reg_64_127_3_5_n_1,
      DOC => data_fifo_reg_64_127_3_5_n_2,
      DOD => NLW_data_fifo_reg_64_127_3_5_DOD_UNCONNECTED,
      WCLK => m00_axis_aclk,
      WE => data_fifo_reg_64_127_0_2_i_1_n_0
    );
data_fifo_reg_64_127_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => wr_data(6),
      DIB => wr_data(7),
      DIC => wr_data(8),
      DID => '0',
      DOA => data_fifo_reg_64_127_6_8_n_0,
      DOB => data_fifo_reg_64_127_6_8_n_1,
      DOC => data_fifo_reg_64_127_6_8_n_2,
      DOD => NLW_data_fifo_reg_64_127_6_8_DOD_UNCONNECTED,
      WCLK => m00_axis_aclk,
      WE => data_fifo_reg_64_127_0_2_i_1_n_0
    );
data_fifo_reg_64_127_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRB(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRC(5 downto 0) => read_pointer_reg(5 downto 0),
      ADDRD(5 downto 0) => write_pointer_reg(5 downto 0),
      DIA => wr_data(9),
      DIB => wr_data(10),
      DIC => wr_data(11),
      DID => '0',
      DOA => data_fifo_reg_64_127_9_11_n_0,
      DOB => data_fifo_reg_64_127_9_11_n_1,
      DOC => data_fifo_reg_64_127_9_11_n_2,
      DOD => NLW_data_fifo_reg_64_127_9_11_DOD_UNCONNECTED,
      WCLK => m00_axis_aclk,
      WE => data_fifo_reg_64_127_0_2_i_1_n_0
    );
irq_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => irq_INST_0_i_1_n_0,
      I1 => write_pointer_reg(2),
      I2 => write_pointer_reg(7),
      I3 => write_pointer_reg(4),
      I4 => write_pointer_reg(1),
      I5 => write_pointer_reg(0),
      O => irq
    );
irq_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => write_pointer_reg(6),
      I1 => write_pointer_reg(3),
      I2 => write_pointer_reg(8),
      I3 => write_pointer_reg(5),
      O => irq_INST_0_i_1_n_0
    );
\m00_axis_tdata[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF22222E22"
    )
        port map (
      I0 => \m00_axis_tdata[0]_INST_0_i_1_n_0\,
      I1 => read_pointer(8),
      I2 => read_pointer(7),
      I3 => data_fifo_reg_256_319_0_2_n_0,
      I4 => read_pointer(6),
      I5 => \m00_axis_tdata[31]_INST_0_i_2_n_0\,
      O => m00_axis_tdata(0)
    );
\m00_axis_tdata[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_fifo_reg_192_255_0_2_n_0,
      I1 => data_fifo_reg_128_191_0_2_n_0,
      I2 => read_pointer(7),
      I3 => data_fifo_reg_64_127_0_2_n_0,
      I4 => read_pointer(6),
      I5 => data_fifo_reg_0_63_0_2_n_0,
      O => \m00_axis_tdata[0]_INST_0_i_1_n_0\
    );
\m00_axis_tdata[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF22222E22"
    )
        port map (
      I0 => \m00_axis_tdata[10]_INST_0_i_1_n_0\,
      I1 => read_pointer(8),
      I2 => read_pointer(7),
      I3 => data_fifo_reg_256_319_9_11_n_1,
      I4 => read_pointer(6),
      I5 => \m00_axis_tdata[31]_INST_0_i_2_n_0\,
      O => m00_axis_tdata(10)
    );
\m00_axis_tdata[10]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_fifo_reg_192_255_9_11_n_1,
      I1 => data_fifo_reg_128_191_9_11_n_1,
      I2 => read_pointer(7),
      I3 => data_fifo_reg_64_127_9_11_n_1,
      I4 => read_pointer(6),
      I5 => data_fifo_reg_0_63_9_11_n_1,
      O => \m00_axis_tdata[10]_INST_0_i_1_n_0\
    );
\m00_axis_tdata[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF22222E22"
    )
        port map (
      I0 => \m00_axis_tdata[11]_INST_0_i_1_n_0\,
      I1 => read_pointer(8),
      I2 => read_pointer(7),
      I3 => data_fifo_reg_256_319_9_11_n_2,
      I4 => read_pointer(6),
      I5 => \m00_axis_tdata[31]_INST_0_i_2_n_0\,
      O => m00_axis_tdata(11)
    );
\m00_axis_tdata[11]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_fifo_reg_192_255_9_11_n_2,
      I1 => data_fifo_reg_128_191_9_11_n_2,
      I2 => read_pointer(7),
      I3 => data_fifo_reg_64_127_9_11_n_2,
      I4 => read_pointer(6),
      I5 => data_fifo_reg_0_63_9_11_n_2,
      O => \m00_axis_tdata[11]_INST_0_i_1_n_0\
    );
\m00_axis_tdata[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF22222E22"
    )
        port map (
      I0 => \m00_axis_tdata[12]_INST_0_i_1_n_0\,
      I1 => read_pointer(8),
      I2 => read_pointer(7),
      I3 => data_fifo_reg_256_319_12_14_n_0,
      I4 => read_pointer(6),
      I5 => \m00_axis_tdata[31]_INST_0_i_2_n_0\,
      O => m00_axis_tdata(12)
    );
\m00_axis_tdata[12]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_fifo_reg_192_255_12_14_n_0,
      I1 => data_fifo_reg_128_191_12_14_n_0,
      I2 => read_pointer(7),
      I3 => data_fifo_reg_64_127_12_14_n_0,
      I4 => read_pointer(6),
      I5 => data_fifo_reg_0_63_12_14_n_0,
      O => \m00_axis_tdata[12]_INST_0_i_1_n_0\
    );
\m00_axis_tdata[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF22222E22"
    )
        port map (
      I0 => \m00_axis_tdata[13]_INST_0_i_1_n_0\,
      I1 => read_pointer(8),
      I2 => read_pointer(7),
      I3 => data_fifo_reg_256_319_12_14_n_1,
      I4 => read_pointer(6),
      I5 => \m00_axis_tdata[31]_INST_0_i_2_n_0\,
      O => m00_axis_tdata(13)
    );
\m00_axis_tdata[13]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_fifo_reg_192_255_12_14_n_1,
      I1 => data_fifo_reg_128_191_12_14_n_1,
      I2 => read_pointer(7),
      I3 => data_fifo_reg_64_127_12_14_n_1,
      I4 => read_pointer(6),
      I5 => data_fifo_reg_0_63_12_14_n_1,
      O => \m00_axis_tdata[13]_INST_0_i_1_n_0\
    );
\m00_axis_tdata[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF22222E22"
    )
        port map (
      I0 => \m00_axis_tdata[14]_INST_0_i_1_n_0\,
      I1 => read_pointer(8),
      I2 => read_pointer(7),
      I3 => data_fifo_reg_256_319_12_14_n_2,
      I4 => read_pointer(6),
      I5 => \m00_axis_tdata[31]_INST_0_i_2_n_0\,
      O => m00_axis_tdata(14)
    );
\m00_axis_tdata[14]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_fifo_reg_192_255_12_14_n_2,
      I1 => data_fifo_reg_128_191_12_14_n_2,
      I2 => read_pointer(7),
      I3 => data_fifo_reg_64_127_12_14_n_2,
      I4 => read_pointer(6),
      I5 => data_fifo_reg_0_63_12_14_n_2,
      O => \m00_axis_tdata[14]_INST_0_i_1_n_0\
    );
\m00_axis_tdata[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF22222E22"
    )
        port map (
      I0 => \m00_axis_tdata[15]_INST_0_i_1_n_0\,
      I1 => read_pointer(8),
      I2 => read_pointer(7),
      I3 => data_fifo_reg_256_319_15_17_n_0,
      I4 => read_pointer(6),
      I5 => \m00_axis_tdata[31]_INST_0_i_2_n_0\,
      O => m00_axis_tdata(15)
    );
\m00_axis_tdata[15]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_fifo_reg_192_255_15_17_n_0,
      I1 => data_fifo_reg_128_191_15_17_n_0,
      I2 => read_pointer(7),
      I3 => data_fifo_reg_64_127_15_17_n_0,
      I4 => read_pointer(6),
      I5 => data_fifo_reg_0_63_15_17_n_0,
      O => \m00_axis_tdata[15]_INST_0_i_1_n_0\
    );
\m00_axis_tdata[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF22222E22"
    )
        port map (
      I0 => \m00_axis_tdata[16]_INST_0_i_1_n_0\,
      I1 => read_pointer(8),
      I2 => read_pointer(7),
      I3 => data_fifo_reg_256_319_15_17_n_1,
      I4 => read_pointer(6),
      I5 => \m00_axis_tdata[31]_INST_0_i_2_n_0\,
      O => m00_axis_tdata(16)
    );
\m00_axis_tdata[16]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_fifo_reg_192_255_15_17_n_1,
      I1 => data_fifo_reg_128_191_15_17_n_1,
      I2 => read_pointer(7),
      I3 => data_fifo_reg_64_127_15_17_n_1,
      I4 => read_pointer(6),
      I5 => data_fifo_reg_0_63_15_17_n_1,
      O => \m00_axis_tdata[16]_INST_0_i_1_n_0\
    );
\m00_axis_tdata[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF22222E22"
    )
        port map (
      I0 => \m00_axis_tdata[17]_INST_0_i_1_n_0\,
      I1 => read_pointer(8),
      I2 => read_pointer(7),
      I3 => data_fifo_reg_256_319_15_17_n_2,
      I4 => read_pointer(6),
      I5 => \m00_axis_tdata[31]_INST_0_i_2_n_0\,
      O => m00_axis_tdata(17)
    );
\m00_axis_tdata[17]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_fifo_reg_192_255_15_17_n_2,
      I1 => data_fifo_reg_128_191_15_17_n_2,
      I2 => read_pointer(7),
      I3 => data_fifo_reg_64_127_15_17_n_2,
      I4 => read_pointer(6),
      I5 => data_fifo_reg_0_63_15_17_n_2,
      O => \m00_axis_tdata[17]_INST_0_i_1_n_0\
    );
\m00_axis_tdata[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF22222E22"
    )
        port map (
      I0 => \m00_axis_tdata[18]_INST_0_i_1_n_0\,
      I1 => read_pointer(8),
      I2 => read_pointer(7),
      I3 => data_fifo_reg_256_319_18_20_n_0,
      I4 => read_pointer(6),
      I5 => \m00_axis_tdata[31]_INST_0_i_2_n_0\,
      O => m00_axis_tdata(18)
    );
\m00_axis_tdata[18]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_fifo_reg_192_255_18_20_n_0,
      I1 => data_fifo_reg_128_191_18_20_n_0,
      I2 => read_pointer(7),
      I3 => data_fifo_reg_64_127_18_20_n_0,
      I4 => read_pointer(6),
      I5 => data_fifo_reg_0_63_18_20_n_0,
      O => \m00_axis_tdata[18]_INST_0_i_1_n_0\
    );
\m00_axis_tdata[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF22222E22"
    )
        port map (
      I0 => \m00_axis_tdata[19]_INST_0_i_1_n_0\,
      I1 => read_pointer(8),
      I2 => read_pointer(7),
      I3 => data_fifo_reg_256_319_18_20_n_1,
      I4 => read_pointer(6),
      I5 => \m00_axis_tdata[31]_INST_0_i_2_n_0\,
      O => m00_axis_tdata(19)
    );
\m00_axis_tdata[19]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_fifo_reg_192_255_18_20_n_1,
      I1 => data_fifo_reg_128_191_18_20_n_1,
      I2 => read_pointer(7),
      I3 => data_fifo_reg_64_127_18_20_n_1,
      I4 => read_pointer(6),
      I5 => data_fifo_reg_0_63_18_20_n_1,
      O => \m00_axis_tdata[19]_INST_0_i_1_n_0\
    );
\m00_axis_tdata[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF22222E22"
    )
        port map (
      I0 => \m00_axis_tdata[1]_INST_0_i_1_n_0\,
      I1 => read_pointer(8),
      I2 => read_pointer(7),
      I3 => data_fifo_reg_256_319_0_2_n_1,
      I4 => read_pointer(6),
      I5 => \m00_axis_tdata[31]_INST_0_i_2_n_0\,
      O => m00_axis_tdata(1)
    );
\m00_axis_tdata[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_fifo_reg_192_255_0_2_n_1,
      I1 => data_fifo_reg_128_191_0_2_n_1,
      I2 => read_pointer(7),
      I3 => data_fifo_reg_64_127_0_2_n_1,
      I4 => read_pointer(6),
      I5 => data_fifo_reg_0_63_0_2_n_1,
      O => \m00_axis_tdata[1]_INST_0_i_1_n_0\
    );
\m00_axis_tdata[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF22222E22"
    )
        port map (
      I0 => \m00_axis_tdata[20]_INST_0_i_1_n_0\,
      I1 => read_pointer(8),
      I2 => read_pointer(7),
      I3 => data_fifo_reg_256_319_18_20_n_2,
      I4 => read_pointer(6),
      I5 => \m00_axis_tdata[31]_INST_0_i_2_n_0\,
      O => m00_axis_tdata(20)
    );
\m00_axis_tdata[20]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_fifo_reg_192_255_18_20_n_2,
      I1 => data_fifo_reg_128_191_18_20_n_2,
      I2 => read_pointer(7),
      I3 => data_fifo_reg_64_127_18_20_n_2,
      I4 => read_pointer(6),
      I5 => data_fifo_reg_0_63_18_20_n_2,
      O => \m00_axis_tdata[20]_INST_0_i_1_n_0\
    );
\m00_axis_tdata[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF22222E22"
    )
        port map (
      I0 => \m00_axis_tdata[21]_INST_0_i_1_n_0\,
      I1 => read_pointer(8),
      I2 => read_pointer(7),
      I3 => data_fifo_reg_256_319_21_23_n_0,
      I4 => read_pointer(6),
      I5 => \m00_axis_tdata[31]_INST_0_i_2_n_0\,
      O => m00_axis_tdata(21)
    );
\m00_axis_tdata[21]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_fifo_reg_192_255_21_23_n_0,
      I1 => data_fifo_reg_128_191_21_23_n_0,
      I2 => read_pointer(7),
      I3 => data_fifo_reg_64_127_21_23_n_0,
      I4 => read_pointer(6),
      I5 => data_fifo_reg_0_63_21_23_n_0,
      O => \m00_axis_tdata[21]_INST_0_i_1_n_0\
    );
\m00_axis_tdata[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF22222E22"
    )
        port map (
      I0 => \m00_axis_tdata[22]_INST_0_i_1_n_0\,
      I1 => read_pointer(8),
      I2 => read_pointer(7),
      I3 => data_fifo_reg_256_319_21_23_n_1,
      I4 => read_pointer(6),
      I5 => \m00_axis_tdata[31]_INST_0_i_2_n_0\,
      O => m00_axis_tdata(22)
    );
\m00_axis_tdata[22]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_fifo_reg_192_255_21_23_n_1,
      I1 => data_fifo_reg_128_191_21_23_n_1,
      I2 => read_pointer(7),
      I3 => data_fifo_reg_64_127_21_23_n_1,
      I4 => read_pointer(6),
      I5 => data_fifo_reg_0_63_21_23_n_1,
      O => \m00_axis_tdata[22]_INST_0_i_1_n_0\
    );
\m00_axis_tdata[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF22222E22"
    )
        port map (
      I0 => \m00_axis_tdata[23]_INST_0_i_1_n_0\,
      I1 => read_pointer(8),
      I2 => read_pointer(7),
      I3 => data_fifo_reg_256_319_21_23_n_2,
      I4 => read_pointer(6),
      I5 => \m00_axis_tdata[31]_INST_0_i_2_n_0\,
      O => m00_axis_tdata(23)
    );
\m00_axis_tdata[23]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_fifo_reg_192_255_21_23_n_2,
      I1 => data_fifo_reg_128_191_21_23_n_2,
      I2 => read_pointer(7),
      I3 => data_fifo_reg_64_127_21_23_n_2,
      I4 => read_pointer(6),
      I5 => data_fifo_reg_0_63_21_23_n_2,
      O => \m00_axis_tdata[23]_INST_0_i_1_n_0\
    );
\m00_axis_tdata[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF22222E22"
    )
        port map (
      I0 => \m00_axis_tdata[24]_INST_0_i_1_n_0\,
      I1 => read_pointer(8),
      I2 => read_pointer(7),
      I3 => data_fifo_reg_256_319_24_26_n_0,
      I4 => read_pointer(6),
      I5 => \m00_axis_tdata[31]_INST_0_i_2_n_0\,
      O => m00_axis_tdata(24)
    );
\m00_axis_tdata[24]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_fifo_reg_192_255_24_26_n_0,
      I1 => data_fifo_reg_128_191_24_26_n_0,
      I2 => read_pointer(7),
      I3 => data_fifo_reg_64_127_24_26_n_0,
      I4 => read_pointer(6),
      I5 => data_fifo_reg_0_63_24_26_n_0,
      O => \m00_axis_tdata[24]_INST_0_i_1_n_0\
    );
\m00_axis_tdata[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF22222E22"
    )
        port map (
      I0 => \m00_axis_tdata[25]_INST_0_i_1_n_0\,
      I1 => read_pointer(8),
      I2 => read_pointer(7),
      I3 => data_fifo_reg_256_319_24_26_n_1,
      I4 => read_pointer(6),
      I5 => \m00_axis_tdata[31]_INST_0_i_2_n_0\,
      O => m00_axis_tdata(25)
    );
\m00_axis_tdata[25]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_fifo_reg_192_255_24_26_n_1,
      I1 => data_fifo_reg_128_191_24_26_n_1,
      I2 => read_pointer(7),
      I3 => data_fifo_reg_64_127_24_26_n_1,
      I4 => read_pointer(6),
      I5 => data_fifo_reg_0_63_24_26_n_1,
      O => \m00_axis_tdata[25]_INST_0_i_1_n_0\
    );
\m00_axis_tdata[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF22222E22"
    )
        port map (
      I0 => \m00_axis_tdata[26]_INST_0_i_1_n_0\,
      I1 => read_pointer(8),
      I2 => read_pointer(7),
      I3 => data_fifo_reg_256_319_24_26_n_2,
      I4 => read_pointer(6),
      I5 => \m00_axis_tdata[31]_INST_0_i_2_n_0\,
      O => m00_axis_tdata(26)
    );
\m00_axis_tdata[26]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_fifo_reg_192_255_24_26_n_2,
      I1 => data_fifo_reg_128_191_24_26_n_2,
      I2 => read_pointer(7),
      I3 => data_fifo_reg_64_127_24_26_n_2,
      I4 => read_pointer(6),
      I5 => data_fifo_reg_0_63_24_26_n_2,
      O => \m00_axis_tdata[26]_INST_0_i_1_n_0\
    );
\m00_axis_tdata[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF22222E22"
    )
        port map (
      I0 => \m00_axis_tdata[27]_INST_0_i_1_n_0\,
      I1 => read_pointer(8),
      I2 => read_pointer(7),
      I3 => data_fifo_reg_256_319_27_29_n_0,
      I4 => read_pointer(6),
      I5 => \m00_axis_tdata[31]_INST_0_i_2_n_0\,
      O => m00_axis_tdata(27)
    );
\m00_axis_tdata[27]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_fifo_reg_192_255_27_29_n_0,
      I1 => data_fifo_reg_128_191_27_29_n_0,
      I2 => read_pointer(7),
      I3 => data_fifo_reg_64_127_27_29_n_0,
      I4 => read_pointer(6),
      I5 => data_fifo_reg_0_63_27_29_n_0,
      O => \m00_axis_tdata[27]_INST_0_i_1_n_0\
    );
\m00_axis_tdata[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF22222E22"
    )
        port map (
      I0 => \m00_axis_tdata[28]_INST_0_i_1_n_0\,
      I1 => read_pointer(8),
      I2 => read_pointer(7),
      I3 => data_fifo_reg_256_319_27_29_n_1,
      I4 => read_pointer(6),
      I5 => \m00_axis_tdata[31]_INST_0_i_2_n_0\,
      O => m00_axis_tdata(28)
    );
\m00_axis_tdata[28]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_fifo_reg_192_255_27_29_n_1,
      I1 => data_fifo_reg_128_191_27_29_n_1,
      I2 => read_pointer(7),
      I3 => data_fifo_reg_64_127_27_29_n_1,
      I4 => read_pointer(6),
      I5 => data_fifo_reg_0_63_27_29_n_1,
      O => \m00_axis_tdata[28]_INST_0_i_1_n_0\
    );
\m00_axis_tdata[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF22222E22"
    )
        port map (
      I0 => \m00_axis_tdata[29]_INST_0_i_1_n_0\,
      I1 => read_pointer(8),
      I2 => read_pointer(7),
      I3 => data_fifo_reg_256_319_27_29_n_2,
      I4 => read_pointer(6),
      I5 => \m00_axis_tdata[31]_INST_0_i_2_n_0\,
      O => m00_axis_tdata(29)
    );
\m00_axis_tdata[29]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_fifo_reg_192_255_27_29_n_2,
      I1 => data_fifo_reg_128_191_27_29_n_2,
      I2 => read_pointer(7),
      I3 => data_fifo_reg_64_127_27_29_n_2,
      I4 => read_pointer(6),
      I5 => data_fifo_reg_0_63_27_29_n_2,
      O => \m00_axis_tdata[29]_INST_0_i_1_n_0\
    );
\m00_axis_tdata[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF22222E22"
    )
        port map (
      I0 => \m00_axis_tdata[2]_INST_0_i_1_n_0\,
      I1 => read_pointer(8),
      I2 => read_pointer(7),
      I3 => data_fifo_reg_256_319_0_2_n_2,
      I4 => read_pointer(6),
      I5 => \m00_axis_tdata[31]_INST_0_i_2_n_0\,
      O => m00_axis_tdata(2)
    );
\m00_axis_tdata[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_fifo_reg_192_255_0_2_n_2,
      I1 => data_fifo_reg_128_191_0_2_n_2,
      I2 => read_pointer(7),
      I3 => data_fifo_reg_64_127_0_2_n_2,
      I4 => read_pointer(6),
      I5 => data_fifo_reg_0_63_0_2_n_2,
      O => \m00_axis_tdata[2]_INST_0_i_1_n_0\
    );
\m00_axis_tdata[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF22222E22"
    )
        port map (
      I0 => \m00_axis_tdata[30]_INST_0_i_1_n_0\,
      I1 => read_pointer(8),
      I2 => read_pointer(7),
      I3 => data_fifo_reg_256_319_30_30_n_0,
      I4 => read_pointer(6),
      I5 => \m00_axis_tdata[31]_INST_0_i_2_n_0\,
      O => m00_axis_tdata(30)
    );
\m00_axis_tdata[30]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_fifo_reg_192_255_30_30_n_0,
      I1 => data_fifo_reg_128_191_30_30_n_0,
      I2 => read_pointer(7),
      I3 => data_fifo_reg_64_127_30_30_n_0,
      I4 => read_pointer(6),
      I5 => data_fifo_reg_0_63_30_30_n_0,
      O => \m00_axis_tdata[30]_INST_0_i_1_n_0\
    );
\m00_axis_tdata[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF22222E22"
    )
        port map (
      I0 => \m00_axis_tdata[31]_INST_0_i_1_n_0\,
      I1 => read_pointer(8),
      I2 => read_pointer(7),
      I3 => data_fifo_reg_256_319_31_31_n_0,
      I4 => read_pointer(6),
      I5 => \m00_axis_tdata[31]_INST_0_i_2_n_0\,
      O => m00_axis_tdata(31)
    );
\m00_axis_tdata[31]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_fifo_reg_192_255_31_31_n_0,
      I1 => data_fifo_reg_128_191_31_31_n_0,
      I2 => read_pointer(7),
      I3 => data_fifo_reg_64_127_31_31_n_0,
      I4 => read_pointer(6),
      I5 => data_fifo_reg_0_63_31_31_n_0,
      O => \m00_axis_tdata[31]_INST_0_i_1_n_0\
    );
\m00_axis_tdata[31]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \mst_exec_state_reg_n_0_[0]\,
      I1 => \mst_exec_state_reg_n_0_[1]\,
      O => \m00_axis_tdata[31]_INST_0_i_2_n_0\
    );
\m00_axis_tdata[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF22222E22"
    )
        port map (
      I0 => \m00_axis_tdata[3]_INST_0_i_1_n_0\,
      I1 => read_pointer(8),
      I2 => read_pointer(7),
      I3 => data_fifo_reg_256_319_3_5_n_0,
      I4 => read_pointer(6),
      I5 => \m00_axis_tdata[31]_INST_0_i_2_n_0\,
      O => m00_axis_tdata(3)
    );
\m00_axis_tdata[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_fifo_reg_192_255_3_5_n_0,
      I1 => data_fifo_reg_128_191_3_5_n_0,
      I2 => read_pointer(7),
      I3 => data_fifo_reg_64_127_3_5_n_0,
      I4 => read_pointer(6),
      I5 => data_fifo_reg_0_63_3_5_n_0,
      O => \m00_axis_tdata[3]_INST_0_i_1_n_0\
    );
\m00_axis_tdata[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF22222E22"
    )
        port map (
      I0 => \m00_axis_tdata[4]_INST_0_i_1_n_0\,
      I1 => read_pointer(8),
      I2 => read_pointer(7),
      I3 => data_fifo_reg_256_319_3_5_n_1,
      I4 => read_pointer(6),
      I5 => \m00_axis_tdata[31]_INST_0_i_2_n_0\,
      O => m00_axis_tdata(4)
    );
\m00_axis_tdata[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_fifo_reg_192_255_3_5_n_1,
      I1 => data_fifo_reg_128_191_3_5_n_1,
      I2 => read_pointer(7),
      I3 => data_fifo_reg_64_127_3_5_n_1,
      I4 => read_pointer(6),
      I5 => data_fifo_reg_0_63_3_5_n_1,
      O => \m00_axis_tdata[4]_INST_0_i_1_n_0\
    );
\m00_axis_tdata[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF22222E22"
    )
        port map (
      I0 => \m00_axis_tdata[5]_INST_0_i_1_n_0\,
      I1 => read_pointer(8),
      I2 => read_pointer(7),
      I3 => data_fifo_reg_256_319_3_5_n_2,
      I4 => read_pointer(6),
      I5 => \m00_axis_tdata[31]_INST_0_i_2_n_0\,
      O => m00_axis_tdata(5)
    );
\m00_axis_tdata[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_fifo_reg_192_255_3_5_n_2,
      I1 => data_fifo_reg_128_191_3_5_n_2,
      I2 => read_pointer(7),
      I3 => data_fifo_reg_64_127_3_5_n_2,
      I4 => read_pointer(6),
      I5 => data_fifo_reg_0_63_3_5_n_2,
      O => \m00_axis_tdata[5]_INST_0_i_1_n_0\
    );
\m00_axis_tdata[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF22222E22"
    )
        port map (
      I0 => \m00_axis_tdata[6]_INST_0_i_1_n_0\,
      I1 => read_pointer(8),
      I2 => read_pointer(7),
      I3 => data_fifo_reg_256_319_6_8_n_0,
      I4 => read_pointer(6),
      I5 => \m00_axis_tdata[31]_INST_0_i_2_n_0\,
      O => m00_axis_tdata(6)
    );
\m00_axis_tdata[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_fifo_reg_192_255_6_8_n_0,
      I1 => data_fifo_reg_128_191_6_8_n_0,
      I2 => read_pointer(7),
      I3 => data_fifo_reg_64_127_6_8_n_0,
      I4 => read_pointer(6),
      I5 => data_fifo_reg_0_63_6_8_n_0,
      O => \m00_axis_tdata[6]_INST_0_i_1_n_0\
    );
\m00_axis_tdata[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF22222E22"
    )
        port map (
      I0 => \m00_axis_tdata[7]_INST_0_i_1_n_0\,
      I1 => read_pointer(8),
      I2 => read_pointer(7),
      I3 => data_fifo_reg_256_319_6_8_n_1,
      I4 => read_pointer(6),
      I5 => \m00_axis_tdata[31]_INST_0_i_2_n_0\,
      O => m00_axis_tdata(7)
    );
\m00_axis_tdata[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_fifo_reg_192_255_6_8_n_1,
      I1 => data_fifo_reg_128_191_6_8_n_1,
      I2 => read_pointer(7),
      I3 => data_fifo_reg_64_127_6_8_n_1,
      I4 => read_pointer(6),
      I5 => data_fifo_reg_0_63_6_8_n_1,
      O => \m00_axis_tdata[7]_INST_0_i_1_n_0\
    );
\m00_axis_tdata[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF22222E22"
    )
        port map (
      I0 => \m00_axis_tdata[8]_INST_0_i_1_n_0\,
      I1 => read_pointer(8),
      I2 => read_pointer(7),
      I3 => data_fifo_reg_256_319_6_8_n_2,
      I4 => read_pointer(6),
      I5 => \m00_axis_tdata[31]_INST_0_i_2_n_0\,
      O => m00_axis_tdata(8)
    );
\m00_axis_tdata[8]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_fifo_reg_192_255_6_8_n_2,
      I1 => data_fifo_reg_128_191_6_8_n_2,
      I2 => read_pointer(7),
      I3 => data_fifo_reg_64_127_6_8_n_2,
      I4 => read_pointer(6),
      I5 => data_fifo_reg_0_63_6_8_n_2,
      O => \m00_axis_tdata[8]_INST_0_i_1_n_0\
    );
\m00_axis_tdata[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF22222E22"
    )
        port map (
      I0 => \m00_axis_tdata[9]_INST_0_i_1_n_0\,
      I1 => read_pointer(8),
      I2 => read_pointer(7),
      I3 => data_fifo_reg_256_319_9_11_n_0,
      I4 => read_pointer(6),
      I5 => \m00_axis_tdata[31]_INST_0_i_2_n_0\,
      O => m00_axis_tdata(9)
    );
\m00_axis_tdata[9]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_fifo_reg_192_255_9_11_n_0,
      I1 => data_fifo_reg_128_191_9_11_n_0,
      I2 => read_pointer(7),
      I3 => data_fifo_reg_64_127_9_11_n_0,
      I4 => read_pointer(6),
      I5 => data_fifo_reg_0_63_9_11_n_0,
      O => \m00_axis_tdata[9]_INST_0_i_1_n_0\
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
      INIT => X"FF22FF220F22FF22"
    )
        port map (
      I0 => wr_sync_d1,
      I1 => wr_sync_d2,
      I2 => data_fifo_reg_0_63_0_2_i_2_n_0,
      I3 => mst_wr_state_reg_n_0,
      I4 => wr_clk_d1,
      I5 => wr_clk_d2,
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
\read_pointer[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => read_pointer_reg(0),
      I1 => axis_tvalid_delay_i_2_n_0,
      O => \read_pointer[0]_i_1_n_0\
    );
\read_pointer[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => read_pointer_reg(1),
      I1 => read_pointer_reg(0),
      I2 => axis_tvalid_delay_i_2_n_0,
      O => \read_pointer[1]_i_1_n_0\
    );
\read_pointer[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1540"
    )
        port map (
      I0 => axis_tvalid_delay_i_2_n_0,
      I1 => read_pointer_reg(0),
      I2 => read_pointer_reg(1),
      I3 => read_pointer_reg(2),
      O => \read_pointer[2]_i_1_n_0\
    );
\read_pointer[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15554000"
    )
        port map (
      I0 => axis_tvalid_delay_i_2_n_0,
      I1 => read_pointer_reg(1),
      I2 => read_pointer_reg(0),
      I3 => read_pointer_reg(2),
      I4 => read_pointer_reg(3),
      O => \read_pointer[3]_i_1_n_0\
    );
\read_pointer[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1555555540000000"
    )
        port map (
      I0 => axis_tvalid_delay_i_2_n_0,
      I1 => read_pointer_reg(2),
      I2 => read_pointer_reg(0),
      I3 => read_pointer_reg(1),
      I4 => read_pointer_reg(3),
      I5 => read_pointer_reg(4),
      O => \read_pointer[4]_i_1_n_0\
    );
\read_pointer[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAEAA"
    )
        port map (
      I0 => tx_done3_out,
      I1 => \mst_exec_state_reg_n_0_[1]\,
      I2 => \mst_exec_state_reg_n_0_[0]\,
      I3 => m00_axis_tready,
      I4 => axis_tvalid_delay_i_2_n_0,
      O => \read_pointer[5]_i_1_n_0\
    );
\read_pointer[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => axis_tvalid_delay_i_2_n_0,
      I1 => \read_pointer[5]_i_3_n_0\,
      I2 => read_pointer_reg(5),
      O => \read_pointer[5]_i_2_n_0\
    );
\read_pointer[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => read_pointer_reg(3),
      I1 => read_pointer_reg(1),
      I2 => read_pointer_reg(0),
      I3 => read_pointer_reg(2),
      I4 => read_pointer_reg(4),
      O => \read_pointer[5]_i_3_n_0\
    );
\read_pointer[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"14"
    )
        port map (
      I0 => axis_tvalid_delay_i_2_n_0,
      I1 => \read_pointer[8]_i_2_n_0\,
      I2 => read_pointer(6),
      O => \read_pointer[6]_i_1_n_0\
    );
\read_pointer[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0078"
    )
        port map (
      I0 => \read_pointer[8]_i_2_n_0\,
      I1 => read_pointer(6),
      I2 => read_pointer(7),
      I3 => axis_tvalid_delay_i_2_n_0,
      O => \read_pointer[7]_i_1_n_0\
    );
\read_pointer[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF00800"
    )
        port map (
      I0 => \read_pointer[8]_i_2_n_0\,
      I1 => read_pointer(6),
      I2 => read_pointer(8),
      I3 => read_pointer(7),
      I4 => \read_pointer[8]_i_3_n_0\,
      O => \read_pointer[8]_i_1_n_0\
    );
\read_pointer[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => read_pointer_reg(5),
      I1 => read_pointer_reg(4),
      I2 => read_pointer_reg(2),
      I3 => read_pointer_reg(0),
      I4 => read_pointer_reg(1),
      I5 => read_pointer_reg(3),
      O => \read_pointer[8]_i_2_n_0\
    );
\read_pointer[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => read_pointer_reg(4),
      I1 => read_pointer(7),
      I2 => read_pointer_reg(5),
      I3 => read_pointer(6),
      I4 => read_pointer_reg(3),
      O => \read_pointer[8]_i_3_n_0\
    );
\read_pointer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \read_pointer[5]_i_1_n_0\,
      D => \read_pointer[0]_i_1_n_0\,
      Q => read_pointer_reg(0),
      R => axis_tlast_delay_i_1_n_0
    );
\read_pointer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \read_pointer[5]_i_1_n_0\,
      D => \read_pointer[1]_i_1_n_0\,
      Q => read_pointer_reg(1),
      R => axis_tlast_delay_i_1_n_0
    );
\read_pointer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \read_pointer[5]_i_1_n_0\,
      D => \read_pointer[2]_i_1_n_0\,
      Q => read_pointer_reg(2),
      R => axis_tlast_delay_i_1_n_0
    );
\read_pointer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \read_pointer[5]_i_1_n_0\,
      D => \read_pointer[3]_i_1_n_0\,
      Q => read_pointer_reg(3),
      R => axis_tlast_delay_i_1_n_0
    );
\read_pointer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \read_pointer[5]_i_1_n_0\,
      D => \read_pointer[4]_i_1_n_0\,
      Q => read_pointer_reg(4),
      R => axis_tlast_delay_i_1_n_0
    );
\read_pointer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \read_pointer[5]_i_1_n_0\,
      D => \read_pointer[5]_i_2_n_0\,
      Q => read_pointer_reg(5),
      R => axis_tlast_delay_i_1_n_0
    );
\read_pointer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \read_pointer[5]_i_1_n_0\,
      D => \read_pointer[6]_i_1_n_0\,
      Q => read_pointer(6),
      R => axis_tlast_delay_i_1_n_0
    );
\read_pointer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \read_pointer[5]_i_1_n_0\,
      D => \read_pointer[7]_i_1_n_0\,
      Q => read_pointer(7),
      R => axis_tlast_delay_i_1_n_0
    );
\read_pointer_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \read_pointer[5]_i_1_n_0\,
      D => \read_pointer[8]_i_1_n_0\,
      Q => read_pointer(8),
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
      INIT => X"00000000BAAAAAAA"
    )
        port map (
      I0 => rx_done_reg_n_0,
      I1 => wr_clk_d2,
      I2 => wr_clk_d1,
      I3 => mst_wr_state_reg_n_0,
      I4 => data_fifo_reg_0_63_0_2_i_2_n_0,
      I5 => \write_pointer[8]_i_1_n_0\,
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
      INIT => X"FB00FB00FB000000"
    )
        port map (
      I0 => \m00_axis_tdata[31]_INST_0_i_2_n_0\,
      I1 => m00_axis_tready,
      I2 => axis_tvalid_delay_i_2_n_0,
      I3 => sys_enable,
      I4 => tx_done3_out,
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
\write_pointer[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => write_pointer_reg(0),
      O => \write_pointer[0]_i_1_n_0\
    );
\write_pointer[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => write_pointer_reg(1),
      I1 => write_pointer_reg(0),
      O => p_0_in(1)
    );
\write_pointer[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => write_pointer_reg(2),
      I1 => write_pointer_reg(1),
      I2 => write_pointer_reg(0),
      O => p_0_in(2)
    );
\write_pointer[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => write_pointer_reg(0),
      I1 => write_pointer_reg(1),
      I2 => write_pointer_reg(2),
      I3 => write_pointer_reg(3),
      O => p_0_in(3)
    );
\write_pointer[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => write_pointer_reg(4),
      I1 => write_pointer_reg(0),
      I2 => write_pointer_reg(1),
      I3 => write_pointer_reg(2),
      I4 => write_pointer_reg(3),
      O => p_0_in(4)
    );
\write_pointer[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => write_pointer_reg(5),
      I1 => write_pointer_reg(3),
      I2 => write_pointer_reg(2),
      I3 => write_pointer_reg(1),
      I4 => write_pointer_reg(0),
      I5 => write_pointer_reg(4),
      O => p_0_in(5)
    );
\write_pointer[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => write_pointer_reg(6),
      I1 => write_pointer_reg(4),
      I2 => \write_pointer[8]_i_4_n_0\,
      I3 => write_pointer_reg(5),
      O => p_0_in(6)
    );
\write_pointer[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => write_pointer_reg(7),
      I1 => write_pointer_reg(5),
      I2 => \write_pointer[8]_i_4_n_0\,
      I3 => write_pointer_reg(4),
      I4 => write_pointer_reg(6),
      O => p_0_in(7)
    );
\write_pointer[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FFFFFF"
    )
        port map (
      I0 => mst_wr_state_reg_n_0,
      I1 => wr_sync_d1,
      I2 => wr_sync_d2,
      I3 => m00_axis_aresetn,
      I4 => wr_ena,
      O => \write_pointer[8]_i_1_n_0\
    );
\write_pointer[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => wr_clk_d2,
      I1 => wr_clk_d1,
      I2 => mst_wr_state_reg_n_0,
      I3 => data_fifo_reg_0_63_0_2_i_2_n_0,
      O => \write_pointer[8]_i_2_n_0\
    );
\write_pointer[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => write_pointer_reg(8),
      I1 => write_pointer_reg(6),
      I2 => write_pointer_reg(4),
      I3 => \write_pointer[8]_i_4_n_0\,
      I4 => write_pointer_reg(5),
      I5 => write_pointer_reg(7),
      O => p_0_in(8)
    );
\write_pointer[8]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => write_pointer_reg(3),
      I1 => write_pointer_reg(2),
      I2 => write_pointer_reg(1),
      I3 => write_pointer_reg(0),
      O => \write_pointer[8]_i_4_n_0\
    );
\write_pointer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \write_pointer[8]_i_2_n_0\,
      D => \write_pointer[0]_i_1_n_0\,
      Q => write_pointer_reg(0),
      R => \write_pointer[8]_i_1_n_0\
    );
\write_pointer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \write_pointer[8]_i_2_n_0\,
      D => p_0_in(1),
      Q => write_pointer_reg(1),
      R => \write_pointer[8]_i_1_n_0\
    );
\write_pointer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \write_pointer[8]_i_2_n_0\,
      D => p_0_in(2),
      Q => write_pointer_reg(2),
      R => \write_pointer[8]_i_1_n_0\
    );
\write_pointer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \write_pointer[8]_i_2_n_0\,
      D => p_0_in(3),
      Q => write_pointer_reg(3),
      R => \write_pointer[8]_i_1_n_0\
    );
\write_pointer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \write_pointer[8]_i_2_n_0\,
      D => p_0_in(4),
      Q => write_pointer_reg(4),
      R => \write_pointer[8]_i_1_n_0\
    );
\write_pointer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \write_pointer[8]_i_2_n_0\,
      D => p_0_in(5),
      Q => write_pointer_reg(5),
      R => \write_pointer[8]_i_1_n_0\
    );
\write_pointer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \write_pointer[8]_i_2_n_0\,
      D => p_0_in(6),
      Q => write_pointer_reg(6),
      R => \write_pointer[8]_i_1_n_0\
    );
\write_pointer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \write_pointer[8]_i_2_n_0\,
      D => p_0_in(7),
      Q => write_pointer_reg(7),
      R => \write_pointer[8]_i_1_n_0\
    );
\write_pointer_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \write_pointer[8]_i_2_n_0\,
      D => p_0_in(8),
      Q => write_pointer_reg(8),
      R => \write_pointer[8]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_adc_v1_0 is
  port (
    m00_axis_tvalid : out STD_LOGIC;
    m00_axis_tlast : out STD_LOGIC;
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    irq : out STD_LOGIC;
    m00_axis_aresetn : in STD_LOGIC;
    wr_ena : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    m00_axis_aclk : in STD_LOGIC;
    wr_sync : in STD_LOGIC;
    wr_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axis_tready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_adc_v1_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_adc_v1_0 is
begin
axis_adc_v1_0_M00_AXIS_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_adc_v1_0_M00_AXIS
     port map (
      irq => irq,
      m00_axis_aclk => m00_axis_aclk,
      m00_axis_aresetn => m00_axis_aresetn,
      m00_axis_tdata(31 downto 0) => m00_axis_tdata(31 downto 0),
      m00_axis_tlast => m00_axis_tlast,
      m00_axis_tready => m00_axis_tready,
      m00_axis_tvalid => m00_axis_tvalid,
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
      irq => irq,
      m00_axis_aclk => m00_axis_aclk,
      m00_axis_aresetn => m00_axis_aresetn,
      m00_axis_tdata(31 downto 0) => m00_axis_tdata(31 downto 0),
      m00_axis_tlast => m00_axis_tlast,
      m00_axis_tready => m00_axis_tready,
      m00_axis_tvalid => m00_axis_tvalid,
      wr_clk => wr_clk,
      wr_data(31 downto 0) => wr_data(31 downto 0),
      wr_ena => wr_ena,
      wr_sync => wr_sync
    );
end STRUCTURE;
