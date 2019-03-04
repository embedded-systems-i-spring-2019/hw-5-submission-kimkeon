----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/04/2019 02:09:53 PM
-- Design Name: 
-- Module Name: problem6 - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity problem6 is
 Port (data_in      :   in std_logic_vector(7 downto 0);
        SEL         :   in std_logic_vector(2 downto 0);
        mux_out     :   out std_logic );
end problem6;

architecture Behavioral of problem6 is
begin
    process(data_in,sel) is
    begin
        if (SEL = "111") then mux_out <= data_in(7);
        elsif (SEL = "110") then mux_out <= data_in(6);
        elsif (SEL = "101") then mux_out <= data_in(5);
        elsif (SEL = "100") then mux_out <= data_in(4);
        elsif (SEL = "011") then mux_out <= data_in(3);
        elsif (SEL = "010") then mux_out <= data_in(2);
        elsif (SEL = "001") then mux_out <= data_in(1);
        elsif (SEL = "000") then mux_out <= data_in(0);
        else mux_out <= '0';
        end if;
    end process;
end Behavioral;
