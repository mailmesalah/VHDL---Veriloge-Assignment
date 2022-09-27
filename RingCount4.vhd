
-------***4 Bit Ring Counter Q no:(44)***------
-----***Coded by Jenson&Salahudheen***---

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
--------------------------------
entity RingCount4 is
  port(
    clk:in std_logic;
    output:out bit_vector(3 downto 0));
end RingCount4;
--------------------------------
architecture Operation of RingCount4 is
begin
  process(clk)
    variable x:bit_vector(3 downto 0):="1000";
    begin
      output<=x;
      if (clk'event and clk='1') then 
        x:=x srl 1;
      end if;
      if(x="0000")then x:="1000";end if;
  end process;
end Operation;