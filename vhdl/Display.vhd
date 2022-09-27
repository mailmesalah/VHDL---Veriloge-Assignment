---------Seven segment display
library ieee;
use ieee.std_logic_1164.all;
-----------------------------

entity Display is 
  port(
    
    w,x,y,z:in std_logic;
    a,b,c,d,e,f,g:out std_logic);
    
end Display;

-----------------------------

Architecture Operation of Diplay is
  
  variable ww:std_logic;
  variable xx:std_logic;
  variable yy:std_logic;
  variable zz:std_logic;
  
  ww:=w;
  yy:=y;
  xx:=x;
  zz:=z;
  
  if ww=0 and yy=0 and xx=0 and zz=0 then
    
  elseif ww=1 and yy=0 and xx=0 and zz=0 then 
  
  elseif ww=0 and yy=1 and xx=0 and zz=0 then
  
  elseif ww=0 and yy=0 and xx=1 and zz=0 then
  
  elseif ww=0 and yy=0 and xx=0 and zz=1 then
  
  else
      
  end if
  
end Operation;