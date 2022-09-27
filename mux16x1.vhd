
-----***16-1 Mux(Q no:15)***-----
-----coded by Jenson and Salahudheen----


library ieee;
use ieee.std_logic_1164.all;
--------------------------------
entity mux16_1 is
  port( a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,s0,s1,s2,s3 : in std_logic;--inputs&select
        out1 : out std_logic);--output
end mux16_1;
--------------------------------
architecture Operation of mux16_1 is
begin
  out1<=  (( not s0) and ( not s1) and (not s2) and (not s3) and a)  or
   (( not s0) and (not s1) and (not s2) and (s3) and b) or 
   (( not s0) and (not s1) and (s2) and(not s3) and c) or 
   (( not s0) and (not s1) and (s2) and (s3) and d) or
   (( not s0) and (s1) and (not s2) and (not s3) and e) or
   (( not s0) and (s1) and (not s2) and (s3) and f) or 
   (( not s0) and (s1) and (s2) and(not s3) and g) or
   (( not s0) and (s1) and (s2) and (s3) and h) or
   ((s0) and (not s1) and (not s2) and (not s3) and i) or
   ((s0) and (not s1) and (not s2) and (s3) and j) or
   ((s0) and (not s1) and (s2) and (not s3) and k) or
   ((s0) and (not s1) and (s2) and (s3) and l) or
   ((s0) and (s1) and (not s2) and (not s3) and m) or
   ((s0) and (s1) and (not s2) and (s3) and n) or
   ((s0) and (s1) and (s2) and (not s3) and o) or
   ((s0) and (s1) and (s2) and (s3) and p);
     
 end Operation;




