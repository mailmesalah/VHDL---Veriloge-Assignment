--ASSIGNMENT NO : 3


----Question No: 1
----=============
--------***Half Adder Using Structural***-------
-------***Coded by Jenson&Salahudheen***--------
library ieee;
use ieee.std_logic_1164.all;
----------------------------------------
-----***Entity Declaration***-----
----------------------------------------
entity HalfAddSt  is
  port(
    ain,bin:in std_logic;--inputs
    sum,carry:out std_logic); --outputs
end HalfAddSt;
----------------------------------------
-----***Architecture Declaration***-----
----------------------------------------
architecture Operation of HalfAddSt is
  component And2 is
    port(a,b:in std_logic;
         c:out std_logic);
  end component;
  component Xor2 is
    port(a,b:in std_logic;
         o:out std_logic);
  end component;
begin
  x1: xor2 port map(ain,bin,sum);
  x2: and2 port map(ain,bin,carry);
end operation;
----=============--=============--====================
--Question No: 2
--=============

--------***Full Adder Using Structural***-------
-------***Coded by Jenson&Salahudheen***--------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
----------------------------------------
-----***Entity Declaration***-----
----------------------------------------
entity FullAddSt  is
  port(
    ain,bin,cin:in std_logic; --inputs
    sum,carry:out std_logic); --outputs
end FullAddSt;
----------------------------------------
-----***Architecture Declaration***-----
----------------------------------------
architecture Operation of FullAddSt is
 signal  x,y,z:std_logic;
  component HalfAddSt is
     port(ain,bin:in std_logic;
          sum,carry:out std_logic);
  end component;
  component Or2 is
     port(a,b:in std_logic;
      o:out std_logic);
  end component;
begin
  x1: HalfAddSt port map(ain,bin,x,y);
  x2: HalfAddSt port map(x,cin,sum,z);
  x3: Or2 port map(y,z,carry);
end operation;
------=============--=============--====================
--Question No: 3
--=============
--------***Half Subtractor Using Structural***-------
-------***Coded by Jenson&Salahudheen***--------
library ieee;
use ieee.std_logic_1164.all;
----------------------------------------
-----***Entity Declaration***-----
----------------------------------------
entity HalfSubSt  is
  port(
    ain,bin:in std_logic; --inputs
    diff,borrow:out std_logic); --outputs
end HalfSubSt;
----------------------------------------
-----***Architecture Declaration***-----
----------------------------------------
architecture Operation of HalfSubSt is
  signal x:std_logic;
  component And2 is
    port(a,b:in std_logic;
         c:out std_logic);
  end component;
  component Xor2 is
    port(a,b:in std_logic;
         o:out std_logic);
  end component;
  component notgate is
     port(
    a:in std_logic;
    o:out std_logic);
end component;
begin
  x1: Xor2 port map(ain,bin,diff);
  x2: notgate port map(ain,x);
  x3: And2 port map(x,bin,borrow);
end operation;
----=============--=============--====================
--Question No: 4
--=============
--------***Full Subtractor Using Structural***-------
-------***Coded by Jenson&Salahudheen***--------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
----------------------------------------
-----***Entity Declaration***-----
----------------------------------------
entity FullSubSt  is
  port(
    ain,bin,cin:in std_logic; --inputs
    diff,borrow:out std_logic); --outputs
end FullSubSt;
----------------------------------------
-----***Architecture Declaration***-----
----------------------------------------
architecture Operation of FullSubSt is
 signal  x,y,z,w:std_logic;

 component  HalfSubSt  is
  port(
    ain,bin:in std_logic;
    diff,borrow:out std_logic);
end component;
 component Or3  is
  port(
    a,b,c:in std_logic;
    o:out std_logic);
end component;
component   And2 is
    port(a,b:in std_logic;
         c:out std_logic);
  end component;
begin
  x1: HalfSubSt port map(ain,bin,x,y);
  x2: HalfSubSt port map(x,cin,diff,z);
  x3: And2 port map(bin,cin,w);
  x4: Or3 port map(w,y,z,borrow);
end operation;
----=============--=============--====================
--Question No: 5
--=============
--------***JK MS Flip Flop Using Structural***-------
-------***Coded by Jenson&Salahudheen***--------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
----------------------------------------
-----***Entity Declaration***-----
----------------------------------------
entity JKMSflip  is
  port(
     j,k,pre,clr,clk:in std_logic; --inputs
            q,qbar:inout std_logic); --in/outputs
end JKMSflip;
----------------------------------------
-----***Architecture Declaration***-----
----------------------------------------
architecture Operation of JKMSflip is
 signal a,b,c,e,f,g,i:std_logic;
component Nand3 is
   port(
     a,b,c:in std_logic;
     o:out std_logic);
end component; 
component Nand2 is
   port(
    a,b:in std_logic;
    o:out std_logic);
end component;  
component notgate is
   port(
    a:in std_logic;
    o:out std_logic);
end component;

begin
  x1: nand3 port map (pre,a,f,b);
  x2: nand3 port map (k,clk,q,e);
  x3: nand3 port map (b,clr,e,f);
  x4: nand3 port map (j,clk,qbar,a);
  x5: notgate port map (clk,i);
  x6: nand2 port map (b,i,c); 
  x7: nand2 port map (c,qbar,q);
  x8: nand2 port map (f,i,g);
  x9: nand2 port map (g,q,qbar);
    
end Operation;
----=============--=============--====================
--Question No: 6
--=============
--------***T Flip Flop JK Using Structural Q no(6)***-------
-------***Coded by Jenson&Salahudheen***--------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
----------------------------------------
-----***Entity Declaration***-----
----------------------------------------
entity Tff  is
  port(
     t,pre,clr,clk:in std_logic; --inputs
            qq,qqbar:inout std_logic); --input/outputs
end Tff;
----------------------------------------
-----***Architecture Declaration***-----
----------------------------------------
architecture Operation of Tff is
 
component JKMSflip  is
  port(
     j,k,pre,clr,clk:in std_logic;
            q,qbar:inout std_logic);
end component ;

begin
  x1:JKMSflip  port map(t,t,pre,clr,clk,qq,qqbar);
end Operation;
----=============--=============--====================
--Question No: 7
--=============
 

--------***3 Bit Up Counter Using JK MS FF(Q no:7)***-------
-------***Coded by Jenson&Salahudheen***--------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
----------------------------------------
-----***Entity Declaration***-----
----------------------------------------
entity BitUp3JK  is
  port(
     clk,rst:in std_logic; --inputs
     q:inout std_logic_vector(2 downto 0); --in/outputs
     qbar:inout std_logic_vector(2 downto 0)); --in/outputs
end BitUp3JK;
----------------------------------------
-----***Architecture Declaration***-----
----------------------------------------
architecture Operation of BitUp3JK is
signal x:std_logic;
component JKMSflip is
  port(
     j,k,pre,clr,clk:in std_logic;
            q,qbar:inout std_logic);
