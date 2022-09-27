-------***Frequency Divider By 3 Q no:(29)***-------
-----***Coded by Jenson&Salahudheen***----
library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;
  use ieee.std_logic_arith.all;
 --------------------------------
entity Freq3 is
  port(
    infreq:in std_logic;
    outfreq:inout std_logic);
end Freq3;
---------------------------------
architecture Operation of Freq3 is
    begin
   process(infreq)
     variable x:std_logic:='0';
     variable count:integer:=-1;
      begin
        
        if(infreq='1') then
          count:=count+1;
        end if;
        if (count=3) then
          x:=not x;
          count:=0;
        end if;
          
        outfreq<=x;
       
      end process;
end Operation;