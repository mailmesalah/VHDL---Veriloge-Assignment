
-----***3 input NAND Gate(Q no:7)***-----
-----coded by Jenson and Salahudheen-----


library ieee;
use ieee.std_logic_1164.all;
-----------------------------
entity Nan3 is
  port(
    a,b,c:in std_logic;--inputs
    o:out std_logic);--outputs
  end Nan3;  
-----------------------------
  architecture operation of Nan3 is
  begin
    o<= not(a and b and c);
  end operation;
