
-----***Factorial using function Q no:(46)***----
-----***Coded by Jenson&Salahudheen***---
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
---------------------------------
entity BarrelShift is
  port(
    input:in bit_vector(7 downto 0);
    sel:in std_logic_vector(2 downto 0);
    output:out bit_vector(0 to 7));
end BarrelShift;
--------------------------------
architecture Operation of BarrelShift is
  begin
   process(input,sel)
      variable x:bit_vector(7 downto 0);
      begin
        x:=input;
        if(sel(0)='1')then
          x:= x sll 1;
        end if;
         if(sel(1)='1')then
          x:= x sll 2;
        end if;
         if(sel(2)='1')then
          x:= x sll 4;
        end if;
        output<=x;
    end process;
end Operation;