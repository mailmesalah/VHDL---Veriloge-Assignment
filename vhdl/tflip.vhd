      ----------------T FlipFlop--------------------

library ieee;
use ieee.std_logic_1164.all;
----------------------------
entity Tflip is 
  port(
    
    t,clk,q0:in std_logic;
    q,qbar:out std_logic);
    
end Tflip;
----------------------------
architecture Operation of Tflip is

  signal qbar1,temp:std_logic;

  begin
    
    qbar1<= not q0;
    temp<= q0 when clk='1' and t='0' else qbar1 when clk='1' and t='1' else '-';
    q<= temp;
    qbar<= not temp;
   
end Operation;