end component;
 component And2 is
  port(
    a,b:in std_logic;
    c:out std_logic);
end component;
begin
  x1: JKMSflip port map('1','1',rst,'1',clk,q(0),qbar(0));
  x2: JKMSflip port map(q(0),q(0),rst,'1',clk,q(1),qbar(1));
  x3: And2 port map(q(1),q(0),x);
  x4: JKMSflip port map(x,x,rst,'1',clk,q(2),qbar(2));
  
end Operation;


----=============--=============--====================
--Question No: 8
--=============


--------***3 Bit Down Counter Using JK MS FF(Q no:8)***-------
-------***Coded by Jenson&Salahudheen***--------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
----------------------------------------
-----***Entity Declaration***-----
----------------------------------------
entity BitDown3JK  is
  port(
     clk,rst:in std_logic;
     q:inout std_logic_vector(2 downto 0); --input/outputs
     qbar:inout std_logic_vector(2 downto 0)); --in/outputs
end BitDown3JK;
----------------------------------------
-----***Architecture Declaration***-----
----------------------------------------
architecture Operation of BitDown3JK is
signal x:std_logic;
component JKMSflip is
  port(
     j,k,pre,clr,clk:in std_logic; --inputs
            q,qbar:inout std_logic);
end component;
 component And2 is
  port(
    a,b:in std_logic;
    c:out std_logic);
end component;
begin
  x1: JKMSflip port map('1','1',rst,'1',clk,q(0),qbar(0));
  x2: JKMSflip port map(qbar(0),qbar(0),rst,'1',clk,q(1),qbar(1));
  x3: And2 port map(qbar(1),qbar(0),x);
  x4: JKMSflip port map(x,x,rst,'1',clk,q(2),qbar(2));
  
end Operation;
 


----=============--=============--====================
--Question No: 9
--=============
--------***3 Bit Up/Down Counter Using JK MS FF(Q no:9)***-------
-------***Coded by Jenson&Salahudheen***--------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
----------------------------------------
-----***Entity Declaration***-----
----------------------------------------
entity BitUpDown3JK  is
  port(
     clk,rst,mode:in std_logic; --inputs
     q:inout std_logic_vector(2 downto 0); --input/outputs
     qbar:inout std_logic_vector(2 downto 0)); --in/outputs
end BitUpDown3JK;
----------------------------------------
-----***Architecture Declaration***-----
----------------------------------------
architecture Operation of BitUpDown3JK is
signal a,b,c,d,e,f,g:std_logic;
component JKMSflip is
  port(
     j,k,pre,clr,clk:in std_logic; --inputs
            q,qbar:inout std_logic);
end component;
 component And2 is
  port(
    a,b:in std_logic;
    c:out std_logic);
end component;
component Or2  is
  port
    (a,b:in std_logic;
    o:out std_logic);
end component;
component notgate  is
  port(
    a:in std_logic;
    o:out std_logic);
end component;

begin
  x1: JKMSflip port map('1','1',rst,'1',clk,q(0),qbar(0));
  x2: JKMSflip port map(b,b,rst,'1',clk,q(1),qbar(1));
  x3: JKMSflip port map(e,e,rst,'1',clk,q(2),qbar(2));
  x4: And2 port map(mode,q(0),a);
  x5: notgate port map(mode,g);
  x6: And2 port map(mode,q(0),a);
  x7: And2 port map(g,qbar(0),c);
  x8: And2 port map(a,q(1),d);
  x9: And2 port map(c,qbar(1),f);
  x10: Or2 port map(a,c,b);
  x11: Or2 port map(f,d,e);
end Operation;
 


----=============--=============--====================
--Question No: 10
--=============
--------***Bcd To Seven Segment(Q no:10)***-------
-------***Coded by Jenson&Salahudheen***--------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
----------------------------------------
-----***Entity Declaration***-----
----------------------------------------
entity BCDtoSeven is
 port(ina,inb,inc,ind: in std_logic; --inputs
       a,b,c,d,e,f,g: out std_logic); --outputs
end BCDtoSeven;
----------------------------------------
-----***Architecture Declaration***-----
----------------------------------------
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
----=============--=============--====================
--Question No: 12a
--=============
--------***16x1 Mux Using Structural (Q no:12 a)***-------
-------***Coded by Jenson&Salahudheen***--------
library ieee;
use ieee.std_logic_1164.all;
----------------------------------------
-----***Entity Declaration***-----
----------------------------------------
entity Mux16x1st  is
  port(
    s:in std_logic_vector(3 downto 0); --inputs
    o:out std_logic); --outputs
end Mux16x1st;
----------------------------------------
-----***Architecture Declaration***-----
----------------------------------------
architecture Operation of Mux16x1st is
component mux16_1 is
  port( a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,s0,s1,s2,s3 : in std_logic;
        out1 : out std_logic);
end component;

begin
  x1: mux16_1 port map('1','0','0','1','0','1','1','0','0','1','1','0','1','0','0','1',s(3),s(2),s(1),s(0),o);
 end operation;

----=============--=============--====================
--Question No: 12b
--=============
--------***8x1 Mux Using Structural (Q no:12 b)***-------
-------***Coded by Jenson&Salahudheen***--------
library ieee;
use ieee.std_logic_1164.all;
----------------------------------------
-----***Entity Declaration***-----
----------------------------------------
entity Mux8x1st  is
  port(
    s:in std_logic_vector(3 downto 0); --inputs
    o:out std_logic); --outputs
end Mux8x1st;
----------------------------------------
-----***Architecture Declaration***-----
----------------------------------------
architecture Operation of Mux8x1st is
  signal m,n:std_logic;
component Mux8x1 is
  port( a,b,c,d,e,f,g,h,s0,s1,s2:in std_logic;
        out1 : out std_logic); 
end component;
component Mux is
  port(
    a,b,ce:in std_logic;
    cout:out std_logic);
end component;

begin
  x1: Mux8x1 port map('1','0','0','1','0','1','1','0',s(2),s(1),s(0),m);
  x2: Mux8x1 port map('0','1','1','0','1','0','0','1',s(2),s(1),s(0),n);
  x3: Mux port map(m,n,s(3),o);
end operation;
----=============--=============--====================
--Question No: 13a
--=============
--------***16x1 Mux Using Structural (Q no:13 a)***-------
-------***Coded by Jenson&Salahudheen***--------
library ieee;
use ieee.std_logic_1164.all;
----------------------------------------
-----***Entity Declaration***-----
----------------------------------------
entity Mux16x1str  is
  port(
    s:in std_logic_vector(3 downto 0); --inputs
    o:out std_logic); --outputs
end Mux16x1str;
----------------------------------------
-----***Architecture Declaration***-----
----------------------------------------
architecture Operation of Mux16x1str is
component mux16_1 is
  port( a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,s0,s1,s2,s3 : in std_logic;
        out1 : out std_logic);
