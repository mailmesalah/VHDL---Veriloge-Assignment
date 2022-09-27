--------***3 Bit Up Counter Using JK MS FF(Q no:7)***-------
-------***Coded by Jenson&Salahudheen***--------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
-----------------------------
entity BitUp3JK  is
  port(
     clk,rst:in std_logic;
     q:inout std_logic_vector(2 downto 0);
     qbar:inout std_logic_vector(2 downto 0));
end BitUp3JK;
-----------------------------
architecture Operation of BitUp3JK is
signal x:std_logic;
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
begin
  x1: JKMSflip port map('1','1',rst,'1',clk,q(0),qbar(0));
  x2: JKMSflip port map(q(0),q(0),rst,'1',clk,q(1),qbar(1));
  x3: And2 port map(q(1),q(0),x);
  x4: JKMSflip port map(x,x,rst,'1',clk,q(2),qbar(2));
  
end Operation;