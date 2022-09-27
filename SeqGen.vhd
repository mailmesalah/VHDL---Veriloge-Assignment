
----***Sequence Generator +2(Q no:45)***---- 
----coded by Jenson and Salahudheen----

library ieee;
library assignment2;
use assignment2.extras.all;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
---------------------------------
entity SeqGen is
  port(
    n:in integer;
    seqout:out intarray(100 downto 0));
end SeqGen;
---------------------------------
architecture Operation of SeqGen is

  begin
    process(n)
      variable y:integer:=0;
      begin
        for i in 0 to 100 loop

         if(n>=200) then  
           seqout(0)<=0;
         end if;
         if (y<= n) then 
          seqout(i)<=y;
         else 
          exit;
         end if;
         y:=y+2; 
        end loop;
    end process;
end Operation;                                 
