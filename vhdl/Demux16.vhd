----***Mux1641***----------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
--------------------------------
entity Demux16 is
  port(
    i:in std_logic;
    s:in std_logic_vector(3 downto 0);
    o:out std_logic_vector(15 downto 0)); 
end Demux16;
---------------------------------
Architecture Operation of Demux16 is
begin
  
  with s select
    o<= "000000000000000"&i when "0000",
    "00000000000000"&i&"0"  when "0001",
    "0000000000000"&i&"00"  when "0010",
    "000000000000"&i&"000"  when "0011",
    "00000000000"&i&"0000"  when "0100",
    "0000000000"&i&"00000"  when "0101",
    "000000000"&i&"000000"  when "0110",
    "00000000"&i&"0000000"  when "0111",
    "0000000"&i&"00000000"  when "1000",        
    "000000"&i&"000000000"  when "1001",
    "00000"&i&"0000000000"  when "1010",
    "0000"&i&"00000000000"  when "1011",
    "000"&i&"000000000000"  when "1100",
    "00"&i&"0000000000000"  when "1101",
    "0"&i&"00000000000000"  when "1110",
    i&"000000000000000"     when others;
     
end Operation;
