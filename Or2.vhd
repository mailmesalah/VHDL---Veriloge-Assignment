
-----***2 input OR Gate***-----
-----coded by Jenson and Salahudheen-----


library ieee;
use ieee.std_logic_1164.all;
----------------------------
entity Or2  is
  port
    (a,b:in std_logic;--inputs
    o:out std_logic);--output
end Or2;
----------------------------
architecture Operation of Or2 is
begin
  o<= a or b;
end operation;
    
