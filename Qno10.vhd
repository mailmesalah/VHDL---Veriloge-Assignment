library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
--------------------------------------
entity BCDtoSeven is
 port(ina,inb,inc,ind: in std_logic;
       a,b,c,d,e,f,g: out std_logic);
end BCDtoSeven;
--------------------------------------
 architecture Operation of BCDtoSeven is
signal a1,a2,a3,b1,b2,d1,d2,d3,d4,e1,e2,f1,f2,f3,g1,g2,g3:std_logic;
signal bb,ab,cb,db:std_logic;
component Nand2 is
  port(
    a,b:in std_logic;
    o:out std_logic);
  end component;  
component Nand3 is
  port(
    a,b,c:in std_logic;
    o:out std_logic);
end component;
component Nand4 is
  port(
    a,b,c,d:in std_logic;
    o:out std_logic);
end component;
component notgate  is
  port(
    a:in std_logic;
    o:out std_logic);
end component;
 begin
   x1:notgate port map(ina,ab);
   x2:notgate port map(inb,bb);
   x3:notgate port map(inc,cb);
   x4:notgate port map(ind,db);
   y1:Nand2 port map(bb,db,a1);
   y2:Nand2 port map(inb,ind,a2);
   y3:Nand2 port map(inc,ind,a3);
   y4:Nand4 port map(a1,a2,a3,ab,a);
   z1:Nand2 port map(db,cb,b1);
   z2:Nand2 port map(ind,inc,b2);
   k1:Nand3 port map(b1,b2,inb,b);
   c1:Nand2 port map(bb,db,d1);
   c2:Nand2 port map(inc,db,d2);
   c3:Nand2 port map(bb,inc,d3);
   c4:Nand3 port map(inb,cb,ind,d4);
   c5:Nand4 port map(d1,d2,d3,d4,d);
   s1:Nand3 port map(bb,inc,ind,c);
   v1:Nand2 port map(cb,db,f1);
   v2:Nand2 port map(inb,cb,f2);
   v3:Nand2 port map(inb,db,f3);
   v4:Nand4 port map(ab,f1,f2,f3,f);
   n1:Nand2 port map(bb,db,e1);
   n2:Nand2 port map(inc,db,e2);
   n3:Nand2 port map(e1,e2,e);
   m1:Nand2 port map(inb,cb,g1);
   m2:Nand2 port map(bb,inc,g2);
   m3:Nand2 port map(inc,db,g3);
   m4:Nand4 port map(g1,g2,g3,ab,g);
   
  end Operation;
       