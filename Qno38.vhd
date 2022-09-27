--------***Parallel in Serial out Shift Register(Q no:38)***-------
-------***Coded by Jenson&Salahudheen***--------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
-----------------------------
entity ShiftRgPinSout  is
  port(
     clk,a,b,c,en:in std_logic;
     sout:inout std_logic);
end ShiftRgPinSout;
-----------------------------
architecture Operation of ShiftRgPinSout is
signal p,q,r,s,t,u:std_logic; 
signal enb:std_logic;
 component And2 is
  port(
    a,b:in std_logic;
    c:out std_logic);
end component;
component Or2  is
  port
    (a,b:in std_logic;
    o:out std_logic);
end component;
component notgate  is
  port(
    a:in std_logic;
    o:out std_logic);
end component;
component Dflip  is
  port(
     d,pre,clr,clk:in std_logic;
            q,qbar:inout std_logic);
end component;


begin
  x1:Dflip port map(a,'1','1',clk,q(0));
  x2:Dflip port map(r,'1','1',clk,q(1));
  x3:Dflip port map(u,'1','1',clk,q(2));
  y1:And2 port map(q(0),en,p);
  y2:And2 port map(b,enb,q);
  y3:And2 port map(q(1),en,s);
  y4:And2 port map(c,enb,t);
  d1:Or2 port map(p,q,r);
  d2:Or2 port map(s,t,u);
  f1:notgate  port map(en,enb);
  sout<=q(2);
  
  
  
end Operation;
