
-----***4 input NAND Gate(Q no:7)***-----
-----coded by Jenson and Salahudheen-----


library ieee;
use ieee.std_logic_1164.all;
-----------------------------
entity Nand4 is
  port(
    a,b,c,d:in std_logic;--inputs
    o:out std_logic);--outputs
  end Nand4;  
-----------------------------
  architecture operation of Nand4 is
  begin
    o<= not(a and b and c and d);
  end operation;
