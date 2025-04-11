library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;
entity Division_tb is
end;
architecture bench of Division_tb is
component Division
Port ( Dividend : in std_logic_vector(3 downto 0);
       Divisor : in std_logic_vector(3 downto 0);
       Start :in std_logic;
       Clk : in std_logic;
       Quotient : out std_logic_vector(3 downto 0);
       Remainder : out std_logic_vector(3 downto 0);
       Done : out std_logic);
end component;
signal Dividend: std_logic_vector(3 downto 0);
signal Divisor: std_logic_vector(3 downto 0);
signal Start: std_logic;
signal Clk: std_logic;
signal Quotient: std_logic_vector(3 downto 0);
signal Remainder: std_logic_vector(3 downto 0);
signal Done: std_logic;
constant clock_period: time := 10 ns;
signal stop_the_clock: boolean;
begin
uut: Division port map 
( Dividend => Dividend,
  Divisor => Divisor,
     Start   => Start,
   Clk     => Clk,
   Quotient  => Quotient,
   Remainder    => Remainder,
  Done => Done );
 process
  begin
    Start <= '0';
    wait for 5 ns;
      Dividend <= "1111";
      Divisor <= "1101";
    stop_the_clock <= true;
    wait;
  end process;

  clocking: process
  begin
    while not stop_the_clock loop
      Clk <= '0', '1' after clock_period / 2;
      wait for clock_period;
    end loop;
    wait;
  end process;
end;
