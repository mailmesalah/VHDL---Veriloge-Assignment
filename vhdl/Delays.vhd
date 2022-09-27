--==============Delays=========================
-----------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
-----------------------------------------------

entity Delays is 
  port(
    clk:in std_logic;
    tclk,iclk:out std_logic);
    
end Delays;
-----------------------------------------------

architecture Operation of Delays is

  begin
    
    tclk<= transport clk after 20 ns;
    iclk<= clk after 20 ns;

end Operation;

  