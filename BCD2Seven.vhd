--------***BCD to Seven using ROM(Q no:53)***--------
-------coded by Jenson and Salahudheen----

library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;
  use ieee.std_logic_arith.all;
--------------------------------------
entity BCD2Seven is
  port(
    inbcd:in std_logic_vector(3 downto 0);
    segout:out std_logic_vector(0 to 6));
end BCD2Seven;
--------------------------------------
architecture Operation of BCD2Seven is
  
  type rom is array (0 to 9,0 to 6) of std_logic;
  signal r:rom:=(("1111110"),("0110000"),("1101101"),("1111001"),("0110011"),("1011011"),("1011111"),("1110000"),("1111111"),("1111011"));
  begin
    process(inbcd)
      variable x:std_logic_vector(0 to 6);
      begin
      for i in 0 to 9 loop
        for j in  0 to 6 loop
          if(i=conv_integer(inbcd))then
            x(j):=r(i,j);
          end if;
        end loop;
      end loop;
      segout<=x;
   end process; 
end Operation;