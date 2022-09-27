--------***Sequence for detecting single group of zeroes (Q no:79)***-------
-------***Coded by Jenson&Salahudheen***--------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
-----------------------------
entity SeqGroup00  is
  port(
    serin:in std_logic;
    detected:out std_logic);
end SeqGroup00;
-----------------------------
architecture Operation of SeqGroup00 is

  begin
    process(serin)
      variable s,d:std_logic:='0';
      variable c:integer:=0;
      begin
        s:=serin;
        
        if(s='0' and c<3 and c/=1)then
          c:=c+1;
        end if; 
        if(s='1' and c=1)then
          c:=c+1;
        end if;
        
        if(c/=0 and c<3)then
          d:='1';
        else
          d:='0';
        end if;
        detected<=d;
    end process;  
end Operation;