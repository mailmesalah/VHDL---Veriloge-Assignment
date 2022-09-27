library ieee;
library Jenson_Salah;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use Jenson_Salah.Arrays.all;
--------------------------------
entity UnitsImp is
  port(
    i:in current;
    o:out current);
end UnitsImp;
--------------------------------
architecture Operation of UnitsImp is
  begin
    o<= i;
end Operation;