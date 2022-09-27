--------***3 Bit Up/Down Counter Using JK MS FF(Q no:7)***-------
-------***Coded by Jenson&Salahudheen***--------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
-----------------------------
entity BitUpDown3JK  is
  port(
     clk,rst,mode:in std_logic;
     q:inout std_logic_vector(2 downto 0);
     qbar:inout std_logic_vector(2 downto 0));
end BitUpDown3JK;
-----------------------------
architecture Operation of BitUpDown3JK is
signal a,b,c,d,e,f,g:std_logic;
component JKMSflip is
  port(
     j,k,pre,clr,clk:in std_logic;
            q,qbar:inout std_logic);
end component;
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

begin
  x1: JKMSflip port map('1','1',rst,'1',clk,q(0),qbar(0));
  x2: JKMSflip port map(b,b,rst,'1',clk,q(1),qbar(1));
  x3: JKMSflip port map(e,e,rst,'1',clk,q(2),qbar(2));
  x4: And2 port map(mode,q(0),a);
  x5: notgate port map(mode,g);
  x6: And2 port map(mode,q(0),a);
  x7: And2 port map(g,qbar(0),c);
  x8: And2 port map(a,q(1),d);
  x9: And2 port map(c,qbar(1),f);
  x10: Or2 port map(a,c,b);
  x11: Or2 port map(f,d,e);
end Operation;