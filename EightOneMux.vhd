
--------***8-1 MUX(Q no:5)***--------
-----coded by Jenson and Salahudheen----

library ieee;
  use ieee.std_logic_1164.all;
-------------------------------------
entity Mux8x1 is
  port(
    a,b,c,d,e,f,g,h,sel1,sel2,sel3:in std_logic;
    cout:out std_logic);
end Mux8x1;
-------------------------------------
architecture Operation of Mux8x1 is
begin
  process(a,b,c,d,e,f,g,h,sel1,sel2,sel3)
    begin
      if (sel1='0' and sel2='0' and sel3='0') then cout<=a;
      elsif(sel1='0' and sel2='0' and sel3='1') then cout<=b;
      elsif(sel1='0' and sel2='1' and sel3='0') then cout<=c;
      elsif(sel1='0' and sel2='1' and sel3='1') then cout<=d;
      elsif(sel1='1' and sel2='0' and sel3='0') then cout<=e;
      elsif(sel1='1' and sel2='0' and sel3='1') then cout<=f;
      elsif(sel1='1' and sel2='1' and sel3='0') then cout<=g;
      elsif(sel1='1' and sel2='1' and sel3='1') then cout<=h;
      end if;
  end process;
end Operation;