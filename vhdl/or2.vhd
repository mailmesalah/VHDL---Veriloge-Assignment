library ieee;
use ieee.std_logic_1164.all;
----------------------------
entity Or2  is
  port(
    a,b:in bit;
    o:out bit);
end Or2;
----------------------------
architecture Operation of Or2 is
begin
  o<= a or b;
end operation;
    
