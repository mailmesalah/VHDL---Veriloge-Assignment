
----***BCD to 7-Segment Q no:(18)***----------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
--------------------------------
entity BCDtoExcess3 is
  port(
    s:in std_logic_vector(3 downto 0);
    o:out std_logic_vector(3 downto 0)); 
end BCDtoExcess3;
---------------------------------
Architecture Operation of BCDtoExcess3 is
begin
  process(s)
    begin
     if    (s="0000") then o<="0011";
     elsif (s="0001") then o<="0100";
     elsif (s="0010") then o<="0101";
     elsif (s="0011") then o<="0110";
     elsif (s="0100") then o<="0111";
     elsif (s="0101") then o<="1000";
     elsif (s="0110") then o<="1001";
     elsif (s="0111") then o<="1010";
     elsif (s="1000") then o<="1011";  
     elsif (s="1001") then o<="1100";
     else o<="UUUU";
     end  if;
  end process;
end Operation;
