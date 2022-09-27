
--------***Random Counter Q no:(80)***--------
-------coded by Jenson and Salahudheen----

library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;
  use ieee.std_logic_arith.all;
--------------------------------------
entity RandCount is
  port(
    clk:in std_logic;
    output:out integer);
end RandCount;
--------------------------------------
architecture Operation of RandCount is
  begin
    process(clk)
      variable x:integer:=8;
        begin
          if clk='1' then
            case x is
              when 8 => x:=1;
              when 1 => x:=2;
              when 2 => x:=0;
              when 0 => x:=4;
              when 4 => x:=6;
              when 6 => x:=3;
              when 3 => x:=5;
              when 5 => x:=9;
              when 9 => x:=7;
              when 7 => x:=8;
              when others => null;
            end case;
          end if;
          output<=x;
              
    end process; 
end Operation;