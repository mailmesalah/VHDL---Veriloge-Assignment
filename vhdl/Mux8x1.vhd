-----------------Mux 8x1-------------
library ieee;
use ieee.std_logic_1164.all;
--------------------------------
entity Mux8x1 is
  port( a,b,c,d,e,f,g,h,s0,s1,s2 : in std_logic;
        out1 : out std_logic);
end Mux8x1;
--------------
architecture Operation of Mux8x1 is
begin
  out1<=  (( not s0) and ( not s1) and (not s2) and a)   or
   (( not s0) and (not s1) and s2 and b) or 
   (( not s0) and ( s1) and (not s2) and c) or 
   (( not s0) and (  s1) and ( s2) and d) or
   ((  s0) and ( not s1) and (not s2) and e) or
   ((  s0) and ( not s1) and ( s2) and f) or 
   ((  s0) and ( s1) and (not s2) and g) or
   ((  s0) and (  s1) and ( s2) and h) ;
end Operation;
