--------***D Flip Flop Using Structural***-------
-------***Coded by Jenson&Salahudheen***--------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
-----------------------------
entity Dflip  is
  port(
     d,pre,clr,clk:in std_logic;
            q,qbar:inout std_logic);
end Dflip;
-----------------------------
architecture Operation of Dflip is
 
component DFlipFlops is
  port(
  d,clk,pre,clr:in std_logic;
  q,qbar:inout std_logic);
end component;


begin
 x1: DFlipFlops port map(d,clk,pre,clr,q,qbar);
    
end Operation;
