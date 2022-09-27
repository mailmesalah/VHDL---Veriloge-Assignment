--------------- 4 Bit UpCounter-------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
----------------------------------------
entity up4bit is
  port(
    clk:in std_logic;
    output: out std_logic_vector(3 downto 0));
end up4bit;
----------------------------------------
architecture Operation of up4bit is
  begin
    process(clk)
      variable count:std_logic_vector(3 downto 0):="0000";
        begin
          if ( clk'event and clk ='1') then
           output<=count;
            count:=count+ "0001";
            end if;
          if (count > "1111") then 
            count:="0000";
        end if;
 end process;
end Operation;