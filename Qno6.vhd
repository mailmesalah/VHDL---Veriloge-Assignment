
--------***T Flip Flop JK Using Structural Q no(6)***-------
-------***Coded by Jenson&Salahudheen***--------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
-----------------------------
entity Tff  is
  port(
     t,pre,clr,clk:in std_logic;
            qq,qqbar:inout std_logic);
end Tff;
-----------------------------
architecture Operation of Tff is
 
component JKMSflip  is
  port(
     j,k,pre,clr,clk:in std_logic;
            q,qbar:inout std_logic);
end component ;

begin
  x1:JKMSflip  port map(t,t,pre,clr,clk,qq,qqbar);
end Operation;