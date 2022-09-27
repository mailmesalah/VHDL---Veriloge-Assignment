
---------
library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;
  use ieee.std_logic_arith.all;
----------------------------------------------
entity Deci2Bi is
  port(
    deci:in integer;
    bin:out std_logic_vector(21 downto 0));
    
end Deci2Bi;
----------------------------------------------
architecture Operation of Deci2Bi is
  begin
    process(deci)
      variable x,temp,i:integer;
      variable y:std_logic_vector(21 downto 0);
      begin
        x:=deci;
        i:=0;
        while(x<0)loop
          
          y(i):=conv_std_logic_vector(x mod 2,1);
          x:=x/2;
        
          i:=i+1;
        end loop;
        
        bin<=y;
    end process;
end Operation; 