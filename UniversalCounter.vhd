library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;
----------------------------------------------
entity UniversalCounter is
  port(
    mode,enable,load,clr,clk:in std_logic;
    d:in std_logic_vector(3 downto 0);
    q:inout std_logic_vector(3 downto 0));
    
end UniversalCounter;
----------------------------------------------
architecture Operation of UniversalCounter is
  begin
    process(mode,enable,load,clr,clk,d)
      variable x:std_logic_vector(3 downto 0):="0000";
      begin
        
        if(clr='1' and clk='1') then
          x:="0000";
        elsif(load='1' and clk='1') then
          x:=d;
        elsif(enable='1' and mode='1' and clk='1')then
          x:=x+1;
        elsif(enable='1' and mode='0' and clk='1')then
          x:=x-1;
        elsif(enable='0' and clk='1')then
          --remain in the current state
          null;
        end if;
        
        q<=x;
    end process;
end Operation; 