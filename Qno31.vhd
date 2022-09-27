library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
-------------------------------
entity ParallelReg4bit is
port (sin,clk:in std_logic;
      sout:inout std_logic_vector(3 downto 0));
end ParallelReg4bit;
--------------------------------
architecture Operation of ParallelReg4bit is
 component Dflip  is
  port(
     d,pre,clr,clk:in std_logic;
            q,qbar:inout std_logic);
end component;

 begin
     s1:Dflip port map (sin,'1','1',clk,sout(0));
     s2:Dflip port map (sout(0),'1','1',clk,sout(1));
     s3:Dflip port map (sout(1),'1','1',clk,sout(2));
     s4:Dflip port map (sout(2),'1','1',clk,sout(3)); 
     
end Operation;