end component;

begin
  x1: mux16_1 port map('1','1','1','1','0','0','0','0','0','0','0','1','1','0','1','1',s(3),s(2),s(1),s(0),o);
 end operation;
----=============--=============--====================
--Question No: 13b
--=============
--------***8x1 Mux Using Structural (Q no:13 b)***-------
-------***Coded by Jenson&Salahudheen***--------
library ieee;
use ieee.std_logic_1164.all;
----------------------------------------
-----***Entity Declaration***-----
----------------------------------------
entity Mux8x1str  is
  port(
    s:in std_logic_vector(3 downto 0); --inputs
    o:out std_logic); --outputs
end Mux8x1str;
----------------------------------------
-----***Architecture Declaration***-----
----------------------------------------
architecture Operation of Mux8x1str is
  signal m,n:std_logic;
component Mux8x1 is
  port( a,b,c,d,e,f,g,h,s0,s1,s2:in std_logic;
        out1 : out std_logic); 
end component;
component Mux is
  port(
    a,b,ce:in std_logic;
    cout:out std_logic);
end component;

begin
  x1: Mux8x1 port map('1','1','1','1','0','0','0','0',s(2),s(1),s(0),m);
  x2: Mux8x1 port map('0','0','0','1','1','0','1','1',s(2),s(1),s(0),n);
  x3: Mux port map(m,n,s(3),o);
end operation;
----=============--=============--====================
--Question No: 14
--=============
--------***BCD To Excess3 (Q no:14)***-------
-------***Coded by Jenson&Salahudheen***--------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
----------------------------------------
-----***Entity Declaration***-----
----------------------------------------
entity BCDtoExcess  is
  port(
     a,b,c,d:in std_logic; --inputs
     w,x,y,z:out std_logic); --outputs
end BCDtoExcess;
----------------------------------------
-----***Architecture Declaration***-----
----------------------------------------
architecture Operation of BCDtoExcess is
 signal s1,s2,s3,s4,s5,s6,s7:std_logic;
 
component And2 is
  port(
    a,b:in std_logic;
    c:out std_logic);
end component;
component Or2 is
     port(a,b:in std_logic;
      o:out std_logic);
end component;
component notgate  is
  port(
    a:in std_logic;
    o:out std_logic);
end component;
begin
 x1:notgate port map(d,z);
 x2:notgate port map(s2,s3);
 x3:notgate port map(b,s4);
 z1:And2 port map(c,d,s1);
 z2:And2 port map(s3,b,s5);
 z3:And2 port map(s2,s4,s6);
 z4:And2 port map(s2,b,s7);
 y1:Or2  port map(s1,s3,y);
 y2:Or2  port map(s5,s6,x);
 y3:Or2  port map(s7,a,w);
 y4:Or2  port map(d,c,s2);
 end Operation;
----=============--=============--====================
--Question No: 15
--=============
--------***Excess3 to BCD  (Q no:15)***-------
-------***Coded by Jenson&Salahudheen***--------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
----------------------------------------
-----***Entity Declaration***-----
----------------------------------------
entity ExcesstoBCD  is
  port(
     ex:in std_logic_vector(3 downto 0); --inputs
     bcd:inout std_logic_vector(3 downto 0)); --outputs
end ExcesstoBCD;
----------------------------------------
-----***Architecture Declaration***-----
----------------------------------------
architecture Operation of ExcesstoBCD is
 signal x,y,j,k,l,m,n,o:std_logic;
 
component And2 is
  port(
    a,b:in std_logic;
    c:out std_logic);
end component;
component Or2 is
     port(a,b:in std_logic;
      o:out std_logic);
end component;
component notgate  is
  port(
    a:in std_logic;
    o:out std_logic);
end component;
component And3  is
  port(
    a,b,c:in std_logic;
    d:out std_logic);
end component;
component Or3  is
  port(
    a,b,c:in std_logic;
    o:out std_logic);
end component;
begin
 x1:notgate port map(ex(0),bcd(0));
 x2:notgate port map(ex(1),x);
 x3:notgate port map(ex(2),y);
 f1:And2 port map(ex(0),x,j);
 f2:And2 port map(bcd(0),ex(1),k);
 f3:And2 port map(x,y,l);
 f4:And2 port map(ex(2),ex(3),o);
 s1:And3 port map(ex(0),ex(1),ex(2),m);
 s2:And3 port map(ex(0),ex(1),ex(3),n);
 d1:Or2  port map(j,k,bcd(1));
 d2:Or2  port map(n,o,bcd(3));
 c1:Or3  port map(l,m,n,bcd(2));
 
 end Operation;
----=============--=============--====================
--Question No: 16
--=============
----***Four Bit Comparator Q no:(16)***----------
-------***Coded by Jenson&Salahudheen***--------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
----------------------------------------
-----***Entity Declaration***-----
----------------------------------------
entity Comp4BitSt is
  port(
    a,b:in std_logic_vector(3 downto 0); --inputs
    aeqb,agrb,alsb:out std_logic); --outputs
end Comp4BitSt;
----------------------------------------
-----***Architecture Declaration***-----
----------------------------------------
Architecture Operation of Comp4BitSt is
component comp_4 is
  port( a,b : in std_logic_vector ( 3 downto 0);
    aeb,agb,alb : out std_logic); --outputs
end component;
begin
  x1:comp_4 port map(a,b,aeqb,agrb,alsb);
end Operation;
----=============--=============--====================
--Question No: 17
--=============
 

----***Decade Counter Using JK Q no:(17)***----------
-------***Coded by Jenson&Salahudheen***--------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
----------------------------------------
-----***Entity Declaration***-----
----------------------------------------
entity DecadeUsingJK is
 port(clk,rst: in std_logic; --inputs
      q: inout std_logic_vector(3 downto 0));
end DecadeUsingJK;
----------------------------------------
-----***Architecture Declaration***-----
----------------------------------------
architecture Operation of DecadeUsingJK is
signal x,y,z:std_logic;
signal n:std_logic_vector(3 downto 0);
component JKMSflip  is
  port(
     j,k,pre,clr,clk:in std_logic;
            q,qbar:inout std_logic);
end component;
component And3  is
  port(
    a,b,c:in std_logic;
    d:out std_logic);
    end component;
component And2  is
  port(
    a,b:in std_logic; --outputs
    c:out std_logic); --outputs
end component;

 begin
   x1:JKMSflip port map('1','1',rst,'1',clk,q(0),n(0));
   x2:JKMSflip port map(x,q(0),rst,'1',clk,q(1),n(1));
   x3:JKMSflip port map(y,y,rst,'1',clk,q(2),n(2));
   x4:JKMSflip port map(z,q(0),rst,'1',clk,q(3),n(3));
   x5:And2 port map(q(0),n(3),x);
   x6:And2 port map(q(0),q(1),y);
   x7:And3 port map(q(0),q(1),q(2),z);
   
