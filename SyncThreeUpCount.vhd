
---***3 Synchronous Bit Up Counter***--- 
----coded by Jenson and Salahudheen----
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
----------------------------
entity SyncThreeUpCount is
  port(
    clk,rst:in std_logic;
    bcdin:buffer std_logic_vector(2 downto 0);
    bcdout:out std_logic_vector(2 downto 0));
end SyncThreeUpCount;
---------------------------
architecture Operation of SyncThreeUpCount is
--  signal x: integer;
  begin
    process(clk,bcdin,rst)
      variable x:std_logic_vector(2 downto 0);
      begin
        
        x:=bcdin;
        
        if ((clk'event and clk='1')) then---up counting
          x:=x+1;
        end if;
        if(rst='1') then x:="000";
        end if;
        
        bcdin<=x;
        bcdout<=x;
      
    end process;
end Operation;