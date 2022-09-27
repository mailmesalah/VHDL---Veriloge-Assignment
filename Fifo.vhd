---------
library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;
----------------------------------------------
entity Fifo is
  port(
    rd,wr,input:in std_logic;
    output:out std_logic);
end Fifo;
----------------------------------------------
architecture Operation of Fifo is
  signal ques:std_logic_vector(19 downto 0);
  begin
    process(rd,wr,input)
      
      variable tail:integer:=-1;
      variable temp:integer:=0;
      variable quev:std_logic_vector(19 downto 0);
      begin
        quev:=ques;
        
        if (wr='1') then
          if(tail < 20) then
            for i in 19 downto 1 loop
              quev(i):=quev(i-1);
            end loop;
            quev(0):=input;
            tail:=tail+1;
          end if;
          
        elsif(rd='1') then
          if (quev > -1) then
            output<=quev(tail);
            quev(tail):='U';
            tail:=tail-1;
          end if;
        end if;
        ques<=quev;
    end process;
end Operation; 