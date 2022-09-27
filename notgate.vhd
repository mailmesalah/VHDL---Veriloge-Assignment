library ieee;
use ieee.std_logic_1164.all;
-----------------------------
entity notgate  is
  port(
    a:in std_logic;
    o:out std_logic);
end notgate;
-----------------------------
architecture Operation of notgate is
 begin
   o<=not a;
end Operation;