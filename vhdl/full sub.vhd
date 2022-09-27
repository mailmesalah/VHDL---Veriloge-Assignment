library ieee;
use ieee.std_logic_1164.all;
--------------------------------
entity FullSubtractor is
  
  port(
    
    a,b,c:in std_logic;
    difference,borrow:out std_logic);
    
end FullSubtractor;
--------------------------------
architecture Operation of FullSubtractor is

  begin
    
    difference<=((not a) or ((not b) or (not c)))or (a and b and c);
    borrow<= ((not a)and (b or c))or (b and c);
     
end Operation;



















































