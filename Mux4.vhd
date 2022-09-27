
------***4-1 Mux(Q no:13)***-----
-----coded by Jenson and Salahudheen----


library ieee;
use ieee.std_logic_1164.all;
----------------------------
entity Mux4 is 
  port(
    a,b,c,d,ce1,ce2:in std_logic;--input
    cout:out std_logic);--output
  end Mux4; 
-----------------------------
architecture Operation of Mux4 is
begin
  cout<= ((not ce1)and (not ce2)and a) or ((not ce1)and (ce2)and b) or ((ce1)and (not ce2)and c) or ((ce1)and (ce2)and d );
end Operation;
