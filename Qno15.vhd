--------***Excess3 to BCD  (Q no:15)***-------
-------***Coded by Jenson&Salahudheen***--------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
-----------------------------
entity ExcesstoBCD  is
  port(
     ex:in std_logic_vector(3 downto 0);
     bcd:inout std_logic_vector(3 downto 0));
end ExcesstoBCD;
-----------------------------
architecture Operation of ExcesstoBCD is
 signal x,y,j,k,l,m,n,o:std_logic;
 
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
component And3  is
  port(
    a,b,c:in std_logic;
    d:out std_logic);
end component;
component Or3  is
  port(
    a,b,c:in std_logic;
    o:out std_logic);
end component;
begin
 x1:notgate port map(ex(0),bcd(0));
 x2:notgate port map(ex(1),x);
 x3:notgate port map(ex(2),y);
 f1:And2 port map(ex(0),x,j);
 f2:And2 port map(bcd(0),ex(1),k);
 f3:And2 port map(x,y,l);
 f4:And2 port map(ex(2),ex(3),o);
 s1:And3 port map(ex(0),ex(1),ex(2),m);
 s2:And3 port map(ex(0),ex(1),ex(3),n);
 d1:Or2  port map(j,k,bcd(1));
 d2:Or2  port map(n,o,bcd(3));
 c1:Or3  port map(l,m,n,bcd(2));
 
 end Operation;
 