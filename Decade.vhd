
----***Decade Counter(Q no:25)***---- 
----coded by Jenson and Salahudheen----

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
---------------------------------
entity Decade is
  port(
    clk:in std_logic;
    bcdout:out std_logic_vector(3 downto 0));
end Decade;
---------------------------------
architecture Operation of Decade is
  begin
    process(clk)
      variable x:std_logic_vector(3 downto 0):="0000";
      begin
        if(clk='1')then
          if(x="1010")then
            x:="0000";
          end if;
          bcdout<=x;
          x:=x+"0001";
        end if;
    end process;
end Operation;