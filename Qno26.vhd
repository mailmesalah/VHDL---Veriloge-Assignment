--------***CircuitRealization Using Structural (Q no:26)***-------
-------***Coded by Jenson&Salahudheen***--------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
-----------------------------
entity Qno26  is
  port(
     b0,b1,b2,b3:in std_logic;
    g0,g1,g2,g3:out std_logic);
end Qno26;
-----------------------------
architecture Operation of Qno26 is
component Xor2  is
  port(
    a,b:in std_logic;
    o:out std_logic);
end component;

begin
 x1: Xor2 port map(b0,b1,g0);
 x2: Xor2 port map(b1,b2,g1);
 x3: Xor2 port map(b2,b3,g2);
g3<=b3;
    
end Operation;