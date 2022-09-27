
-----***Half Adder(Q no:1)***-------
-----coded by Jenson and Salah***-----
library ieee;
use ieee.std_logic_1164.all;
----------------------------
entity HalfAdder is
  port(
    a,b:in std_logic;
    sum,carry:out std_logic);
end HalfAdder;
-----------------------------
architecture Operation of HalfAdder is
  begin
    process(a,b)
      begin
        if(a=b) then sum<='0'; else sum<='1';
        end if;
        if ((a and b) ='1') then carry<='1'; else carry<='0';
        end if;
    end process;
end Operation;