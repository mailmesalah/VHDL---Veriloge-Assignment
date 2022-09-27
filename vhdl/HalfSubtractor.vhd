----Half Subtractor
library ieee;
use ieee.std_logic_1164.all;
--------------------------------
entity HalfSubtractor is
  
  port(
    
    a,b:in std_logic;
    difference,borrow:out std_logic);
    
end HalfSubtractor;
--------------------------------
architecture Operation of HalfSubtractor is

  begin
    
    difference<=a xor b;
    borrow<= (not a)and b;
      
end Operation;