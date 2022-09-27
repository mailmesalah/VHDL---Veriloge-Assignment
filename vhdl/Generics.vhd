library ieee;
use ieee.std_logic_1164.all;
---------------------------------------
Entity Generics is
  generic(rise:time:=10 ns;fall:time:=5 ns;load:integer:=3);
  port(
    a,b:in bit;
    c:out bit);
End Generics;
---------------------------------------
Architecture Operation of Generics is
  Signal internal:bit;
  begin
    internal <= a and b;
    c <= internal after (rise+(load*2 ns)) When internal = '1'
       Else internal after (fall+(load*2 ns));
End Operation;