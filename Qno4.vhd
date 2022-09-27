
--------***Full Subtractor Using Structural***-------
-------***Coded by Jenson&Salahudheen***--------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
-----------------------------
entity FullSubSt  is
  port(
    ain,bin,cin:in std_logic;
    diff,borrow:out std_logic);
end FullSubSt;
-----------------------------
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