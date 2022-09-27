library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;
----------------------------------------------
entity BiShiftR is
  port(
    mode,srin,slin,clr,clk:in std_logic;
    ff:inout std_logic_vector(3 downto 0));
    
end BiShiftR;
----------------------------------------------
architecture Operation of BiShiftR is
  begin
    process(mode,srin,slin,clr,clk)
      variable x:std_logic_vector(3 downto 0);
      begin
        
        x:=ff;
        if(mode='1' and clk='0') then
          for i in 0 to 2 loop
            x(i):=x(i+1);
          end loop;
          x(3):=srin;
        elsif(mode='0' and clk='0') then
          for i in 3 downto 1 loop
            x(i):=x(i-1);
          end loop;
          x(0):=slin;
        end if;
        
        if (clr='0') then
          x:="0000";
        end if;
        ff<=x;
    end process;
end Operation; 