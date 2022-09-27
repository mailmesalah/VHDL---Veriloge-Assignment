---------------D_FlipFlop using Behaviour-----------

library ieee;
use ieee.std_logic_1164.all;
-----------------------------
entity DFF is
  port(
    clk:inout std_logic;
    rst,d:in std_logic;
    q:out std_logic);
end DFF;
-----------------------------
architecture Operation of DFF is
  --signal x:std_logic;
  begin
    --x<= d;
    --q<=x;
     process (rst,clk) 
        begin
          if(rst='1') then q<='0';
          elsif (clk'event and clk='1') then q<= d;
          end if;
      end  process;
end Operation;