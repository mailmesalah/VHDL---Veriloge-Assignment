--------***MicroWave Counter Using Tff(Q no:25)***-------
-------***Coded by Jenson&Salahudheen***--------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
-----------------------------
entity MicroCount  is
  port(
     clk,pre:in std_logic;
     q:inout std_logic_vector(3 downto 0));
end MicroCount;
-----------------------------
architecture Operation of MicroCount is
signal n:std_logic_vector(3 downto 0);
signal x,y:std_logic;
component Tff  is
  port(
     t,pre,clr,clk:in std_logic;
     qq,qqbar:inout std_logic);
end component;
component And2  is
  port(
     a,b:in std_logic;
     c:out std_logic);
end component;

begin
 x1: Tff port map('1',pre,'1',clk,q(0),n(0));
 x2: Tff port map(n(0),pre,'1',clk,q(1),n(1));
 x3: Tff port map(x,pre,'1',clk,q(2),n(2));
 x4: Tff port map(y,pre,'1',clk,q(3),n(3));
 y1: And2 port map(n(0),n(1),x); 
 y2: And2 port map(x,n(2),y);  
end Operation;
