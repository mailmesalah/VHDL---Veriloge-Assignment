--------***Sequence for detecting single group of zeroes (Q no:60)***-------
-------***Coded by Jenson&Salahudheen***--------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
-----------------------------
entity DetectSeq  is
  port(
    clk:in std_logic;
    datain,reset:in std_logic;
    detect:out std_logic);
end DetectSeq;
-----------------------------
architecture Operation of DetectSeq is

  begin
    process(clk,reset)
      variable f:std_logic:='0';
      variable a:std_logic_vector(0 to 3);
      begin
        
        if(clk='1' or reset='1')then
          
          for i in 3 downto 1 loop
            a(i):=a(i-1);
          end loop;
          a(0):=datain;
          
          f:='0';
          if(a="1001")then
            f:='1';
          end if;
          
          if(reset='1')then
            f:='0';
            a:="0000";  
          end if;
          
        end if;
        detect<=f;
    end process;  
end Operation;