library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;
entity Multiplier_VHDL_tb is
end;
architecture bench of Multiplier_VHDL_tb is
component Multiplier_VHDL
port(
  A ,B : in std_logic_vector (1 downto 0 );
  F : out std_logic_vector (3 downto 0));
  end component;
  signal A ,B: std_logic_vector (1 downto 0 );
  signal F: std_logic_vector (3 downto 0);
begin
uut: Multiplier_VHDL 
port map ( A => A,
           B => B,
           F => F );
 process
  begin
A <= "00"; --1--
  B <= "00";
  wait for 100ns;
  A <= "00";--2--
  B <= "01";
  wait for 100ns;
  A <= "00";--3--
  B <= "10";
  wait for 100ns;
  A <= "00";--4--
  B <= "11";
  wait for 100ns;
  A <= "01";--5--
  B <= "00";
  wait for 100ns;
  A <= "01";--6--
  B <= "01";
  wait for 100ns;
  A <= "01";--7--
  B <= "10";
  wait for 100ns;
  A <= "01";--8--
  B <= "11";
  wait for 100ns;
  A <= "10";--9--
  B <= "00";
  wait for 100ns;
  A <= "10";--10--
  B <= "01";
  wait for 100ns;
  A <= "10";--11--
  B <= "10";
  wait for 100ns;
  A <= "10";--12--
  B <= "11";
  wait for 100ns;
  A <= "11";--13--
  B <= "00";
  wait for 100ns;
  A <= "11";--14--
  B <= "01";
  wait for 100ns;
  A <= "11";--15--
  B <= "10";
  wait for 100ns;
  A <= "11";--16--
  B <= "11";
  wait for 100ns;
end process;
end;
