
---***3 Synchronous Bit Up/Down Counter***--- 
----coded by Jenson and Salahudheen----

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
----------------------------
entity Sync3UpDownCount is
  port(
    clk,mode,rst:in std_logic;
    bcdin:buffer std_logic_vector(2 downto 0);
    bcdout:out std_logic_vector(2 downto 0));
end Sync3UpDownCount;
---------------------------
architecture Operation of Sync3UpDownCount is

  begin
    process(clk,rst,bcdin,mode)
      variable x:std_logic_vector(2 downto 0);
      begin
              
        x:=bcdin;
        if ((clk'event and clk='1') and mode='0') then---up counting
          x:=x+1;
        elsif ((clk'event and clk='1') and mode ='1') then---down counting
          x:=x-1;
        end if;
        if(rst='1') then x:="000";
        end if;
        bcdin<=x;
        bcdout<=x;
      
    end process;
end Operation;