-------**** Toggle Flip Flop Q No:(14)****-------
library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;
------------------------------------------------
entity TFlipFlops is
  port(
  t,clk,pre,clr:in std_logic;
  q,qbar:inout std_logic);
end TFlipFlops;
------------------------------------------------
architecture Operation of TFlipFlops is

  begin
    process(clk,t,pre,clr)
      variable qq:std_logic:='1';
      variable qqbar:std_logic:='0';
      begin

      if (clk='1' and pre='1' and clr='1' and t='1')then
        qq:=not qq;
        qqbar:= not qq;
      end if;
      if(clr='0') then
        qq:='0';
        qqbar:=not qq;
      elsif(pre='0') then
        qq:='1';
        qqbar:=not qq;
      end if;
      q<=qq;
      qbar<=qqbar;
    end process;
end Operation;