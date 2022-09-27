--------***CircuitRealization Using Structural (Q no:27)***-------
-------***Coded by Jenson&Salahudheen***--------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
-----------------------------
entity Qno27  is
  port(
     b0,b1,b2,b3:inout std_logic;
    g0,g1,g2,g3:in std_logic);
end Qno27;
-----------------------------
architecture Operation of Qno27 is
component Xor2  is
  port(
    a,b:in std_logic;
    o:out std_logic);
end component;

begin
 x1: Xor2 port map(g0,b1,b0);
 x2: Xor2 port map(g1,b2,b1);
 x3: Xor2 port map(g2,g3,b2);
b3<=g3;
    
end Operation;