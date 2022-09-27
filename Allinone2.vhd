--ASSIGNMENT NO : 2


-----***Half Adder(Q no:1)***---------
-----coded by Jenson and Salah***-----
library ieee;
use ieee.std_logic_1164.all;
------------------------------------------
-----***Entity Declaration***-----
------------------------------------------
entity HalfAdder is
  port(
    a,b:in std_logic;--inputs
    sum,carry:out std_logic); --outputs
end HalfAdder;
------------------------------------------
-----***Architecture Declaration***-----
------------------------------------------
architecture Operation of HalfAdder is
  begin
    process(a,b)
      begin
        if(a=b) then sum<='0'; else sum<='1';
        end if;
        if ((a and b) ='1') then carry<='1'; else carry<='0';
        end if;
    end process;
end Operation;
----====================================================================
-----***Full Adder(Q no: 2)***--------
-----coded by Jenson and Salah***-----
library ieee;
use ieee.std_logic_1164.all;
------------------------------------------
-----***Entity Declaration***-----
------------------------------------------
entity FullAdder is
  port(
    a,b,cin:in std_logic; --inputs
    sum,carry:out std_logic); --outputs
end FullAdder;
------------------------------------------
-----***Architecture Declaration***-----
------------------------------------------
architecture Operation of FullAdder is
  begin
    process(a,b,cin)
      begin
        if((a='0' and b='0' and cin='1') or(a='0' and b='1' and cin='0') or
        (a='1' and b='0' and cin='0')or(a='1' and b='1' and cin='1')) 
        then sum<='1';else sum<='0';  end if;
        if((b='1' and cin='1')or (b='1' and a='1')or(a='1' and cin='1')) 
        then carry<='1';
        else carry<='0';
        end if;
    end process;
end Operation;
----====================================================================


--------***2-1 MUX(Q no: 3)***-----------
-----coded by Jenson and Salahudheen----

library ieee;
 use ieee.std_logic_1164.all;
------------------------------------------
-----***Entity Declaration***-----
------------------------------------------
entity Mux2x1 is
  port(
    a,b,sel:in std_logic; --inputs
    cout:out std_logic); --outputs
end Mux2x1;
------------------------------------------
-----***Architecture Declaration***-----
------------------------------------------
architecture Operation of Mux2x1 is
begin
  process(a,b,sel)
    begin
      if (sel='0') then cout<=a;else cout<=b;
      end if;
  end process;
end Operation;
----====================================================================
--------***4-1 MUX(Q no:4)***-----------
-----coded by Jenson and Salahudheen----

library ieee;
use ieee.std_logic_1164.all;
------------------------------------------
-----***Entity Declaration***-----
------------------------------------------
entity Mux4x1 is
  port(
    a,b,c,d,sel1,sel2:in std_logic;--inputs;
    cout:out std_logic); --outputs
end Mux4x1;
------------------------------------------
-----***Architecture Declaration***-----
------------------------------------------
architecture Operation of Mux4x1 is
begin
  process(a,b,c,d,sel1,sel2)
    begin
      if (sel1='0' and sel2='0') then cout<=a;
      elsif(sel1='0' and sel2='1') then cout<=b;
      elsif(sel1='1' and sel2='0') then cout<=c;
      elsif(sel1='1' and sel2='1') then cout<=d;
      end if;
  end process;
end Operation; 
--====================================================================


--------***8-1 MUX(Q no:5)***-----------
-----coded by Jenson and Salahudheen----

library ieee;
use ieee.std_logic_1164.all;
------------------------------------------
-----***Entity Declaration***-----
------------------------------------------
entity Mux8x1 is
  port(
    a,b,c,d,e,f,g,h,sel1,sel2,sel3:in std_logic;--inputs;
    cout:out std_logic); --outputs
end Mux8x1;
------------------------------------------
-----***Architecture Declaration***-----
------------------------------------------
architecture Operation of Mux8x1 is
begin
  process(a,b,c,d,e,f,g,h,sel1,sel2,sel3)
    begin
      if (sel1='0' and sel2='0' and sel3='0') then cout<=a;
      elsif(sel1='0' and sel2='0' and sel3='1') then cout<=b;
      elsif(sel1='0' and sel2='1' and sel3='0') then cout<=c;
      elsif(sel1='0' and sel2='1' and sel3='1') then cout<=d;
      elsif(sel1='1' and sel2='0' and sel3='0') then cout<=e;
      elsif(sel1='1' and sel2='0' and sel3='1') then cout<=f;
      elsif(sel1='1' and sel2='1' and sel3='0') then cout<=g;
      elsif(sel1='1' and sel2='1' and sel3='1') then cout<=h;
      end if;
  end process;
end Operation;
----====================================================================

--------***16-1 MUX(Q no:6)***----------
-----coded by Jenson and Salahudheen----

library ieee;
use ieee.std_logic_1164.all;
------------------------------------------
-----***Entity Declaration***-----
------------------------------------------
entity Mux16x1 is
  port(
    a,b,c,d,e,f,g,h,i,j,k,l,m,n,
    o,p,sel1,sel2,sel3,sel4:in std_logic; --inputs
    cout:out std_logic); --outputs
end Mux16x1;
------------------------------------------
-----***Architecture Declaration***-----
------------------------------------------
architecture Operation of Mux16x1 is
begin
  process(a,b,c,d,e,f,g,h,sel1,sel2,sel3,sel4)
    begin
     
      if(sel1='0' and sel2='0' and sel3='0' and sel4='0') then cout<=a;
      elsif(sel1='0' and sel2='0' and sel3='0' and sel4='1') then cout<=b;
      elsif(sel1='0' and sel2='0' and sel3='1' and sel4='0') then cout<=c;
      elsif(sel1='0' and sel2='0' and sel3='1' and sel4='1') then cout<=d;
      elsif(sel1='0' and sel2='1' and sel3='0' and sel4='0') then cout<=e;
      elsif(sel1='0' and sel2='1' and sel3='0' and sel4='1') then cout<=f;
      elsif(sel1='0' and sel2='1' and sel3='1' and sel4='0') then cout<=g;
      elsif(sel1='0' and sel2='1' and sel3='1' and sel4='1') then cout<=h;
      elsif(sel1='1' and sel2='0' and sel3='0' and sel4='0') then cout<=i;
      elsif(sel1='1' and sel2='0' and sel3='0' and sel4='1') then cout<=j;
      elsif(sel1='1' and sel2='0' and sel3='1' and sel4='0') then cout<=k;
      elsif(sel1='1' and sel2='0' and sel3='1' and sel4='1') then cout<=l;
      elsif(sel1='1' and sel2='1' and sel3='0' and sel4='0') then cout<=m;
      elsif(sel1='1' and sel2='1' and sel3='0' and sel4='1') then cout<=n;
      elsif(sel1='1' and sel2='1' and sel3='1' and sel4='0') then cout<=o;
      elsif(sel1='1' and sel2='1' and sel3='1' and sel4='1') then cout<=p;
      end if;
  end process;
end Operation;
----====================================================================

--------***1-2 DE-MUX(Q no:7)***--------
-----coded by Jenson and Salahudheen----

library ieee;
use ieee.std_logic_1164.all;
------------------------------------------
-----***Entity Declaration***-----
------------------------------------------
entity DeMux1x2 is
  port(
    a,sel:in std_logic; --inputs
    out1,out2:out std_logic); --outputs
end DeMux1x2;
------------------------------------------
-----***Architecture Declaration***-----
------------------------------------------
architecture Operation of DeMux1x2 is
begin
  process(a,sel)
    begin
      if (sel='0') then out1<=a;out2<='U';
      else out2<=a;out1<='U';
      end if;
  end process;
end Operation;
----====================================================================

--------***1-4 DE-MUX(Q no:8)***--------
-----coded by Jenson and Salahudheen----

library ieee;
use ieee.std_logic_1164.all;
------------------------------------------
-----***Entity Declaration***-----
------------------------------------------
entity DeMux1x4 is
  port(
    a,sel1,sel2:in std_logic; --inputs
    out1,out2,out3,out4:out std_logic); --outputs
end DeMux1x4;
------------------------------------------
-----***Architecture Declaration***-----
------------------------------------------
architecture Operation of DeMux1x4 is
begin
  process(a,sel1,sel2)
    begin
      if (sel1='0' and sel2='0' ) then out1<=a;
        out2<='U';out3<='U';out4<='U';
      elsif (sel1='0' and sel2='1' )then out2<=a;
        out1<='U';out3<='U';out4<='U';
      elsif (sel1='1' and sel2='0' )then out3<=a;
        out2<='U';out1<='U';out4<='U';
      elsif (sel1='1' and sel2='1' )then out4<=a;
        out2<='U';out3<='U';out1<='U';
      end if;
  end process;
end Operation;
----====================================================================

--------***1-8 DE-MUX(Q no:9)***--------
-----Coded by Jenson and Salahudheen----

library ieee;
use ieee.std_logic_1164.all;
------------------------------------------
-----***Entity Declaration***-----
------------------------------------------
entity DeMux1x8 is
  port(
    a,sel1,sel2,sel3:in std_logic; --inputs
    out1,out2,out3,out4,out5,out6,out7,out8:out std_logic); --outputs
end DeMux1x8;
------------------------------------------
-----***Architecture Declaration***-----
------------------------------------------
architecture Operation of DeMux1x8 is
begin
  process(a,sel1,sel2,sel3)
    begin
      if (sel1='0' and sel2='0' and sel3='0')then out1<=a;
        out2<='U';out3<='U';out4<='U';out5<='U';out6<='U';out7<='U';out8<='U';
      elsif (sel1='0' and sel2='0' and sel3='1')then out2<=a;
              out1<='U';out3<='U';out4<='U';out5<='U';out6<='U';out7<='U';out8<='U';
      elsif (sel1='0' and sel2='1'and sel3='0' )then out3<=a;
              out2<='U';out1<='U';out4<='U';out5<='U';out6<='U';out7<='U';out8<='U';
      elsif (sel1='0' and sel2='1'and sel3='1' )then out4<=a;
              out2<='U';out3<='U';out1<='U';out5<='U';out6<='U';out7<='U';out8<='U';
      elsif (sel1='1' and sel2='0' and sel3='0')then out5<=a;
              out2<='U';out3<='U';out4<='U';out1<='U';out6<='U';out7<='U';out8<='U';
      elsif (sel1='1' and sel2='0'and sel3='1' )then out6<=a;
              out2<='U';out3<='U';out4<='U';out5<='U';out1<='U';out7<='U';out8<='U';
      elsif (sel1='1' and sel2='1'and sel3='0' )then out7<=a;
              out2<='U';out3<='U';out4<='U';out5<='U';out6<='U';out1<='U';out8<='U';
      elsif (sel1='1' and sel2='1'and sel3='1' )then out8<=a;
              out2<='U';out3<='U';out4<='U';out5<='U';out6<='U';out7<='U';out1<='U';
      end if;
  end process;
end Operation;

--====================================================================
-----***Half Subtractor(Q no:10)***-----
-----coded by Jenson and Salah***-------
library ieee;
use ieee.std_logic_1164.all;
------------------------------------------
-----***Entity Declaration***-----
------------------------------------------
entity Halfsub is
  port(
    a,b:in std_logic; --inputs
    diff,borrow:out std_logic); --outputs
end Halfsub;
------------------------------------------
-----***Architecture Declaration***-----
------------------------------------------
architecture Operation of Halfsub is
  begin
    process(a,b)
      begin
        if(a=b) then diff<='0'; else diff<='1';
        end if;
        if (a='0' and b='1') then borrow<='1'; else borrow<='0';
        end if;
    end process;
end Operation;
--====================================================================
-----***Full Subtractor(Q no:11)***-----
-----coded by Jenson and Salah***-------

library ieee;
use ieee.std_logic_1164.all;
------------------------------------------
-----***Entity Declaration***-----
------------------------------------------
entity FullSub is
  port(
    a,b,cin:in std_logic; --inputs
    difference,borrow:out std_logic); --outputs
