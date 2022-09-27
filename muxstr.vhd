-----***2-1 Mux***-----
-----coded by Jenson and Salahudheen----

library ieee;
use ieee.std_logic_1164.all;
----------------------------
entity Muxstr is
  port(
    a,b,ce:in std_logic;
    c:out std_logic);
end Muxstr;
----------------------------
architecture Operation of Muxstr is
component Mux is
  port(
    a,b,ce:in std_logic;
    cout:out std_logic);
end component;


begin
  x1: Mux port map(a,b,ce,c);
end Operation;
    
