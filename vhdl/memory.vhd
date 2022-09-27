library ieee;
library Jenson_Salah;
use Jenson_Salah.Arrays.all;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
--------------------------------------
entity Memory is
  port(
    clk,read,cs:in std_logic;
    add:in std_logic_vector(3 downto 0);
    data:out integer);
end Memory;
--------------------------------------
architecture Operation of Memory is
  
  type rom is array (0 to 3,0 to 3) of integer;
  signal r:rom:=((0,1,2,3),(4,5,6,7),(8,9,10,11),(12,13,14,15));
--  signal x,y : integer;
  begin
    
--  x<=(conv_integer(add(3 downto 2)));
 -- y<=(conv_integer(add(1 downto 0)));
    data<=r(conv_integer(add(3 downto 2)),conv_integer(add(1 downto 0)));
    
end Operation;