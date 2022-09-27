
---*** 4 Bit Adder And Subtractor Usin Mod Q no:(36)***--- 
----coded by Jenson and Salahudheen----

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
----------------------------
entity AddSub4bit is
  port(
    mode:in std_logic;
    a,b:in std_logic_vector(3 downto 0);
    carry,borrow:out std_logic;
    sum,diff:out std_logic_vector(3 downto 0));
end AddSub4bit;
---------------------------
architecture Operation of AddSub4bit is

  begin
    process(mode,a,b)
      variable x:std_logic_vector(4 downto 0);
      begin
        
        if (mode='0') then
          x:='0'&a+b;
          sum<=x(3 downto 0);
          carry<=x(4);
          diff<="UUUU";
          borrow<='U';
        elsif(mode='1') then
          x:='0'&a-b; 
          diff<=x(3 downto 0);
          borrow<=x(4);
          carry<='U';
          sum<="UUUU";
        end if;
  end process;
end Operation;