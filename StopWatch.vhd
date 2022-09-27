
-------***Stop Watch (Q no:50)***--------
-------coded by Jenson and Salahudheen----
library ieee;
library Assignment2;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;
  use ieee.std_logic_arith.all;
  use Assignment2.extras.all;
----------------------------------------------
entity StopWatch is
  port(
    enable,clr,go,clk:in std_logic;
    q:inout string(4 downto 1));
    
end StopWatch;
----------------------------------------------
architecture Operation of StopWatch is
  begin
    process(enable,clr,clk,go)
      variable x:std_logic_vector(11 downto 0):="000000000000";
      variable y:std_logic_vector(21 downto 0):="0000000000000000000000";
      variable s:string(4 downto 1);

      begin
             
        --2500,000 mode counter for generating one sec 
        if(y="1001100010010110100000") then
            
          y:="0000000000000000000000";
        
        
          if (clr='1' and clk='1') then
            x:="000000000000";
          elsif(enable='0' and clk='1') then
            null;--suspending
          elsif(go='1' and clk='1') then
          
            if(x(3 downto 0)="1001") then
              x(3 downto 0):="0000";
              if(x(7 downto 4)="1001") then
                x(7 downto 4):="0000";
                if(x(11 downto 8)="1001") then
                  x(11 downto 8):="0000";
                else
                  x(11 downto 8):=x(11 downto 8)+1;
                end if;
              else
                x(7 downto 4):=x(7 downto 4)+1;
              end if;
            else
              x:=x+1;
            end if;  
          end if;
                  
        
          case x(3 downto 0) is
            when "0000" => s(1):='0';
            when "0001" => s(1):='1';
            when "0010" => s(1):='2';
            when "0011" => s(1):='3';
            when "0100" => s(1):='4';
            when "0101" => s(1):='5';
            when "0110" => s(1):='6';
            when "0111" => s(1):='7';
            when "1000" => s(1):='8';
            when "1001" => s(1):='9';
            when others => null;
          end case;
          s(2):='.';
          case x(7 downto 4) is
            when "0000" => s(3):='0';
            when "0001" => s(3):='1';
            when "0010" => s(3):='2';
            when "0011" => s(3):='3';
            when "0100" => s(3):='4';
            when "0101" => s(3):='5';
            when "0110" => s(3):='6';
            when "0111" => s(3):='7';
            when "1000" => s(3):='8';
            when "1001" => s(3):='9';
            when others => null;
          end case;
          case x(11 downto 8) is
            when "0000" => s(4):='0';
            when "0001" => s(4):='1';
            when "0010" => s(4):='2';
            when "0011" => s(4):='3';
            when "0100" => s(4):='4';
            when "0101" => s(4):='5';
            when "0110" => s(4):='6';
            when "0111" => s(4):='7';
            when "1000" => s(4):='8';
            when "1001" => s(4):='9';
            when others => null;
          end case;
        else
          y:=y+1;
        end if;  
        q<=s;
    end process;
end Operation; 