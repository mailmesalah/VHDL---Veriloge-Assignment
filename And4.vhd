-----***4 input AND Gate***-----
-----coded by Jenson and Salahudheen-----


library ieee;
use ieee.std_logic_1164.all;
----------------------------
entity And4  is
  port(
    a,b,c,e:in std_logic;--inputs
    d:out std_logic);--output
end And4;
----------------------------
architecture Operation of And4 is
begin
  d<= a and b and c and e;
end operation;
    
