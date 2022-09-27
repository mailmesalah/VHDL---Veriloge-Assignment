library ieee;
use ieee.std_logic_1164.all;
----------------------------
entity struct is
  port(ain,bin,cin:in bit;
  sum,carry:out bit);
end struct;
----------------------------
architecture Operation of struct is
signal x,y,z:bit;
component HalfAdder is
    port(a,b:in bit;
        sum,carry:out bit);
end component ;
component Or2  is
   port(
    a,b:in bit;
    o:out bit);
end component;
begin
  a1: halfadder port map(ain,bin,x,y);
  a2: halfadder port map(x,cin,sum,z);
  a3: or2 port map(y,z,carry);
end Operation;