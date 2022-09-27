library ieee;
use ieee.std_logic_1164.all;
----------------------------
entity Comparator is
  port(
    a,b:in std_logic;
    agb,alb,aeb:out std_logic);
end Comparator;               
------------------------------
architecture Operation of Comparator is

begin
  agb<= a and(not b);
  alb<= (not a) and b;
  aeb<= a xnor b;
end Operation;
                                                                                  
