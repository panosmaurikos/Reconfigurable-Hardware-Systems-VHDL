library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;
entity Division_vhdl_tb is
end;
architecture bench of Division_vhdl_tb is
component Division_vhdl
port(
  A ,B : in std_logic_vector (3 downto 0 );
  F : out std_logic_vector (7 downto 0));
  end component;
  signal A ,B: std_logic_vector (3 downto 0 );
  signal F: std_logic_vector (7 downto 0);
begin
uut: Division_vhdl 
port map ( A => A,
           B => B,
           F => F );
 process
  begin
A <= "1111";
B<="1000";

end process;
end;
