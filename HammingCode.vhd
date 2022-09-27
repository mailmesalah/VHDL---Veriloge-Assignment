-------Hamming code error correction

library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;
  use ieee.std_logic_arith.all;
-------------------------------------------------------
entity HammingCode is
  port(
    inhcode:in std_logic_vector(1 to 7);
    err:out std_logic;
    errbitpos:out std_logic_vector(3 downto 1);
    outhcode:out std_logic_vector(1 to 7)); 
end HammingCode;
-------------------------------------------------------
architecture Operation of HammingCode is

  begin
    process(inhcode)
      variable x:std_logic_vector(1 to 7);
      variable parity:std_logic_vector(3 downto 1);
      variable errpos:integer:=0;
      variable fail:std_logic:='0';
      begin
        x:=inhcode;
        
        parity(1):=x(1);
        parity(2):=x(2);
        parity(3):=x(4);
        
        -- error checking
        for i in 1 to 7 loop
          if(i=3 or i=5 or i=7) then
            parity(1):=parity(1) xor x(i);
          end if;
          if(i=3 or i=6 or i=7)then
            parity(2):=parity(2) xor x(i);
          end if;
          if(i=7 or i=6 or i=5)then
            parity(3):=parity(3) xor x(i);
          end if;      
        end loop;
        
        -- error correcting
        if(parity="000")then
          null;
        elsif(parity>"000")then
          fail:='1';
          errpos:=conv_integer(parity);
          x(errpos):=not(x(errpos));
        end if;

        -- output
        err<=fail;
        errbitpos<=parity;
        outhcode<=x;
    end process;
end Operation;