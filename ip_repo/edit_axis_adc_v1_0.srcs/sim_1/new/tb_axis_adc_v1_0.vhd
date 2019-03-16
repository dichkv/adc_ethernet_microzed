----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/02/2018 12:29:26 AM
-- Design Name: 
-- Module Name: tb_axis_adc_v1_0 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library work;
use work.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_axis_adc_v1_0 is
--  Port ( );
end tb_axis_adc_v1_0;

architecture Behavioral of tb_axis_adc_v1_0 is

constant DATA_WIDTH : integer := 32;

component axis_adc_v1_0 is
	generic (
		-- Users to add parameters here
		
		-- Fifo depth NUMBER_OF_OUTPUT_WORDS
        NUMBER_OF_OUTPUT_WORDS : integer := 32; -- 265
		-- User parameters ends
		-- Do not modify the parameters beyond this line


		-- Parameters of Axi Master Bus Interface M00_AXIS
		C_M00_AXIS_TDATA_WIDTH	: integer	:= 32;
		C_M00_AXIS_START_COUNT	: integer	:= 32
	);
	port (
		-- Users to add ports here
        wr_clk  : in std_logic;
        wr_sync : in std_logic;
        wr_data : in std_logic_vector(C_M00_AXIS_TDATA_WIDTH-1 downto 0);
        irq     : out std_logic;
		-- User ports ends
		-- Do not modify the ports beyond this line

		-- Ports of Axi Master Bus Interface M00_AXIS
		m00_axis_aclk	: in std_logic;
		m00_axis_aresetn	: in std_logic;
		m00_axis_tvalid	: out std_logic;
		m00_axis_tdata	: out std_logic_vector(C_M00_AXIS_TDATA_WIDTH-1 downto 0);
		m00_axis_tlast	: out std_logic;
		m00_axis_tready	: in std_logic
	);
end component;

signal tb_wr_clk   : std_logic := '0';
signal tb_wr_sync  : std_logic := '0';
signal tb_wr_data   :   std_logic_vector(DATA_WIDTH-1 downto 0) := (others=>'0');
signal tb_irq       : std_logic := '0';

signal m00_axis_aclk	:  std_logic := '0';
signal m00_axis_aresetn	:  std_logic := '0';
signal m00_axis_tvalid	:  std_logic := '0';
signal m00_axis_tdata	:  std_logic_vector(DATA_WIDTH-1 downto 0);
signal m00_axis_tlast	:  std_logic := '0';
signal m00_axis_tready	:  std_logic;

signal data_sample : std_logic_vector (7 downto 0) := (others=>'0');
begin

tb_wr_data <= data_sample & data_sample & data_sample & data_sample;

tb_wr_sync <= '0' after 26600ns when tb_wr_sync = '1' else '1' after 1400ns when tb_wr_sync = '0';
tb_wr_clk <= not tb_wr_clk after 50ns; -- clock 10mhz
m00_axis_aclk <= not m00_axis_aclk after 5ns; -- clock 100mhz
m00_axis_aresetn <= '1' after 60ns;

gen_data: process(tb_wr_clk) is
variable counter : integer range 0 to 255 := 0;
begin
    if rising_edge(tb_wr_clk) then
        if (tb_wr_sync = '1') then
            counter := counter + 1;
        --else
            --counter := 0;
        end if;
        
        data_sample <= std_logic_vector(to_unsigned(counter,8));
    end if;
end process;

gen_tready: process(m00_axis_aclk) is
begin
    if rising_edge(m00_axis_aclk) then
        if (m00_axis_aresetn = '0') then
            m00_axis_tready <= '0';
        else
            m00_axis_tready <= m00_axis_tvalid;
        end if;
    end if;
end process;


G1: axis_adc_v1_0 
    generic map (   NUMBER_OF_OUTPUT_WORDS => 265, 
                    C_M00_AXIS_TDATA_WIDTH => 32, 
                    C_M00_AXIS_START_COUNT => 32)
                    
    port map (  wr_clk => tb_wr_clk,
                wr_sync => tb_wr_sync,
                wr_data => tb_wr_data,
                irq => tb_irq,
                m00_axis_aclk => m00_axis_aclk,
                m00_axis_aresetn => m00_axis_aresetn,
                m00_axis_tvalid => m00_axis_tvalid,
                m00_axis_tdata => m00_axis_tdata,
                m00_axis_tlast => m00_axis_tlast,
                m00_axis_tready => m00_axis_tready);
end Behavioral;
