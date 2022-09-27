library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
--------------------------------------
entity Base6Count is
 port(clk,rst: in std_logic;
      q: inout std_logic_vector(2 downto 0));
end Base6Count;
--------------------------------------
architecture Operation of Base6Count is
signal x,y:std_logic;
signal n:std_logic_vector(2 downto 0);
component JKMSflip  is
  port(
     j,k,pre,clr,clk:in std_logic;
            q,qbar:inout std_logic);
end component;
component And3  is
  port(
    a,b,c:in std_logic;
    d:out std_logic);
    end component;
component And2  is
  port(
    a,b:in std_logic;
    c:out std_logic);
end component;
component Nand3 is
  port(
    a,b,c:in std_logic;
    o:out std_logic);
  end component;  


 begin
   x1:JKMSflip port map('1','1',rst,'1',clk,q(0),n(0));
   x2:JKMSflip port map(x,q(0),rst,'1',clk,q(1),n(1));
   x3:JKMSflip port map(y,q(0),rst,'1',clk,q(2),n(2));
   x4:And2 port map(q(0),n(2),x);
   x5:And2 port map(q(0),q(1),y);
  
   
end Operation;