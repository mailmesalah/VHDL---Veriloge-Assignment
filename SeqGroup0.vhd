--------***Sequence for detecting single group of zeroes (Q no:79)***-------
-------***Coded by Jenson&Salahudheen***--------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
-----------------------------
entity SeqGroup0  is
  port(
    clk,serin:in std_logic;
    detected:out std_logic);
end SeqGroup0;
-----------------------------
architecture Operation of SeqGroup0 is

  begin
    process(serin,clk)
      variable a:std_logic_vector(7 downto 0):="11111111";
      variable f:std_logic:='0';
      variable c:integer:=0;
      begin
        
        if (clk'event and clk='1')then
          for i in 7 downto 1 loop-- for shifting 
            a(i):=a(i-1);
          end loop;
          a(0):=serin;
        
          for i in 0 to 7 loop
            if(i=0 and a(i)='0')then
              f:='1';
              if(a(i+1)='1')then
                c:=c+1;
              end if;
            elsif(i=7 and a(i)='0')then
              f:='1';
              if(a(i-1)='1')then
                c:=c+1;
              end if;
            elsif(a(i)='0')then
              f:='1';
              if(a(i-1)='1')then
                c:=c+1;
              elsif(a(i+1)='1')then
                c:=c+1;
              end if;
            end if;
          end loop;
        
        end if;
        
        if(f='1' and c<2)then
          detected<='1';
        else
          detected<='0';
        end if;
    end process;  
end Operation;