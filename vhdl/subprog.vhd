
---------***Package SubProg***------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
---------------------------------------------
package Sum is
  type intarray is array (0 to 8) of integer range 0 to 1000;
    function larg(s1:intarray) return integer;
    function small(s2:intarray) return integer;
end Sum;
----------------------------------------------
package body Sum is
  
  function larg(s1:intarray) return integer is
  variable val1:integer:=0;
 
  begin
    for i in s1'range loop--finding largest
      if(s1(i)>val1) then
        val1:=s1(i);
      end if;
    end loop;
    return val1;
  end larg;

 function small(s2:intarray) return integer is
 variable val2:integer:=s2(0);
  begin
  for  j in s2'range loop--finding smallest
    if(s2(j)<val2) then
      val2:=s2(j);
    end if; 
  end loop;
  return val2;
  end small;
end Sum;
  