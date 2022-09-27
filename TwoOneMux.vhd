
--------***2-1 MUX(Q no:3)***--------
-----coded by Jenson and Salahudheen----

library ieee;
  use ieee.std_logic_1164.all;
  -------------------------------------
entity Mux2x1 is
  port(
    a,b,sel:in std_logic;
    cout:out std_logic);
end Mux2x1;
-------------------------------------
architecture Operation of Mux2x1 is
begin
  process(a,b,sel)
    begin
      if (sel='0') then cout<=a;else cout<=b;
      end if;
  end process;
end Operation;

  

    