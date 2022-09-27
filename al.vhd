
-----------****Logic Section of ALU Q no:(39)****------------
--------****Coded by Jenson And Salahudheen****----------

library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;
-------------------------------------
entity alusec is
  port(
    a,b,s1,s2,s3,s4:in std_logic;
    f:out std_logic);
end alusec;
-------------------------------------
architecture Operation of alusec is
begin
  process(a,b,s1,s2,s3,s4)
    begin
      if (s1='0' and s2='0' and s3='0' and s4='0')    then f<=not a;
      elsif (s1='0' and s2='0' and s3='0' and s4='1') then f<=not b;
      elsif (s1='0' and s2='0' and s3='1' and s4='0') then f<=a and b;
      elsif (s1='0' and s2='0' and s3='1' and s4='1') then f<=a or b;
      elsif (s1='0' and s2='1' and s3='0' and s4='0') then f<=not(a and b);
      elsif (s1='0' and s2='1' and s3='0' and s4='1') then f<=not(a or b);
      elsif (s1='0' and s2='1' and s3='1' and s4='0') then f<=a xor b;
      elsif (s1='0' and s2='1' and s3='1' and s4='1') then f<=not(a xor b);
      end if;
  end process;
end Operation;