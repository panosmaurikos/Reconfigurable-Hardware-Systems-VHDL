library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity Division is
Port ( Dividend : in std_logic_vector(3 downto 0);
       Divisor : in std_logic_vector(3 downto 0);
       Start :   in std_logic;
       Clk :     in std_logic;
       Quotient :  out std_logic_vector(3 downto 0);
       Remainder :    out std_logic_vector(3 downto 0);
       Done : out std_logic);
end Division;
architecture Behavioral of Division is
signal Q:     std_logic_vector(7 downto 0);
signal Diff:  std_logic_vector(4 downto 0);
signal Count: std_logic_vector(2 downto 0);
begin
Diff <= ('0'&Q(6 downto 3)) - ('0'&Divisor);
process( Clk, Start)
begin
if Start = '0' then
Q <= "0000" & Dividend;
elsif Rising_edge( Clk) then
if Count(2)='0' then
if Diff(4)='1' then
Q <= Q(6 downto 0) & '0';
else
Q <= Diff(3 downto 0) & Q(2 downto 0) & '1';
end if;
end if;
end if;
end process;
process(Clk)
begin
if Start = '0' then
Count <= "000";
elsif Rising_edge( Clk) then
if Count(2)='0' then
Count <= Count+1;
end if;
end if;
end process;
Quotient <= Q(3 downto 0);
Remainder   <= Q(7 downto 4);
Done <= Count(2);
end Behavioral;
