------------------T Flip Flop (Q no:37)--------------
library ieee;
use ieee.std_logic_1164.all;
----------------------------
entity TFF is 
  port(
    
    t,clk:in std_logic;
    q,qbar:inout std_logic);
    
  end TFF;
  
architecture Operation of TFF is

  --signal qn:std_logic;
  begin
    --qn<=q;
    q<=(((not t) and q)and clk) or (t and qbar); 
    qbar<=(not q) after 10 ns;
  end Operation;