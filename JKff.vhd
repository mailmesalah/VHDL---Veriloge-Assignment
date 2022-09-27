--------***JK  Flip Flop Using Structural***-------
-------***Coded by Jenson&Salahudheen***--------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
-----------------------------
entity JKff  is
  port(
     j,k,pre,clr,clk:in std_logic;
            q,qbar:inout std_logic);
end JKff;
-----------------------------
architecture Operation of JKff is
 signal a,b:std_logic;
component Nand3 is
   port(
     a,b,c:in std_logic;
     o:out std_logic);
end component; 
begin
  
  x1: nand3 port map (pre,a,qbar,q);
  x2: nand3 port map (k,clk,q,b);
  x3: nand3 port map (b,clr,q,qbar);
  x4: nand3 port map (j,clk,qbar,a);
    
end Operation;