
-----***Half Subtractor(Q no:10)***-------
-----coded by Jenson and Salah***-----
library ieee;
use ieee.std_logic_1164.all;
----------------------------
entity Halfsub is
  port(
    a,b:in std_logic;
    diff,borrow:out std_logic);
end Halfsub;
-----------------------------
architecture Operation of Halfsub is
  begin
    process(a,b)
      begin
        if(a=b) then diff<='0'; else diff<='1';
        end if;
        if (a='0' and b='1') then borrow<='1'; else borrow<='0';
        end if;
    end process;
end Operation;