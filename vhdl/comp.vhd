library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
------------------------------------
entity comp is
  port (
   a,b:in  std_logic_vector(3 downto 0);
    eq,gr,ls : out std_logic);
end comp;
-------------------------------------
architecture Operation of comp is
begin
  eq<=((a(0) xnor b(0))and (a(1) xnor b(1))and (a(2) xnor b(2))and (a(3) xnor b(3)));
  gr<=(a(3)and(not b(3)))or
      ((a(3)xnor b(3))and(a(2)and (not b(2))))or
      (((a(3)xnor b(3))and (a(2)xnor b(2)))and (a(1) and (not b(1))))or
      ((a(3)xnor b(3))and (a(2)xnor b(2))and (a(1)xnor b(1))and(a(0)and (not b(0))));
  ls<=(not a(3)and( b(3)))or
      ((a(3)xnor b(3))and(not a(2)and ( b(2))))or
      (((a(3)xnor b(3))and (a(2)xnor b(2)))and (not a(1) and ( b(1))))or
      ((a(3)xnor b(3))and (a(2)xnor b(2))and (a(1)xnor b(1))and(not a(0)and ( b(0))));
end operation;