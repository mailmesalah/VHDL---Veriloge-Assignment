
-------***Binary to Grey code Convertor***-------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
--------------------------------
entity Binary2Grey is
  port(
    a:in bit_vector(3 downto 0);
    o:out bit_vector(3 downto 0));
end Binary2Grey;
---------------------------------
architecture Operation of  Binary2Grey is
  begin
    process(a)
      begin
      if   (a="0000") then o<="0000";     
      elsif(a="0001") then o<="0001";
      elsif(a="0010") then o<="0011";
      elsif(a="0011") then o<="0010";
      elsif(a="0100") then o<="0110";
      elsif(a="0101") then o<="0111";
      elsif(a="0110") then o<="0101";
      elsif(a="0111") then o<="0100";
      elsif(a="1000") then o<=a sra 1;
      elsif(a="1001") then o<="1101";  
      elsif(a="1010") then o<="1111";
      elsif(a="1011") then o<="1110";
      elsif(a="1100") then o<="1010";
      elsif(a="1101") then o<="1011";
      elsif(a="1110") then o<="1001"; 
      elsif(a="1111") then o<=a sll 3;
      end if;
      end process;
end Operation;