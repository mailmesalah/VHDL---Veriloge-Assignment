
----***BCD to 7segment using With Select(Q no:34)***-----
-----coded by Jenson and Salahudheen----

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
--------------------------------
entity DisplaySelect is
  port(
  --  i:in std_logic;
    s:in std_logic_vector(3 downto 0);--input
    o:out std_logic_vector(6 downto 0)); --output
end DisplaySelect;
---------------------------------
Architecture Operation of DisplaySelect is
begin
  
  with s select
    o<= "1111110" when "0000",
    "0110000"  when "0001",
    "1101101"  when "0010",
    "1111001"  when "0011",
    "0110011"  when "0100",
    "1011011"  when "0101",
    "1011111"  when "0110",
    "1110000"  when "0111",
    "1111111"  when "1000",        
    "1111011"  when "1001",
    "1110111"  when "1010",
    "0011111"  when "1011",
    "1001110"  when "1100",
    "0111101"  when "1101",
    "1001111"  when "1110",
    "1000111"     when others;
     
end Operation;
