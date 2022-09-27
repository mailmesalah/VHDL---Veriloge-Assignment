--------***4 Bit Magnitude Comparator (Q no:48)***-------
-------***Coded by Jenson&Salahudheen***--------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
-----------------------------
entity MagnComp4  is
  port(
     a0,a1,a2,a3,b0,b1,b2,b3:in std_logic;
     alb,agb,aeb:out std_logic);
end MagnComp4;
-----------------------------
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