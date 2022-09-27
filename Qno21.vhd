--------***CircuitRealization Using Structural***-------
-------***Coded by Jenson&Salahudheen***--------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
-----------------------------
entity Qno21  is
  port(
     clk,pre:in std_logic;
    a,b,c,d:inout std_logic);
end Qno21;
-----------------------------
architecture Operation of Qno21 is
signal x,y:std_logic;
signal q1,q2,q3,q4:std_logic;
component JKMSflip  is
  port(
     j,k,pre,clr,clk:in std_logic;
            q,qbar:inout std_logic);
end component;
component And2  is
  port(
    a,b:in std_logic;
    c:out std_logic);
end component;
component And3  is
  port(
    a,b,c:in std_logic;
    d:out std_logic);
end component;

begin
  x1: JKMSflip port map('1','1',pre,'1',clk,a,q1);
  x2: JKMSflip port map(a,a,pre,'1',clk,b,q2);
  x4: JKMSflip port map(y,y,pre,'1',clk,d,q4);
  x6: JKMSflip port map(x,x,pre,'1',clk,c,q3);
  x5: and2 port map(a,b,x);
  x7: and3 port map(a,b,c,y);
  
    
end Operation;