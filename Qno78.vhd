--------***Chemical Experiment(Q no:78)***--------
-------coded by Jenson and Salahudheen----

library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;
  use ieee.std_logic_arith.all;
-----------------------------------
entity chemical is
  port(
    clk:in std_logic;
    input:in std_logic_vector(0 to 3);
    stop:out std_logic); 
end chemical;
-----------------------------------
architecture Operation of chemical is
  
  begin
    process(clk)
      variable a:std_logic_vector(0 to 7);
      variable sto:std_logic:='0';
      begin
        
        if(clk='1')then
          a(4 to 7):=a(0 to 3);
          a(0 to 3):=input;
 
          if(a(0 to 3)="0111" or a(0 to 3)="0110" or a(0 to 3)="1000" or a(0 to 3)="0000")then null;
          elsif(a(0 to 3)=a(4 to 7))then
            sto:='1';
          else
            sto:='0';
          end if;
        end if; 
        stop<=sto;
    end process;
end Operation;