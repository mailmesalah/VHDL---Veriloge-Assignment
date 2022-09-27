
-----***3 input AND Gate***-----
-----coded by Jenson and Salahudheen-----


library ieee;
use ieee.std_logic_1164.all;
----------------------------
entity And3  is
  port(
    a,b,c:in std_logic;--inputs
    d:out std_logic);--output
end And3;
----------------------------
architecture Operation of And3 is
begin
  d<= a and b and c;
end operation;
    
