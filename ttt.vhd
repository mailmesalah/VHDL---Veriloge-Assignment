library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
---------------------------------
entity Qno62 is
  port(
    a,b:in std_logic;
    c,d:out std_logic);
end Qno62;
---------------------------------
architecture Operationa of Qno62 is
begin
  c<=a and b;
end;

architecture Operationb of Qno62 is
begin
  d<=a or b;
end;