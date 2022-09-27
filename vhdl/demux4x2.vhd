---------------Demux4x2----------------

library ieee;
use ieee.std_logic_1164.all;
--------------------------------
entity Demux4x2 is
  port( 
    a,b,en:in std_logic;
    z : out std_logic_vector(3 downto 0));
end Demux4x2;  
---------------------------------
architecture Operation of Demux4x2 is 
signal abar,bbar:std_logic;
begin
  z(3)<=(a and b and en);
  z(0)<= (abar and bbar and en);
  bbar<=not b;
  z(2)<=(a and bbar and en);
  abar<=not a;
  z(1)<=(abar and b and en);
end Operation;
