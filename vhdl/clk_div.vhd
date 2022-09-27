

--    110010011010
--baud rate 9600

library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


Entity ClkUnit is
    Port ( SysClk : in  STD_LOGIC;	 		-- System Clock of 50 MHz 
           clkdiv26 : inout  STD_LOGIC;	-- Clock to Rx Module
           EnableTX : out  STD_LOGIC;		-- Clock to Tx Module			 
           Reset : in  STD_LOGIC			-- Master Reset
			   );        
			  
end ClkUnit;

---------------------------------

Architecture Behavioral of ClkUnit is

begin
------------------------------------------------------------------------------------------	
-- DIVIDES SYSTEM CLOCK OF 50 MHZ BY 3226 for Rx to get 155KHz	through 'clkdiv26' 
------------------------------------------------------------------------------------------
DivClk26: process (SysClk,Reset)
	variable Count26	:STD_LOGIC_VECTOR (11 downto 0);
	
	begin
   
	 if Rising_Edge(SysClk) then
	   if Reset = '0' then
		   Count26 := "000000000000";
		   ClkDiv26 <= '0';
		else 
		   Count26 := Count26 +1;
		   case Count26 is 

      when "000000000001" =>  
				   ClkDiv26 <= '1';
					Count26 := "000000000000";
				 when others =>
				   ClkDiv26 <= '0';
			end case;
		 end if;
     end if;
end process;	  

-------------------------------------------------------------------------------------------
-- DIVIDES 155KHz( Rx clock )	BY 16 TO GET 9.6KHZ , Provide Enable Tx signal through 'EnableTX'
-------------------------------------------------------------------------------------------
	 DivClk10: process (SysClk,Reset,ClkDiv26)
	variable Count16	:STD_LOGIC_VECTOR (4 downto 0);
	
	begin

	 if Rising_Edge(SysClk) then
	   if Reset = '0' then
		   Count16 := "00000";
		   EnableTx <= '0';
		elsif CLkDiv26 = '1' then
		  Count16 := Count16 + 1 ;
		end if;
		   case Count16 is 
			    when "10000" => 		-- count 16
				   EnableTx <= '1';
					Count16 := "00000";
				 when others =>
				   EnableTx <= '0';
			end case;
		end if;
end process;	  
end;