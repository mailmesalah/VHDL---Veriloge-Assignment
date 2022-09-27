----------------D FlipFlop--------------------

library ieee;
use ieee.std_logic_1164.all;
----------------------------
entity Dflip is 
  port(
    
    d,clk:in std_logic;
    q:out std_logic);
    
  end Dflip;
  
architecture Operation of Dflip is

  begin
   q<= d when clk='1'  else (not d) when clk='1' and d='1' else '-';
   
end Operation;