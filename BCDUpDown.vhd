----***BCD UpDown Counter(Q no:37)***---- 
----coded by Jenson and Salahudheen----
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
------------------------------------------
-----***Entity Declaration***-----
------------------------------------------
entity BCDUpDown is
  port(
    updown,clk:in std_logic; --inputs
    bcdin:buffer std_logic_vector(3 downto 0);--input/output
    bcdout:out std_logic_vector(3 downto 0)); --outputs
end BCDUpDown;
------------------------------------------
-----***Architecture Declaration***-----
------------------------------------------
architecture Operation of BCDUpDown is
  begin
    process(updown,clk,bcdin)
      variable x:std_logic_vector(3 downto 0);
      begin
        
        x:=bcdin;
        if (updown='0' and (clk'event and clk='1')) then---up counting
          if x="1001" then
           x:="0000";
          else
 
              x:=x+"0001";
          end if; 
        elsif (updown='1' and (clk'event and clk='1')) then---down counting
          if x="0000" then
  
            x:="1001";
          else
   
            x:=x-"0001";
          end if;
        end if;
        
        bcdin<=x;
        bcdout<=x;
      
    end process;
end Operation;