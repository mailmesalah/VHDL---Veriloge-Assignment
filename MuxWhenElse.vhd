
----***4-1 Mux using When Else(Q no:33)***-----
-----coded by Jenson and Salahudheen----

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
--------------------------------
entity MuxWhenElse is
  port(
    a,b,c,d:in std_logic;--inputs
    s:in std_logic_vector(1 downto 0);
    o:out std_logic);--output
end MuxWhenElse;
---------------------------------
Architecture Operation of MuxWhenElse is
begin
  
    o<= a when s="00" else b when s="01" else c when s="10" else d ;
     
end Operation;
