

---*** Searching Number in an Array Q no:(69)***--- 
----coded by Jenson and Salahudheen----

library ieee;
library Assignment2;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;
  use ieee.std_logic_arith.all;
  use Assignment2.extras.all;
----------------------------
entity SearchingNo is
  port(
    a:in intarray(4 downto 0);
    search:in integer;
    found:out std_logic;
    count:out integer);
end SearchingNo;
---------------------------
architecture Operation of SearchingNo is

  begin
    process(a,search)
      variable vCount:integer;
      variable vFound:std_logic;
      begin
        
        vCount:=0;
        vFound:='0';
        for i in a'range loop
          if(a(i)=search) then
            vFound:='1';
            vCount:=vCount+1;
          end if;
        end loop;
        count<=vCount;
        found<=vFound;
  end process;
end Operation;