end FullSub;
------------------------------------------
-----***Architecture Declaration***-----
------------------------------------------
architecture Operation of FullSub is
  begin
    process(a,b,cin)
      begin
        if((a='0' and b='0' and cin='1') or(a='0' and b='1' and cin='0') or
        (a='1' and b='0' and cin='0')or(a='1' and b='1' and cin='1')) then difference<='1';
        else difference<='0';  
        end if;
        if((a='0' and b='0' and cin='1')or (a='0' and b='1' and cin='0')or
        (a='0' and b='1' and cin='1')or (a='1' and b='1' and cin='1') )then borrow<='1';
        else borrow<='0';
        end if;
    end process;
end Operation;
--====================================================================
------***JK MasterSlave FF(Q no:12)***-----
-----Coded by Jenson and Salahudheen----

library ieee;
use ieee.std_logic_1164.all;
------------------------------------------
-----***Entity Declaration***-----
------------------------------------------
entity JKMSff is
  port (j,k,pre,clr,clk:in std_logic;--inputs;
          qq,qqbar:inout std_logic); --outputs
end JKMSff;
------------------------------------------
-----***Architecture Declaration***-----
------------------------------------------
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
--====================================================================

-----****Delay Flip Flop Q No:(13)****------
-----Coded by Jenson and Salahudheen--------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
------------------------------------------
-----***Entity Declaration***-----
------------------------------------------
entity DFlipFlops is
  port(
  d,clk,pre,clr:in std_logic; --inputs
  q,qbar:inout std_logic);--buffer
end DFlipFlops;
------------------------------------------
-----***Architecture Declaration***-----
------------------------------------------
architecture Operation of DFlipFlops is

  begin
    process(clk,d,pre,clr)
      variable qq:std_logic:='1';
      variable qqbar:std_logic:='0';
      begin

      if (clk='1' and pre='1' and clr='1' and d='1')then
        qq:=d;
        qqbar:= not qq;
      elsif(clk='1' and pre='1' and clr='1' and d='0')then
        qq:=d;
        qqbar:= not qq;
      end if;
      if(clr='0') then
        qq:='0';
        qqbar:=not qq;
      elsif(pre='0') then
        qq:='1';
        qqbar:=not qq;
      end if;
      q<=qq;
      qbar<=qqbar;
    end process;
end Operation;
--====================================================================
-----**** Toggle Flip Flop Q No:(14)****-----
-----Coded by Jenson and Salahudheen---------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
------------------------------------------
-----***Entity Declaration***-----
------------------------------------------
entity TFlipFlops is
  port(
  t,clk,pre,clr:in std_logic; --inputs
  q,qbar:inout std_logic); --outputs
end TFlipFlops;
------------------------------------------
-----***Architecture Declaration***-----
------------------------------------------
architecture Operation of TFlipFlops is

  begin
    process(clk,t,pre,clr)
      variable qq:std_logic:='1';
      variable qqbar:std_logic:='0';
      begin

      if (clk='1' and pre='1' and clr='1' and t='1')then
        qq:=not qq;
        qqbar:= not qq;
      end if;
      if(clr='0') then
        qq:='0';
        qqbar:=not qq;
      elsif(pre='0') then
        qq:='1';
        qqbar:=not qq;
      end if;
      q<=qq;
      qbar<=qqbar;
    end process;
end Operation;
--====================================================================
---***3 Synchronous Bit Down Counter(Q no:15)***--- 
-------coded by Jenson and Salahudheen---------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
------------------------------------------
-----***Entity Declaration***-----
------------------------------------------
entity SyncThreeDownCount is
  port(
    clk,rst:in std_logic; --inputs
    bcdin:buffer std_logic_vector(2 downto 0);--input/output
    bcdout:out std_logic_vector(2 downto 0)); --outputs
