
--------***Half Adder Using Structural***-------
-------***Coded by Jenson&Salahudheen***--------
library ieee;
use ieee.std_logic_1164.all;
-----------------------------
entity HalfAddSt  is
  port(
    ain,bin:in std_logic;
    sum,carry:out std_logic);
end HalfAddSt;
-----------------------------
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