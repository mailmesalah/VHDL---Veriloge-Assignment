
---***Sequence 2.4.6...N or N.N-2.N-1...0 Q no:(65)***--- 
----coded by Jenson and Salahudheen----

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
----------------------------
entity SeqUpDown is
  port(
    mode,rst,clk:in std_logic;
    n:in integer;
    seqout:out integer);
end SeqUpDown;
----------------------------
architecture Operation of SeqUpDown is

  begin
    process(mode,rst,n,clk)
      variable x:integer:=0;
      variable upinitialised:std_logic:='0';
      variable dninitialised:std_logic:='0';
      begin
        
        if(mode='1' and upinitialised='0') then 
          x:=n;
          upinitialised:='1';
          dninitialised:='0';
        elsif(mode='0' and dninitialised='0') then
          x:=0;
          dninitialised:='1';
          upinitialised:='0';
        end if;
        
        if (mode='0' and clk='1' and x<n) then
          x:=x+2;
        elsif(mode='1' and clk='1' and x>0) then
          x:=x-2; 
        end if;
        
        if(rst='1') then
          x:=0;
        end if;
        seqout<=x;
  end process;
end Operation;