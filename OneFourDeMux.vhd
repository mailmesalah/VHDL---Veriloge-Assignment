
--------***1-4 DE-MUX(Q no:8)***--------
-----coded by Jenson and Salahudheen----

library ieee;
  use ieee.std_logic_1164.all;
  -------------------------------------
entity DeMux1x4 is
  port(
    a,sel1,sel2:in std_logic;
    out1,out2,out3,out4:out std_logic);
end DeMux1x4;
-------------------------------------
architecture Operation of DeMux1x4 is
begin
  process(a,sel1,sel2)
    begin
      if (sel1='0' and sel2='0' ) then out1<=a;
        out2<='U';out3<='U';out4<='U';
      elsif (sel1='0' and sel2='1' )then out2<=a;
        out1<='U';out3<='U';out4<='U';
      elsif (sel1='1' and sel2='0' )then out3<=a;
        out2<='U';out1<='U';out4<='U';
      elsif (sel1='1' and sel2='1' )then out4<=a;
        out2<='U';out3<='U';out1<='U';
      end if;
  end process;
end Operation;