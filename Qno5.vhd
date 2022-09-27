
--------***JK MS Flip Flop Using Structural***-------
-------***Coded by Jenson&Salahudheen***--------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
-----------------------------
entity JKMSflip  is
  port(
     j,k,pre,clr,clk:in std_logic;
            q,qbar:inout std_logic);
end JKMSflip;
-----------------------------
architecture Operation of JKMSflip is
 signal a,b,c,e,f,g,i:std_logic;
component Nand3 is
   port(
     a,b,c:in std_logic;
     o:out std_logic);
end component; 
component Nand2 is
   port(
    a,b:in std_logic;
    o:out std_logic);
end component;  
component notgate is
   port(
    a:in std_logic;
    o:out std_logic);
end component;

begin
  
  x1: nand3 port map (pre,a,f,b);
  x2: nand3 port map (k,clk,q,e);
  x3: nand3 port map (b,clr,e,f);
  x4: nand3 port map (j,clk,qbar,a);
  x5: notgate port map (clk,i);
  x6: nand2 port map (b,i,c); 
  x7: nand2 port map (c,qbar,q);
  x8: nand2 port map (f,i,g);
  x9: nand2 port map (g,q,qbar);
    
end Operation;