library ieee;
use ieee.std_logic_1164.all;
-----------------------------
entity LogicOp is
port(
  a:in bit_vector(0 to 7);
  c,d,e,f,g,h:out bit_vector(0 to 7)); 
end LogicOp;
-----------------------------
Architecture Operation of LogicOp is
begin
  c<= a sll 2;
  d<= a srl 2;
  e<= a sla 3;
  f<= a sra 3;
  g<= a ror 5;
  h<= a rol 5;
end Operation;