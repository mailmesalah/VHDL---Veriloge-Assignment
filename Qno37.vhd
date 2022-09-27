
--------***BiDirectional Shift Register Using Dff(Q no 37)***-------
-------***Coded by Jenson&Salahudheen***--------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
-------------------------------------
entity BiDirShiftDf is
port (m,clk,pr,cl: in std_logic;
      dr,dl: inout std_logic);
end BiDirShiftDf;    
-------------------------------------
architecture Operation of BiDirShiftDf is
signal mn : std_logic;
signal a,b,x,q: std_logic_vector(3 downto 0)    ;
component dff1 is
port(d,clk:in std_logic;
   pr,cl:in std_logic;
q1,qba:inout std_logic);
end component;  
component or2gate is
port(in_1,in_2: in std_logic;
       out_1 : out std_logic);
end component;
component andgate is
port(m,n:in std_logic;
o:out std_logic);
end component;
component notgate is
port(i:in std_logic;
  N:out std_logic);
end component;
begin  
n1: notgate port map(m,mn);    
    
a1 : andgate port map (dr,m,a(3));    
a2 : andgate port map (mn,q(2),b(3));
a3 : andgate port map (q(3),m,a(2));
a4 : andgate port map (mn,q(1),b(2));
a5 : andgate port map (q(2),m,a(1));
a6 : andgate port map (mn,q(0),b(1));
a7 : andgate port map (q(1),m,a(0));
a8 : andgate port map (mn,dl,b(0));

o1 : or2gate port map(a(3),b(3),x(3));
o2 : or2gate port map(a(2),b(2),x(2));
o3 : or2gate port map(a(1),b(1),x(1));
o4 : or2gate port map(a(0),b(0),x(0));

d1 : dff1 port map(x(3),clk,pr,cl,q(3));
d2 : dff1 port map(x(2),clk,pr,cl,q(2));
d3 : dff1 port map(x(1),clk,pr,cl,q(1));
d4 : dff1 port map(x(0),clk,pr,cl,q(0));
    
end Operation;    
