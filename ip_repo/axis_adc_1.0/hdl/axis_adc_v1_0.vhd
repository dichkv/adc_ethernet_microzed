library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity axis_adc_v1_0 is
	generic (
		-- Users to add parameters here
		
		-- Fifo depth NUMBER_OF_OUTPUT_WORDS
        NUMBER_OF_OUTPUT_WORDS : integer := 265;
		-- User parameters ends
		-- Do not modify the parameters beyond this line


		-- Parameters of Axi Master Bus Interface M00_AXIS
		C_M00_AXIS_TDATA_WIDTH	: integer	:= 32;
		C_M00_AXIS_START_COUNT	: integer	:= 32
	);
	port (
		-- Users to add ports here
		wr_ena    : in std_logic;
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
end axis_adc_v1_0;

architecture arch_imp of axis_adc_v1_0 is

	-- component declaration
	component axis_adc_v1_0_M00_AXIS is
		generic (
            NUMBER_OF_OUTPUT_WORDS : integer := 265;
            C_M_AXIS_TDATA_WIDTH	: integer	:= 32
		);
		port (
		    wr_ena    : in std_logic;
            wr_clk  : in std_logic;
            wr_sync : in std_logic;
            wr_data : in std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0);
            irq     : out std_logic;
            M_AXIS_ACLK	: in std_logic;
            M_AXIS_ARESETN	: in std_logic;
            M_AXIS_TVALID	: out std_logic;
            M_AXIS_TDATA	: out std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0);
            M_AXIS_TLAST	: out std_logic;
            M_AXIS_TREADY	: in std_logic
		);
	end component axis_adc_v1_0_M00_AXIS;

begin

-- Instantiation of Axi Bus Interface M00_AXIS
axis_adc_v1_0_M00_AXIS_inst : axis_adc_v1_0_M00_AXIS
	generic map (
	    NUMBER_OF_OUTPUT_WORDS     => NUMBER_OF_OUTPUT_WORDS,
		C_M_AXIS_TDATA_WIDTH	=> C_M00_AXIS_TDATA_WIDTH
	)
	port map (
	    wr_ena => wr_ena,
	    wr_clk => wr_clk,
	    wr_sync    => wr_sync,
	    wr_data    => wr_data,
	    irq        => irq,
		M_AXIS_ACLK	=> m00_axis_aclk,
		M_AXIS_ARESETN	=> m00_axis_aresetn,
		M_AXIS_TVALID	=> m00_axis_tvalid,
		M_AXIS_TDATA	=> m00_axis_tdata,
		M_AXIS_TLAST	=> m00_axis_tlast,
		M_AXIS_TREADY	=> m00_axis_tready
	);

	-- Add user logic here

	-- User logic ends

end arch_imp;
