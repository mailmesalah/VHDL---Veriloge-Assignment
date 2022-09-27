
----***Nine Bit Parity Generator Q no:(23)***----------

library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;
--------------------------------
entity ParityGen9 is
  port(
    input:in std_logic_vector(7 downto 0);
    output:out std_logic_vector(8 downto 0)); 
end ParityGen9;
---------------------------------
Architecture Operation of ParityGen9 is
begin
  process(input)
    variable x:std_logic_vector(1 downto 0);
    variable y:std_logic_vector(8 downto 0);
    begin
      x:="00";
      for i in 0 to 7 loop
        x:=x+input(i);
        y(i):=input(i);
      end loop;
        y(8):=x(0);
        output<=y;
  end process;
end Operation;