end Operation;
----=============--=============--====================
--Question No: 18
--=============
----***Mod 8 Counter  Q no:(18)***----------
-------***Coded by Jenson&Salahudheen***--------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
----------------------------------------
-----***Entity Declaration***-----
----------------------------------------
entity Mod8 is
 port(clk,rst: in std_logic; --inputs
      q: inout std_logic_vector(2 downto 0)); --input/outputs
end Mod8;
----------------------------------------
-----***Architecture Declaration***-----
----------------------------------------
architecture Operation of Mod8 is
signal x:std_logic;
signal n:std_logic_vector(2 downto 0);
component JKMSflip  is
  port(
     j,k,pre,clr,clk:in std_logic; --input
            q,qbar:inout std_logic); --input/outputs
end component;

component And2  is
  port(
    a,b:in std_logic;
    c:out std_logic);
end component;


 begin
   x1:JKMSflip port map('1','1',rst,'1',clk,q(0),n(0));
   x2:JKMSflip port map(q(0),q(0),rst,'1',clk,q(1),n(1));
   x3:JKMSflip port map(x,x,rst,'1',clk,q(2),n(2));
   x4:And2 port map(q(0),q(1),x);

   
end Operation;

----=============--=============--====================
--Question No: 19
--=============

 

----***Johnson Counter Q no:(19)***----------
-------***Coded by Jenson&Salahudheen***--------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
----------------------------------------
-----***Entity Declaration***-----
----------------------------------------
entity JohnCount is
  port(
    clk,rst:in std_logic; --inputs
    q,qb:inout std_logic_vector(3 downto 0)); --in/outputs
end JohnCount;
----------------------------------------
-----***Architecture Declaration***-----
----------------------------------------
architecture Operation of JohnCount is


component JKMSflip  is
  port(
     j,k,pre,clr,clk:in std_logic; --inputs
            q,qbar:inout std_logic);
end component;
begin
  x1:JKMSflip port map(qb(0),q(0),rst,'1',clk,q(3),qb(3));
  x2:JKMSflip port map(q(3),qb(3),rst,'1',clk,q(2),qb(2));
  x3:JKMSflip port map(q(2),qb(2),rst,'1',clk,q(1),qb(1));
  x4:JKMSflip port map(q(1),qb(1),rst,'1',clk,q(0),qb(0));
end Operation;
----=============--=============--====================
--Question No: 20
----***D Flipflop Q no:(20)***----------
-------***Coded by Jenson&Salahudheen***--------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
----------------------------------------
-----***Entity Declaration***-----
----------------------------------------
entity Dflip  is
  port(
     d,pre,clr,clk:in std_logic; --inputs
            q,qbar:inout std_logic); --in/outputs
end Dflip;
----------------------------------------
-----***Architecture Declaration***-----
----------------------------------------
architecture Operation of Dflip is
 
component DFlipFlops is
  port(
  d,clk,pre,clr:in std_logic; --inputs
  q,qbar:inout std_logic);
end component;

begin
 x1: DFlipFlops port map(d,clk,pre,clr,q,qbar);
    
end Operation;
 
----=============--=============--====================
--Question No: 21
--=============
--------***CircuitRealization Using Structural (Q no:21)***-------
-------***Coded by Jenson&Salahudheen***--------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
----------------------------------------
-----***Entity Declaration***-----
----------------------------------------
entity Qno21  is
  port(
     clk,pre:in std_logic; --inputs
    a,b,c,d:inout std_logic); --input/outputs
end Qno21;
----------------------------------------
-----***Architecture Declaration***-----
----------------------------------------
architecture Operation of Qno21 is
signal x,y:std_logic;
signal q1,q2,q3,q4:std_logic;
component JKMSflip  is
  port(
     j,k,pre,clr,clk:in std_logic; --inputs
            q,qbar:inout std_logic);
end component;
component And2  is
  port(
    a,b:in std_logic;
    c:out std_logic);
end component;
component And3  is
  port(
    a,b,c:in std_logic;
    d:out std_logic);
end component;

begin
  x1: JKMSflip port map('1','1',pre,'1',clk,a,q1);
  x2: JKMSflip port map(a,a,pre,'1',clk,b,q2);
  x4: JKMSflip port map(y,y,pre,'1',clk,d,q4);
  x6: JKMSflip port map(x,x,pre,'1',clk,c,q3);
  x5: and2 port map(a,b,x);
  x7: and3 port map(a,b,c,y);
  
 end Operation;
----=============--=============--====================
--Question No: 22
--=============
----***Base 6 Counter Q no:(22)***----------
-------***Coded by Jenson&Salahudheen***--------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
----------------------------------------
-----***Entity Declaration***-----
----------------------------------------
entity Base6Count is
 port(clk,rst: in std_logic; --inputs
      q: inout std_logic_vector(2 downto 0)); --input/outputs
end Base6Count;
----------------------------------------
-----***Architecture Declaration***-----
----------------------------------------
architecture Operation of Base6Count is
signal x,y:std_logic;
signal n:std_logic_vector(2 downto 0);
component JKMSflip  is
  port(
     j,k,pre,clr,clk:in std_logic;
            q,qbar:inout std_logic);
end component;
component And3  is
  port(
    a,b,c:in std_logic;
    d:out std_logic);
    end component;
component And2  is
  port(
    a,b:in std_logic;
    c:out std_logic);
end component;
component Nand3 is
  port(
    a,b,c:in std_logic;
    o:out std_logic);
  end component;  

 begin
   x1:JKMSflip port map('1','1',rst,'1',clk,q(0),n(0));
   x2:JKMSflip port map(x,q(0),rst,'1',clk,q(1),n(1));
   x3:JKMSflip port map(y,q(0),rst,'1',clk,q(2),n(2));
   x4:And2 port map(q(0),n(2),x);
   x5:And2 port map(q(0),q(1),y);
end Operation;
----=============--=============--====================
--Question No: 23
--=============
 

--------***Frequency Divider By 3 Using Structural(Q no:23)***-------
-------***Coded by Jenson&Salahudheen***--------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
----------------------------------------
-----***Entity Declaration***-----
----------------------------------------
entity FreqDivBy3  is
  port(
     clk,pre:in std_logic; --inputs
     q:inout std_logic_vector(2 downto 0)); --outputs
end FreqDivBy3;
----------------------------------------
-----***Architecture Declaration***-----
----------------------------------------
architecture Operation of FreqDivBy3 is
component JKMSflip  is
  port(
     j,k,pre,clr,clk:in std_logic;
            q,qbar:inout std_logic);
end component;

begin
 x1: JKMSflip port map(q(2),'1',pre,'1',clk,q(0));
 x2: JKMSflip port map(q(0),'1',pre,'1',clk,q(1));
 x3: JKMSflip port map(q(1),'1',pre,'1',clk,q(2));
           
