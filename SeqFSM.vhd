
--------***Syncronous Dual RAM 16x16x8(Q no:71)***--------
-------coded by Jenson and Salahudheen----

library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;
  use ieee.std_logic_arith.all;
--------------------------------------
entity SeqFSM is
  port(
    clk,datain:in std_logic;
    match:out std_logic);
end SeqFSM;
--------------------------------------
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