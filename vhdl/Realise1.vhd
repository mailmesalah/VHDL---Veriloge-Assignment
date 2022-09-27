
------------------Realisation (Q no:21 and 26)--------------
library ieee;
use ieee.std_logic_1164.all;
----------------------------
entity Realise1 is
  port(
    a,b,c,d:in std_logic;
    o:out std_logic);
end Realise1;
----------------------------
architecture Operation of Realise1 is
  begin
    o<=((a xnor b) and (c xnor d)) or ((a xor b) and (c xor d));
end operation;