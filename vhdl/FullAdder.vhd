library ieee;
use ieee.std_logic_1164.all;
----------------------------
entity FullAdder is
  port(
    
    a,b,cin:in std_logic;
    sum,carry:out std_logic);
end FullAdder;
----------------------------
architecture Operation of FullAdder is
 --   component FullAdder 
  --    port(a,b,cin:in std_logic; sum,carry:out std_logic);
  --  end component;  
    begin
      sum<= a xor b xor cin ;
      carry<= (a and b) or (a and cin) or (b and cin);
end Operation; 
--package Arrays is 
  
--end Arrays