library ieee;
use ieee.std_logic_1164.all;
----------------------------
entity Nor4  is
  port(
    a,b,c,d:in std_logic;
    o:out std_logic);
end Nor4;
----------------------------
architecture Operation of Nor4 is
begin
  o<= not(a or b or c or d);
end operation;
    