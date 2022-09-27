
-------***Sorting***-------
-----***Coded by Jenson&Salahudheen***---
library ieee;
library Jenson_Salah;
  use Jenson_Salah.Extras.all;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;
  use ieee.std_logic_arith.all;
--------------------------------
entity Sorting is
  port(
    a:in integera ;
    mode:in std_logic;
    o:out integera);
end Sorting;
---------------------------------
architecture Operation of  Sorting is
  procedure sort(signal x:in integera;signal m:in std_logic;signal y:out integera) is
    variable temp:integer;
    variable z:integera;
    begin
      z:=x;
      for i in 0 to 8 loop
        for j in i+1 to 9 loop
          
          if ((z(i)>z(j))and m='0') then
            temp:=z(i);
            z(i):=z(j);
            z(j):=temp;
          elsif ((z(i)<z(j))and m='1') then 
            temp:=z(i);
            z(i):=z(j);
            z(j):=temp;
          end if;
          
        end loop;
      end loop; 
      y<=z;
  end sort;
  
  begin
    process(a,mode)
      begin
        sort(a,mode,o);
      end process;
end Operation;