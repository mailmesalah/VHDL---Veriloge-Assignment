


library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
---------------------------------
entity JohnCount is
  port(
    clk,rst:in std_logic;
    q,qb:inout std_logic_vector(3 downto 0));
end JohnCount;
----------------------------------
architecture Operation of JohnCount is


component JKMSflip  is
  port(
     j,k,pre,clr,clk:in std_logic;
            q,qbar:inout std_logic);
end component;
begin
  x1:JKMSflip port map(qb(0),q(0),rst,'1',clk,q(3),qb(3));
  x2:JKMSflip port map(q(3),qb(3),rst,'1',clk,q(2),qb(2));
  x3:JKMSflip port map(q(2),qb(2),rst,'1',clk,q(1),qb(1));
  x4:JKMSflip port map(q(1),qb(1),rst,'1',clk,q(0),qb(0));
end Operation;