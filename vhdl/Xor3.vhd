--------------Xor 3--------------

library ieee;
use ieee.std_logic_1164.all;
----------------------------
entity Xor3  is
  port(
    a,b,c:in std_logic;
    o:out std_logic);
end Xor3;
----------------------------
architecture Operation of Xor3 is
begin
  o<= a xor b xor c;
end operation;
    