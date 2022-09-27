
-----***3 input Xor Gate***-----
-----coded by Jenson and Salahudheen-----


library ieee;
use ieee.std_logic_1164.all;
----------------------------
entity Xor3  is
  port(
    a,b,c:in std_logic;--inputs
    o:out std_logic);--output
end Xor3;
----------------------------
architecture Operation of Xor3 is
begin
  o<= a xor b xor c;
end operation;
    
