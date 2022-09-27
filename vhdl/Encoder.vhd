library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_unsigned.all;
-------------------------------
entity Encoder is
  
  port(
    a,b:out std_logic;
    w,x,y,z:in std_logic);
    
end Encoder;

-------------------------------
Architecture Operation of Encoder is

  begin
    a<=y or w;
    b<=w or x;
end Operation;