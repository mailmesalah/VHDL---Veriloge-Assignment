
-----------****Microwave Owen Q no:(31)****------------
--------****Coded by Jenson And Salahudheen****----------

library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;
-------------------------------------
entity MicroOwen is
  port(
    hhin:inout integer range 0 to 23;
    mmin,ssin:inout integer range 0 to 59); 
end MicroOwen;
--------------------------------------
architecture Operation of MicroOwen is
  
  begin
    process
      variable hh:integer range 0 to 23;
      variable mm,ss:integer range 0 to 59;   
      begin
                
        hh:=hhin;
        mm:=mmin;
        ss:=ssin;
        
        wait for 1000000000 ns;
        
        if (hhin=0 and mmin=0 and ssin=0) then
          hh:=0;
          mm:=0;
          ss:=0;
        elsif(ss=0) then
          ss:=59;
          if(mm=0) then
            mm:=59;
            if(hh=0) then
              hh:=23;
            else 
              hh:=hh-1;
            end if;
          else 
            mm:=mm-1;
          end if;
        else
          ss:=ss-1;
        end if;
      
      hhin<=hh;
      mmin<=mm;
      ssin<=ss;
      
    end process;
  
end Operation;