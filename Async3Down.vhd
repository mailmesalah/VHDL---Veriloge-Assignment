
-------***3 Bit Asynchronous Down Counter Q no:(41)***-------
-----***Coded by Jenson&Salahudheen***----
library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;
  use ieee.std_logic_arith.all;
 --------------------------------
entity Async3Down is
  port(
    clk,pre,clr:in std_logic;
    o0,o1,o2:out std_logic);
end Async3Down;
---------------------------------
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