end SyncThreeDownCount;
------------------------------------------
-----***Architecture Declaration***-----
------------------------------------------
architecture Operation of SyncThreeDownCount is

  begin
    process(clk,rst,bcdin)
      variable x:std_logic_vector(2 downto 0);
      begin
        
        x:=bcdin;
        if ((clk'event and clk='1')) then---down counting
          x:=x-1;
        end if;
        if(rst='1') then x:="000";
        end if;
        
        bcdin<=x;
        bcdout<=x;
      
    end process;
end Operation;
--====================================================================
---***3 Synchronous Bit Up Counter(Q no:16)***--- 
----coded by Jenson and Salahudheen----
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
------------------------------------------
-----***Entity Declaration***-----
------------------------------------------
entity SyncThreeUpCount is
  port(
    clk,rst:in std_logic; --inputs
    bcdin:buffer std_logic_vector(2 downto 0);--input/output
    bcdout:out std_logic_vector(2 downto 0)); --outputs
end SyncThreeUpCount;
------------------------------------------
-----***Architecture Declaration***-----
------------------------------------------
architecture Operation of SyncThreeUpCount is
  begin
    process(clk,bcdin,rst)
      variable x:std_logic_vector(2 downto 0);
      begin
        
        x:=bcdin;
        
        if ((clk'event and clk='1')) then---up counting
          x:=x+1;
        end if;
        if(rst='1') then x:="000";
        end if;
        
        bcdin<=x;
        bcdout<=x;
      
    end process;
end Operation;
--====================================================================
---***3 Synchronous Bit Up/Down Counter(Q no:17)***--- 
----coded by Jenson and Salahudheen----

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
------------------------------------------
-----***Entity Declaration***-----
------------------------------------------
entity Sync3UpDownCount is
  port(
    clk,mode,rst:in std_logic; --inputs
    bcdin:buffer std_logic_vector(2 downto 0);--buffer(inout)
    bcdout:out std_logic_vector(2 downto 0)); --outputs
end Sync3UpDownCount;
------------------------------------------
-----***Architecture Declaration***-----
------------------------------------------
architecture Operation of Sync3UpDownCount is

  begin
    process(clk,rst,bcdin,mode)
      variable x:std_logic_vector(2 downto 0);
      begin
              
        x:=bcdin;
        if ((clk'event and clk='1') and mode='0') then---up counting
          x:=x+1;
        elsif ((clk'event and clk='1') and mode ='1') then---down counting
          x:=x-1;
        end if;
        if(rst='1') then x:="000";
        end if;
        bcdin<=x;
        bcdout<=x;
      
    end process;
end Operation;
--====================================================================
----***BCD to 7-Segment Q no:(18)***-----
-----Coded by Jenson and Salahudheen----

library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;
------------------------------------------
-----***Entity Declaration***-----
------------------------------------------
entity BCDto7Seg is
  port(
    s:in std_logic_vector(3 downto 0); --inputs
    o:out std_logic_vector(6 downto 0)); --outputs
end BCDto7Seg;
------------------------------------------
-----***Architecture Declaration***-----
------------------------------------------
Architecture Operation of BCDto7Seg is
begin
  process(s)
    begin
     if    (s="0000") then o<="1111110";
     elsif (s="0001") then o<="0110000";
     elsif (s="0010") then o<="1101101";
     elsif (s="0011") then o<="1111001";
     elsif (s="0100") then o<="0110011";
     elsif (s="0101") then o<="1011011";
     elsif (s="0110") then o<="1011111";
     elsif (s="0111") then o<="1110000";
     elsif (s="1000") then o<="1111111";  
     elsif (s="1001") then o<="1111011";
     else o<="UUUUUUU";
     end  if;
  end process;
end Operation;
--====================================================================
------**** Realising Q No:(19)****-----
----coded by Jenson and Salahudheen----

library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;
------------------------------------------
-----***Entity Declaration***-----
------------------------------------------
entity Realise19 is
  port(
  a,b,c,d:in bit; --inputs
  f:out bit); --outputs
end Realise19;
------------------------------------------
-----***Architecture Declaration***-----
------------------------------------------
architecture Operation of Realise19 is
  begin
    process(a,b,c,d)
      begin
        if   (a='0' and b='0' and c='0' and d='0')then f<='1';
        elsif(a='0' and b='0' and c='1' and d='1')then f<='1';
        elsif(a='0' and b='1' and c='0' and d='1')then f<='1';
        elsif(a='0' and b='1' and c='1' and d='0')then f<='1';
        elsif(a='1' and b='1' and c='0' and d='0')then f<='1';
        elsif(a='1' and b='1' and c='1' and d='1')then f<='1';
        else f<='0';
        end if;
    end process;
end Operation;
--====================================================================
-----**** Realising Q No:(20)****------
----coded by Jenson and Salahudheen----

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
------------------------------------------
-----***Entity Declaration***-----
------------------------------------------
entity Realise20 is
  port(
  a,b,c,d:in bit; --inputs
  f:out bit); --outputs
end Realise20;
------------------------------------------
-----***Architecture Declaration***-----
------------------------------------------
architecture Operation of Realise20 is
  begin
    process(a,b,c,d)
      begin
        if   (a='0' and b='0' and c='0' and d='0')then f<='1';
        elsif(a='0' and b='0' and c='0' and d='1')then f<='1';
        elsif(a='0' and b='0' and c='1' and d='0')then f<='1';
        elsif(a='0' and b='0' and c='1' and d='1')then f<='1';
        elsif(a='1' and b='0' and c='1' and d='1')then f<='1';
        elsif(a='1' and b='1' and c='0' and d='0')then f<='1';
        elsif(a='1' and b='1' and c='1' and d='0')then f<='1';
        elsif(a='1' and b='1' and c='1' and d='1')then f<='1';
        else f<='0';
        end if;
    end process;
end Operation;
--====================================================================
----***BCD to 7-Segment Q no:(21)***------
----coded by Jenson and Salahudheen----

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
------------------------------------------
-----***Entity Declaration***-----
------------------------------------------
entity BCDtoExcess3 is
  port(
    s:in std_logic_vector(3 downto 0); --inputs
    o:out std_logic_vector(3 downto 0)); --outputs
end BCDtoExcess3;
------------------------------------------
-----***Architecture Declaration***-----
------------------------------------------
Architecture Operation of BCDtoExcess3 is
begin
  process(s)
    begin
     if    (s="0000") then o<="0011";
     elsif (s="0001") then o<="0100";
     elsif (s="0010") then o<="0101";
     elsif (s="0011") then o<="0110";
     elsif (s="0100") then o<="0111";
     elsif (s="0101") then o<="1000";
     elsif (s="0110") then o<="1001";
     elsif (s="0111") then o<="1010";
     elsif (s="1000") then o<="1011";  
     elsif (s="1001") then o<="1100";
     else o<="UUUU";
     end  if;
  end process;
end Operation;
--====================================================================
----***Excess 3 to BCD Q no:(22)***---------
-----Coded by Jenson and Salahudheen--------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
------------------------------------------
-----***Entity Declaration***-----
------------------------------------------
entity Excess3toBCD is
  port(
    s:in std_logic_vector(3 downto 0); --inputs
    o:out std_logic_vector(3 downto 0)); --outputs 
end Excess3toBCD;
------------------------------------------
-----***Architecture Declaration***-----
------------------------------------------
Architecture Operation of Excess3toBCD is
begin
  process(s)
    begin
     if    (s="0011") then o<="0000";
     elsif (s="0100") then o<="0001";
     elsif (s="0101") then o<="0010";
     elsif (s="0110") then o<="0011";
     elsif (s="0111") then o<="0100";
     elsif (s="1000") then o<="0101";
     elsif (s="1001") then o<="0110";
     elsif (s="1010") then o<="0111";
     elsif (s="1011") then o<="1000";  
     elsif (s="1100") then o<="1001";
     else o<="UUUU";
     end  if;
  end process;
end Operation;
--====================================================================
----***Four Bit Comparator Q no:(23)***----------
-------***Coded by Jenson&Salahudheen***--------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
------------------------------------------
-----***Entity Declaration***-----
------------------------------------------
entity Comparator4 is
  port(
    a,b:in std_logic_vector(3 downto 0); --inputs
    aeb,agb,alb:out std_logic); --outputs
end Comparator4;
------------------------------------------
-----***Architecture Declaration***-----
------------------------------------------
Architecture Operation of Comparator4 is
begin
  process(a,b)
    begin
     if    (a=b) then 
       alb<='0';
       agb<='0';
       aeb<='1';
     elsif (a>b) then
       alb<='0';
       agb<='1';
       aeb<='0'; 
     elsif (a<b) then
       alb<='1';
       agb<='0';
       aeb<='0'; 
     end  if;
  end process;
end Operation;

--====================================================================
----***Nine Bit Parity Generator Q no:(24)***-----
-----Coded by Jenson and Salahudheen--------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
------------------------------------------
-----***Entity Declaration***-----
------------------------------------------
entity ParityGen9 is
  port(
    input:in std_logic_vector(7 downto 0); --inputs
    output:out std_logic_vector(8 downto 0)); --outputs
end ParityGen9;
------------------------------------------
-----***Architecture Declaration***-----
------------------------------------------
Architecture Operation of ParityGen9 is
begin
  process(input)
    variable x:std_logic_vector(1 downto 0);
    variable y:std_logic_vector(8 downto 0);
    begin
      x:="00";
      for i in 0 to 7 loop
        x:=x+input(i);
        y(i):=input(i);
      end loop;
        y(8):=x(0);
        output<=y;
  end process;
end Operation;
--====================================================================
----***Decade Counter(Q no:25)***---- 
----coded by Jenson and Salahudheen----

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
------------------------------------------
-----***Entity Declaration***-----
------------------------------------------
entity Decade is
  port(
    clk:in std_logic; --inputs
    bcdout:out std_logic_vector(3 downto 0)); --outputs
end Decade;
------------------------------------------
-----***Architecture Declaration***-----
------------------------------------------
architecture Operation of Decade is
  begin
    process(clk)
      variable x:std_logic_vector(3 downto 0):="0000";
      begin
        if(clk='1')then
          if(x="1010")then
            x:="0000";
          end if;
          bcdout<=x;
          x:=x+"0001";
        end if;
    end process;
end Operation;
--====================================================================
----***Johnson Counter(Q no:26)***---- 
----coded by Jenson and Salahudheen----

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
------------------------------------------
-----***Entity Declaration***-----
------------------------------------------
entity Johnson is
  port(
    clk:in std_logic; --inputs
    jout:out bit_vector(3 downto 0)); --outputs
end Johnson;
------------------------------------------
-----***Architecture Declaration***-----
------------------------------------------
architecture Operation of Johnson is
  begin
    process(clk)
      variable x:bit_vector(3 downto 0):="0000";
      begin
        jout<=x;
        if(clk='1')then
          if(x="0000")then
            x:="1000";
          elsif((x(3)='1')and x/="1111") then
            x:=x sra 1;
          else
            x:=x srl 1;
          end if;
        end if;
    end process;
end Operation;    
--====================================================================
----***Base 6 Counter(Q no:28)***---- 
----coded by Jenson and Salahudheen----
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
------------------------------------------
-----***Entity Declaration***-----
------------------------------------------
entity Base6Counter is
  port(
    clk:in std_logic; --inputs
    bout:out std_logic_vector(2 downto 0)); --outputs
end Base6Counter;
------------------------------------------
-----***Architecture Declaration***-----
------------------------------------------
architecture Operation of Base6Counter is
  signal bin:std_logic_vector(2 downto 0):="101";
  begin
    process(clk,bin)
      variable x:std_logic_vector(2 downto 0);
      begin 
        bout<=bin;
        x:=bin;
        if (clk'event and clk='1') then
          if x="101" then
             x:="000";
          else
             x:=x+"001";
          end if; 
        end if;
        bin<=x;
    end process;
end Operation;
--====================================================================
-------***Frequency Divider By 3 Q no:(29)***-----
-----***Coded by Jenson&Salahudheen***----
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
------------------------------------------
-----***Entity Declaration***-----
------------------------------------------
entity Freq3 is
  port(
    infreq:in std_logic; --inputs
    outfreq:inout std_logic); --outputs
end Freq3;
------------------------------------------
-----***Architecture Declaration***-----
------------------------------------------
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
--====================================================================
-------***Frequency Divider By 5 Q no:(30)***-------
-----***Coded by Jenson&Salahudheen***----
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
------------------------------------------
-----***Entity Declaration***-----
------------------------------------------
entity Freq5 is
  port(
    infreq:in std_logic; --inputs
    outfreq:inout std_logic); --outputs
end Freq5;
------------------------------------------
-----***Architecture Declaration***-----
------------------------------------------
architecture Operation of Freq5 is
    begin
   process(infreq)
     variable x:std_logic:='0';
     variable count:integer:=-1;
      begin
        
        if(infreq='1') then
          count:=count+1;
        end if;
        if (count=5) then
          x:=not x;
          count:=0;
        end if;
          
        outfreq<=x;
       
      end process;
end Operation;
--====================================================================
-----------****Microwave Owen Q no:(31)****------------
--------****Coded by Jenson And Salahudheen****----------

library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;
------------------------------------------
-----***Entity Declaration***-----
------------------------------------------
entity MicroOwen is
  port(
    hhin:inout integer range 0 to 23; --inputs
    mmin,ssin:inout integer range 0 to 59); --input/output(buffer)
end MicroOwen;
------------------------------------------
-----***Architecture Declaration***-----
------------------------------------------
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
--====================================================================


-------***Binary to Grey code Convertor(Q no:32)***-------
------coded by Jenson and Salahudheen-------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
------------------------------------------
-----***Entity Declaration***-----
------------------------------------------
entity Binary2Grey is
  port(
    a:in bit_vector(3 downto 0); --inputs
    o:out bit_vector(3 downto 0)); --outputs
end Binary2Grey;
------------------------------------------
-----***Architecture Declaration***-----
------------------------------------------
architecture Operation of  Binary2Grey is
  begin
    process(a)
      begin
      if   (a="0000") then o<="0000";     
      elsif(a="0001") then o<="0001";
      elsif(a="0010") then o<="0011";
      elsif(a="0011") then o<="0010";
      elsif(a="0100") then o<="0110";
      elsif(a="0101") then o<="0111";
      elsif(a="0110") then o<="0101";
      elsif(a="0111") then o<="0100";
      elsif(a="1000") then o<=a sra 1;
      elsif(a="1001") then o<="1101";  
      elsif(a="1010") then o<="1111";
      elsif(a="1011") then o<="1110";
      elsif(a="1100") then o<="1010";
      elsif(a="1101") then o<="1011";
      elsif(a="1110") then o<="1001"; 
      elsif(a="1111") then o<=a sll 3;
      end if;
      end process;
end Operation;
--====================================================================
-------***Grey to Binarycode Convertor(Q no:33)***-------
-----Coded by Jenson and Salahudheen--------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;


------------------------------------------
-----***Entity Declaration***-----
------------------------------------------
entity Grey2Binary is
  port(
    a:in bit_vector(3 downto 0); --inputs
    o:out bit_vector(3 downto 0)); --outputs
end Grey2Binary;
------------------------------------------
-----***Architecture Declaration***-----
------------------------------------------
architecture Operation of  Grey2Binary is
  begin
    process(a)
      begin
      if   (a="0000") then o<="0000";     
      elsif(a="0001") then o<="0001";
      elsif(a="0011") then o<="0010";
      elsif(a="0010") then o<="0011";
      elsif(a="0110") then o<="0100";
      elsif(a="0111") then o<="0101";
      elsif(a="0101") then o<="0110";
      elsif(a="0100") then o<="0111";
      elsif(a="1100") then o<=a sll 1;
      elsif(a="1101") then o<="1001";  
      elsif(a="1111") then o<="1010";
      elsif(a="1110") then o<="1011";
      elsif(a="1010") then o<="1100";
      elsif(a="1011") then o<="1101";
      elsif(a="1001") then o<="1110"; 
      elsif(a="1000") then o<=a sra 3;
      end if;
      end process;
end Operation;
--====================================================================
-----***8 Bit Barrel-Shifter (Q no:34)***----
-----***Coded by Jenson&Salahudheen***---
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
------------------------------------------
-----***Entity Declaration***-----
------------------------------------------
entity BarrelShift is
  port(
    input:in bit_vector(7 downto 0); --inputs
    sel:in std_logic_vector(2 downto 0); --inputs
    output:out bit_vector(0 to 7)); --outputs
end BarrelShift;
------------------------------------------
-----***Architecture Declaration***-----
------------------------------------------
architecture Operation of BarrelShift is
  begin
   process(input,sel)
      variable x:bit_vector(7 downto 0);
      begin
        x:=input;
        if(sel(0)='1')then
          x:= x sll 1;
        end if;
         if(sel(1)='1')then
          x:= x sll 2;
        end if;
         if(sel(2)='1')then
          x:= x sll 4;
        end if;
        output<=x;
    end process;
end Operation;
--====================================================================
---***Carry Look Ahead Adder Q no:(35)***--- 
----coded by Jenson and Salahudheen----

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
------------------------------------------
-----***Entity Declaration***-----
------------------------------------------
entity CarryLookAhead is
  port(
    cin:in std_logic; --inputs
    a,b:in std_logic_vector(0 to 3); --inputs
    carry:out std_logic_vector(0 to 3); --outputs
    c1:out std_logic); --outputs
end CarryLookAhead;
------------------------------------------
-----***Architecture Declaration***-----
------------------------------------------
architecture Operation of CarryLookAhead is
signal x:std_logic;
  begin
    process(a,b,cin)
     variable p:std_logic_vector(0 to 3);
     variable c:std_logic_vector(0 to 3);
     variable g:std_logic_vector(0 to 3);
     variable a1,b1:std_logic_vector(0 to 3);
     variable s:std_logic_vector(0 to 3);
      begin
        a1:=a;
        b1:=b;
        for i in 0 to 3  loop
          if(i=0) then
            g(i):= a(i)and b(i);
            p(i):=a(i) xor b(i);
            c(i):=g(i) or (p(i) and cin);
            s(i):=p(i) xor c(i);
          else
            g(i):= a(i)and b(i);
            p(i):=a(i) xor b(i);
            c(i):=g(i) or (p(i) and c(i-1));
            s(i):=p(i) xor c(i);
          end if;
        end loop;
        carry<=c;
        c1<=c(0);
     end process;
end Operation;
--====================================================================
---*** 4 Bit Adder And Subtractor Usin Mod Q no:(36)***--- 
------coded by Jenson and Salahudheen-------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
------------------------------------------
-----***Entity Declaration***-----
------------------------------------------
entity AddSub4bit is
  port(
    mode:in std_logic; --inputs
    a,b:in std_logic_vector(3 downto 0); --inputs
    carry,borrow:out std_logic; --outputs
    sum,diff:out std_logic_vector(3 downto 0)); --outputs
end AddSub4bit;
------------------------------------------
-----***Architecture Declaration***-----
------------------------------------------
architecture Operation of AddSub4bit is

  begin
    process(mode,a,b)
      variable x:std_logic_vector(4 downto 0);
      begin
        
        if (mode='0') then
          x:='0'&a+b;
          sum<=x(3 downto 0);
          carry<=x(4);
          diff<="UUUU";
          borrow<='U';
        elsif(mode='1') then
          x:='0'&a-b; 
          diff<=x(3 downto 0);
          borrow<=x(4);
          carry<='U';
          sum<="UUUU";
        end if;
  end process;
end Operation;
--====================================================================
----***BCD UpDown Counter(Q no:37)***---- 
----coded by Jenson and Salahudheen----
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
------------------------------------------
-----***Entity Declaration***-----
------------------------------------------
entity BCDUpDown is
  port(
    updown,clk:in std_logic; --inputs
    bcdin:buffer std_logic_vector(3 downto 0);--input/output
    bcdout:out std_logic_vector(3 downto 0)); --outputs
end BCDUpDown;
------------------------------------------
-----***Architecture Declaration***-----
------------------------------------------
architecture Operation of BCDUpDown is
  begin
    process(updown,clk,bcdin)
      variable x:std_logic_vector(3 downto 0);
      begin
        
        x:=bcdin;
        if (updown='0' and (clk'event and clk='1')) then---up counting
          if x="1001" then
           x:="0000";
          else
 
              x:=x+"0001";
          end if; 
        elsif (updown='1' and (clk'event and clk='1')) then---down counting
          if x="0000" then
  
            x:="1001";
          else
   
            x:=x-"0001";
          end if;
        end if;
        
        bcdin<=x;
        bcdout<=x;
      
    end process;
end Operation;
--====================================================================

------***BCD Adder (Q no:38)****----- 
-----Coded by Jenson and Salahudheen-----

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
------------------------------------------
-----***Entity Declaration***-----
------------------------------------------
entity BCDAdder is
  
  port(
    bcdin1:in std_logic_vector(4 downto 0); --inputs;
    bcdin2:in std_logic_vector(4 downto 0); --inputs
    bcdout:out std_logic_vector(7 downto 0)); --outputs
end BCDAdder;
------------------------------------------
-----***Architecture Declaration***-----
------------------------------------------
architecture Operation of BCDAdder is

  begin
    process(bcdin1,bcdin2)
      
      variable x:std_logic_vector(5 downto 0);
      begin
        
        x:="0"& (bcdin1+bcdin2);
        if (conv_integer(x(5 downto 0))>=9) then
          
          x:=(x+"0110");
          bcdout(3 downto 0)<=x(3 downto 0);
          bcdout(7 downto 4)<="00" & x(5 downto 4);
          
        else
          bcdout<="00"& x;  
          
        end if;
        
    end process;
end Operation;
--====================================================================
-----------****Logic Section of ALU Q no:(39)****------------
--------****Coded by Jenson And Salahudheen****----------


library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;
------------------------------------------
-----***Entity Declaration***-----
------------------------------------------
entity alusec is
  port(
    a,b,s1,s2,s3,s4:in std_logic; --inputs
    f:out std_logic); --outputs
end alusec;
------------------------------------------
-----***Architecture Declaration***-----
------------------------------------------
architecture Operation of alusec is
begin
  process(a,b,s1,s2,s3,s4)
    begin
      if (s1='0' and s2='0' and s3='0' and s4='0')    then f<=not a;
      elsif (s1='0' and s2='0' and s3='0' and s4='1') then f<=not b;
      elsif (s1='0' and s2='0' and s3='1' and s4='0') then f<=a and b;
      elsif (s1='0' and s2='0' and s3='1' and s4='1') then f<=a or b;
      elsif (s1='0' and s2='1' and s3='0' and s4='0') then f<=not(a and b);
      elsif (s1='0' and s2='1' and s3='0' and s4='1') then f<=not(a or b);
      elsif (s1='0' and s2='1' and s3='1' and s4='0') then f<=a xor b;
      elsif (s1='0' and s2='1' and s3='1' and s4='1') then f<=not(a xor b);
      end if;
  end process;
end Operation;
--====================================================================
-------***3 Bit Asynchronous up Counter Q no:(40)***-------
-----***Coded by Jenson&Salahudheen***----
library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;
  use ieee.std_logic_arith.all;
------------------------------------------
-----***Entity Declaration***-----
------------------------------------------
entity Async3Up is
  port(
    clk,pre,clr:in std_logic; --inputs
    o0,o1,o2:out std_logic); --outputs
end Async3Up;
------------------------------------------
-----***Architecture Declaration***-----
------------------------------------------
architecture Operation of  Async3Up is
  signal q0:std_logic:='1';
  signal q1:std_logic:='1';
  signal q2:std_logic:='1';

  begin
   process(clk,pre,clr)
      begin
        if(clk='1') then
          q0<=not q0;
          if(q0='1') then
            q1<=not q1;
            if(q1='1') then
              q2<= not q2;
            end if;
          end if;
        end if;
        
        if (clr='0') then
          q0<='0';
          q1<='0';
          q2<='0';
        elsif(pre='0') then
          q0<='1';
          q1<='1';
          q2<='1';
        end if;
    
        o0<=q0;
        o1<=q1;
        o2<=q2;
   end process;
end Operation;
--====================================================================
-------***3 Bit Asynchronous Down Counter Q no:(41)***-------
-----***Coded by Jenson&Salahudheen***----
library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;
  use ieee.std_logic_arith.all;
------------------------------------------
-----***Entity Declaration***-----
------------------------------------------
entity Async3Down is
  port(
    clk,pre,clr:in std_logic; --inputs
    o0,o1,o2:out std_logic); --outputs
end Async3Down;
------------------------------------------
-----***Architecture Declaration***-----
------------------------------------------
architecture Operation of  Async3Down is
  signal q0:std_logic:='0';
  signal q1:std_logic:='0';
  signal q2:std_logic:='0';

  begin
   process(clk,pre,clr)
      begin
        if(clk='0') then
          q0<=not q0;
          if(q0='0') then
            q1<=not q1;
            if(q1='0') then
              q2<= not q2;
            end if;
          end if;
        end if;
        
        if (clr='0') then
          q0<='0';
          q1<='0';
          q2<='0';
        elsif(pre='0') then
          q0<='1';
          q1<='1';
          q2<='1';
        end if;
    
        o0<=q0;
        o1<=q1;
        o2<=q2;
   end process;
end Operation;
--====================================================================
---***Bi Directional Shift Register (Q no:42)***--- 
----coded by Jenson and Salahudheen----

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
------------------------------------------
-----***Entity Declaration***-----
------------------------------------------
entity BiShiftR is
  port(
    mode,srin,slin,clr,clk:in std_logic; --inputs
    ff:inout std_logic_vector(3 downto 0));--input/output
    
end BiShiftR;
------------------------------------------
-----***Architecture Declaration***-----
------------------------------------------
architecture Operation of BiShiftR is
  begin
    process(mode,srin,slin,clr,clk)
      variable x:std_logic_vector(3 downto 0);
      begin
        
        x:=ff;
        if(mode='1' and clk='0') then
          for i in 0 to 2 loop
            x(i):=x(i+1);
          end loop;
          x(3):=srin;
        elsif(mode='0' and clk='0') then
          for i in 3 downto 1 loop
            x(i):=x(i-1);
          end loop;
          x(0):=slin;
        end if;
        
        if (clr='0') then
          x:="0000";
        end if;
        ff<=x;
    end process;
end Operation;
--====================================================================

-------***Ripple Counter  Q no:(43)***-------
-----***Coded by Jenson&Salahudheen***----
library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;
  use ieee.std_logic_arith.all;
------------------------------------------
-----***Entity Declaration***-----
------------------------------------------
entity Ripple4 is
  port(
    clk,pre,clr:in std_logic; --inputs
    o:out std_logic_vector(3 downto 0)); --outputs
end Ripple4;
------------------------------------------
-----***Architecture Declaration***-----
------------------------------------------
architecture Operation of  Ripple4 is
  signal q:std_logic_vector(3 downto 0):="0000";

  begin
   process(clk,pre,clr)
      begin
        if(clk='1') then
          q(0)<=not q(0);
          if(q(0)='1') then
            q(1)<=not q(1);
            if(q(1)='1') then
              q(2)<= not q(2);
              if(q(2)='1') then
                q(3)<= not q(3);
              end if;
            end if;
          end if;
        end if;
        
        if (clr='0') then
          q<="0000";
        elsif(pre='0') then
          q<="1111";
        end if;
    
        o<=q;
   end process;
end Operation;
--====================================================================
-------***4 Bit Ring Counter Q no:(44)***------
-----***Coded by Jenson&Salahudheen***---

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
------------------------------------------
-----***Entity Declaration***-----
------------------------------------------
entity RingCount4 is
  port(
    clk:in std_logic; --inputs
    output:out bit_vector(3 downto 0)); --outputs
end RingCount4;
------------------------------------------
-----***Architecture Declaration***-----
------------------------------------------
architecture Operation of RingCount4 is
begin
  process(clk)
    variable x:bit_vector(3 downto 0):="1000";
    begin
      output<=x;
      if (clk'event and clk='1') then 
        x:=x srl 1;
      end if;
      if(x="0000")then x:="1000";end if;
  end process;
end Operation;



----------Q no(45)-------------
Library  ieee;
library SecThird;
use SecThird.extras.all;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
------------------------------------------
-----***Entity Declaration***-----
------------------------------------------
entity SeqGen is
  port(
    n:in integer; --inputs
    seqout:out intarray(100 downto 0));--input/output
end SeqGen;
------------------------------------------
-----***Architecture Declaration***-----
------------------------------------------
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
--====================================================================

-----***Factorial using function Q no:(46)***----
-----***Coded by Jenson&Salahudheen***---
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
------------------------------------------
-----***Entity Declaration***-----
------------------------------------------
entity Factorial is
  port(
    num:in integer; --inputs
    o:out integer); --outputs
end Factorial;
------------------------------------------
-----***Architecture Declaration***-----
------------------------------------------
architecture Operation of Factorial is

function Fact(n:integer) return integer is

  variable x:integer;
  begin
    x:=1;
    for i in 1 to n loop
      x:=x*i;
    end loop;
    return x;
  end Fact;
  begin
    process(num)
      begin
        o<=Fact(num);
    end process;
end Operation;
--====================================================================
-------Floating point adder (Q no: 48)***-----
----coded by Jenson and Salahudheen----

library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;
  use ieee.std_logic_arith.all;
------------------------------------------
-----***Entity Declaration***-----
------------------------------------------
entity FloatAdder is
  port(
    x,y:in std_logic_vector(11 downto 0); --inputs
    m:in std_logic; --input
    sum:out std_logic_vector(11 downto 0)); --outputs
end FloatAdder;
------------------------------------------
-----***Architecture Declaration***-----
------------------------------------------
architecture Operation of FloatAdder is

  begin
    process(x,y,m)
      variable a,b,c:std_logic_vector(11 downto 0);
      variable big,mode:std_logic;
      begin
        
        a:=x;
        b:=y;
        mode:=m;
        
        -- sorting to get the bigger number for next step 
        if(a(3 downto 0) > b(3 downto 0))then
          big:='0';
        elsif(a(3 downto 0) < b(3 downto 0))then
          big:='1';
        elsif(a(3 downto 0) = b(3 downto 0))then
          big:='0';
        end if;
        
        -- arranging a and b so that they have the same exponent for addition or subraction
        if(big='0')then       -- a equals or greater than b condition
          while(a(3 downto 0) /= b(3 downto 0)) loop
            b(3 downto 0):=b(3 downto 0)+1;
              for i in 4 to 10 loop
                b(i):=b(i+1);
              end loop;
          end loop;
        elsif(big='1')then    -- a less than b condition
          while(b(3 downto 0) /= a(3 downto 0)) loop
            a(3 downto 0):=a(3 downto 0)+1;
              for i in 4 to 10 loop
                a(i):=a(i+1);
              end loop;
          end loop;
        end if;
        
        -- adding or subtracting a and b as needed (mode)
        if(mode='0')then
          if(a(11)='1' or b(11)='1')then
            for i in 4 to 10 loop --shifting one bit for carry to be added
                  a(i):=a(i+1);
                  b(i):=b(i+1);
            end loop;
          end if;
          
          c(11 downto 4):='0'&a(10 downto 4)+b(10 downto 4);
          c(3 downto 0):=a(3 downto 0);
        elsif(mode='1')then
          b(11 downto 4):=not(b(11 downto 4)); -- complimenting for subtraction
          b(11 downto 4):=b(11 downto 4)+1;    -- 2's compliment
          
          c(11 downto 4):=a(11 downto 4)+b(11 downto 4);
          c(3 downto 0):=a(3 downto 0);
        end if;
        
        -- normalizing to a standard form
        if(c(11 downto 4)>"00000000")then
          for i in 11 downto 5 loop
            if(c(i)='1')then
              for j in 11 downto i+1 loop
                for k in 11 downto 5 loop
                  c(k):=c(k-1);
                end loop;
                c(3 downto 0):=c(3 downto 0)-1;-----0000-1=1111
              end loop;
              exit;
            end if;
          end loop;
        end if;
        sum<=c;
    end process;
end Operation;
--====================================================================
-----***Universal CounterQ no:(49)***----
-----***Coded by Jenson&Salahudheen***---

library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;
------------------------------------------
-----***Entity Declaration***-----
------------------------------------------
entity UniversalCounter is
  port(
    mode,enable,load,clr,clk:in std_logic; --inputs
    d:in std_logic_vector(3 downto 0); --input
    q:inout std_logic_vector(3 downto 0));--input/output
    
end UniversalCounter;
------------------------------------------
-----***Architecture Declaration***-----
------------------------------------------
architecture Operation of UniversalCounter is
  begin
    process(mode,enable,load,clr,clk,d)
      variable x:std_logic_vector(3 downto 0):="0000";
      begin
        
        if(clr='1' and clk='1') then
          x:="0000";
        elsif(load='1' and clk='1') then
          x:=d;
        elsif(enable='1' and mode='1' and clk='1')then
          x:=x+1;
        elsif(enable='1' and mode='0' and clk='1')then
          x:=x-1;
        elsif(enable='0' and clk='1')then
          --remain in the current state
          null;
        end if;
        
        q<=x;
    end process;
end Operation;
--====================================================================
-------***Stop Watch (Q no:50)***--------
-------coded by Jenson and Salahudheen----
library ieee;
library SecThird;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;
  use ieee.std_logic_arith.all;
  use SecThird.extras.all;
------------------------------------------
-----***Entity Declaration***-----
------------------------------------------
entity StopWatch is
  port(
    enable,clr,go,clk:in std_logic; --inputs
    q:inout string(4 downto 1));--input/out
    
end StopWatch;
------------------------------------------
-----***Architecture Declaration***-----
------------------------------------------
architecture Operation of StopWatch is
  begin
    process(enable,clr,clk,go)
      variable x:std_logic_vector(11 downto 0):="000000000000";
      variable y:std_logic_vector(21 downto 0):="0000000000000000000000";
      variable s:string(4 downto 1);

      begin
        
        --2500,000 mode counter for generating one sec 
        if(y="1001100010010110100000") then
            
          y:="0000000000000000000000";
        
        
          if (clr='1' and clk='1') then
            x:="000000000000";
          elsif(enable='0' and clk='1') then
            null;--suspending
          elsif(go='1' and clk='1') then
          
            if(x(3 downto 0)="1001") then
              x(3 downto 0):="0000";
              if(x(7 downto 4)="1001") then
                x(7 downto 4):="0000";
                if(x(11 downto 8)="1001") then
                  x(11 downto 8):="0000";
                else
                  x(11 downto 8):=x(11 downto 8)+1;
                end if;
              else
                x(7 downto 4):=x(7 downto 4)+1;
              end if;
            else
              x:=x+1;
            end if;  
          end if;
                  
        
          case x(3 downto 0) is
            when "0000" => s(1):='0';
            when "0001" => s(1):='1';
            when "0010" => s(1):='2';
            when "0011" => s(1):='3';
            when "0100" => s(1):='4';
            when "0101" => s(1):='5';
            when "0110" => s(1):='6';
            when "0111" => s(1):='7';
            when "1000" => s(1):='8';
            when "1001" => s(1):='9';
            when others => null;
          end case;
          s(2):='.';
          case x(7 downto 4) is
            when "0000" => s(3):='0';
            when "0001" => s(3):='1';
            when "0010" => s(3):='2';
            when "0011" => s(3):='3';
            when "0100" => s(3):='4';
            when "0101" => s(3):='5';
            when "0110" => s(3):='6';
            when "0111" => s(3):='7';
            when "1000" => s(3):='8';
            when "1001" => s(3):='9';
            when others => null;
          end case;
          case x(11 downto 8) is
            when "0000" => s(4):='0';
            when "0001" => s(4):='1';
            when "0010" => s(4):='2';
            when "0011" => s(4):='3';
            when "0100" => s(4):='4';
            when "0101" => s(4):='5';
            when "0110" => s(4):='6';
            when "0111" => s(4):='7';
            when "1000" => s(4):='8';
            when "1001" => s(4):='9';
            when others => null;
          end case;
        else
          y:=y+1;
        end if;  
        q<=s;
    end process;
end Operation;
--====================================================================
-------***FIFO Buffer (Q no:51)***-------
-----***Coded by Jenson&Salahudheen***----

library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;
------------------------------------------
-----***Entity Declaration***-----
------------------------------------------
entity Fifo is
  port(
    rd,wr,input:in std_logic; --inputs
    output:out std_logic); --outputs
end Fifo;
------------------------------------------
-----***Architecture Declaration***-----
------------------------------------------
architecture Operation of Fifo is
  signal ques:std_logic_vector(19 downto 0);
  begin
    process(rd,wr,input)
      
      variable tail:integer:=-1;
      variable temp:integer:=0;
      variable quev:std_logic_vector(19 downto 0);
      begin
        quev:=ques;
        
        if (wr='1') then
          if(tail < 20) then
            for i in 19 downto 1 loop
              quev(i):=quev(i-1);
            end loop;
            quev(0):=input;
            tail:=tail+1;
          end if;
          
        elsif(rd='1') then
          if (quev > -1) then
            output<=quev(tail);
            quev(tail):='U';
            tail:=tail-1;
          end if;
        end if;
        ques<=quev;
    end process;
end Operation;
--====================================================================
-----***Fibonacci Series Q no:(52)***----
-----***Coded by Jenson&Salahudheen***----

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
------------------------------------------
-----***Entity Declaration***-----
------------------------------------------
entity Fibonacci is
  port(
    lim:in integer; --inputs
    clk:in std_logic; --inputs
    o:out integer); --outputs
end Fibonacci;
------------------------------------------
-----***Architecture Declaration***-----
------------------------------------------
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
--====================================================================
--------***ROM 16x16x8(Q no:53)***--------
-------coded by Jenson and Salahudheen----

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
------------------------------------------
-----***Entity Declaration***-----
------------------------------------------
entity ROM16x16x8 is
  port(
    clk,read,cs:in std_logic; --inputs
    add:in std_logic_vector(15 downto 0); --inputs
    data:out std_logic_vector(0 to 7)); --outputs
end ROM16x16x8;
------------------------------------------
-----***Architecture Declaration***-----
------------------------------------------
architecture Operation of ROM16x16x8 is
  
  type rom is array (0 to 15,0 to 15) of std_logic_vector(0 to 7);
  signal r:rom:=((("00111110"),("11111111"),("10101010"),("01010101"),
                ("00000000"),("00000000"),("00000000"),("00000000"),
                ("00000000"),("00000000"),("00000000"),("00000000"),
                ("00000000"),("00000000"),("00000000"),("00000000")),
                (("00000000"),("00000000"),("00000000"),("00000000"),
                ("00000000"),("11111111"),("00000000"),("00000000"),
                ("00000000"),("00000000"),("00000000"),("00000000"),
                ("00000000"),("00000000"),("00000000"),("00000000")),
                (("00000000"),("00000000"),("00000000"),("00000000"),
                ("11111111"),("00000000"),("00000000"),("00000000"),
                ("00000000"),("00000000"),("00000000"),("00000000"),
                ("00000000"),("00000000"),("00000000"),("00000000")),
                (("00000000"),("00000000"),("00000000"),("00000000"),
                ("00000000"),("00000000"),("00000000"),("00000000"),
                ("00000000"),("00000000"),("00000000"),("00000000"),
                ("00000000"),("00000000"),("00000000"),("00000000")),
                (("00000000"),("00000000"),("00000000"),("00000000"),
                ("00000000"),("00000000"),("00000000"),("00000000"),
                ("00000000"),("11111111"),("00000000"),("00000000"),
                ("00000000"),("00000000"),("00000000"),("00000000")),
                (("00000000"),("00000000"),("00000000"),("00000000"),
                ("00000000"),("00000000"),("00000000"),("00000000"),
                ("00000000"),("00000000"),("00000000"),("00000000"),
                ("00000000"),("00000000"),("00000000"),("00000000")),
                (("00000000"),("00000000"),("00000000"),("00000000"),
                ("00000000"),("00000000"),("00000000"),("00000000"),
                ("00000000"),("00000000"),("00000000"),("00000000"),
                ("00000000"),("00000000"),("00000000"),("00000000")),
                (("00000000"),("00000000"),("00000000"),("00000000"),
                ("00000000"),("00000000"),("00000000"),("00000000"),
                ("00000000"),("00000000"),("00000000"),("00000000"),
                ("00000000"),("00000000"),("00000000"),("00000000")),
                (("00000000"),("00000000"),("00000000"),("00000000"),
                ("00000000"),("00000000"),("00000000"),("00000000"),
                ("00000000"),("00000000"),("00000000"),("00000000"),
                ("00000000"),("00000000"),("00000000"),("00000000")),
                (("00000000"),("00000000"),("00000000"),("00000000"),
                ("00000000"),("00000000"),("00000000"),("00000000"),
                ("00000000"),("00000000"),("00000000"),("00000000"),
                ("00000000"),("00000000"),("00000000"),("00000000")),
                (("00000000"),("00000000"),("00000000"),("00000000"),
                ("00000000"),("00000000"),("00000000"),("00000000"),
                ("00000000"),("00000000"),("00000000"),("00000000"),
                ("00000000"),("00000000"),("00000000"),("00000000")),
                (("00000000"),("00000000"),("00000000"),("00000000"),
                ("00000000"),("00000000"),("00000000"),("00000000"),
                ("00000000"),("00000000"),("00000000"),("00000000"),
                ("00000000"),("00000000"),("00000000"),("00000000")),
                (("00000000"),("00000000"),("00000000"),("00000000"),
                ("00000000"),("00000000"),("00000000"),("00000000"),
                ("00000000"),("00000000"),("00000000"),("00000000"),
                ("00000000"),("00000000"),("00000000"),("00000000")),
                (("00000000"),("00000000"),("00000000"),("00000000"),
                ("00000000"),("00000000"),("00000000"),("00000000"),
                ("00000000"),("00000000"),("00000000"),("00000000"),
                ("00000000"),("00000000"),("00000000"),("00000000")),
                (("00000000"),("00000000"),("00000000"),("00000000"),
                ("00000000"),("00000000"),("00000000"),("00000000"),
                ("00000000"),("00000000"),("00000000"),("00000000"),
                ("00000000"),("00000000"),("00000000"),("00000000")),
                (("00000000"),("00000000"),("00000000"),("00000000"),
                ("00000000"),("00000000"),("00000000"),("00000000"),
                ("00000000"),("00000000"),("00000000"),("00000000"),
                ("00000000"),("00000000"),("00000000"),("00000000")));
  begin
    process(clk,read,cs,add)
      begin
        data<=r(conv_integer(add(15 downto 8)),conv_integer(add(7 downto 0)));
   end process; 
end Operation;

--====================================================================
--------***RAM 16x16x8(Q no:54)***--------
-------coded by Jenson and Salahudheen----

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
------------------------------------------
-----***Entity Declaration***-----
------------------------------------------
entity RAM16x16x8 is
  port(
    clk,read,cs,write:in std_logic; --inputs
    add:in std_logic_vector(15 downto 0); --inputs
    data:inout std_logic_vector(0 to 7));--input/out
end RAM16x16x8;
------------------------------------------
-----***Architecture Declaration***-----
------------------------------------------
architecture Operation of RAM16x16x8 is
  
  type ram is array (0 to 15,0 to 15) of std_logic_vector(0 to 7);
  
  begin
    process(clk,read,cs,add,write)
      variable r:ram:=((("00111110"),("11111111"),("10101010"),("01010101"),
            ("00000000"),("00000000"),("00000000"),("00000000"),
            ("00000000"),("00000000"),("00000000"),("00000000"),
            ("00000000"),("00000000"),("00000000"),("00000000")),
            (("00000000"),("00000000"),("00000000"),("00000000"),
            ("00000000"),("11111111"),("00000000"),("00000000"),
            ("00000000"),("00000000"),("00000000"),("00000000"),
            ("00000000"),("00000000"),("00000000"),("00000000")),
            (("00000000"),("00000000"),("00000000"),("00000000"),
            ("11111111"),("00000000"),("00000000"),("00000000"),
            ("00000000"),("00000000"),("00000000"),("00000000"),
            ("00000000"),("00000000"),("00000000"),("00000000")),
            (("00000000"),("00000000"),("00000000"),("00000000"),
            ("00000000"),("00000000"),("00000000"),("00000000"),
            ("00000000"),("00000000"),("00000000"),("00000000"),
            ("00000000"),("00000000"),("00000000"),("00000000")),
            (("00000000"),("00000000"),("00000000"),("00000000"),
            ("00000000"),("00000000"),("00000000"),("00000000"),
            ("00000000"),("11111111"),("00000000"),("00000000"),
            ("00000000"),("00000000"),("00000000"),("00000000")),
            (("00000000"),("00000000"),("00000000"),("00000000"),
            ("00000000"),("00000000"),("00000000"),("00000000"),
            ("00000000"),("00000000"),("00000000"),("00000000"),
            ("00000000"),("00000000"),("00000000"),("00000000")),
            (("00000000"),("00000000"),("00000000"),("00000000"),
            ("00000000"),("00000000"),("00000000"),("00000000"),
            ("00000000"),("00000000"),("00000000"),("00000000"),
            ("00000000"),("00000000"),("00000000"),("00000000")),
            (("00000000"),("00000000"),("00000000"),("00000000"),
            ("00000000"),("00000000"),("00000000"),("00000000"),
            ("00000000"),("00000000"),("00000000"),("00000000"),
            ("00000000"),("00000000"),("00000000"),("00000000")),
            (("00000000"),("00000000"),("00000000"),("00000000"),
            ("00000000"),("00000000"),("00000000"),("00000000"),
            ("00000000"),("00000000"),("00000000"),("00000000"),
            ("00000000"),("00000000"),("00000000"),("00000000")),
            (("00000000"),("00000000"),("00000000"),("00000000"),
            ("00000000"),("00000000"),("00000000"),("00000000"),
            ("00000000"),("00000000"),("00000000"),("00000000"),
            ("00000000"),("00000000"),("00000000"),("00000000")),
            (("00000000"),("00000000"),("00000000"),("00000000"),
            ("00000000"),("00000000"),("00000000"),("00000000"),
            ("00000000"),("00000000"),("00000000"),("00000000"),
            ("00000000"),("00000000"),("00000000"),("00000000")),
            (("00000000"),("00000000"),("00000000"),("00000000"),
            ("00000000"),("00000000"),("00000000"),("00000000"),
            ("00000000"),("00000000"),("00000000"),("00000000"),
            ("00000000"),("00000000"),("00000000"),("00000000")),
            (("00000000"),("00000000"),("00000000"),("00000000"),
            ("00000000"),("00000000"),("00000000"),("00000000"),
            ("00000000"),("00000000"),("00000000"),("00000000"),
            ("00000000"),("00000000"),("00000000"),("00000000")),
            (("00000000"),("00000000"),("00000000"),("00000000"),
            ("00000000"),("00000000"),("00000000"),("00000000"),
            ("00000000"),("00000000"),("00000000"),("00000000"),
            ("00000000"),("00000000"),("00000000"),("00000000")),
            (("00000000"),("00000000"),("00000000"),("00000000"),
            ("00000000"),("00000000"),("00000000"),("00000000"),
            ("00000000"),("00000000"),("00000000"),("00000000"),
            ("00000000"),("00000000"),("00000000"),("00000000")),
            (("00000000"),("00000000"),("00000000"),("00000000"),
            ("00000000"),("00000000"),("00000000"),("00000000"),
            ("00000000"),("00000000"),("00000000"),("00000000"),
            ("00000000"),("00000000"),("00000000"),("00000000")));
      begin
        if (write='1' and clk='1' and cs='1') then
          r(conv_integer(add(15 downto 8)),conv_integer(add(7 downto 0))):=data;
        elsif (read='1' and cs='1' and clk='1') then
          data<=r(conv_integer(add(15 downto 8)),conv_integer(add(7 downto 0)));
        end if;
   end process; 
end Operation;
--====================================================================


-------***RAM 16x16x32(Q no:55)***--------
-------coded by Jenson and Salahudheen----

library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;
  use ieee.std_logic_arith.all;
------------------------------------------
-----***Entity Declaration***-----
------------------------------------------
entity RAM16x16x32 is
  port(
    clk,rw,en:in std_logic; --inputs
    add:in std_logic_vector(15 downto 0); --inputs
    data:inout std_logic_vector(0 to 31));--buffer
end RAM16x16x32;
------------------------------------------
-----***Architecture Declaration***-----
------------------------------------------
architecture Operation of RAM16x16x32 is
  
  type ram is array (0 to 15,0 to 15) of std_logic_vector(0 to 31);
  signal r:ram;
  begin
    process(clk,rw,en,add)
            
      begin
        if(en='0') then 
          null;
        elsif (rw='0' and clk='1' and en='1') then
          r(conv_integer(add(15 downto 8)),conv_integer(add(7 downto 0)))<=data;
        elsif (rw='1' and en='1' and clk='1') then
          data<=r(conv_integer(add(15 downto 8)),conv_integer(add(7 downto 0)));
        end if;
   end process; 
end Operation;
--====================================================================
------***Input Priority Encoder (Q no:56)***--------
-------coded by Jenson and Salahudheen----

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
------------------------------------------
-----***Entity Declaration***-----
------------------------------------------
entity PrioEncod8 is
  port(
    i:in std_logic_vector(7 downto 0); --inputs
    en:in std_logic; --inputs
    a:out std_logic_vector(2 downto 0); --outputs
    gs,eo:out std_logic); --outputs
end PrioEncod8;
------------------------------------------
-----***Architecture Declaration***-----
------------------------------------------
architecture Operation of PrioEncod8 is
  begin
    process(i,en)
      begin
        if(en='1') then
          a<="111";gs<='1';eo<='1';
        elsif(en='0' and i(7)='0') then
          a<="000";gs<='0';eo<='1';
        elsif(en='0' and i(7)='1' and i(6)='0') then
          a<="001";gs<='0';eo<='1';
        elsif(en='0' and i(7)='1' and i(6)='1' and i(5)='0') then 
          a<="010";gs<='0';eo<='1';
        elsif(en='0' and i(7)='1' and i(6)='1' and i(5)='1'  and i(4)='0') then 
          a<="011";gs<='0';eo<='1';
        elsif(en='0' and i(7)='1' and i(6)='1' and i(5)='1'  and i(4)='1' and i(3)='0') then
          a<="100";gs<='0';eo<='1';
        elsif(en='0' and i(7)='1' and i(6)='1' and i(5)='1'  and i(4)='1' and i(3)='1' and i(2)='0') then
          a<="101";gs<='0';eo<='1';
        elsif(en='0' and i(7)='1' and i(6)='1' and i(5)='1'  and i(4)='1' and i(3)='1' and i(2)='1' and i(1)='0') then
          a<="110";gs<='0';eo<='1';
        elsif(en='0' and i(7)='1' and i(6)='1' and i(5)='1'  and i(4)='1' and i(3)='1' and i(2)='1' and i(1)='1' and i(0)='0') then
          a<="111";gs<='0';eo<='1';
        elsif(en='0' and i(7)='1' and i(6)='1' and i(5)='1'  and i(4)='1' and i(3)='1' and i(2)='1' and i(1)='1' and i(0)='1') then
          a<="111";gs<='1';eo<='0';
        end if;
   end process; 
end Operation;
--====================================================================

-----***Generic Multiplexer (Q no:57)***----
-----***Coded by Jenson&Salahudheen***---

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
------------------------------------------
-----***Entity Declaration***-----
------------------------------------------
entity GenericMux is
  generic(n:natural:=2);
  port(
    en:in std_logic; --inputs
    sel:in std_logic_vector(0 to n-1); --inputs
    data:in std_logic_vector(0 to 2**n-1); --inputs
    y:out std_logic); --outputs
end GenericMux;
------------------------------------------
-----***Architecture Declaration***-----
------------------------------------------
architecture Operation of GenericMux is
  
  begin
    process(en,sel,data)
      variable index:integer;
      begin
        if(en='1')then
          index:=conv_integer(sel);
          y<=data(index);
        end if;
    end process;
end Operation;
--====================================================================
-------Hamming code error correction (Q no:58)***-------
-----***Coded by Jenson&Salahudheen***----

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
------------------------------------------
-----***Entity Declaration***-----
------------------------------------------
entity HammingCode is
  port(
    inhcode:in std_logic_vector(1 to 7); --inputs
    err:out std_logic;
    errbitpos:out std_logic_vector(3 downto 1);
    outhcode:out std_logic_vector(1 to 7)); --outputs
end HammingCode;
------------------------------------------
-----***Architecture Declaration***-----
------------------------------------------
architecture Operation of HammingCode is

  begin
    process(inhcode)
      variable x:std_logic_vector(1 to 7);
      variable parity:std_logic_vector(3 downto 1);
      variable errpos:integer:=0;
      variable fail:std_logic:='0';
      begin
        x:=inhcode;
        
        parity(1):=x(1);
        parity(2):=x(2);
        parity(3):=x(4);
        
        -- error checking
        for i in 1 to 7 loop
          if(i=3 or i=5 or i=7) then
            parity(1):=parity(1) xor x(i);
          end if;
          if(i=3 or i=6 or i=7)then
            parity(2):=parity(2) xor x(i);
          end if;
          if(i=7 or i=6 or i=5)then
            parity(3):=parity(3) xor x(i);
          end if;      
        end loop;
        
        -- error correcting
        if(parity="000")then
          null;
        elsif(parity>"000")then
          fail:='1';
          errpos:=conv_integer(parity);
          x(errpos):=not(x(errpos));
        end if;

        -- output
        err<=fail;
        errbitpos<=parity;
        outhcode<=x;
    end process;
end Operation;
--====================================================================
------***Checker(Q no:59)***--------
-------coded by Jenson and Salahudheen----

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
------------------------------------------
-----***Entity Declaration***-----
------------------------------------------
entity Majority is
  port(
    a,b,c,d:in std_logic; --inputs
    err:out std_logic); --outputs
end Majority;
------------------------------------------
-----***Architecture Declaration***-----
------------------------------------------
architecture Operation of Majority is
  
  begin
    process(a,b,c,d)
      variable count:integer;
      begin
        count:=0;
        if(a='1')then count:=count+1;end if;
        if(b='1')then count:=count+1;end if;
        if(c='1')then count:=count+1;end if;
        if(d='1')then count:=count+1;end if;
        if(count>1)then
          err<='1';
        else
          err<='0';
        end if;
    end process;
end Operation;
--====================================================================
-----***Sequence Detector(1001) (Q no:60)***----
-----***Coded by Jenson&Salahudheen***----

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
------------------------------------------
-----***Entity Declaration***-----
------------------------------------------
entity seq1001 is
  port(
    datain,clk,reset:in std_logic; --inputs
    detected:out std_logic); --outputs
end seq1001;
------------------------------------------
-----***Architecture Declaration***-----
------------------------------------------
architecture Operation of seq1001 is
  
  begin
    process(clk,reset)
      variable a:std_logic_vector(0 to 3);
      variable f:std_logic;
      variable count:integer:=0;
      begin
        if(clk='1' or reset='1')then
          f:='0';
          count:=count+1;
          for i in 3 downto 1 loop
            a(i):=a(i-1);
          end loop;
          a(0):=datain;
          
          if(a="1001" and count>4)then
            f:='1';
            count:=0;
          end if;
          if(reset='1')then
            a:="0000";
            f:='0';
          end if;
        end if;
        detected<=f;
    end process;
end Operation;


--====================================================================
-------***RAM 16x16x8(Q no:61)***--------
-------coded by Jenson and Salahudheen----

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
------------------------------------------
-----***Entity Declaration***-----
------------------------------------------
entity RAMM16x16x8 is
  port(
    clk,ce,we,oe:in std_logic; --inputs
    add:in std_logic_vector(15 downto 0);
    data:inout std_logic_vector(0 to 7));--buffer
end RAMM16x16x8;
------------------------------------------
-----***Architecture Declaration***-----
------------------------------------------
architecture Operation of RAMM16x16x8 is
  
  type ram is array (0 to 15,0 to 15) of std_logic_vector(0 to 7);
  signal r:ram;
  begin
    process(clk,ce,we,add,oe)
      begin
        if(oe='1') then
          if(ce='0') then 
           null;
          elsif (we='0' and clk='1' and ce='1') then
            r(conv_integer(add(7 downto 4)),conv_integer(add(3 downto 0)))<=data;
          elsif (we='1' and ce='1' and clk='1') then
            data<=r(conv_integer(add(7 downto 4)),conv_integer(add(3 downto 0)));
          end if;
        else
        end if;
   end process; 
end Operation;
--====================================================================
----***Sequence Q no:(62)***---- 
----coded by Jenson and Salahudheen----

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
------------------------------------------
-----***Entity Declaration***-----
------------------------------------------
entity Qno62 is
  port(
    clk:std_logic; --inputs
    seqout:out std_logic_vector(3 downto 0)); --outputs
end Qno62;
------------------------------------------
-----***Architecture Declaration***-----
------------------------------------------
architecture Operation of Qno62 is

  begin
    process(clk)
      variable x:std_logic_vector(3 downto 0):="1100";
      begin
      if (clk='1') then
            case x is
              when "0000" => x:="0010";
              when "0010" => x:="0100";
              when "0100" => x:="1000";
              when "1000" => x:="0011";
              when "0011" => x:="0110";
              when "0110" => x:="1001";
              when "1001" => x:="1100";
              when "1100" => x:="0000";
              when others => null;
            end case;
          end if;
          seqout<=x;  
    end process;
  end Operation;
--====================================================================
-------***Logic Block Q no:(63)***------
-----***Coded by Jenson&Salahudheen***---
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
------------------------------------------
-----***Entity Declaration***-----
------------------------------------------
entity LogicBlock is
  port(
    n:in integer; --inputs
    SumEven,SumOdd:out integer); --outputs
end LogicBlock;
------------------------------------------
-----***Architecture Declaration***-----
------------------------------------------
architecture Operation of LogicBlock is
 begin
   process(n)
    variable x:integer;
    variable y:integer;
      begin
        x:=0;
        y:=0;
        for i in 0 to n loop
          if(i mod 2=0) then 
            x:=x+i;
          else
            y:=y+i;
          end if;
        end loop;
        SumOdd<=y;
        SumEven<=x;
   end process;
end Operation;
--====================================================================
-------***Sorting in Ascending and Decending Q no:(64)***-------
-----***Coded by Jenson&Salahudheen***---
library ieee;
library SecThird;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;
  use ieee.std_logic_arith.all;
  use SecThird.Extras.all;
------------------------------------------
-----***Entity Declaration***-----
------------------------------------------
entity SortingMod is
  port(
    a:in integera; --inputs
    mode:in std_logic; --inputs
    o:out integera); --outputs
end SortingMod;
------------------------------------------
-----***Architecture Declaration***-----
------------------------------------------
architecture Operation of  SortingMod is
 begin
   process(a,mode)
    variable temp:integer;
    variable z:integera;
      begin
        z:=a;
       if (mode='0') then 
        for i in 0 to 8 loop
          for j in i+1 to 9 loop
            if ((z(i)>z(j))) then
              temp:=z(i);
              z(i):=z(j);
              z(j):=temp;
            end if;
          end loop;
        end loop; 
      elsif(mode='1') then 
        for i in 0 to 8 loop
          for j in i+1 to 9 loop
            if ((z(i)<z(j))) then
              temp:=z(i);
              z(i):=z(j);
              z(j):=temp;
            end if;
          end loop;
        end loop; 
      end if;
      o<=z;
  end process;
end Operation;
--====================================================================
---***Sequence 2.4.6...N or N.N-2.N-1...0 Q no:(65)***--- 
----coded by Jenson and Salahudheen----

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
------------------------------------------
-----***Entity Declaration***-----
------------------------------------------
entity SeqUpDown is
  port(
    mode,rst,clk:in std_logic; --inputs
    n:in integer; --inputs
    seqout:out integer); --outputs
end SeqUpDown;
------------------------------------------
-----***Architecture Declaration***-----
------------------------------------------
architecture Operation of SeqUpDown is

  begin
    process(mode,rst,n,clk)
      variable x:integer:=0;
      variable upinitialised:std_logic:='0';
      variable dninitialised:std_logic:='0';
      begin
        
        if(mode='1' and upinitialised='0') then 
          x:=n;
          upinitialised:='1';
          dninitialised:='0';
        elsif(mode='0' and dninitialised='0') then
          x:=0;
          dninitialised:='1';
          upinitialised:='0';
        end if;
        
        if (mode='0' and clk='1' and x<n) then
          x:=x+2;
        elsif(mode='1' and clk='1' and x>0) then
          x:=x-2; 
        end if;
        
        if(rst='1') then
          x:=0;
        end if;
        seqout<=x;
  end process;
end Operation;
--====================================================================
-----***BCD to Seven using ROM(Q no:66)***------
-------coded by Jenson and Salahudheen----

library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;
  use ieee.std_logic_arith.all;
------------------------------------------
-----***Entity Declaration***-----
------------------------------------------
entity BCD2Seven is
  port(
    inbcd:in std_logic_vector(3 downto 0); --inputs
    segout:out std_logic_vector(0 to 6)); --outputs
end BCD2Seven;
------------------------------------------
-----***Architecture Declaration***-----
------------------------------------------
architecture Operation of BCD2Seven is
  
  type rom is array (0 to 9,0 to 6) of std_logic;
  signal r:rom:=(("1111110"),("0110000"),("1101101"),("1111001"),("0110011"),("1011011"),("1011111"),("1110000"),("1111111"),("1111011"));
  begin
    process(inbcd)
      variable x:std_logic_vector(0 to 6);
      begin
      for i in 0 to 9 loop
        for j in  0 to 6 loop
          if(i=conv_integer(inbcd))then
            x(j):=r(i,j);
          end if;
        end loop;
      end loop;
      segout<=x;
   end process; 
end Operation;
--====================================================================
--------***Dual RAM 16x16x8(Q no:67)***--------
-------coded by Jenson and Salahudheen----

library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;
  use ieee.std_logic_arith.all;
------------------------------------------
-----***Entity Declaration***-----
------------------------------------------
entity DualRAM8 is
  port(
    clk,read1,read2,cs1,cs2,write1,write2:in std_logic; --inputs
    add1,add2:in std_logic_vector(6 downto 0); --inputs
    data1,data2:inout std_logic); --outputs
end DualRAM8;
------------------------------------------
-----***Architecture Declaration***-----
------------------------------------------
architecture Operation of DualRAM8 is
  
  type ram is array (0 to 15,0 to 7) of std_logic;
  signal r:ram;
  begin
    process(clk,read1,cs1,add1,write1,read2,cs2,add2,write2)
      
 
      begin
        if (write1='1' and clk='1' and cs1='1') then
          r(conv_integer(add1(6 downto 3)),conv_integer(add1(2 downto 0)))<=data1;
        elsif (read1='1' and cs1='1' and clk='1') then
          data1<=r(conv_integer(add1(6 downto 3)),conv_integer(add1(2 downto 0)));
        end if;
        if (write2='1' and clk='1' and cs2='1') then
          r(conv_integer(add2(6 downto 3)),conv_integer(add2(2 downto 0)))<=data2;
        elsif (read2='1' and cs2='1' and clk='1') then
          data2<=r(conv_integer(add2(6 downto 3)),conv_integer(add2(2 downto 0)));
        end if;
   end process; 
end Operation;
--====================================================================
--------***Single Port RAM 255x8 Bit(Q no:68)***--------
-------coded by Jenson and Salahudheen----

library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;
  use ieee.std_logic_arith.all;
------------------------------------------
-----***Entity Declaration***-----
------------------------------------------
entity SingleRAM8 is
  port(
    clk,read,cs,write:in std_logic; --inputs
    add:in std_logic_vector(7 downto 0); --inputs
    data:inout std_logic_vector(7 downto 0));--buffer
end SingleRAM8;
------------------------------------------
-----***Architecture Declaration***-----
------------------------------------------
architecture Operation of SingleRAM8 is
  
  type ram is array (0 to 15,0 to 15) of std_logic_vector(7 downto 0);
  signal r:ram;
  begin
    process(clk,read,cs,write)
     
      begin
        if (write='1' and clk='1' and cs='1') then
          r(conv_integer(add(7 downto 4)),conv_integer(add(3 downto 0)))<=data;
        elsif (read='1' and cs='1' and clk='1') then
          data<=r(conv_integer(add(7 downto 4)),conv_integer(add(3 downto 0)));
        end if;
     end process; 
end Operation;
--====================================================================
---*** Searching Number in an Array Q no:(69)***--- 
----coded by Jenson and Salahudheen----

library ieee;
library SecThird;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;
  use ieee.std_logic_arith.all;
  use SecThird.extras.all;
------------------------------------------
-----***Entity Declaration***-----
------------------------------------------
entity SearchingNo is
  port(
    a:in intarray(4 downto 0); --inputs
    search:in integer; --inputs
    found:out std_logic; --outputs
    count:out integer); --outputs
end SearchingNo;
------------------------------------------
-----***Architecture Declaration***-----
------------------------------------------
architecture Operation of SearchingNo is

  begin
    process(a,search)
      variable vCount:integer;
      variable vFound:std_logic;
      begin
        
        vCount:=0;
        vFound:='0';
        for i in a'range loop
          if(a(i)=search) then
            vFound:='1';
            vCount:=vCount+1;
          end if;
        end loop;
        count<=vCount;
        found<=vFound;
  end process;
end Operation;
--====================================================================

--------***Asyncronous Dual RAM 16x16x8(Q no:70)***--------
-------coded by Jenson and Salahudheen----

library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;
  use ieee.std_logic_arith.all;
------------------------------------------
-----***Entity Declaration***-----
------------------------------------------
entity AsyncDualRAM8 is
  port(
    read1,read2,cs1,cs2,write1,write2:in std_logic; --inputs
    add1,add2:in std_logic_vector(6 downto 0); --inputs
    data1,data2:inout std_logic);--buffer
end AsyncDualRAM8;
------------------------------------------
-----***Architecture Declaration***-----
------------------------------------------
architecture Operation of AsyncDualRAM8 is
  
  type ram is array (0 to 15,0 to 7) of std_logic;
  signal r:ram;
  begin
    process(read1,cs1,add1,write1,read2,cs2,add2,write2)
      
      variable d1,d2:std_logic;
      begin
        
        d1:=data1;
        d2:=data2;
        if (write1='1' and cs1='1') then
          r(conv_integer(add1(6 downto 3)),conv_integer(add1(2 downto 0)))<=d1;
        elsif (read1='1' and cs1='1') then
          d1:=r(conv_integer(add1(6 downto 3)),conv_integer(add1(2 downto 0)));
        end if;
        if (write2='1' and cs2='1') then
          r(conv_integer(add2(6 downto 3)),conv_integer(add2(2 downto 0)))<=d2;
        elsif (read2='1' and cs2='1') then
          d2:=r(conv_integer(add2(6 downto 3)),conv_integer(add2(2 downto 0)));
        end if;
        data1<=d1;
        data2<=d2;
   end process; 
end Operation;
--====================================================================
--------***Syncronous Dual RAM 16x16x8(Q no:71)***--------
-------coded by Jenson and Salahudheen----

library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;
  use ieee.std_logic_arith.all;
------------------------------------------
-----***Entity Declaration***-----
------------------------------------------
entity SyncDualRAM8 is
  port(
    clk,read1,read2,cs1,cs2,write1,write2:in std_logic; --inputs
    add1,add2:in std_logic_vector(6 downto 0); --inputs
    data1,data2:inout std_logic);
end SyncDualRAM8;
------------------------------------------
-----***Architecture Declaration***-----
------------------------------------------
architecture Operation of SyncDualRAM8 is
  
  type ram is array (0 to 15,0 to 7) of std_logic;
  signal r:ram;
  begin
    process(clk,read1,cs1,add1,write1,read2,cs2,add2,write2)
      
      variable d1,d2:std_logic;
      begin
        
        d1:=data1;
        d2:=data2;
        if (write1='1' and cs1='1' and clk='1') then
          r(conv_integer(add1(6 downto 3)),conv_integer(add1(2 downto 0)))<=d1;
        elsif (read1='1' and cs1='1' and clk='1') then
          d1:=r(conv_integer(add1(6 downto 3)),conv_integer(add1(2 downto 0)));
        end if;
        if (write2='1' and cs2='1' and clk='1') then
          r(conv_integer(add2(6 downto 3)),conv_integer(add2(2 downto 0)))<=d2;
        elsif (read2='1' and cs2='1' and clk='1') then
          d2:=r(conv_integer(add2(6 downto 3)),conv_integer(add2(2 downto 0)));
        end if;
        data1<=d1;
        data2<=d2;
   end process; 
end Operation;
--====================================================================
---***BCD Up/Down(Q no:72a)***--- 
----coded by Jenson and Salahudheen----

library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;
  use ieee.std_logic_arith.all;
------------------------------------------
-----***Entity Declaration***-----
------------------------------------------
entity BCDUp is
  port(
    clk:in std_logic; --inputs
    bcd:out std_logic_vector(3 downto 0)); --outputs
end BCDUp;
------------------------------------------
-----***Architecture Declaration***-----
------------------------------------------
architecture Operation of BCDUp is

  begin
    process(clk)
      variable a:std_logic_vector(3 downto 0):="0000";
      begin
        if(clk='1')then
          case a is
            when "0000"=>a:="0001";
            when "0001"=>a:="0010";
            when "0010"=>a:="0011";
            when "0011"=>a:="0100";
            when "0100"=>a:="0101";
            when "0101"=>a:="0110";
            when "0110"=>a:="0111";
            when "0111"=>a:="1000";
            when "1000"=>a:="1001";
            when "1001"=>a:="0000";
            when others=>null;
          end case;
        end if;
    bcd<=a;
    end process;
end Operation;
--====================================================================
---***BCD Up/Down Using If(Q no:72 b)***--- 
----coded by Jenson and Salahudheen----

library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;
  use ieee.std_logic_arith.all;
------------------------------------------
-----***Entity Declaration***-----
------------------------------------------
entity BCDUp2 is
  port(
    clk:in std_logic; --inputs
    bcd:out std_logic_vector(3 downto 0)); --outputs
end BCDUp2;
------------------------------------------
-----***Architecture Declaration***-----
------------------------------------------
architecture Operation of BCDUp2 is

  begin
    process(clk)
      variable a:std_logic_vector(3 downto 0):="0000";
      begin
        if(clk='1')then
          
            if(a="0000")then a:="0001";
            elsif(a="0001")then a:="0010";
            elsif(a="0010")then a:="0011";
            elsif(a="0011")then a:="0100";
            elsif(a="0100")then a:="0101";
            elsif(a="0101")then a:="0110";
            elsif(a="0110")then a:="0111";
            elsif(a="0111")then a:="1000";
            elsif(a="1000")then a:="1001";
            elsif(a="1001")then a:="0000";
            else null;
            end if;
          
        end if;
    bcd<=a;
    end process;
end Operation;
--====================================================================
--------***Sequence Overlap(Q no:73)***--------
-------coded by Jenson and Salahudheen----

library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;
  use ieee.std_logic_arith.all;
------------------------------------------
-----***Entity Declaration***-----
------------------------------------------
entity SeqOver111 is
  port(
    clk,serin:in std_logic; --inputs
    found:out std_logic); --outputs
end SeqOver111;
------------------------------------------
-----***Architecture Declaration***-----
------------------------------------------
architecture Operation of SeqOver111 is

  begin
    process(clk)
      
        variable a:std_logic_vector(2 downto 0):="000";
        variable f:std_logic:='0';
      
      begin
        
        if(clk='1') then
          
          for i in 2 downto 1 loop
            a(i):=a(i-1);
          end loop;
          a(0):=serin;
          if(a="111")then
            f:='1';
          else
            f:='0';
          end if;
        end if;
      found<=f;
   end process; 
end Operation;
--====================================================================
--------***Sequence FSM(Q no:74)***--------
-------coded by Jenson and Salahudheen----

library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;
  use ieee.std_logic_arith.all;
------------------------------------------
-----***Entity Declaration***-----
------------------------------------------
entity SeqFSM is
  port(
    clk,datain:in std_logic; --inputs
    match:out std_logic); --outputs
end SeqFSM;
------------------------------------------
-----***Architecture Declaration***-----
------------------------------------------
architecture Operation of SeqFSM is

  begin
    process(clk)
      
        variable a:std_logic_vector(7 downto 0):="00000000";
        variable m:std_logic:='0';
      
      begin
        
        if(clk='1' and clk'event) then
          
          for i in 7 downto 1 loop
            a(i):=a(i-1);
          end loop;
          a(0):=datain;
          
          if(a="10101010")then
            m:='1';
          else
            m:='0';
          end if;
        end if;
      match<=m;
   end process; 
end Operation;
--====================================================================

--------***Traffic Light(Q no:75)***--------
-------coded by Jenson and Salahudheen----

library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;
  use ieee.std_logic_arith.all;
------------------------------------------
-----***Entity Declaration***-----
------------------------------------------
entity Traffic is
  port(
    regular,test,standby:in std_logic; --inputs
    r,y,g:inout std_logic_vector(0 to 1)); --buffer
end Traffic;
------------------------------------------
-----***Architecture Declaration***-----
------------------------------------------
architecture Operation of Traffic is
  
  begin
    process
      begin
        wait on regular,test,standby;
        if(standby='1')then
          r<="00";y<="11";g<="00";
        elsif(test='1')then
          r(0)<='1';g(1)<='1';r(1)<='0';g(0)<='0';y<="00";
          wait for 1000000000 ns;
          r(0)<='1';y(1)<='1';r(1)<='0';y(0)<='0';g<="00";
          wait for 1000000000 ns;
          g(0)<='1';r(1)<='1';g(1)<='0';r(0)<='0';y<="00";
          wait for 1000000000 ns;
          y(0)<='1';r(1)<='1';y(1)<='0';r(0)<='0';g<="00";
          wait for 1000000000 ns;
        elsif(regular='1')then
          r(0)<='1';g(1)<='1';r(1)<='0';g(0)<='0';y<="00";
          for i in 1 to 30 loop
            wait for 1000000000 ns;
          end loop;
          r(0)<='1';y(1)<='1';r(1)<='0';y(0)<='0';g<="00";
          for i in 1 to 5 loop
            wait for 1000000000 ns;
          end loop;
          g(0)<='1';r(1)<='1';g(1)<='0';r(0)<='0';y<="00";
          for i in 1 to 45 loop
            wait for 1000000000 ns;
          end loop;
          y(0)<='1';r(1)<='1';y(1)<='0';r(0)<='0';g<="00";
          for i in 1 to 5 loop
            wait for 1000000000 ns;
          end loop;
        end if;
    end process;
end Operation;
--====================================================================
--------***8 bit 2's complement adder/subtractor(Q no:76)***--------
-------coded by Jenson and Salahudheen----

library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;
  use ieee.std_logic_arith.all;
------------------------------------------
-----***Entity Declaration***-----
------------------------------------------
entity CompAddSub is
  port(
    x:in std_logic; --inputs
    a,b:in std_logic_vector(7 downto 0); --inputs
    c:out std_logic_vector(8 downto 0)); --outputs
end CompAddSub;
------------------------------------------
-----***Architecture Declaration***-----
------------------------------------------
architecture Operation of CompAddSub is

  begin
    process(x,a,b)
      
        variable a1,b1:std_logic_vector(7 downto 0);
        variable c1:std_logic_vector(8 downto 0);
      
      begin
        a1:=a;
        b1:=b;
        if (x='0') then--adding
          c1:='0'& a1+b1;
        elsif(x='1')then
          b1:=not(b1);
          b1:=b1+1;
          c1:='0'& a1+b1; 
          c1(8):='0';           
        end if;
      c<=c1;
   end process; 
end Operation;
--====================================================================
--------***ATM Implementation Q no:(77)***--------
-------coded by Jenson and Salahudheen----

library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;
  use ieee.std_logic_arith.all;
------------------------------------------
-----***Entity Declaration***-----
------------------------------------------
entity Atm is
  port(
    comp_en:in std_logic; --inputs
    accno:in std_logic_vector(0 to 19); --inputs
    output:out string(1 to 20)); --outputs
end Atm;
------------------------------------------
-----***Architecture Declaration***-----
------------------------------------------
architecture Operation of Atm is
  
  type ram is array (0 to 3,0 to 3) of std_logic_vector(0 to 19);
  
  begin
    process(comp_en,accno)
      variable r:ram:=((("00000000000000000000"),("00000000000000000000"),
                       ("00000000000000000000"),("00000000000000000000")),
                       (("00000000000000000000"),("00000000000000000000"),
                       ("00000000000000000000"),("00000000000000000000")),
                       (("00000000000000000000"),("00000000000000000000"),
                       ("00000000000000000000"),("00000000000000000000")),
                       (("00000000000000000000"),("00000000000000000000"),
                       ("00000000000000000000"),("00000000000000000000")));
      variable found:std_logic;
      begin
        
        
        if(comp_en='0') then
          found:='0';
          for i in 0 to 3 loop
            for j in 0 to 3 loop
              if (accno=r(i,j)) then
                found:='1';              
              end if;
          end loop;
          end loop;
          
          if found='1' then
            output<="ACCESS GRANTED!!!!!!";
          else
            output<="ACCESS DENIED!!!!!!!";
          end if;
        else
          output<="XXXXXXXXXXXXXXXXXXXX";
        end if;
        
   end process; 
end Operation;
--====================================================================


--------***Chemical Experiment(Q no:78)***--------
-------coded by Jenson and Salahudheen----

library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;
  use ieee.std_logic_arith.all;
------------------------------------------
-----***Entity Declaration***-----
------------------------------------------
entity chemical is
  port(
    clk:in std_logic; --inputs
    input:in std_logic_vector(0 to 3); --inputs
    stop:out std_logic); --outputs
end chemical;
------------------------------------------
-----***Architecture Declaration***-----
------------------------------------------
architecture Operation of chemical is
  
  begin
    process(clk)
      variable a:std_logic_vector(0 to 7);
      variable sto:std_logic:='0';
      begin
        
        if(clk='1')then
          a(4 to 7):=a(0 to 3);
          a(0 to 3):=input;
 
          if(a(0 to 3)="0111" or a(0 to 3)="0110" or a(0 to 3)="1000" or a(0 to 3)="0000")then null;
          elsif(a(0 to 3)=a(4 to 7))then
            sto:='1';
          else
            sto:='0';
          end if;
        end if; 
        stop<=sto;
    end process;
end Operation;
--====================================================================
--------***Sequential Circuit(Q no:79)***--------
-------coded by Jenson and Salahudheen----

library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;
  use ieee.std_logic_arith.all;
------------------------------------------
-----***Entity Declaration***-----
------------------------------------------
entity SeqGroup0 is
  port(
    clk:in std_logic; --inputs
    serin:in std_logic; --inputs
    output:out std_logic); --outputs
end SeqGroup0;
------------------------------------------
-----***Architecture Declaration***-----
------------------------------------------
architecture Operation of SeqGroup0 is
  
  begin
    process(clk)
      variable a:std_logic;
      variable f:std_logic:='0';
      variable count:integer:=0;
      begin
        
        if(clk='1')then
          a:=serin; 
          if(a='0' and count<2)then
            count:=1;
          elsif(a='0' and count>1)then
            count:=count+1;
          elsif(a='1' and count<2 and count/=0)then
            count:=count+1;
          end if;
          if(count<3 and count/=0)then
            f:='1';
          else
            f:='0';
          end if;
        end if;
        output<=f;
    end process;
end Operation;
--====================================================================

--------***Random Counter Q no:(80)***--------
-------coded by Jenson and Salahudheen----

library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;
  use ieee.std_logic_arith.all;
------------------------------------------
-----***Entity Declaration***-----
------------------------------------------
entity RandCount is
  port(
    clk:in std_logic; --inputs
    output:out integer);--outputs
end RandCount;
------------------------------------------
-----***Architecture Declaration***-----
------------------------------------------
architecture Operation of RandCount is
  begin
    process(clk)
      variable x:integer:=8;
        begin
          if clk='1' then
            case x is
              when 8 => x:=1;
              when 1 => x:=2;
              when 2 => x:=0;
              when 0 => x:=4;
              when 4 => x:=6;
              when 6 => x:=3;
              when 3 => x:=5;
              when 5 => x:=9;
              when 9 => x:=7;
              when 7 => x:=8;
              when others => null;
            end case;
          end if;
          output<=x;
              
    end process; 
end Operation;
