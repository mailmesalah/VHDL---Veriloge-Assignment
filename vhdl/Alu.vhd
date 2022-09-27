library ieee;
library Jenson_Salah;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use Jenson_Salah.Arrays.all;
---------------------------------
entity Alu is
  port(
    a,b:in std_logic;
    s:in sel;
    cb,sd:out std_logic);
end Alu;
---------------------------------
architecture Operation of Alu is

  begin
    
    with s select
      cb<=((not a) and b) when sub,
      (a and b) when add ;
    sd<=a xor b;
    
end Operation;