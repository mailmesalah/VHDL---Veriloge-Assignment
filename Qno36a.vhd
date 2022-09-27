
--------***4 Bit Shift Rregister Using D ff(Q no:36a)***-------
-------***Coded by Jenson&Salahudheen***--------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
-----------------------------
entity Shift4BitDff  is
  port(
       sin,clk:in std_logic;
       sout:out std_logic);
end Shift4BitDff;
-----------------------------
architecture Operation of Shift4BitDff is
signal q:std_logic_vector(3 downto 0);
component Dflip  is
  port(
     d,pre,clr,clk:in std_logic;
     q,qbar:inout std_logic);
end component;
begin
  x1:Dflip port map(sin,'1','1',clk,q(0));
  x2:Dflip port map(q(0),'1','1',clk,q(1));
  x3:Dflip port map(q(1),'1','1',clk,q(2));
  x4:Dflip port map(q(2),'1','1',clk,q(3));
  sout<=q(3);
end Operation;