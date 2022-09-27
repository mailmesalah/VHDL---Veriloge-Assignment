----***Mux1641***----------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
--------------------------------
entity Mux1641 is
  port(
    a:in std_logic_vector(15 downto 0);
    s:in std_logic_vector(3 downto 0);
    o:out std_logic);
end Mux1641;
---------------------------------
Architecture Operation of Mux1641 is
begin
  
  with s select
    o<= a(0)  when "0000",
        a(1)  when "0001",
        a(2)  when "0010",
        a(3)  when "0011",
        a(4)  when "0100",
        a(5)  when "0101",
        a(6)  when "0110",
        a(7)  when "0111",
        a(8)  when "1000",
        a(9)  when "1001",
        a(10) when "1010",
        a(11) when "1011",
        a(12) when "1100",
        a(13) when "1101",
        a(14) when "1110",
        a(15) when others;
     
end Operation;
