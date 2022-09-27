
---***BCD Up/Down(Q no:72a)***--- 
----coded by Jenson and Salahudheen----

library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;
  use ieee.std_logic_arith.all;
--------------------------------------
entity BCDUp is
  port(
    clk:in std_logic;
    bcd:out std_logic_vector(3 downto 0)); 
end BCDUp;
-----------------------------------------
architecture Operation of BCDUp is

  begin
    process(clk)
      variable a:std_logic_vector(3 downto 0):="0000";
      begin
        if(clk='1')then
          case a is
            when "0000"=>a:="0001";
            when "0001"=>a:="0010";
            when "0010"=>a:="0011";
            when "0011"=>a:="0100";
            when "0100"=>a:="0101";
            when "0101"=>a:="0110";
            when "0110"=>a:="0111";
            when "0111"=>a:="1000";
            when "1000"=>a:="1001";
            when "1001"=>a:="0000";
            when others=>null;
          end case;
        end if;
    bcd<=a;
    end process;
end Operation;