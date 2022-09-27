
--------***Asyncronous Dual RAM 16x16x8(Q no:70)***--------
-------coded by Jenson and Salahudheen----

library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;
  use ieee.std_logic_arith.all;
--------------------------------------
entity AsyncDualRAM8 is
  port(
    read1,read2,cs1,cs2,write1,write2:in std_logic;
    add1,add2:in std_logic_vector(6 downto 0);
    data1,data2:inout std_logic);
end AsyncDualRAM8;
--------------------------------------
architecture Operation of AsyncDualRAM8 is
  
  type ram is array (0 to 15,0 to 7) of std_logic;
  signal r:ram;
  begin
    process(read1,cs1,add1,write1,read2,cs2,add2,write2)
      
      variable d1,d2:std_logic;
      begin
        
        d1:=data1;
        d2:=data2;
        if (write1='1' and cs1='1') then
          r(conv_integer(add1(6 downto 3)),conv_integer(add1(2 downto 0)))<=d1;
        elsif (read1='1' and cs1='1') then
          d1:=r(conv_integer(add1(6 downto 3)),conv_integer(add1(2 downto 0)));
        end if;
        if (write2='1' and cs2='1') then
          r(conv_integer(add2(6 downto 3)),conv_integer(add2(2 downto 0)))<=d2;
        elsif (read2='1' and cs2='1') then
          d2:=r(conv_integer(add2(6 downto 3)),conv_integer(add2(2 downto 0)));
        end if;
        data1<=d1;
        data2<=d2;
   end process; 
end Operation;