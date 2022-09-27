
-----***3 input NAND Gate(Q no:7)***-----
-----coded by Jenson and Salahudheen-----


library ieee;
use ieee.std_logic_1164.all;
-----------------------------
entity Nand3 is
  port(
    a,b,c:in std_logic;--inputs
    o:out std_logic);--outputs
  end Nand3;  
-----------------------------
  architecture operation of Nand3 is
  begin
    o<= not(a and b and c);
  end operation;
