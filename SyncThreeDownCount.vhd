
---***3 Synchronous Bit Down Counter***--- 
----coded by Jenson and Salahudheen----

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
----------------------------
entity SyncThreeDownCount is
  port(
    clk,rst:in std_logic;
    bcdin:buffer std_logic_vector(2 downto 0);
    bcdout:out std_logic_vector(2 downto 0));
end SyncThreeDownCount;
---------------------------
architecture Operation of SyncThreeDownCount is

  begin
    process(clk,rst,bcdin)
      variable x:std_logic_vector(2 downto 0);
      begin
        
        x:=bcdin;
        if ((clk'event and clk='1')) then---down counting
          x:=x-1;
        end if;
        if(rst='1') then x:="000";
        end if;
        
        bcdin<=x;
        bcdout<=x;
      
    end process;
end Operation;