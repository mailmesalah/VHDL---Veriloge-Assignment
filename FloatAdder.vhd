-------Floating point adder

-- It has some limitation like it will only accept some values 
-- which comes under its range
library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;
  use ieee.std_logic_arith.all;
-------------------------------------------------------
entity FloatAdder is
  port(
    x,y:in std_logic_vector(11 downto 0);
    m:in std_logic;
    sum:out std_logic_vector(11 downto 0)); 
end FloatAdder;
-------------------------------------------------------
architecture Operation of FloatAdder is

  begin
    process(x,y,m)
      variable a,b,c:std_logic_vector(11 downto 0);
      variable big,mode:std_logic;
      begin
        
        a:=x;
        b:=y;
        mode:=m;
        
        -- sorting to get the bigger number for next step 
        if(a(3 downto 0) > b(3 downto 0))then
          big:='0';
        elsif(a(3 downto 0) < b(3 downto 0))then
          big:='1';
        elsif(a(3 downto 0) = b(3 downto 0))then
          big:='0';
        end if;
        
        -- arranging a and b so that they have the same exponent for addition or subraction
        if(big='0')then       -- a equals or greater than b condition
          while(a(3 downto 0) /= b(3 downto 0)) loop
            b(3 downto 0):=b(3 downto 0)+1;
              for i in 4 to 10 loop
                b(i):=b(i+1);
              end loop;
          end loop;
        elsif(big='1')then    -- a less than b condition
          while(b(3 downto 0) /= a(3 downto 0)) loop
            a(3 downto 0):=a(3 downto 0)+1;
              for i in 4 to 10 loop
                a(i):=a(i+1);
              end loop;
          end loop;
        end if;
        
        -- adding or subtracting a and b as needed (mode)
        if(mode='0')then
          if(a(11)='1' or b(11)='1')then
            for i in 4 to 10 loop --shifting one bit for carry to be added
                  a(i):=a(i+1);
                  b(i):=b(i+1);
            end loop;
          end if;
          
          c(11 downto 4):='0'&a(10 downto 4)+b(10 downto 4);
          c(3 downto 0):=a(3 downto 0);
        elsif(mode='1')then
          b(11 downto 4):=not(b(11 downto 4)); -- complimenting for subtraction
          b(11 downto 4):=b(11 downto 4)+1;    -- 2's compliment
          
          c(11 downto 4):=a(11 downto 4)+b(11 downto 4);
          c(3 downto 0):=a(3 downto 0);
        end if;
        
        -- normalizing to a standard form
        if(c(11 downto 4)>"00000000")then
          for i in 11 downto 5 loop
            if(c(i)='1')then
              for j in 11 downto i+1 loop
                for k in 11 downto 5 loop
                  c(k):=c(k-1);
                end loop;
                c(3 downto 0):=c(3 downto 0)-1;-----0000-1=1111
              end loop;
              exit;
            end if;
          end loop;
        end if;
        sum<=c;
    end process;
end Operation;