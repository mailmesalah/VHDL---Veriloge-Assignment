library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
--------------------------------------
entity RamMemory is
  port(
    clk,read,write,cs:in std_logic;
    add:in std_logic_vector(3 downto 0);
    data:inout std_logic_vector(0 to 7));
end RamMemory;
--------------------------------------
architecture Operation of RamMemory is
  
  type ram is array (0 to 3,0 to 3) of std_logic_vector(0 to 7);
  --signal r:rom:=((0,1,2,3),(4,5,6,7),(8,9,10,11),(12,13,14,15));
  --signal r:ram:=;
  begin
  
    process(clk,read,write,cs,add)    
      variable r:ram:=(("00000000","00000000","00000000","00000000"),("00000000","00000000","00000000","00000000"),("00000000","00000000","00000000","00000000"),("00000000","00000000","00000000","00000000"));
      begin
        
        if (write='1' and cs='1' and clk='1') then 
          
          r(conv_integer(add(3 downto 2)),conv_integer(add(1 downto 0))):=data;
        
        elsif (read='1' and cs='1' and clk='1') then
          
          data<=r(conv_integer(add(3 downto 2)),conv_integer(add(1 downto 0)));
        
        end if;
      
    end process;
end Operation;