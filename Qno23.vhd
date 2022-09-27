--------***Frequency Divider By 3 Using Structural(Q no:23)***-------
-------***Coded by Jenson&Salahudheen***--------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
-----------------------------
entity FreqDivBy3  is
  port(
     clk,pre:in std_logic;
     q:inout std_logic_vector(2 downto 0));
end FreqDivBy3;
-----------------------------
architecture Operation of FreqDivBy3 is
signal n:std_logic_vector(2 downto 0); 
component JKMSflip  is
  port(
     j,k,pre,clr,clk:in std_logic;
            q,qbar:inout std_logic);
end component;

begin
 x1: JKMSflip port map(q(2),'1',pre,'1',clk,q(0),n(0));
 x2: JKMSflip port map(q(0),'1',pre,'1',clk,q(1),n(1));
 x3: JKMSflip port map(q(1),'1',pre,'1',clk,q(2),n(2));
           
end Operation;
