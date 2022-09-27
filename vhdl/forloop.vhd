------------*****For Loop*****------------- 
-------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
-----------------------------
entity forloop is
  port(
    n:in integer;
    o:out integer);
end forloop;
-----------------------------
architecture Operation of forloop is
begin
  process(n)
    variable o1:integer:=1;
    begin
      if(n=0) then o1:=1;
      else
        for k in 1 to n loop
          o1:=o1*k;
        end loop;
      end if;
      o<=o1;
      o1:=1;
  end process;
end Operation;