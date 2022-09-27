
-------***Logic Block Q no:(63)***------
-----***Coded by Jenson&Salahudheen***---
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
---------------------------------
entity LogicBlock is
  port(
    n:in integer;
    SumEven,SumOdd:out integer);
end LogicBlock;
--------------------------------
architecture Operation of LogicBlock is
 begin
   process(n)
    variable x:integer;
    variable y:integer;
      begin
        x:=0;
        y:=0;
        for i in 0 to n loop
          if(i mod 2=0) then 
            x:=x+i;
          else
            y:=y+i;
          end if;
        end loop;
        SumOdd<=y;
        SumEven<=x;
   end process;
end Operation;