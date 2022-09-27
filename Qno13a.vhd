--------***16x1 Mux Using Structural (Q no:13 a)***-------
-------***Coded by Jenson&Salahudheen***--------
library ieee;
use ieee.std_logic_1164.all;
-----------------------------
entity Mux16x1str  is
  port(
    s:in std_logic_vector(3 downto 0);
    o:out std_logic);
end Mux16x1str;
-----------------------------
architecture Operation of Mux16x1str is
component mux16_1 is
  port( a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,s0,s1,s2,s3 : in std_logic;
        out1 : out std_logic);
end component;

begin
  x1: mux16_1 port map('1','1','1','1','0','0','0','0','0','0','0','1','1','0','1','1',s(3),s(2),s(1),s(0),o);
 end operation;