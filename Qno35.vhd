--------***3 Bit Asynchronous Counter Using T ff(Q no:35)***-------
-------***Coded by Jenson&Salahudheen***--------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
-----------------------------
entity Count3BitTff  is
  port(
       clk,clr:in std_logic;
       q:inout std_logic_vector(2 downto 0));
end Count3BitTff;
-----------------------------
architecture Operation of Count3BitTff is
component Tff  is
  port(
     t,pre,clr,clk:in std_logic;
     qq,qqbar:inout std_logic);
end  component;
begin
  x1: Tff port map('1','1',clr,clk,q(0));
  x2: Tff port map('1','1',clr,q(0),q(1));
  x3: Tff port map('1','1',clr,q(1),q(2));
end Operation;
