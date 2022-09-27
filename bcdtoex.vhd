
-----***BCD To EXCESS 3 With NAND Gates***(Q no:28)-----
-----coded by Jenson and Salahudheen-----

library ieee;
use ieee.std_logic_1164.all;
-----------------------------
entity BcdExcess is
  port(a,b,c,d:in std_logic;  p,q,r,s:out std_logic);
end BcdExcess;
-----------------------------
architecture Operation of BcdExcess is
begin
  p<=(((a nand a) nand (b nand c)) nand (b nand d));
  q<=(((b nand b) nand ((c nand c) nand (d nand d))) nand (b nand (c nand d)));
  r<=((c nand d) nand ((c nand c) nand (d nand d)));
  s<=(d nand d);
end Operation;