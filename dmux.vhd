
------***1-2 DeMux(Q no:16)***-----
-----coded by Jenson and Salahudheen----

library ieee;
use ieee.std_logic_1164.all;
----------------------------------
entity dmux is 
  port (a : in std_logic;--input
        s :in std_logic;--select
        o1,o2 : out std_logic);--output
end dmux;
---------------------------------
architecture Operation of dmux is
begin

 o2<=  a and s;
 o1<= a and (not s);
  end Operation;

 
