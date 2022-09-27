---BCD Adder--- 
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
-----------------------------
entity BCDAdder is
  
  port(
    bcdin1:in std_logic_vector(4 downto 0);
    bcdin2:in std_logic_vector(4 downto 0);
    bcdout:out std_logic_vector(7 downto 0));
end BCDAdder;
-----------------------------
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