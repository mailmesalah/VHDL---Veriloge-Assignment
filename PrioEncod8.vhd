
------***8 Input Priority Encoder (Q no:56)***--------
-------coded by Jenson and Salahudheen----

library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;
  use ieee.std_logic_arith.all;
--------------------------------------
entity PrioEncod8 is
  port(
    i:in std_logic_vector(7 downto 0);
    en:in std_logic;
    a:out std_logic_vector(2 downto 0);
    gs,eo:out std_logic);
end PrioEncod8;
--------------------------------------
architecture Operation of PrioEncod8 is
  begin
    process(i,en)
      begin
        if(en='1') then
          a<="111";gs<='1';eo<='1';
        elsif(en='0' and i(7)='0') then
          a<="000";gs<='0';eo<='1';
        elsif(en='0' and i(7)='1' and i(6)='0') then
          a<="001";gs<='0';eo<='1';
        elsif(en='0' and i(7)='1' and i(6)='1' and i(5)='0') then 
          a<="010";gs<='0';eo<='1';
        elsif(en='0' and i(7)='1' and i(6)='1' and i(5)='1'  and i(4)='0') then 
          a<="011";gs<='0';eo<='1';
        elsif(en='0' and i(7)='1' and i(6)='1' and i(5)='1'  and i(4)='1' and i(3)='0') then
          a<="100";gs<='0';eo<='1';
        elsif(en='0' and i(7)='1' and i(6)='1' and i(5)='1'  and i(4)='1' and i(3)='1' and i(2)='0') then
          a<="101";gs<='0';eo<='1';
        elsif(en='0' and i(7)='1' and i(6)='1' and i(5)='1'  and i(4)='1' and i(3)='1' and i(2)='1' and i(1)='0') then
          a<="110";gs<='0';eo<='1';
        elsif(en='0' and i(7)='1' and i(6)='1' and i(5)='1'  and i(4)='1' and i(3)='1' and i(2)='1' and i(1)='1' and i(0)='0') then
          a<="111";gs<='0';eo<='1';
        elsif(en='0' and i(7)='1' and i(6)='1' and i(5)='1'  and i(4)='1' and i(3)='1' and i(2)='1' and i(1)='1' and i(0)='1') then
          a<="111";gs<='1';eo<='0';
        end if;
   end process; 
end Operation;