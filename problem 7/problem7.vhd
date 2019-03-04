----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/04/2019 02:09:53 PM
-- Design Name: 
-- Module Name: problem7 - Behavioral
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

entity problem7 is
 Port (SEL         :   in std_logic_vector(2 downto 0);
        decode_out     :   out std_logic_vector(7 downto 0) );
end problem7;

architecture Behavioral of problem7 is
begin
    process(SEL) is
    begin
        if (SEL = "111") then decode_out <= "01111111";
        elsif (SEL = "110") then decode_out <= "10111111";
        elsif (SEL = "101") then decode_out <= "11011111";
        elsif (SEL = "100") then decode_out <= "11101111";
        elsif (SEL = "011") then decode_out <= "11110111";
        elsif (SEL = "010") then decode_out <= "11111011";
        elsif (SEL = "001") then decode_out <= "11111101";
        elsif (SEL = "000") then decode_out <= "11111110";
        else decode_out <= "11111111";
        end if;
    end process;
end Behavioral;
