library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
---------------------------------
entity Operator is
  port(
    a,b:in integer;
    c,d,e,f,g,h:out integer);
end Operator;
---------------------------------
architecture Operation of Operator is 
  begin
    c<= a + b;
    d<= a - b;
    e<= a * b;
    f<= a / b;
    g<= a mod b;
    h<= a rem b; 
end Operation;
---------------------------------