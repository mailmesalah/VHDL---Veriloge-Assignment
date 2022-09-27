-----***2 input Ex-Nor Gate(Q no:5)***-----
-----coded by Jenson and Salahudheen-----


library ieee;
use ieee.std_logic_1164.all;
----------------------------
entity XNor2  is
  port(
    a,b:in std_logic;--inputs
    o:out std_logic);--output
end XNor2;
----------------------------
architecture Operation of XNor2 is
begin
  o<= a xnor b;
end operation;
    
