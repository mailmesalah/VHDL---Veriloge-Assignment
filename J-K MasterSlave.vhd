------***JK MasterSlave FF(Q no:12)***-----
-----Coded by Jenson and Salahudheen----

library ieee;
use ieee.std_logic_1164.all;
--------------------------------
entity JKMSff is
  port (j,k,pre,clr,clk:in std_logic;
          qq,qqbar:inout std_logic);
end JKMSff;
--------------------------------
architecture Operation of JKMSff is
    
  begin 
    process(pre,clr,clk)
      variable ss,rm,ybar,q:std_logic:='1';
      variable sm,rs,y,qbar:std_logic:='0';
      begin
        if (pre='0') then
          
          sm:='1';
          rm:='0';
          y:=sm;
          ybar:=rm;
          ss:=y;
          rs:=ybar;
          q:=ss;
          qbar:=rs;
    
        elsif(clr='0') then
          sm:='0';
          rm:='1';
          y:=sm;
          ybar:=rm;
          ss:=y;
          rs:=ybar;
          q:=ss;
          qbar:=rs;

        elsif(clk'event and clk='1')then  
          
          sm:=j and qbar;
          rm:=k and q;
          if (sm='0' and rm='0')then
            --no change
          else
            y:=sm;
            ybar:=rm;
          end if;
          
          
        elsif(clk'event and clk='0')then
          ss:=y;
          rs:=ybar;
          q:=ss;
          qbar:=rs;
 
            
        end if;
        qq<=q;
        qqbar<=qbar;
    end process;

end Operation;
