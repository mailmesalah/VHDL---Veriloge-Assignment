--------***16-1 MUX(Q no:5)***--------
-----coded by Jenson and Salahudheen----

library ieee;
  use ieee.std_logic_1164.all;
-------------------------------------
entity Mux16x1 is
  port(
    a,b,c,d,e,f,g,h,i,j,k,l,m,n,
    o,p,sel1,sel2,sel3,sel4:in std_logic;
    cout:out std_logic);
end Mux16x1;
-------------------------------------
architecture Operation of Mux16x1 is
begin
  process(a,b,c,d,e,f,g,h,sel1,sel2,sel3,sel4)
    begin
     
      if(sel1='0' and sel2='0' and sel3='0' and sel4='0') then cout<=a;
      elsif(sel1='0' and sel2='0' and sel3='0' and sel4='1') then cout<=b;
      elsif(sel1='0' and sel2='0' and sel3='1' and sel4='0') then cout<=c;
      elsif(sel1='0' and sel2='0' and sel3='1' and sel4='1') then cout<=d;
      elsif(sel1='0' and sel2='1' and sel3='0' and sel4='0') then cout<=e;
      elsif(sel1='0' and sel2='1' and sel3='0' and sel4='1') then cout<=f;
      elsif(sel1='0' and sel2='1' and sel3='1' and sel4='0') then cout<=g;
      elsif(sel1='0' and sel2='1' and sel3='1' and sel4='1') then cout<=h;
      elsif(sel1='1' and sel2='0' and sel3='0' and sel4='0') then cout<=i;
      elsif(sel1='1' and sel2='0' and sel3='0' and sel4='1') then cout<=j;
      elsif(sel1='1' and sel2='0' and sel3='1' and sel4='0') then cout<=k;
      elsif(sel1='1' and sel2='0' and sel3='1' and sel4='1') then cout<=l;
      elsif(sel1='1' and sel2='1' and sel3='0' and sel4='0') then cout<=m;
      elsif(sel1='1' and sel2='1' and sel3='0' and sel4='1') then cout<=n;
      elsif(sel1='1' and sel2='1' and sel3='1' and sel4='0') then cout<=o;
      elsif(sel1='1' and sel2='1' and sel3='1' and sel4='1') then cout<=p;
      end if;
  end process;
end Operation;