end Operation;
----=============--=============--====================
--Question No: 24
--=============
 

--------***Frequency Divider By 5 Using Structural(Q no:24)***-------
-------***Coded by Jenson&Salahudheen***--------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
----------------------------------------
-----***Entity Declaration***-----
----------------------------------------
entity FreqDivBy5  is
  port(
     clk,pre,clr:in std_logic; --inputs
     q:inout std_logic_vector(4 downto 0)); --outputs
end FreqDivBy5;
----------------------------------------
-----***Architecture Declaration***-----
----------------------------------------
architecture Operation of FreqDivBy5 is
component JKMSflip  is
  port(
     j,k,pre,clr,clk:in std_logic;
            q,qbar:inout std_logic);
end component;

begin
 x1: JKMSflip port map(q(4),'1',pre,clr,clk,q(0));
 x2: JKMSflip port map(q(0),'1',pre,clr,clk,q(1));
 x3: JKMSflip port map(q(1),'1',pre,clr,clk,q(2));
 x4: JKMSflip port map(q(2),'1',pre,clr,clk,q(3));
 x5: JKMSflip port map(q(3),'1',pre,clr,clk,q(4));
           
end Operation;
----=============--=============--====================
--Question No: 25
--=============
--------***MicroWave Counter Using Tff(Q no:25)***-------
-------***Coded by Jenson&Salahudheen***--------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
----------------------------------------
-----***Entity Declaration***-----
----------------------------------------
entity MicroCount  is
  port(
     clk,pre:in std_logic; --inputs
     q:inout std_logic_vector(3 downto 0)); --input/outputs
end MicroCount;
----------------------------------------
-----***Architecture Declaration***-----
----------------------------------------
architecture Operation of MicroCount is
signal n:std_logic_vector(3 downto 0);
signal x,y:std_logic;
component Tff  is
  port(
     t,pre,clr,clk:in std_logic;
     qq,qqbar:inout std_logic);
end component;
component And2  is
  port(
     a,b:in std_logic;
     c:out std_logic);
end component;

begin
 x1: Tff port map('1',pre,'1',clk,q(0),n(0));
 x2: Tff port map(n(0),pre,'1',clk,q(1),n(1));
 x3: Tff port map(x,pre,'1',clk,q(2),n(2));
 x4: Tff port map(y,pre,'1',clk,q(3),n(3));
 y1: And2 port map(n(0),n(1),x); 
 y2: And2 port map(x,n(2),y);  
end Operation;
----=============--=============--====================
--Question No: 26
--=============

--------***CircuitRealization Using Structural (Q no:26)***-------
-------***Coded by Jenson&Salahudheen***--------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
----------------------------------------
-----***Entity Declaration***-----
----------------------------------------
entity Qno26  is
  port(
     b0,b1,b2,b3:in std_logic; --inputs
    g0,g1,g2,g3:out std_logic); --outputs
end Qno26;
----------------------------------------
-----***Architecture Declaration***-----
----------------------------------------
architecture Operation of Qno26 is
component Xor2  is
  port(
    a,b:in std_logic;
    o:out std_logic);
end component;

begin
 x1: Xor2 port map(b0,b1,g0);
 x2: Xor2 port map(b1,b2,g1);
 x3: Xor2 port map(b2,b3,g2);
g3<=b3;
    
end Operation;
----=============--=============--====================
--Question No: 27
--=============
--------***CircuitRealization Using Structural (Q no:27)***-------
-------***Coded by Jenson&Salahudheen***--------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
----------------------------------------
-----***Entity Declaration***-----
----------------------------------------
entity Qno27  is
  port(
     b0,b1,b2,b3:inout std_logic; --inputs
    g0,g1,g2,g3:in std_logic); --outputs
end Qno27;
----------------------------------------
-----***Architecture Declaration***-----
----------------------------------------
architecture Operation of Qno27 is
component Xor2  is
  port(
    a,b:in std_logic;
    o:out std_logic);
end component;

begin
 x1: Xor2 port map(g0,b1,b0);
 x2: Xor2 port map(g1,b2,b1);
 x3: Xor2 port map(g2,g3,b2);
b3<=g3;
    
end Operation;
----=============--=============--====================
--Question No: 28
--=============
--------***8 Bit Barrel-Shifter (Q no28)***-------
-------***Coded by Jenson&Salahudheen***--------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
----------------------------------------
-----***Entity Declaration***-----
----------------------------------------
entity BarrelShift is
port(a:in bit_vector(7 downto 0); --inputs
     s:in bit_vector(2 downto 0);--input
     o:out bit_vector(7 downto 0)); --outputs
end BarrelShift;
----------------------------------------
-----***Architecture Declaration***-----
----------------------------------------
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
----=============--=============--====================
--Question No: 29
--=============

--------***Carry Look Ahead Generator Using Structural(Q no 29)***-------
---------***Coded by Jenson&Salahudheen***--------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
----------------------------------------
-----***Entity Declaration***-----
----------------------------------------
entity CarryLookGen is
  port(cin:in std_logic; --inputs
    a,b:in std_logic_vector(0 to 3); --inputs
    carry:out std_logic_vector(0 to 3); --outputs
    c1:out std_logic); --outputs
end CarryLookGen;
----------------------------------------
-----***Architecture Declaration***-----
----------------------------------------
architecture Operation of CarryLookGen is
component CarryLookAhead is
  port(
    cin:in std_logic;
    a,b:in std_logic_vector(0 to 3);
    carry:out std_logic_vector(0 to 3);
    c1:out std_logic); --outputs
end component;
begin
  p1: CarryLookAhead port map(cin,a,b,carry,c1);

end operation;
----=============--=============--====================
--Question No: 30
--=============
---*** 4 Bit Adder And Subtractor structural Q no:(30)***--- 
----coded by Jenson and Salahudheen----

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
----------------------------------------
-----***Entity Declaration***-----
----------------------------------------
entity AddSub4bitst is
  port(
    mode:in std_logic; --inputs
    a,b:in std_logic_vector(3 downto 0); --inputs
    carry,borrow:out std_logic; --outputs
    sum,diff:out std_logic_vector(3 downto 0)); --outputs
end AddSub4bitst;
----------------------------------------
-----***Architecture Declaration***-----
----------------------------------------
architecture Operation of AddSub4bitst is
component AddSub4bit is
  port(
    mode:in std_logic;
    a,b:in std_logic_vector(3 downto 0);
    carry,borrow:out std_logic;
    sum,diff:out std_logic_vector(3 downto 0));
end component;
  begin
   s1:AddSub4bit port map(mode,a,b,carry,borrow,sum,diff);
end Operation;

----=============--=============--====================
--Question No: 31
--=============
 


