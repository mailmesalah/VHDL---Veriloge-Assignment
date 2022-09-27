library ieee;
use ieee.std_logic_1164.all;
----------------------------
entity Counterwhile is
  port(
    cin,d:in integer range 0 to 2000;
       count:out integer range 0 to 2000);
end Counterwhile;
-----------------------------
architecture Operation of Counterwhile is
begin
  process (cin)
    variable count1:integer:=0;
    begin
      while count1<d loop
        count1:=count1+2;
      end loop;
      count<=count1;
    end process;
end Operation;