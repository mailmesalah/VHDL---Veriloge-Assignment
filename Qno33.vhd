
--------***HalfAdder Using Structural***-------
-------***Coded by Jenson&Salahudheen***--------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
-----------------------------
entity HalfAddrSt is
port(a,b:in std_logic;
     s,c:out std_logic);
end HalfAddrSt;
-----------------------------
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
