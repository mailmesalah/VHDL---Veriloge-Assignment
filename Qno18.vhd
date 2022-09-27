library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
--------------------------------------
entity Mod8 is
 port(clk,rst: in std_logic;
      q: inout std_logic_vector(2 downto 0));
end Mod8;
--------------------------------------
architecture Operation of Mod8 is
signal x:std_logic;
signal n:std_logic_vector(2 downto 0);
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


 begin
   x1:JKMSflip port map('1','1',rst,'1',clk,q(0),n(0));
   x2:JKMSflip port map(q(0),q(0),rst,'1',clk,q(1),n(1));
   x3:JKMSflip port map(x,x,rst,'1',clk,q(2),n(2));
   x4:And2 port map(q(0),q(1),x);

   
end Operation;
