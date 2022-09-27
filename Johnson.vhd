
----***Johnson Counter(Q no:26)***---- 
----coded by Jenson and Salahudheen----

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
---------------------------------
entity Johnson is
  port(
    clk:in std_logic;
    jout:out bit_vector(3 downto 0));
end Johnson;
---------------------------------
architecture Operation of Johnson is
  begin
    process(clk)
      variable x:bit_vector(3 downto 0):="0000";
      begin
        jout<=x;
        if(clk='1')then
          if(x="0000")then
            x:="1000";
          elsif((x(3)='1')and x/="1111") then
            x:=x sra 1;
          else
            x:=x srl 1;
          end if;
        end if;
    end process;
end Operation;                                 