
----***Four Bit Comparator Q no:(23)***----------
-------***Coded by Jenson&Salahudheen***--------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
--------------------------------
entity Comparator4 is
  port(
    a,b:in std_logic_vector(3 downto 0);
    aeb,agb,alb:out std_logic); 
end Comparator4;
---------------------------------
Architecture Operation of Comparator4 is
begin
  process(a,b)
    begin
     if    (a=b) then 
       alb<='0';
       agb<='0';
       aeb<='1';
     elsif (a>b) then
       alb<='0';
       agb<='1';
       aeb<='0'; 
     elsif (a<b) then
       alb<='1';
       agb<='0';
       aeb<='0'; 
     end  if;
  end process;
end Operation;
