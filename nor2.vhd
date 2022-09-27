----***2 input NOR Gate***-----
-----coded by Jenson and Salahudheen-----


library ieee;
use ieee.std_logic_1164.all;
----------------------------
entity NOr2  is
  port
    (a,b:in std_logic;--inputs
    o:out std_logic);--output
end NOr2;
----------------------------
architecture Operation of NOr2 is
begin
  o<= not(a or b);
end operation;
    
