-------***RAM 16x16x8(Q no:61)***--------
-------coded by Jenson and Salahudheen----

library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;
  use ieee.std_logic_arith.all;
--------------------------------------
entity RAMM16x16x8 is
  port(
    clk,ce,we,oe:in std_logic;
    add:in std_logic_vector(15 downto 0);
    data:inout std_logic_vector(0 to 7));
end RAMM16x16x8;
---------------------------------------
architecture Operation of RAMM16x16x8 is
  
  type ram is array (0 to 15,0 to 15) of std_logic_vector(0 to 7);
  signal r:ram;
  begin
    process(clk,ce,we,add,oe)
      begin
        if(oe='1') then
          if(ce='0') then 
           null;
          elsif (we='0' and clk='1' and ce='1') then
            r(conv_integer(add(7 downto 4)),conv_integer(add(3 downto 0)))<=data;
          elsif (we='1' and ce='1' and clk='1') then
            data<=r(conv_integer(add(7 downto 4)),conv_integer(add(3 downto 0)));
          end if;
        else
        end if;
   end process; 
end Operation;