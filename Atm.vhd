


--------***ATM Implementation Q no:(77)***--------
-------coded by Jenson and Salahudheen----

library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;
  use ieee.std_logic_arith.all;
--------------------------------------
entity Atm is
  port(
    comp_en:in std_logic;
    accno:in std_logic_vector(0 to 19);
    output:out string(1 to 20));
end Atm;
--------------------------------------
architecture Operation of Atm is
  
  type ram is array (0 to 3,0 to 3) of std_logic_vector(0 to 19);
  
  begin
    process(comp_en,accno)
      variable r:ram:=((("00000000000000000000"),("00000000000000000000"),
                       ("00000000000000000000"),("00000000000000000000")),
                       (("00000000000000000000"),("00000000000000000000"),
                       ("00000000000000000000"),("00000000000000000000")),
                       (("00000000000000000000"),("00000000000000000000"),
                       ("00000000000000000000"),("00000000000000000000")),
                       (("00000000000000000000"),("00000000000000000000"),
                       ("00000000000000000000"),("00000000000000000000")));
      variable found:std_logic;
      begin
        
        
        if(comp_en='0') then
          found:='0';
          for i in 0 to 3 loop
            for j in 0 to 3 loop
              if (accno=r(i,j)) then
                found:='1';              
              end if;
          end loop;
          end loop;
          
          if found='1' then
            output<="ACCESS GRANTED!!!!!!";
          else
            output<="ACCESS DENIED!!!!!!!";
          end if;
        else
          output<="XXXXXXXXXXXXXXXXXXXX";
        end if;
        
   end process; 
end Operation;