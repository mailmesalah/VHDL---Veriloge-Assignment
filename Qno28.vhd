--------***8 Bit Barrel-Shifter (Q no28)***-------
-------***Coded by Jenson&Salahudheen***--------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
-----------------------------
entity BarrelShift is
port(a:in bit_vector(7 downto 0);
     s:in bit_vector(2 downto 0);
     o:out bit_vector(7 downto 0));
end BarrelShift;
-----------------------------
architecture Operation of BarrelShift is
signal b,c,d,e,f,g,h:bit_vector(7 downto 0);
component Mux8x1EightBit is
  port( a,b,c,d,e,f,g,h:in bit_vector(7 downto 0);
       s : in bit_vector(2 downto 0);
        out1 : out bit_vector(7 downto 0));
end component;
component Rotate is
port(
      a:in bit_vector(7 downto 0);
      o:out bit_vector(7 downto 0));
end component;
begin
  
  f1:Rotate port map(a,b);
  f2:Rotate port map(b,c);
  f3:Rotate port map(c,d);
  f4:Rotate port map(d,e);
  f5:Rotate port map(e,f);
  f6:Rotate port map(f,g);
  f7:Rotate port map(g,h);
  
  x1: Mux8x1EightBit port map(a,b,c,d,e,f,g,h,s,o);

end Operation;
