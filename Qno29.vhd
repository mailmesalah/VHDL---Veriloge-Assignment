--------***Carry Look Ahead Generator Using Structural(Q no 29)***-------
---------***Coded by Jenson&Salahudheen***--------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
-------------------------------
entity CarryLookGen is
  port(cin:in std_logic;
    a,b:in std_logic_vector(0 to 3);
    carry:out std_logic_vector(0 to 3);
    c1:out std_logic);
end CarryLookGen;
-------------------------------
architecture Operation of CarryLookGen is
component CarryLookAhead is
  port(
    cin:in std_logic;
    a,b:in std_logic_vector(0 to 3);
    carry:out std_logic_vector(0 to 3);
    c1:out std_logic);
end component;
begin
  p1: CarryLookAhead port map(cin,a,b,carry,c1);

end operation;
