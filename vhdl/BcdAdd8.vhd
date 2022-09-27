library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
----------------------------
entity Bcd8 is
  port(
    a,b,c,d:in std_logic_vector(3 downto 0);
    z1:out std_logic_vector(3 downto 0);
    z2:out std_logic_vector(4 downto 0));
  end Bcd8;
-----------------------------
architecture Operation of Bcd8 is

signal c1,c3:std_logic_vector(4 downto 0);
signal c2:std_logic_vector(4 downto 0);
signal ad:std_logic;


begin
  
  c1<= '0' & a+c;
  ad<= '1' when(c1 > 9) else  '0';
  c3<=c1+6 when(c1 > 9) else  c1;
  z1<=c3(3) & c3(2) & c3(1) & c3(0);
  c2<= '0' & b+d+ad;
  z2<=c2+6 when(c2 > 9) else  c2;
  
end Operation;