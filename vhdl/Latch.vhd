library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
---------------------------------
entity Latch is
  port(
    d,clk:in std_logic;
    q:out std_logic);
end latch;
---------------------------------
architecture Operation of Latch is
  begin
    Latchblock:block(clk='1')
      begin
        q<=guarded d;
    end block Latchblock;
end Operation;