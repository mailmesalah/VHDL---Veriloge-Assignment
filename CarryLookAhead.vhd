
---***Carry Look Ahead Adder Q no:(35)***--- 
----coded by Jenson and Salahudheen----

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
----------------------------
entity CarryLookAhead is
  port(
    cin:in std_logic;
    a,b:in std_logic_vector(0 to 3);
    carry:out std_logic_vector(0 to 3);
    c1:out std_logic);
end CarryLookAhead;
---------------------------
architecture Operation of CarryLookAhead is
signal x:std_logic;
  begin
    process(a,b,cin)
     variable p:std_logic_vector(0 to 3);
     variable c:std_logic_vector(0 to 3);
     variable g:std_logic_vector(0 to 3);
     variable a1,b1:std_logic_vector(0 to 3);
     variable s:std_logic_vector(0 to 3);
      begin
        a1:=a;
        b1:=b;
        for i in 0 to 3  loop
          if(i=0) then
            g(i):= a(i)and b(i);
            p(i):=a(i) xor b(i);
            c(i):=g(i) or (p(i) and cin);
            s(i):=p(i) xor c(i);
          else
            g(i):= a(i)and b(i);
            p(i):=a(i) xor b(i);
            c(i):=g(i) or (p(i) and c(i-1));
            s(i):=p(i) xor c(i);
          end if;
        end loop;
        carry<=c;
        c1<=c(0);
     end process;
end Operation;