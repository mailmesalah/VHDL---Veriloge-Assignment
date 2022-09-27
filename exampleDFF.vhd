-------**** Delay Flip Flop Q No:(13)****-------
library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;
------------------------------------------------
entity DFlipFlops is
  port(
  d,clk,pre,clr:in std_logic;
  q,qbar:inout std_logic);
end DFlipFlops;
------------------------------------------------
architecture Operation of DFlipFlops is

  begin
    process(clk,d,pre,clr)
      begin
   if (clk='1' and pre='0' and clr='0')then
        q<=d;
        qbar<= not q;
    end if;
    end process;
end Operation;