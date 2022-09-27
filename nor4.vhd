----***4 input NOR Gate***-----
-----coded by Jenson and Salahudheen-----


library ieee;
use ieee.std_logic_1164.all;
----------------------------
entity NOr4  is
  port
    (a,b,c,d:in std_logic;--inputs
    o:out std_logic);--output
end NOr4;
----------------------------
architecture Operation of NOr4 is
begin
  o<= not(a or b or c or d);
end operation;
    
