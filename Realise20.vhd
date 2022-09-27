-------**** Realising Q No:(20)****-------
library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;
------------------------------------------------
entity Realise20 is
  port(
  a,b,c,d:in bit;
  f:out bit);
end Realise20;
------------------------------------------------
architecture Operation of Realise20 is
  begin
    process(a,b,c,d)
      begin
        if   (a='0' and b='0' and c='0' and d='0')then f<='1';
        elsif(a='0' and b='0' and c='0' and d='1')then f<='1';
        elsif(a='0' and b='0' and c='1' and d='0')then f<='1';
        elsif(a='0' and b='0' and c='1' and d='1')then f<='1';
        elsif(a='1' and b='0' and c='1' and d='1')then f<='1';
        elsif(a='1' and b='1' and c='0' and d='0')then f<='1';
        elsif(a='1' and b='1' and c='1' and d='0')then f<='1';
        elsif(a='1' and b='1' and c='1' and d='1')then f<='1';
        else f<='0';
        end if;
    end process;
end Operation;