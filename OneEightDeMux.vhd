
--------***1-8 DE-MUX(Q no:8)***--------
-----Coded by Jenson and Salahudheen----

library ieee;
  use ieee.std_logic_1164.all;
  -------------------------------------
entity DeMux1x8 is
  port(
    a,sel1,sel2,sel3:in std_logic;
    out1,out2,out3,out4,out5,out6,out7,out8:out std_logic);
end DeMux1x8;
-------------------------------------
architecture Operation of DeMux1x8 is
begin
  process(a,sel1,sel2,sel3)
    begin
      if (sel1='0' and sel2='0' and sel3='0')then out1<=a;
        out2<='U';out3<='U';out4<='U';out5<='U';out6<='U';out7<='U';out8<='U';
      elsif (sel1='0' and sel2='0' and sel3='1')then out2<=a;
              out1<='U';out3<='U';out4<='U';out5<='U';out6<='U';out7<='U';out8<='U';
      elsif (sel1='0' and sel2='1'and sel3='0' )then out3<=a;
              out2<='U';out1<='U';out4<='U';out5<='U';out6<='U';out7<='U';out8<='U';
      elsif (sel1='0' and sel2='1'and sel3='1' )then out4<=a;
              out2<='U';out3<='U';out1<='U';out5<='U';out6<='U';out7<='U';out8<='U';
      elsif (sel1='1' and sel2='0' and sel3='0')then out5<=a;
              out2<='U';out3<='U';out4<='U';out1<='U';out6<='U';out7<='U';out8<='U';
      elsif (sel1='1' and sel2='0'and sel3='1' )then out6<=a;
              out2<='U';out3<='U';out4<='U';out5<='U';out1<='U';out7<='U';out8<='U';
      elsif (sel1='1' and sel2='1'and sel3='0' )then out7<=a;
              out2<='U';out3<='U';out4<='U';out5<='U';out6<='U';out1<='U';out8<='U';
      elsif (sel1='1' and sel2='1'and sel3='1' )then out8<=a;
              out2<='U';out3<='U';out4<='U';out5<='U';out6<='U';out7<='U';out1<='U';
      end if;
  end process;
end Operation;