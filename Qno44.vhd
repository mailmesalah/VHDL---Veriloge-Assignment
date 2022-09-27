--------***Ring Counter Using D ff(Q no:44)***-------
-------***Coded by Jenson&Salahudheen***--------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
-----------------------------
entity RingCountDff  is
  port(
       clk,pre:in std_logic;
       q:inout std_logic_vector(3 downto 0));
end RingCountDff;
-----------------------------
architecture Operation of RingCountDff is
component Dflip  is
  port(
     d,pre,clr,clk:in std_logic;
     q,qbar:inout std_logic);
end component;
begin
  x1: Dflip port map(q(3),pre,'1',clk,q(0));
  x2: Dflip port map(q(0),pre,'1',clk,q(1));
  x3: Dflip port map(q(1),pre,'1',clk,q(2));
  x4: Dflip port map(q(2),pre,'1',clk,q(3));
end Operation;
