library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
package Extras is
 
 --one dimentional Unconstrined integer array
type intarray is array(integer range<>) of integer;

type float is range 00.0 to 99.9;     
type integera is array(0 to 9) of integer range 0 to 10000;  
end Extras;  
