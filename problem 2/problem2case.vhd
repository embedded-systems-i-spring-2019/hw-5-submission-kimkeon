----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/04/2019 02:25:06 PM
-- Design Name: 
-- Module Name: problem2case - Behavioral
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
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity problem2case is
  Port (A_1, A_2, B_1, B_2, D_1 :   in std_logic;
        E_out                   :   out std_logic);
end problem2case;

architecture Behavioral of problem2case is
    signal ABD: std_logic_vector(4 downto 0);
begin
    ABD <= A_1 & A_2 & B_1 & B_2 & D_1;
    process(ABD)
    begin
        case(ABD) is
        when "11--" => E_out <= '1';
        when "--1-" => E_out <= '1';
        when "---1" => E_out <= '1';
        when "---10" => E_out <= '1'; --Don't really need this
        when others => E_out <= '0';
        end case;
    end process;
end Behavioral;
