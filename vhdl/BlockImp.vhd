library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
---------------------------------
entity BlockImp is
  port(
    a,b:in integer;
    c,d,e,f,g,h:out integer);
end BlockImp;
---------------------------------
architecture Operation of BlockImp is 
  
  signal i,j,k : integer;
  
  begin
    
    Arithmatic: block
      begin
      c<= a + b;
      d<= a - b;
      e<= a * b;
    end block Arithmatic;
    Arithmatic2: block(b /= 0)
      begin
      i<= 0 when b=0 else (a / b); 
      f<= guarded i;
      j<= 0 when b=0 else (a rem b); 
      g<= guarded j;
      k<= 0 when b=0 else (a mod b); 
      h<= guarded k;
    end block Arithmatic2;
end Operation;
---------------------------------