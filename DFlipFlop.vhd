-------****Delay Flip Flop ****-------
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
      variable qq:std_logic:='1';
      variable qqbar:std_logic:='0';
      begin

      if (clk='1' and pre='1' and clr='1' and d='1')then
        qq:=d;
        qqbar:= not qq;
      elsif(clk='1' and pre='1' and clr='1' and d='0')then
        qq:=d;
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