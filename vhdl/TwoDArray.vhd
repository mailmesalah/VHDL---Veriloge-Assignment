library ieee;
library Jenson_Salah;

use Jenson_Salah.Arrays.all;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
---------------------------------
entity TwoDArray is
  port(
    a:in integer;
    b:in integer;
    c:in integerarray;
    o:out integer);
    
end TwoDArray;

architecture Operation of TwoDArray is

  begin
    o<=c(a,b);
    
    end Operation;