library ieee;
use ieee.std_logic_1164.all;
----------------------------
entity Mux is
  port(
    a,b,ce:in std_logic;
    cout:out std_logic);
end Mux;
----------------------------
architecture Operation of Mux is
begin
  cout<= ((not ce) and a) or(ce and b);
end Operation;
    