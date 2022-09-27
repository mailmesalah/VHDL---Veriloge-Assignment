-------***RAM 16x16x32(Q no:55)***--------
-------coded by Jenson and Salahudheen----

library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;
  use ieee.std_logic_arith.all;
--------------------------------------
entity RAM16x16x32 is
  port(
    clk,rw,en:in std_logic;
    add:in std_logic_vector(15 downto 0);
    data:inout std_logic_vector(0 to 31));
end RAM16x16x32;
--------------------------------------
architecture Operation of RAM16x16x32 is
  
  type ram is array (0 to 15,0 to 15) of std_logic_vector(0 to 31);
  signal r:ram;
  begin
    process(clk,rw,en,add)
            
      begin
        if(en='0') then 
          null;
        elsif (rw='0' and clk='1' and en='1') then
          r(conv_integer(add(15 downto 8)),conv_integer(add(7 downto 0)))<=data;
        elsif (rw='1' and en='1' and clk='1') then
          data<=r(conv_integer(add(15 downto 8)),conv_integer(add(7 downto 0)));
        end if;
   end process; 
end Operation;