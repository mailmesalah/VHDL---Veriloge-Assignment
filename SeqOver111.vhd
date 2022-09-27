
--------***Syncronous Dual RAM 16x16x8(Q no:71)***--------
-------coded by Jenson and Salahudheen----

library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;
  use ieee.std_logic_arith.all;
--------------------------------------
entity SeqOver111 is
  port(
    clk,serin:in std_logic;
    found:out std_logic);
end SeqOver111;
--------------------------------------
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