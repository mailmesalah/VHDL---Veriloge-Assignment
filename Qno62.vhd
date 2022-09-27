----***Sequence Q no:(62)***---- 
----coded by Jenson and Salahudheen----

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
---------------------------------
entity Qno62 is
  port(
    clk:std_logic;
    seqout:out std_logic_vector(3 downto 0));
end Qno62;
---------------------------------
architecture Operation of Qno62 is

  begin
    process(clk)
      variable x:std_logic_vector(3 downto 0):="1100";
      begin
      if (clk='1') then
            case x is
              when "0000" => x:="0010";
              when "0010" => x:="0100";
              when "0100" => x:="1000";
              when "1000" => x:="0011";
              when "0011" => x:="0110";
              when "0110" => x:="1001";
              when "1001" => x:="1100";
              when "1100" => x:="0000";
              when others => null;
            end case;
          end if;
          seqout<=x;  
    end process;
  end Operation;
   