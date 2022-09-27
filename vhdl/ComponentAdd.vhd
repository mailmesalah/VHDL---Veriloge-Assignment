library ieee;
--library Jenson_Salah;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
--use Jenson_Salah.Arrays.all;
---------------------------------
entity FullAdder is
  port(
    
    a,b,cin:in std_logic;
    sum,carry:out std_logic);
end FullAdder;
----------------------------
architecture Operation of FullAdder is
      
    begin
      sum<= a xor b xor cin ;
      carry<= (a and b) or (a and cin) or (b and cin);
      
end Operation;
----------------------------------
library ieee;
--library Jenson_Salah;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity AluAdd is
  port(    a1,b1,cin1 :in std_logic;
    cb,sd : out std_logic );
end AluAdd;
---------------------------------
architecture Operation of AluAdd is
component FullAdder 
      port(a,b,cin:in std_logic; sum,carry:out std_logic);
    end component;
  --signal x: std_logic;
   
  begin
    x: FullAdder port map(a1,b1,cin1,sd,cb);
      
    
end Operation;