--------------Xor2--------------

library ieee;
use ieee.std_logic_1164.all;
----------------------------
entity Xor2  is
  port(
    a,b:in std_logic;
    o:out std_logic);
end Xor2;
----------------------------
architecture Operation of Xor2 is
begin
  o<= a Xor b;
end operation;
    