----***Four Bit  Parallel Register Q no:(31)***----------
-------***Coded by Jenson&Salahudheen***--------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
----------------------------------------
-----***Entity Declaration***-----
----------------------------------------
entity ParallelReg4bit is
port (sin,clk:in std_logic; --inputs
      sout:inout std_logic_vector(3 downto 0)); --inputs/outputs
end ParallelReg4bit;
----------------------------------------
-----***Architecture Declaration***-----
----------------------------------------
architecture Operation of ParallelReg4bit is
 component Dflip  is
  port(
     d,pre,clr,clk:in std_logic;
            q,qbar:inout std_logic);
end component;

 begin
     s1:Dflip port map (sin,'1','1',clk,sout(0));
     s2:Dflip port map (sout(0),'1','1',clk,sout(1));
     s3:Dflip port map (sout(1),'1','1',clk,sout(2));
     s4:Dflip port map (sout(2),'1','1',clk,sout(3)); 
     
end Operation;	
----=============--=============--====================
--Question No: 32
--=============
----***BCD UpDown Counter(Q no:32)***---- 
----coded by Jenson and Salahudheen----
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
----------------------------------------
-----***Entity Declaration***-----
----------------------------------------
entity BCDUpDownSt is
  port(
    updown,clk:in std_logic;
    bcdin:buffer std_logic_vector(3 downto 0);
    bcdout:out std_logic_vector(3 downto 0));
end BCDUpDownSt;
----------------------------------------
-----***Architecture Declaration***-----
----------------------------------------
architecture Operation of BCDUpDownSt is
component BCDUpDown is
  port(
    updown,clk:in std_logic;
    bcdin:buffer std_logic_vector(3 downto 0);
    bcdout:out std_logic_vector(3 downto 0));
end component;
begin
  f1: BCDUpDown port map(updown,clk,bcdin,bcdout);
end Operation;
----=============--=============--====================
--Question No: 33
--=============
--------***HalfAdder Using  Mux Structural Q no:33***-------
-------***Coded by Jenson&Salahudheen***--------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
----------------------------------------
-----***Entity Declaration***-----
----------------------------------------
entity HalfAddrSt is
port(a,b:in std_logic; --inputs
     s,c:out std_logic); --outputs
end HalfAddrSt;
----------------------------------------
-----***Architecture Declaration***-----
----------------------------------------
architecture struct of HalfAddrSt is
signal bn:std_logic;
component Muxstr is
  port(
    a,b,ce:in std_logic;
    c:out std_logic);
end component;
begin
bn <= not b;
x1:Muxstr port map (b,bn,a,s);
x2:Muxstr port map ('0',b,a,c);
end struct;
----=============--=============--====================
--Question No: 34
--=============
--------***BCD Adder using structural Q no:34***-------
-------***Coded by Jenson&Salahudheen***--------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
----------------------------------------
-----***Entity Declaration***-----
----------------------------------------
entity bcd_adder_st is
  port(a,b:in std_logic_vector (3 downto 0);
        z:out std_logic_vector (4 downto 0));
end bcd_adder_st;
----------------------------------------
-----***Architecture Declaration***-----
----------------------------------------
architecture Operation of bcd_adder_st is
 component bcd_adder is
  port(a,b:in std_logic_vector (3 downto 0);
        z:out std_logic_vector (4 downto 0));
end component;
begin
f1: bcd_adder port map(a,b,z);
end Operation;
----=============--=============--====================
--Question No: 35
--=============
--------***3 Bit Asynchronous Counter Using T ff(Q no:35)***-------
-------***Coded by Jenson&Salahudheen***--------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
----------------------------------------
-----***Entity Declaration***-----
----------------------------------------
entity Count3BitTff  is
  port(
       clk,clr:in std_logic; --inputs
       q:inout std_logic_vector(2 downto 0)); --outputs
end Count3BitTff;
----------------------------------------
-----***Architecture Declaration***-----
----------------------------------------
architecture Operation of Count3BitTff is
component Tff  is
  port(
     t,pre,clr,clk:in std_logic;
     qq,qqbar:inout std_logic);
end  component;
begin
  x1: Tff port map('1','1',clr,clk,q(0));
  x2: Tff port map('1','1',clr,q(0),q(1));
  x3: Tff port map('1','1',clr,q(1),q(2));
end Operation;
----=============--=============--====================
--Question No: 36a
--=============
--------***4 Bit Shift Rregister Using D ff(Q no:36a)***-------
-------***Coded by Jenson&Salahudheen***--------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
----------------------------------------
-----***Entity Declaration***-----
----------------------------------------
entity Shift4BitDff  is
  port(
       sin,clk:in std_logic; --inputs
       sout:out std_logic); --outputs
end Shift4BitDff;
----------------------------------------
-----***Architecture Declaration***-----
----------------------------------------
architecture Operation of Shift4BitDff is
signal q:std_logic_vector(3 downto 0);
component Dflip  is
  port(
     d,pre,clr,clk:in std_logic;
     q,qbar:inout std_logic);
end component;
begin
  x1:Dflip port map(sin,'1','1',clk,q(0));
  x2:Dflip port map(q(0),'1','1',clk,q(1));
  x3:Dflip port map(q(1),'1','1',clk,q(2));
  x4:Dflip port map(q(2),'1','1',clk,q(3));
  sout<=q(3);
end Operation;
----=============--=============--====================
--Question No: 36b
--=============
--------***4 Bit Shift Rregister Using JK ff(Q no:36b)***-------
-------***Coded by Jenson&Salahudheen***--------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
----------------------------------------
-----***Entity Declaration***-----
----------------------------------------
entity shift4jkff is
port (si,clk:in std_logic;
        sout:inout std_logic);
end shift4jkff;
----------------------------------------
-----***Architecture Declaration***-----
----------------------------------------
architecture Operation of shift4jkff is
signal q1,q2,q3,q1n,q2n,q3n,sin:std_logic;
component JKMSflip  is
  port(
     j,k,pre,clr,clk:in std_logic;
            q,qbar:inout std_logic);
end component;
component notgate  is
  port(
    a:in std_logic;
    o:out std_logic);
end component;
begin
r1:notgate port map (si,sin);

j1:JKMSflip port map (si,sin,clk,'1','1',q1,q1n);
j2:JKMSflip port map (q1,q1n,clk,'1','1',q2,q2n);
j3:JKMSflip port map (q2,q2n,clk,'1','1',q3,q3n);
j4:JKMSflip port map (q3,q3n,clk,'1','1',sout);

end Operation;
----=============--=============--====================
--Question No: 37
--=============
--------***BiDirectional Shift Register Using Dff(Q no 37)***-------
-------***Coded by Jenson&Salahudheen***--------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
----------------------------------------
-----***Entity Declaration***-----
----------------------------------------
entity BiDirShiftDf is
port (m,clk,pr,cl: in std_logic; --inputs
      dr,dl: inout std_logic); --outputs
