--------------XNor2--------------

library ieee;
use ieee.std_logic_1164.all;
----------------------------
entity XNor2  is
  port(
    a,b:in std_logic;
    o:out std_logic);
end XNor2;
----------------------------
architecture Operation of XNor2 is
begin
  o<= a xnor b;
end operation;
    