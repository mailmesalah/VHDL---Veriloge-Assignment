library ieee;
library Jenson_Salah;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use Jenson_Salah.Sum.all;
-------------------------------
entity add is
  port(
    a: in intarray;
    o: out integer range 0 to 100);
end add;
--------------------------------
architecture Operation of add is

signal x:integer range 0 to 100;
begin
  x<= small (a) + larg (a);
  o<=x;
end Operation;
    