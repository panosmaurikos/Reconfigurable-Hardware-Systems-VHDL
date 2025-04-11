library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.Numeric_std.all;
entity Multiplier_VHDL is
port(
A ,B : in std_logic_vector (1 downto 0 );
F : out std_logic_vector (3 downto 0));
end Multiplier_VHDL;
architecture Behavioral of Multiplier_VHDL is
begin
F <= std_logic_vector(unsigned (A) * unsigned(B));
end Behavioral;
