-----***Demux 8x1(Q no:18)***------------
-----coded by Jenson and Salahudheen----

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
------------------------------------
entity Demux8x1 is
  port (
    input : in  std_logic;
    sel : in  std_logic_vector(2 downto 0);
    output : out std_logic_vector(7 downto 0));
end Demux8x1;
-------------------------------------
architecture Operation of Demux8x1 is
begin
  output(0) <= (not sel(2)) and (not sel(1)) and (not sel(0)) and input;
  output(1) <= (not sel(2)) and (not sel(1)) and sel(0) and input;
  output(2) <= (not sel(2)) and sel(1) and (not sel(0)) and input;
  output(3) <= (not sel(2)) and sel(1) and sel (0) and input;
  output(4) <= sel(2) and (not sel(1)) and (not sel (0)) and input;
  output(5) <= sel(2) and (not sel(1)) and sel (0) and input;
  output(6) <= sel(2) and sel(1) and (not sel (0)) and input;
  output(7) <= sel(2) and sel(1) and sel (0) and input;
end Operation;
