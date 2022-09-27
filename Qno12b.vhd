
--------***8x1 Mux Using Structural (Q no:12 a)***-------
-------***Coded by Jenson&Salahudheen***--------
library ieee;
use ieee.std_logic_1164.all;
-----------------------------
entity Mux8x1st  is
  port(
    s:in std_logic_vector(3 downto 0);
    o:out std_logic);
end Mux8x1st;
-----------------------------
architecture Operation of Mux8x1st is
  signal m,n:std_logic;
component Mux8x1 is
  port( a,b,c,d,e,f,g,h,s0,s1,s2:in std_logic;
        out1 : out std_logic); 
end component;
component Mux is
  port(
    a,b,ce:in std_logic;
    cout:out std_logic);
end component;

begin
  x1: Mux8x1 port map('1','0','0','1','0','1','1','0',s(2),s(1),s(0),m);
  x2: Mux8x1 port map('0','1','1','0','1','0','0','1',s(2),s(1),s(0),n);
  x3: Mux port map(m,n,s(3),o);
end operation;