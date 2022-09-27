
--------***8 bit 2's complement adder/subtractor(Q no:76)***--------
-------coded by Jenson and Salahudheen----

library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;
  use ieee.std_logic_arith.all;
--------------------------------------
entity CompAddSub is
  port(
    x:in std_logic;
    a,b:in std_logic_vector(7 downto 0);
    c:out std_logic_vector(8 downto 0));
end CompAddSub;
--------------------------------------
architecture Operation of CompAddSub is

  begin
    process(x,a,b)
      
        variable a1,b1:std_logic_vector(7 downto 0);
        variable c1:std_logic_vector(8 downto 0);
      
      begin
        a1:=a;
        b1:=b;
        if (x='0') then--adding
          c1:='0'& a1+b1;
        elsif(x='1')then
          b1:=not(b1);
          b1:=b1+1;
          c1:='0'& a1+b1; 
          c1(8):='0';           
        end if;
      c<=c1;
   end process; 
end Operation;
