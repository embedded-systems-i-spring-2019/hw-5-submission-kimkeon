----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/04/2019 03:37:35 PM
-- Design Name: 
-- Module Name: problem6case - Behavioral
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

entity problem6case is
 Port (data_in      :   in std_logic_vector(7 downto 0);
        SEL         :   in std_logic_vector(2 downto 0);
        mux_out     :   out std_logic );
end problem6case;

architecture Behavioral of problem6case is

begin
    process(data_in, sel) is
    begin
        case(SEL) is
            when "111" => mux_out <= data_in(7);
            when "110" => mux_out <= data_in(6);
            when "101" => mux_out <= data_in(5);
            when "100" => mux_out <= data_in(4);
            when "011" => mux_out <= data_in(3);
            when "010" => mux_out <= data_in(2);
            when "001" => mux_out <= data_in(1);
            when "000" => mux_out <= data_in(0);
            when others => mux_out <= '0';
        end case;
    end process;
end Behavioral;
