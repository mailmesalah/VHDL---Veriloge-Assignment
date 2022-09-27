---***BCD Up/Down Using If(Q no:72)***--- 
----coded by Jenson and Salahudheen----

library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;
  use ieee.std_logic_arith.all;
--------------------------------------
entity BCDUp2 is
  port(
    clk:in std_logic;
    bcd:out std_logic_vector(3 downto 0)); 
end BCDUp2;
----------------------------------------
architecture Operation of BCDUp2 is

  begin
    process(clk)
      variable a:std_logic_vector(3 downto 0):="0000";
      begin
        if(clk='1')then
          
            if(a="0000")then a:="0001";
            elsif(a="0001")then a:="0010";
            elsif(a="0010")then a:="0011";
            elsif(a="0011")then a:="0100";
            elsif(a="0100")then a:="0101";
            elsif(a="0101")then a:="0110";
            elsif(a="0110")then a:="0111";
            elsif(a="0111")then a:="1000";
            elsif(a="1000")then a:="1001";
            elsif(a="1001")then a:="0000";
            else null;
            end if;
          
        end if;
    bcd<=a;
    end process;
end Operation;