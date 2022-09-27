
-----*** BCD to 7Segment using When Else(Q no:35)***-----
-----coded by Jenson and Salahudheen----

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
--------------------------------
entity DisplayWhenElse is
  port(
  --  i:in std_logic;
    s:in std_logic_vector(3 downto 0);--input
    o:out std_logic_vector(6 downto 0));--output 
end DisplayWhenElse;
---------------------------------
Architecture Operation of DisplayWhenElse is
begin
  
 
    o<= "1111110" when s="0000" else
    "0110000"  when  s="0001" else
    "1101101"  when  s="0010" else
    "1111001"  when  s="0011" else
    "0110011"  when  s="0100" else
    "1011011"  when  s="0101" else
    "1011111"  when  s="0110" else
    "1110000"  when  s="0111" else
    "1111111"  when  s="1000" else        
    "1111011"  when  s="1001" else
    "1110111"  when  s="1010" else
    "0011111"  when  s="1011" else
    "1001110"  when  s="1100" else
    "0111101"  when  s="1101" else
    "1001111"  when  s="1110" else
    "1000111";
     
end Operation;
