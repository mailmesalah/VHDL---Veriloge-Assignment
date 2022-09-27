library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
package Arrays is
 
 --two dimentional integer array
  type integerarray is array(0 to 2,0 to 2) of integer;
  
  --one dimentional integer array
  type integera is array(0 to 3) of integer;
   
 --for selecting addition or subtractor
  type sel is (add,sub);
  
 --possible values in a 4 variable K map
  subtype sop is integer range -1 to 15;
  
 --values of function for K map
  type soparray is array(15 downto 0) of sop;
  
 --week (type) values in words
  type week is (sun,mon,tue,wed,thr,fri,sat);
  
 --month type
  type month is (Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec);
 
 --date 1 to 31
  subtype date is integer range 1 to 31;
 
 --record type  for date
  type dates is record
    year: integer range 1900 to 2999;
    months:month;
    days:date;
    day:week;  
  end record;
  
 --units
  type current is range 0 to 1000
    units
      nA;
      uA=1000 nA;
      mA=1000 uA;
      A= 1000 mA;
    end units;
        
end Arrays;  