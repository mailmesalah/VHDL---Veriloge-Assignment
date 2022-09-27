library ieee;
use ieee.std_logic_1164.all;
-------------------------------
Entity HalfAdder is
  
    port(
        
        a,b:in bit;
        sum,carry:out bit);
    
end HalfAdder;
-------------------------------

Architecture Operation of HalfAdder is

  begin
    
    sum<=a xor b;
    carry<= a and b;
    
end Operation;
