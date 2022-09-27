
--------***Full Adder Using Structural***-------
-------***Coded by Jenson&Salahudheen***--------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
-----------------------------
entity FullAddSt  is
  port(
    ain,bin,cin:in std_logic;
    sum,carry:out std_logic);
end FullAddSt;
-----------------------------
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