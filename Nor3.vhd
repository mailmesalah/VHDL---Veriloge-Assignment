
-----***3 input NOR Gate(Q no:9)***-----
-----coded by Jenson and Salahudheen-----


library ieee;
use ieee.std_logic_1164.all;
-----------------------------
entity Nor3 is
  port(
    a,b,c:in std_logic;--inputs
    d:out std_logic);--ouput
  end Nor3;
-----------------------------
  architecture Op of Nor3 is
  begin
    d<=(not(a or b or c));
  end op;
