library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity Division8 is
    Port ( Dividend : in std_logic_vector(7 downto 0);
           Divisor : in std_logic_vector(7 downto 0);
           Start :   in std_logic;
           Clk :     in std_logic;
           Quotient :  out std_logic_vector(7 downto 0);
           Remainder :    out std_logic_vector(7 downto 0);
           Done : out std_logic);
end Division8;
architecture Behavioral of Division8 is
signal Q:     std_logic_vector(15 downto 0);
signal Diff:  std_logic_vector( 8 downto 0);
signal Count: std_logic_vector( 3 downto 0);
begin
Diff <= ('0'&Q(14 downto 7)) - ('0'&Divisor);
process( Clk, Start)
begin
if Start = '0' then
Q <= "00000000" & Dividend;
elsif Rising_edge( Clk) then
if Count(3)='0' then
if Diff(8)='1' then
Q <= Q(14 downto 0) & '0';
else
Q <= Diff(7 downto 0) & Q(6 downto 0) & '1';
end if;
end if;
end if;
end process;
process(Clk)
begin
if Start = '0' then
Count <= "0000";
elsif Rising_edge( Clk) then
if Count(3)='0' then
Count <= Count+1;
end if;
end if;
end process;
Quotient <= Q( 7 downto 0);
Remainder   <= Q(15 downto 8);
Done <= Count(3);
end Behavioral;