end BiDirShiftDf;    
----------------------------------------
-----***Architecture Declaration***-----
----------------------------------------
architecture Operation of BiDirShiftDf is
signal mn : std_logic;
signal a,b,x,q: std_logic_vector(3 downto 0)    ;
component Dflip  is
  port(
     d,pre,clr,clk:in std_logic;
            q,qbar:inout std_logic);
end component;
component Or2  is
  port
    (a,b:in std_logic;--inputs
    o:out std_logic);--output
end component;
component And2  is
  port(
    a,b:in std_logic;
    c:out std_logic);
end component;
component notgate  is
  port(
    a:in std_logic;
    o:out std_logic);
end component;
begin  
 n1: notgate port map(m,mn);    
a1 : And2 port map (dr,m,a(3));    
a2 : And2 port map (mn,q(2),b(3));
a3 : And2 port map (q(3),m,a(2));
a4 : And2 port map (mn,q(1),b(2));
a5 : And2 port map (q(2),m,a(1));
a6 : And2 port map (mn,q(0),b(1));
a7 : And2 port map (q(1),m,a(0));
a8 : And2 port map (mn,dl,b(0));

o1 : Or2 port map(a(3),b(3),x(3));
o2 : Or2 port map(a(2),b(2),x(2));
o3 : Or2 port map(a(1),b(1),x(1));
o4 : Or2 port map(a(0),b(0),x(0));

d1 : Dflip port map(x(3),clk,pr,cl,q(3));
d2 : Dflip port map(x(2),clk,pr,cl,q(2));
d3 : Dflip port map(x(1),clk,pr,cl,q(1));
d4 : Dflip port map(x(0),clk,pr,cl,q(0));
    
end Operation;    
----=============--=============--====================
--Question No: 38
--=============
--------***Parallel in Serial out Shift Register(Q no:38)***-------
-------***Coded by Jenson&Salahudheen***--------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
----------------------------------------
-----***Entity Declaration***-----
----------------------------------------
entity ShiftRgPinSout  is
  port(
     clk,a,b,c,en:in std_logic; --inputs
     sout:inout std_logic); --outputs
end ShiftRgPinSout;
----------------------------------------
-----***Architecture Declaration***-----
----------------------------------------
architecture Operation of ShiftRgPinSout is
signal p,q,r,s,t,u:std_logic; 
signal qq:std_logic_vector(2 downto 0);
signal enb:std_logic;
 component And2 is
  port(
    a,b:in std_logic;
    c:out std_logic);
end component;
component Or2  is
  port
    (a,b:in std_logic;
    o:out std_logic);
end component;
component notgate  is
  port(
    a:in std_logic;
    o:out std_logic);
end component;
component Dflip  is
  port(
     d,pre,clr,clk:in std_logic;
            q,qbar:inout std_logic);
end component;


begin
  x1:Dflip port map(a,'1','1',clk,qq(0));
  x2:Dflip port map(r,'1','1',clk,qq(1));
  x3:Dflip port map(u,'1','1',clk,qq(2));
  y1:And2 port map(qq(0),en,p);
  y2:And2 port map(b,enb,q);
  y3:And2 port map(qq(1),en,s);
  y4:And2 port map(c,enb,t);
  d1:Or2 port map(p,q,r);
  d2:Or2 port map(s,t,u);
  f1:notgate  port map(en,enb);
  sout<=qq(2);
  
  
  
end Operation;
----=============--=============--====================
--Question No: 39
--=============
--------***Parallel in Parallel out Shift Reg(Q no 39)***-------
-------***Coded by Jenson&Salahudheen***--------
library ieee;
use ieee.std_logic_1164.all;
----------------------------------------
-----***Entity Declaration***-----
----------------------------------------
entity ParlinParloutShft is
port (a,b,c,d,clk,pr,cl : in std_logic; --inputs
      qa,qb,qc,qd : inout std_logic); --input/outputs
end ParlinParloutShft;      
----------------------------------------
-----***Architecture Declaration***-----
----------------------------------------
architecture Operation of ParlinParloutShft is
component Dflip  is
  port(
     d,pre,clr,clk:in std_logic;
            q,qbar:inout std_logic);
end component;
begin
    d1: Dflip port map (a,pr,cl,clk,qa);
    d2: Dflip port map (b,pr,cl,clk,qb);
    d3: Dflip port map (c,pr,cl,clk,qc);
    d4: Dflip port map (d,pr,cl,clk,qd);
    
end Operation;    
----=============--=============--====================
--Question No: 42
--=============
--------***4 Bit Ripple Counter Using D ff(Q no:42)***-------
-------***Coded by Jenson&Salahudheen***--------
library ieee;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_1164.all;
----------------------------------------
-----***Entity Declaration***-----
---------------------------------------
entity RippleCount4Bit  is
  port(
       clk,clr:in std_logic;
       q:inout std_logic_vector(3 downto 0)); --input/outputs
end RippleCount4Bit;
-----------------------------
architecture Operation of RippleCount4Bit is
component Tff  is
  port(
     t,pre,clr,clk:in std_logic;
            qq,qqbar:inout std_logic);
end component;
begin
  x1:Tff port map('1','1',clr,clk,q(0));
  x2:Tff port map('1','1',clr,q(0),q(1));
  x3:Tff port map('1','1',clr,q(1),q(2));
  x4:Tff port map('1','1',clr,q(2),q(3));
 
end Operation;
 


----=============--=============--====================
--Question No: 44
--=============
--------***Ring Counter Using D ff(Q no:44)***-------
-------***Coded by Jenson&Salahudheen***--------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
----------------------------------------
-----***Entity Declaration***-----
----------------------------------------
entity RingCountDff  is
  port(
       clk,pre:in std_logic; --inputs
       q:inout std_logic_vector(3 downto 0)); --outputs
end RingCountDff;
----------------------------------------
-----***Architecture Declaration***-----
----------------------------------------
architecture Operation of RingCountDff is
component Dflip  is
  port(
     d,pre,clr,clk:in std_logic; --inputs
     q,qbar:inout std_logic);
end component;
begin
  x1: Dflip port map(q(3),pre,'1',clk,q(0));
  x2: Dflip port map(q(0),pre,'1',clk,q(1));
  x3: Dflip port map(q(1),pre,'1',clk,q(2));
  x4: Dflip port map(q(2),pre,'1',clk,q(3));
end Operation;
----=============--=============--====================
--Question No: 46
--=============

--------***combinational Multiplier (Q no:46)***-------
-------***Coded by Jenson&Salahudheen***--------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
----------------------------------------
-----***Entity Declaration***-----
----------------------------------------
entity CombMulplx  is
  port(
     a0,a1,a2,a3,b0,b1,b2,b3:in std_logic; --inputs
     s0,s1,s2,s3,s4,s5,s6,s7:out std_logic); --outputs
