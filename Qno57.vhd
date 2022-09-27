--------***Sequence for detecting single group of zeroes (Q no:57)***-------
-------***Coded by Jenson&Salahudheen***--------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
-----------------------------
entity GenericMux  is
  port(
    clk:in std_logic;
    a,b,c,d:in std_logic;
    err:out std_logic);
end GenericMux;
-----------------------------
architecture Operation of GenericMux is

  begin
    process(clk)
      variable f:std_logic:='0';
      variable co:integer:=0;
      begin
        
        if(clk='1')then
          co:=0;
          if(a='1')then
            co:=co+1;
          end if;
          if(b='1')then
            co:=co+1;
          end if;
          if(c='1')then
            co:=co+1;
          end if;
          if(d='1')then
            co:=co+1;
          end if;
          
          if(co>1)then
            f:='1';
          else
            f:='0';
          end if;
        end if;
        err<=f;
    end process;  
end Operation;