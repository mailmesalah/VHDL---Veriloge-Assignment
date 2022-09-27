
-----***Full Adder***--------
library ieee;
use ieee.std_logic_1164.all;
----------------------------
entity FullAdder is
  port(
    a,b,cin:in std_logic;
    sum,carry:out std_logic);
end FullAdder;
-----------------------------
architecture Operation of FullAdder is
  begin
    process(a,b,cin)
      begin
        if((a='0' and b='0' and cin='1') or(a='0' and b='1' and cin='0') or
        (a='1' and b='0' and cin='0')or(a='1' and b='1' and cin='1')) then sum<='1';else sum<='0';  end if;
        if((b='1' and cin='1')or (b='1' and a='1')or(a='1' and cin='1')) then carry<='1';
        else carry<='0';
             end if;
    end process;
end Operation;