end CombMulplx;
----------------------------------------
-----***Architecture Declaration***-----
----------------------------------------
architecture Operation of CombMulplx is
 signal a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p:std_logic;
 signal q,r,s,t,u,v,w,x,y,z,z1,z2,z3,z4,z5,z6,z7,z8:std_logic;
component And2 is
  port(
    a,b:in std_logic;
    c:out std_logic);
end component;
component HalfAddSt  is
  port(
    ain,bin:in std_logic;
    sum,carry:out std_logic);
end component;
component FullAddSt  is
  port(
    ain,bin,cin:in std_logic;
    sum,carry:out std_logic);
end component;
begin
  f1:And2 port map(a0,b0,p);
  f2:And2 port map(a1,b0,o);
  f3:And2 port map(a0,b1,n);
  f4:And2 port map(a0,b2,m);
  f5:And2 port map(a1,b1,l);
  f6:And2 port map(a2,b0,k);
  f7:And2 port map(a0,b3,j);
  f8:And2 port map(a1,b2,i);
  f9:And2 port map(a2,b1,h);
  f10:And2 port map(a3,b0,g);
  f11:And2 port map(a1,b3,f);
  f12:And2 port map(a2,b2,e);
  f13:And2 port map(a3,b1,d);
  f14:And2 port map(a2,b3,c);
  f15:And2 port map(a3,b2,b);
  f16:And2 port map(a3,b3,a);
  g1:HalfAddSt port map(n,o,s1,u);
  g2:HalfAddSt port map(l,m,z6,t);
  g3:HalfAddSt port map(i,j,z7,s);
  g4:HalfAddSt port map(w,z2,s4,z3);
  d1:FullAddSt port map(k,z6,u,s2,y);
  d2:FullAddSt port map(h,z7,t,x,z);
  d3:FullAddSt port map(e,f,s,z8,r);
  d4:FullAddSt port map(d,z8,z,w,z1);
  d5:FullAddSt port map(b,c,r,v,q);
  d6:FullAddSt port map(q,a,z4,s6,s7);
  d7:FullAddSt port map(v,z1,z3,s5,z4);
  d8:FullAddSt port map(x,g,y,s3,z2);
  s0<=p;
 end Operation;
----=============--=============--====================
--Question No: 47
--=============
--------***Realizing Adder/Subtractor Circuit(Q no:47)***-------
-------***Coded by Jenson&Salahudheen***--------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
----------------------------------------
-----***Entity Declaration***-----
----------------------------------------
entity Adder_Sub  is
  port(
     mode:in std_logic; --inputs
     a,b:in std_logic_vector(3 downto 0); --inputs
     o:out std_logic; --outputs
     s:out std_logic_vector(3 downto 0)); --outputs
end Adder_Sub;
----------------------------------------
-----***Architecture Declaration***-----
----------------------------------------
architecture Operation of Adder_Sub is
signal w,x,y,z:std_logic;
signal cc:std_logic_vector(3 downto 0);
signal bb:std_logic_vector(3 downto 0);
component Muxstr is
  port(
    a,b,ce:in std_logic;
    c:out std_logic);
end component;
component FullAddSt  is
  port(
    ain,bin,cin:in std_logic;
    sum,carry:out std_logic);
end component;
component Xor2  is
  port(
    a,b:in std_logic;
    o:out std_logic);
end component;
begin
  bb(0)<=not b(0);
  bb(1)<=not b(1);
  bb(2)<=not b(2);
  bb(3)<=not b(3);
x1: Muxstr port map(b(0),bb(0),mode,w);
x2: Muxstr port map(b(1),bb(1),mode,x);
x3: Muxstr port map(b(2),bb(2),mode,y);
x4: Muxstr port map(b(3),bb(3),mode,z);
ss1: FullAddSt port map(a(0),w,mode,s(0),cc(0));
ss2: FullAddSt port map(a(1),x,cc(0),s(1),cc(1));
ss3: FullAddSt port map(a(2),y,cc(1),s(2),cc(2));
ss4: FullAddSt port map(a(3),z,cc(2),s(3),cc(3));
o1: Xor2 port map(cc(3),cc(2),o);
end Operation;
----=============--=============--====================
--Question No: 48
--=============
--------***4 Bit Magnitude Comparator (Q no:48)***-------
-------***Coded by Jenson&Salahudheen***--------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
----------------------------------------
-----***Entity Declaration***-----
----------------------------------------
entity MagnComp4  is
  port(
     a0,a1,a2,a3,b0,b1,b2,b3:in std_logic; --inputs
     alb,agb,aeb:out std_logic);--outputs
end MagnComp4;
----------------------------------------
-----***Architecture Declaration***-----
----------------------------------------
architecture Operation of MagnComp4 is
 signal a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p:std_logic;
 signal q,r,s,t,u,v,w,x3,x2,x1,x0:std_logic;
component And2  is
  port(
    a,b:in std_logic;
    c:out std_logic);
end component;
component And3  is
  port(
    a,b,c:in std_logic;
    d:out std_logic);
end component;
component And4  is
  port(
    a,b,c,e:in std_logic;
    d:out std_logic);
end component;
component Or4  is
  port(
    a,b,c,d:in std_logic;
    o:out std_logic);
end component;
component NOr4  is
  port
    (a,b,c,d:in std_logic;
    o:out std_logic);
end component;
component NOr2  is
  port
    (a,b:in std_logic;
    o:out std_logic);
end component;
component notgate  is
  port(
    a:in std_logic;
    o:out std_logic);
end component;
begin
  x11:notgate port map(a3,a);
 x12:notgate port map(b3,b);
 x13:notgate port map(a2,c);
 x14:notgate port map(b2,d);
 x15:notgate port map(a1,e);
 x16:notgate port map(b1,f);
 x17:notgate port map(a0,g);
 x18:notgate port map(b0,h);
 s1:And2 port map(a,b3,i);
 s2:And2 port map(a3,b,j);
 s3:And2 port map(c,b2,k);
 s4:And2 port map(a2,d,l);
 s5:And2 port map(e,b1,m);
 s6:And2 port map(a1,f,w);
 s7:And2 port map(g,b0,n);
 s8:And2 port map(a0,h,o);
 s9:And2 port map(x3,k,p);
 s10:And2 port map(l,x3,q);
 k1:NOr2 port map(i,j,x3);
 k2:NOr2 port map(k,l,x2);
 k3:NOr2 port map(m,w,x1);
 k4:NOr2 port map(n,o,x0);
 m1:And3 port map(x3,x2,m,r);
 m2:And3 port map(x3,x2,w,s);
 f1:And4 port map(x3,x2,x1,n,t);
 f2:And4 port map(x3,x2,x1,o,u);
 f3:And4 port map(x3,x2,x1,x0,v);
 z1:Or4 port map(i,p,r,t,alb);
 z2:Or4 port map(j,q,s,u,agb);
 aeb<=v;   
end Operation;

