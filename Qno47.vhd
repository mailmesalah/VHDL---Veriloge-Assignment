--------***Realizing Adder/Subtractor Circuit(Q no:47)***-------
-------***Coded by Jenson&Salahudheen***--------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
-----------------------------
entity Adder_Sub  is
  port(
     mode:in std_logic;
     a,b:in std_logic_vector(3 downto 0);
     o:out std_logic;
     s:out std_logic_vector(3 downto 0));
end Adder_Sub;
-----------------------------
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
