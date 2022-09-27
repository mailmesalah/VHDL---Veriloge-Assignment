
library ieee;
use ieee.std_logic_1164.all;
-----------------------------
entity forloop4nat is
  port(
    n:in integer;
    o:out integer);
end forloop4nat;
-----------------------------
architecture Operation of forloop4nat is
begin
  process(n)
    variable o1:integer:=0;
    begin
      for k in 0 to n loop
        o1:=o1+k;
      end loop;
      o<=o1;
      o1:=0;
  end process;
end Operation;