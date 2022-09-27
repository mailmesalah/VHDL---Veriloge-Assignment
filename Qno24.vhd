--------***Frequency Divider By 5 Using Structural(Q no:24)***-------
-------***Coded by Jenson&Salahudheen***--------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
-----------------------------
entity FreqDivBy5  is
  port(
     clk,pre,clr:in std_logic;
     q:inout std_logic_vector(4 downto 0));
end FreqDivBy5;
-----------------------------
architecture Operation of FreqDivBy5 is
component JKMSflip  is
  port(
     j,k,pre,clr,clk:in std_logic;
            q,qbar:inout std_logic);
end component;

begin
 x1: JKMSflip port map(q(4),'1',pre,clr,clk,q(0));
 x2: JKMSflip port map(q(0),'1',pre,clr,clk,q(1));
 x3: JKMSflip port map(q(1),'1',pre,clr,clk,q(2));
 x4: JKMSflip port map(q(2),'1',pre,clr,clk,q(3));
 x5: JKMSflip port map(q(3),'1',pre,clr,clk,q(4));
           
end Operation;
