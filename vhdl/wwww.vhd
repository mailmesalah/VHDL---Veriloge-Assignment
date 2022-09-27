library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
--------------------------------------
entity adder21 is
  port(
   a,b:in std_logic_vector(3 downto 0);
   cout:out std_logic_vector(4 downto 0));
end adder21;
architecture Operation of adder21 is
  begin
    cout<='0' & (a+b);
  end operation;                     
--