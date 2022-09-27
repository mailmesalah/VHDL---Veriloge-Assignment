
-----**Half Subtractor(Q no:23)***-----
-----coded by Jenson and Salahudheen----

library ieee;
use ieee.std_logic_1164.all;
--------------------------------
entity HalfSubtractor is
  
  port(
    
    a,b:in std_logic;--inputs
    difference,borrow:out std_logic);--output
    
end HalfSubtractor;
--------------------------------
architecture Operation of HalfSubtractor is

  begin
    
    difference<=a xor b;
    borrow<= (not a)and b;
      
end Operation;
