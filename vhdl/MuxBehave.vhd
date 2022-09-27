library ieee;
use ieee.std_logic_1164.all;
----------------------------
entity MuxBehav is 
  port(
    a,b,sel:in std_logic;
    cout:out std_logic);
end MuxBehav; 
-----------------------------
architecture Operation of MuxBehav is
begin
  process(sel)
    begin
      if (sel='1') then cout<= a;
      else cout<= b;
      end if;
    end process;
  end operation;

