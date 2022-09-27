
--------***Half Subtractor Using Structural***-------
-------***Coded by Jenson&Salahudheen***--------
library ieee;
use ieee.std_logic_1164.all;
-----------------------------
entity HalfSubSt  is
  port(
    ain,bin:in std_logic;
    diff,borrow:out std_logic);
end HalfSubSt;
-----------------------------
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