------------------4 Variable Majority fn(Q no:41)--------------
library ieee;
use ieee.std_logic_1164.all;
----------------------------
entity Major4var is
  port(
    a,b,c,d:in std_logic;
    o:out std_logic);
end Major4var;
----------------------------
architecture Operation of Major4var is
  begin
    o<=(((a and b)) and (d or c)) or(((c and d)) and (b or a));
end Operation;