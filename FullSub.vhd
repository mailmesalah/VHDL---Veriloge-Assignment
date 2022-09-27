-----***Full Subtractor***--------
library ieee;
use ieee.std_logic_1164.all;
----------------------------
entity FullSub is
  port(
    a,b,cin:in std_logic;
    difference,borrow:out std_logic);
end FullSub;
-----------------------------
architecture Operation of FullSub is
  begin
    process(a,b,cin)
      begin
        if((a='0' and b='0' and cin='1') or(a='0' and b='1' and cin='0') or
        (a='1' and b='0' and cin='0')or(a='1' and b='1' and cin='1')) then difference<='1';
        else difference<='0';  
        end if;
        if((a='0' and b='0' and cin='1')or (a='0' and b='1' and cin='0')or
        (a='0' and b='1' and cin='1')or (a='1' and b='1' and cin='1') )then borrow<='1';
        else borrow<='0';
        end if;
    end process;
end Operation;