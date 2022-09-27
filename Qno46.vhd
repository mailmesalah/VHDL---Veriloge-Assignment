--------***combinational Multiplier (Q no:46)***-------
-------***Coded by Jenson&Salahudheen***--------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
-----------------------------
entity CombMulplx  is
  port(
     a0,a1,a2,a3,b0,b1,b2,b3:in std_logic;
     s0,s1,s2,s3,s4,s5,s6,s7:out std_logic);
end CombMulplx;
-----------------------------
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