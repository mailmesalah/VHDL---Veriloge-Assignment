library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
----------------------------------------
entity clock is
  port(
    clk:in bit;
    o:out bit);
  end clock;
architecture op of clock is

  begin
    
    o<=not clk after 50 ns;
 
end op;