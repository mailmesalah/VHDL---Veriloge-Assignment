
-----***Priority Encoder(Q no:39)***-----
-----coded by Jenson and Salahudheen----

library ieee;
use ieee.std_logic_1164.all;
--------------------------------
entity pr_encod is 
  port ( a : in std_logic_vector ( 3 downto 0);
         y : out std_logic_vector ( 1 downto 0 );
         z : out std_logic);
end pr_encod;
--------------------------------
architecture Operation of pr_encod is
  begin
    y<= "11" when a(3)='1' else
        "10" when a(2)='1' else
        "01" when a(1)='1' else
        "00";
    z<= '0' when a="0000" else '1';
end Operation;
