library ieee;
use ieee.std_logic_1164.all;
-----------------------------
entity counter is
  port(
    clk:in std_logic;
    o:out integer range 0 to 9);
end counter;
-----------------------------
architecture Operation of counter is
  begin
     process(clk)
    variable temp:integer range 0 to 10;
      begin
        if (clk'event and clk='1') then 
          temp:=temp+1;
        if (temp=10) then
          temp:=0;
          end if;
        end if;
       o<= temp;
    end process ;
end Operation;