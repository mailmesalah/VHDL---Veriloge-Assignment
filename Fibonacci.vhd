
-----***Fibonacci Series Q no:(52)***----

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
---------------------------------
entity Fibonacci is
  port(
    lim:in integer;
    clk:in std_logic;
    o:out integer);
end Fibonacci;
--------------------------------
architecture Operation of Fibonacci is

  begin
    process(lim,clk)
      
      variable a: integer:=0;
      variable b: integer:=1;
      variable c: integer:=0;
      variable count: integer:=0;
      begin
        
       
        if(clk='1' and (lim>c)) then
          o<=c;
          if( count=1) then  
            c:=1;
          else
            c:=a+b;
          end if;
          
          
          a:=b;
          b:=c;
          count:=count+1;
          end if;
    end process;
end Operation;