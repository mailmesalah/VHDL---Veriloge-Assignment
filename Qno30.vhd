---*** 4 Bit Adder And Subtractor structural Q no:(30)***--- 
----coded by Jenson and Salahudheen----

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
----------------------------
entity AddSub4bitst is
  port(
    mode:in std_logic;
    a,b:in std_logic_vector(3 downto 0);
    carry,borrow:out std_logic;
    sum,diff:out std_logic_vector(3 downto 0));
end AddSub4bitst;
---------------------------
architecture Operation of AddSub4bitst is
component AddSub4bit is
  port(
    mode:in std_logic;
    a,b:in std_logic_vector(3 downto 0);
    carry,borrow:out std_logic;
    sum,diff:out std_logic_vector(3 downto 0));
end component;

  begin
   s1:AddSub4bit port map(mode,a,b,carry,borrow,sum,diff);
end Operation;
