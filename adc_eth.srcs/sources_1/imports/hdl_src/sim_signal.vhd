----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/09/2018 10:26:08 AM
-- Design Name: 
-- Module Name: sim_signal - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sim_signal is
    Port ( clki_100mhz : in STD_LOGIC;
           
           data_out     : out std_logic_vector(7 downto 0);
           clko_10mhz : out STD_LOGIC;
           sync_in : out std_logic);
end sim_signal;

architecture Behavioral of sim_signal is
signal s_counter : integer range 0 to 1023 := 0;
signal data_count : std_logic_vector(7 downto 0);
signal sync_tmp  : std_logic;
signal clki_10mhz  : std_logic := '0';

begin

clko_10mhz <= clki_10mhz;

sync_in <= sync_tmp;
sync_tmp <= '1' when s_counter < 266 else '0';

data_out <= data_count;

gen_clk10mhz: process (clki_100mhz) is
variable counter : integer range 0 to 7 := 0;
begin
    if clki_100mhz'event and clki_100mhz = '1' then
        if (counter=4) then
            counter := 0;
            clki_10mhz <= not clki_10mhz;
        else
            counter := counter + 1;
        end if;
        
    end if;
end process;

process(clki_10mhz) is
    variable counter : integer range 0 to 1023 := 0;
    
    begin
        if clki_10mhz'event and clki_10mhz = '1' then
            if counter > 280 then
                counter := 0;
            else
                counter := counter + 1;
            end if;
            s_counter <= counter;
        end if;
end process;

gen_data: process (clki_10mhz) is
variable data_tmp : integer range 0 to 255 := 0;
begin
    if clki_10mhz'event and clki_10mhz = '0' then
        if (sync_tmp = '1') then
            data_tmp := data_tmp + 1;
        else
            data_tmp := 0;
        end if;
      data_count <= std_logic_vector(to_unsigned(data_tmp,8));
    end if;
end process;
end Behavioral;
