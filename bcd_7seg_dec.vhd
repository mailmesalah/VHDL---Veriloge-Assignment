
-----***BCD to 7 segment Decoder(Q no:25)***-----
-----coded by Jenson and Salahudheen----

library ieee;
use ieee.std_logic_1164.all;
--------------------------------
entity bcd_7seg_dec is
        port ( w,x,y,z : in std_logic;--inputs
               a,b,c,d,e,f,g: out std_logic);--outputs
end  bcd_7seg_dec;
----------------------------------
architecture Operation of  bcd_7seg_dec is
begin
   a <= ((not x) and z) or ( x and z ) or ( y and z ) or (w);
   b <= (not x) or ((not y) and (not z)) or (y and z);
   c <= (x) or (not y) or (z);
   d <= ((not x) and (not z)) or (y and (not z)) or ((not x) and y) or (x and (not y) and z);
   e <= ((not x) and (not z)) or (y and (not z));
   f <= (w) or ((not y) and (not z)) or (x and (not y)) or (x and (not z));
   g <= (w) or (x and (not y)) or ((not x) and y) or (y and (not z));
end Operation;
