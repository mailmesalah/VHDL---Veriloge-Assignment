
-----***Realization (Q no:21)***------
-----coded by Jenson and Salahudheen----

library ieee;
use ieee.std_logic_1164.all;
----------------------------
entity Realise1 is
  port(
    a,b,c,d:in std_logic;--inputs
    o:out std_logic);--output
end Realise1;
----------------------------
architecture Operation of Realise1 is
  begin
    o<=((a xnor b) and (c xnor d)) or ((a xor b) and (c xor d));
end operation;
