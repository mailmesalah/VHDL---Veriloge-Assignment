
-----***2-1 Mux(Q no:12)***-----
-----coded by Jenson and Salahudheen----

library ieee;
use ieee.std_logic_1164.all;
----------------------------
entity Mux is
  port(
    a,b,ce:in std_logic;--inputs
    cout:out std_logic);--output
end Mux;
----------------------------
architecture Operation of Mux is
begin
  cout<= ((not ce) and a) or(ce and b);
end Operation;
    
