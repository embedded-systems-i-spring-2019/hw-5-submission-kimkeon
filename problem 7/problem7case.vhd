----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/04/2019 03:50:16 PM
-- Design Name: 
-- Module Name: problem7case - Behavioral
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

entity problem7case is
 Port (SEL         :   in std_logic_vector(2 downto 0);
        decode_out     :   out std_logic_vector(7 downto 0) );
end problem7case;

architecture Behavioral of problem7case is
begin
    process(SEL) is
    begin
        case (SEL) is
            when "111" => decode_out <= "01111111";
            when "110" => decode_out <= "10111111";
            when "101" => decode_out <= "11011111";
            when "100" => decode_out <= "11101111";
            when "011" => decode_out <= "11110111";
            when "010" => decode_out <= "11111011";
            when "001" => decode_out <= "11111101";
            when "000" => decode_out <= "11111110";
            when others => decode_out <= "11111111";
        end case;
    end process;

end Behavioral;
