
--------***Traffic Light(Q no:75)***--------
-------coded by Jenson and Salahudheen----

library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;
  use ieee.std_logic_arith.all;
----------------------------------
entity Traffic is
  port(
    regular,test,standby:in std_logic;
    r,y,g:inout std_logic_vector(0 to 1)); 
end Traffic;
----------------------------------
architecture Operation of Traffic is
  
  begin
    process
      begin
        wait on regular,test,standby;
        if(standby='1')then
          r<="00";y<="11";g<="00";
        elsif(test='1')then
          r(0)<='1';g(1)<='1';r(1)<='0';g(0)<='0';y<="00";
          wait for 1000000000 ns;
          r(0)<='1';y(1)<='1';r(1)<='0';y(0)<='0';g<="00";
          wait for 1000000000 ns;
          g(0)<='1';r(1)<='1';g(1)<='0';r(0)<='0';y<="00";
          wait for 1000000000 ns;
          y(0)<='1';r(1)<='1';y(1)<='0';r(0)<='0';g<="00";
          wait for 1000000000 ns;
        elsif(regular='1')then
          r(0)<='1';g(1)<='1';r(1)<='0';g(0)<='0';y<="00";
          for i in 1 to 30 loop
            wait for 1000000000 ns;
          end loop;
          r(0)<='1';y(1)<='1';r(1)<='0';y(0)<='0';g<="00";
          for i in 1 to 5 loop
            wait for 1000000000 ns;
          end loop;
          g(0)<='1';r(1)<='1';g(1)<='0';r(0)<='0';y<="00";
          for i in 1 to 45 loop
            wait for 1000000000 ns;
          end loop;
          y(0)<='1';r(1)<='1';y(1)<='0';r(0)<='0';g<="00";
          for i in 1 to 5 loop
            wait for 1000000000 ns;
          end loop;
        end if;
    end process;
end Operation;