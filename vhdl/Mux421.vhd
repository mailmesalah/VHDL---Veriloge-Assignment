

----***Mux421***----------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
--------------------------------
entity Mux421 is
  port(
    a,b,c,d:in std_logic;
    s:in std_logic_vector(1 downto 0);
    o:out std_logic);
end Mux421;
---------------------------------
Architecture Operation of Mux421 is
begin
  
  with s select
    o<= a when "00",b when "01",c when "10",d when others;
     
end Operation;






















































































































































































