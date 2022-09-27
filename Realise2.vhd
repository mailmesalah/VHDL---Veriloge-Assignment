
-----***Realization (Q no:22(a))***------
-----coded by Jenson and Salahudheen----

library ieee;
use ieee.std_logic_1164.all;
----------------------------
entity Realise2 is
  port(
    a,b,c,d:in std_logic;--inputs
    o:out std_logic);--output
end Realise2;
----------------------------
architecture Operation of Realise2 is
  begin
    o<= (((not d) or (b and c)) and (not a)) or ((a and d) and (not b));
end operation;
