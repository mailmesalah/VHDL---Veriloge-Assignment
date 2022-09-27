library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
--------------------------------
entity Shifting is
  port(
    a:in std_logic_vector(6 downto 0);
    b:out std_logic_vector(6 downto 0));
end Shifting;
---------------------------------
architecture Op of Shifting is
begin
  b<= a(5 downto 0)& a(6);
end Op;