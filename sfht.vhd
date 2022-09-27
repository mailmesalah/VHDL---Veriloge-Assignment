library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity shft is
 port(a: in bit_vector(3 downto 0);
       x,v,y,z: out bit_vector(3 downto 0));
 end shft;
 
 architecture log of shft is
 
 begin
 x<= a srl 1;
 v<= a sll 1;
 y<= a rol 1;
 z<= a ror 1;
 
 end log;
       