
-------***Sorting in Ascending and Decending Q no:(64)***-------
-----***Coded by Jenson&Salahudheen***---
library ieee;
library Assignment2;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;
  use ieee.std_logic_arith.all;
  use Assignment2.Extras.all;
--------------------------------
entity SortingMod is
  port(
    a:in integera;
    mode:in std_logic;
    o:out integera);
end SortingMod;
---------------------------------
architecture Operation of  SortingMod is
 begin
   process(a,mode)
    variable temp:integer;
    variable z:integera;
      begin
        z:=a;
       if (mode='0') then 
        for i in 0 to 8 loop
          for j in i+1 to 9 loop
            if ((z(i)>z(j))) then
              temp:=z(i);
              z(i):=z(j);
              z(j):=temp;
            end if;
          end loop;
        end loop; 
      elsif(mode='1') then 
        for i in 0 to 8 loop
          for j in i+1 to 9 loop
            if ((z(i)<z(j))) then
              temp:=z(i);
              z(i):=z(j);
              z(j):=temp;
            end if;
          end loop;
        end loop; 
      end if;
      o<=z;
  end process;
end Operation;