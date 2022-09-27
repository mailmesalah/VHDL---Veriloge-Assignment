
----***Base 6 Counter(Q no:28)***---- 
----coded by Jenson and Salahudheen----
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
----------------------------
entity Base6Counter is
  port(
    clk:in std_logic;
    bout:out std_logic_vector(2 downto 0));
end Base6Counter;
---------------------------
architecture Operation of Base6Counter is
  signal bin:std_logic_vector(2 downto 0):="101";
  begin
    process(clk,bin)
      variable x:std_logic_vector(2 downto 0);
      begin 
        bout<=bin;
        x:=bin;
        if (clk'event and clk='1') then
          if x="101" then
             x:="000";
          else
             x:=x+"001";
          end if; 
        end if;
        bin<=x;
    end process;
end Operation;

