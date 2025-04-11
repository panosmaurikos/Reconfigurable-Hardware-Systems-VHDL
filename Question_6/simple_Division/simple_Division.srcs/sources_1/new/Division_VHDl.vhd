library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity Division_vhdl is
port(A, B: in std_logic_vector(3 downto 0);
 F: out std_logic_vector(7 downto 0));
end entity Division_vhdl;
architecture Behavioral of Division_vhdl is
begin
F <= std_logic_vector(unsigned(A) / unsigned(B));
end architecture Behavioral;
