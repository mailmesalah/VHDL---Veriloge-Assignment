--------***4 Bit Ripple Counter Using D ff(Q no:44)***-------
-------***Coded by Jenson&Salahudheen***--------
library ieee;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_1164.all;
-----------------------------
entity RippleCount4Bit  is
  port(
       clk,clr:in std_logic;
       q:inout std_logic_vector(3 downto 0));
end RippleCount4Bit;
-----------------------------
architecture Operation of RippleCount4Bit is
component Tff  is
  port(
     t,pre,clr,clk:in std_logic;
            qq,qqbar:inout std_logic);
end component;
begin

  x1:Tff port map('1','1',clr,clk,q(0));
  x2:Tff port map('1','1',clr,q(0),q(1));
  x3:Tff port map('1','1',clr,q(1),q(2));
  x4:Tff port map('1','1',clr,q(2),q(3));
  
end Operation;
