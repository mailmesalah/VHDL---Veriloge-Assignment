
----------------Realising 4bit FA with fast carry Q no:40--------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
------------------------------------
entity FA4bitFC is
  port(
    a_0,a_1,a_2,a_3,b_0,b_1,b_2,b_3,cin:in std_logic;
    s0,s1,s2,s3,cout:out std_logic);
end FA4bitFC;
------------------------------------
architecture Operation of FA4bitFC is
signal a: std_logic_vector(1 to 25);
begin
  a(1)<= a_0 nor b_0;
  a(2)<= a_0 nand b_0;
  a(3)<= a_1 nor b_1;
  a(4)<= a_1 nand b_1;
  a(5)<= a_2 nor b_2;
  a(6)<= a_2 nand b_2;
  a(7)<= a_3 nor b_3;
  a(8)<= a_3 nand b_3;
  a(9)<= (not a(1)) and a(2);
  a(10)<= (not cin) and a(2);
  a(11)<= (not cin) and a(4);
  a(12)<= (not cin) and a(2) and a(4);
  a(13)<= a(2) and a(1);
  a(14)<= (not a(5)) and a(6);
  a(15)<= (not cin) and a(2) and a(4) and a(6);
  a(16)<= a(4) and a(6) and a(1);
  a(17)<= a(6) and a(3);
  a(18)<= (not a(7)) and a(8);
  a(19)<= (not cin) and a(2) and a(4) and a(6) and a(8);
  a(20)<= a(4) and a(6) and a(8) and a(1);
  a(21)<= a(8) and a(6) and a(3);
  a(22)<= a(8) and a(5);
  a(23)<= not(a(17) or a(16) or a(15));
  a(24)<= not(a(12) or a(13) or a(3));
  a(25)<= not(a(10) or a(1));
  cout<= not(a(22) or a(21) or a(20) or a(19));
  s0<=a(9) xnor cin;
  s1<=a(25) xnor a(11);
  s2<=a(24) xnor a(14);
  s3<=a(23) xnor a(18);
end Operation;