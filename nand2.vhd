
-----***2 input NAND Gate(Q no:7)***-----
-----coded by Jenson and Salahudheen-----


library ieee;
use ieee.std_logic_1164.all;
-----------------------------
entity Nand2 is
  port(
    a,b:in std_logic;--inputs
    o:out std_logic);--outputs
  end Nand2;  
-----------------------------
  architecture operation of Nand2 is
  begin
    o<= not(a and b);
  end operation;
