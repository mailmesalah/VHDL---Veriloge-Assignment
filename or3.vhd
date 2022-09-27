
-----***3 input OR Gate(Q no:6)***-----
-----coded by Jenson and Salahudheen-----


library ieee;
use ieee.std_logic_1164.all;
----------------------------
entity Or3  is
  port(
    a,b,c:in std_logic;--inputs
    o:out std_logic);--output
end Or3;
----------------------------
architecture Operation of Or3 is
begin
  o<= a or b or c;
end operation;
    
