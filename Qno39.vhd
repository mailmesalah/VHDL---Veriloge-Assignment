--------***Parallel in Parallel out Shift Reg(Q no 39)***-------
-------***Coded by Jenson&Salahudheen***--------
library ieee;
use ieee.std_logic_1164.all;
----------------------------
entity ParlinParloutShft is
port (a,b,c,d,clk,pr,cl : in std_logic;
      qa,qb,qc,qd : inout std_logic);
end ParlinParloutShft;      
----------------------------
architecture Operation of ParlinParloutShft is
component Dflip  is
  port(
     d,pre,clr,clk:in std_logic;
            q,qbar:inout std_logic);
end component;
begin
    d1: Dflip port map (a,pr,cl,clk,qa);
    d2: Dflip port map (b,pr,cl,clk,qb);
    d3: Dflip port map (c,pr,cl,clk,qc);
    d4: Dflip port map (d,pr,cl,clk,qd);
    
end Operation;    
