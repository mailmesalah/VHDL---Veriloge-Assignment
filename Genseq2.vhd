
---*** Generating Sequence Q no:(69)***--- 
----coded by Jenson and Salahudheen----

library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;
  use ieee.std_logic_arith.all;
----------------------------------
entity Genseq2 is
  port(
    a:in intarray(4 downto 0);
    search:in integer;
    found:out std_logic;
    count:out integer);
end Genseq2;
---------------------------
architecture Operation of Genseq2 is

  begin
    process(a,search)
     
  end process;
end Operation;