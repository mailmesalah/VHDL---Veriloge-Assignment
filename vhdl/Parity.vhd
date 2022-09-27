library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
-------------------------------
entity Parity is
  
  port(
    a:in std_logic_vector(3 downto 0);
    even,odd:out std_logic);

end Parity;
--------------------------------
Architecture Operation of Parity is
  signal temp: std_logic;
  begin
    temp<= a(0) xor a(1) xor a(2) xor a(3);
    even<= not temp;
    odd<= temp;
end Operation;

    
    