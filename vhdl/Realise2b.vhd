------------------Realisation (Q no:22(b))--------------
library ieee;
use ieee.std_logic_1164.all;
----------------------------
entity Realise2b is
  port(
    a,b,c,d:in std_logic;
    o:out std_logic);
end Realise2b;
----------------------------
architecture Operation of Realise2b is
  begin
    o<=((not a) and (not c) and (not d)) or ((not b) and (not d) and c) or (a and b and (not c)) or (a and b and c);
end operation;