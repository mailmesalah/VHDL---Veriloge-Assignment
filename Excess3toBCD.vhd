
----***Excess 3 to BCD Q no:(22)***----------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
--------------------------------
entity Excess3toBCD is
  port(
    s:in std_logic_vector(3 downto 0);
    o:out std_logic_vector(3 downto 0)); 
end Excess3toBCD;
---------------------------------
Architecture Operation of Excess3toBCD is
begin
  process(s)
    begin
     if    (s="0011") then o<="0000";
     elsif (s="0100") then o<="0001";
     elsif (s="0101") then o<="0010";
     elsif (s="0110") then o<="0011";
     elsif (s="0111") then o<="0100";
     elsif (s="1000") then o<="0101";
     elsif (s="1001") then o<="0110";
     elsif (s="1010") then o<="0111";
     elsif (s="1011") then o<="1000";  
     elsif (s="1100") then o<="1001";
     else o<="UUUU";
     end  if;
  end process;
end Operation;
