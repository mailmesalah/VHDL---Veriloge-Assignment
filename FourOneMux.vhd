--------***4-1 MUX(Q no:4)***--------
-----coded by Jenson and Salahudheen----

library ieee;
  use ieee.std_logic_1164.all;
-------------------------------------
entity Mux4x1 is
  port(
    a,b,c,d,sel1,sel2:in std_logic;
    cout:out std_logic);
end Mux4x1;
-------------------------------------
architecture Operation of Mux4x1 is
begin
  process(a,b,c,d,sel1,sel2)
    begin
      if (sel1='0' and sel2='0') then cout<=a;
      elsif(sel1='0' and sel2='1') then cout<=b;
      elsif(sel1='1' and sel2='0') then cout<=c;
      elsif(sel1='1' and sel2='1') then cout<=d;
      end if;
  end process;
end Operation;