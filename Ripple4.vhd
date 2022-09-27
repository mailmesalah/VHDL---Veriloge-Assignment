-------***3 Bit Asynchronous up Counter Q no:(43)***-------
-----***Coded by Jenson&Salahudheen***----
library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;
  use ieee.std_logic_arith.all;
 --------------------------------
entity Ripple4 is
  port(
    clk,pre,clr:in std_logic;
    o:out std_logic_vector(3 downto 0));
end Ripple4;
---------------------------------
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