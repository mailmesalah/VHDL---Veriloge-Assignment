
----------***And 2***----------
library ieee;
use ieee.std_logic_1164.all;
----------------------------
entity And2  is
  port(
    a,b:in std_logic;
    c:out std_logic);
end And2;
----------------------------
architecture Operation of And2 is
begin
  c<= a and b;
end operation;
    