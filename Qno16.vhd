
----***Four Bit Comparator Q no:(16)***----------
-------***Coded by Jenson&Salahudheen***--------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
--------------------------------
entity Comp4BitSt is
  port(
    a,b:in std_logic_vector(3 downto 0);
    aeqb,agrb,alsb:out std_logic); 
end Comp4BitSt;
---------------------------------
Architecture Operation of Comp4BitSt is
component comp_4 is
  port( a,b : in std_logic_vector ( 3 downto 0);
    aeb,agb,alb : out std_logic);
end component;
begin
  x1:comp_4 port map(a,b,aeqb,agrb,alsb);
end Operation;
