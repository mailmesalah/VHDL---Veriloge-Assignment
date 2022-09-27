------------------Realisation (Q no:27)--------------
library ieee;
use ieee.std_logic_1164.all;
----------------------------
entity Realise3 is
  port(
    a,b,c,d:in std_logic;
    o:out std_logic);
end Realise3;
----------------------------
architecture Operation of Realise3 is
  begin
    o<= ((not a) and (not b)) or (a and b and (not d)) or (a and b and c);
end operation;