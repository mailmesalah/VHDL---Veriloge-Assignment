--------***BCD To Excess3 (Q no:14)***-------
-------***Coded by Jenson&Salahudheen***--------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
-----------------------------
entity BCDtoExcess  is
  port(
     a,b,c,d:in std_logic;
     w,x,y,z:out std_logic);
end BCDtoExcess;
-----------------------------
architecture Operation of BCDtoExcess is
 signal s1,s2,s3,s4,s5,s6,s7:std_logic;
 
component And2 is
  port(
    a,b:in std_logic;
    c:out std_logic);
end component;
component Or2 is
     port(a,b:in std_logic;
      o:out std_logic);
end component;
component notgate  is
  port(
    a:in std_logic;
    o:out std_logic);
end component;
begin
 x1:notgate port map(d,z);
 x2:notgate port map(s2,s3);
 x3:notgate port map(b,s4);
 z1:And2 port map(c,d,s1);
 z2:And2 port map(s3,b,s5);
 z3:And2 port map(s2,s4,s6);
 z4:And2 port map(s2,b,s7);
 y1:Or2  port map(s1,s3,y);
 y2:Or2  port map(s5,s6,x);
 y3:Or2  port map(s7,a,w);
 y4:Or2  port map(d,c,s2);
 end Operation;