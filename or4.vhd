
-----***4 input OR Gate(Q no:6)***-----
-----coded by Jenson and Salahudheen-----


library ieee;
use ieee.std_logic_1164.all;
----------------------------
entity Or4  is
  port(
    a,b,c,d:in std_logic;--inputs
    o:out std_logic);--output
end Or4;
----------------------------
architecture Operation of Or4 is
begin
  o<= a or b or c or d;
end operation;
    
