
------***MasterSlave JK FF(Q no:19)***-----
-----coded by Jenson and Salahudheen----

library ieee;
use ieee.std_logic_1164.all;
--------------------------------
entity msjkff is
  port (j,k,out_pre : inout std_logic;
          out_next : inout std_logic);
end msjkff;
--------------------------------
architecture Operation of msjkff is
begin 
    out_next <= out_pre when j ='0' and k='0' else
                       '1' when j ='1' and k='0' else
                       '0'when j ='0' and k='1' else 
                       not out_pre when j='1' and k='1';
    out_pre<=out_next;
end Operation;
