library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
------------------------
entity tes is
port(a:in bit_vector(3 downto 0);
o:out bit_vector(3 downto 0));
end;
architecture op of tes is
begin
  o<=a srl 1;
end;