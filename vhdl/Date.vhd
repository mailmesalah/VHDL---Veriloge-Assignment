library ieee;
library Jenson_Salah;
use ieee.std_logic_1164.all;
use Jenson_Salah.Arrays.all;
use ieee.std_logic_unsigned.all;
--------------------------------
entity ShowDate is
  port(
    a:in dates;
    b:out dates);
end ShowDate;
---------------------------------
architecture Operation of ShowDate is

  begin
    b<=a;
end ;