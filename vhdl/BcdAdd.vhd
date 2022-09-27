library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
----------------------------
entity Bcd is
  port(
    a,b:in std_logic_vector(3 downto 0);
    z:out std_logic_vector(4 downto 0));
  end Bcd;
-----------------------------
architecture Operation of Bcd is

signal c:std_logic_vector(4 downto 0);
signal ad:std_logic;

begin
  
  c<= '0'& a+b;
  z<= c+6 when(c > 9) else  c;
  --ad<= '1' when(c > 9) else '0';
  --z<= c when(ad='0') else c+6;

end Operation;