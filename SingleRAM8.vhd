
--------***Single Port RAM 255x8 Bit(Q no:69)***--------
-------coded by Jenson and Salahudheen----

library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;
  use ieee.std_logic_arith.all;
--------------------------------------
entity SingleRAM8 is
  port(
    clk,read,cs,write:in std_logic;
    add:in std_logic_vector(7 downto 0);
    data:inout std_logic_vector(7 downto 0));
end SingleRAM8;
--------------------------------------
architecture Operation of SingleRAM8 is
  
  type ram is array (0 to 15,0 to 15) of std_logic_vector(7 downto 0);
  signal r:ram;
  begin
    process(clk,read,cs,write)
     
      begin
        if (write='1' and clk='1' and cs='1') then
          r(conv_integer(add(7 downto 4)),conv_integer(add(3 downto 0)))<=data;
        elsif (read='1' and cs='1' and clk='1') then
          data<=r(conv_integer(add(7 downto 4)),conv_integer(add(3 downto 0)));
        end if;
     end process; 
end Operation;