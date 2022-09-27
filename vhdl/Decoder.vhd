library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_unsigned.all;
-------------------------------
entity Decoder is
  
  port(
    a,b:in std_logic;
    w,x,y,z:out std_logic);
    
end Decoder;

-------------------------------
Architecture Operation of Decoder is

  begin
    z<= (not a) and (not b);
    y<= (not a) and b;
    x<= a and (not b);
    w<= a and b;
end Operation;