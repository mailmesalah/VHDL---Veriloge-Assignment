--------------- 4 Bit DownCounter-------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
----------------------------------------
entity Down4bit is
  port(
    clk:in std_logic;
    output: out std_logic_vector(3 downto 0));
end Down4bit;
----------------------------------------
architecture Operation of Down4bit is
  begin
    process(clk)
      variable count:std_logic_vector(3 downto 0):="1111";
        begin
          if ( clk'event and clk ='1') then
           output<=count;
            count:=count - "0001";
            end if;
          if (count < "0000") then 
            count:="1111";
        end if;
 end process;
end Operation;