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