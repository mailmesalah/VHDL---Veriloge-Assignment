library ieee;
use ieee.std_logic_1164.all;
----------------------------
entity Nand4  is
  port(
    a,b,c,d:in std_logic;
    o:out std_logic);
end Nand4;
----------------------------
architecture Operation of Nand4 is
begin
  o<= not(a and b and c and d);
end operation;
    