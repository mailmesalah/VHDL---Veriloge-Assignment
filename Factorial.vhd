
-----***Factorial using function Q no:(46)***----
-----***Coded by Jenson&Salahudheen***---
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
---------------------------------
entity Factorial is
  port(
    num:in integer;
    o:out integer);
end Factorial;
--------------------------------
architecture Operation of Factorial is

function Fact(n:integer) return integer is

  variable x:integer;
  begin
    x:=1;
    for i in 1 to n loop
      x:=x*i;
    end loop;
    return x;
  end Fact;
  begin
    process(num)
      begin
        o<=Fact(num);
    end process;
end Operation;