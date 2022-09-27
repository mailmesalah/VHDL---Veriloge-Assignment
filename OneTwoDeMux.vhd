--------***1-2 DE-MUX(Q no:7)***--------
-----coded by Jenson and Salahudheen----

library ieee;
  use ieee.std_logic_1164.all;
  -------------------------------------
entity DeMux1x2 is
  port(
    a,sel:in std_logic;
    out1,out2:out std_logic);
end DeMux1x2;
-------------------------------------
architecture Operation of DeMux1x2 is
begin
  process(a,sel)
    begin
      if (sel='0') then out1<=a;out2<='U';
      else out2<=a;out1<='U';
      end if;
  end process;
end Operation;