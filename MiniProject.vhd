

                    --  Project VHDL --
---------------------------------------------------------------------
-----------------Coded By Jenson & Salahudheen-----------------------

  library ieee;
    use ieee.std_logic_1164.all;
    use ieee.std_logic_unsigned.all;
    use ieee.std_logic_arith.all;
    
----------------------------------------------------------------------
----------------------------------------------------------------------
    
    Entity Micropro8Bit is
      
      port(
          clk,reset:in std_logic
          );
    End Micropro8Bit;

----------------------------------------------------------------------

    Architecture Operation of Micropro8Bit is
      Begin
      
      
      
    End Operation;
----------------------------------------------------------------------



          ---Coding for the program counter---
    
    
    
  library ieee;
    use ieee.std_logic_1164.all;
    use ieee.std_logic_unsigned.all;
    use ieee.std_logic_arith.all;
    
----------------------------------------------------------------------
----------------------------------------------------------------------    
    
    Entity ProgCount is
      port(
      incr_PC,load_PC,pc_bus:in std_logic;
      inSbus:in std_logic_vector(7 downto 0);
      outSbus:out std_logic_vector(7 downto 0)
      );
    End ProgCount;
    
----------------------------------------------------------------------  
    
    Architecture Operation of ProgCount is
      Begin
     
    End Operation;

----------------------------------------------------------------------  



        ---Coding for timing and control unit---


  library ieee;
    use ieee.std_logic_1164.all;
    use ieee.std_logic_unsigned.all;
    use ieee.std_logic_arith.all;

----------------------------------------------------------------------
----------------------------------------------------------------------


    Entity TimingAndCtrl is 
      
      port(
      
        incr_PC,load_PC,pc_bus,load_IR,load_mdr,load_mar,CS,R_nw:out std_logic;
        OP:in std_logic_vector(7 downto 0);
        load_ACC,ALU_acc,ALU_add,ALU_sub,ALU_and,ALU_nr,HLT:out std_logic;
        z_flag:in std_logic);
      
      
    End TimingAndCtrl;
    
----------------------------------------------------------------------
    Architecture Operation of TimingAndCtrl is
      Begin
        
    End Operation;
----------------------------------------------------------------------

        ---Coding for RAM---


  library ieee;
    use ieee.std_logic_1164.all;
    use ieee.std_logic_unsigned.all;
    use ieee.std_logic_arith.all;

----------------------------------------------------------------------
----------------------------------------------------------------------


    Entity RAM is
      
      port(
        inSbus,Sbus_alu_0:in std_logic_vector(7 downto 0);
        load_mdr,load_mar,CS,R_nw:in std_logic;
        Sbus_Ram:out std_logic_vector(7 downto 0)); 

    End RAM;

----------------------------------------------------------------------

    Architecture Operation of RAM is
    Begin
      
      
    End Operation;

----------------------------------------------------------------------



      ---Coding for instruction Register Decoder---
      
  library ieee;
    use ieee.std_logic_1164.all;
    use ieee.std_logic_unsigned.all;
    use ieee.std_logic_arith.all;

----------------------------------------------------------------------
----------------------------------------------------------------------

    Entity InsDecoReg is
      port(
          Sbus_Ram:in std_logic_vector(7 downto 0);
          load_IR:in std_logic;
          inSbus:out std_logic_vector(7 downto 0);
          OP:out std_logic_vector(7 downto 0);
          outinst:out std_logic_vector(7 downto 0)
          ); 
    End InsDecoReg;

----------------------------------------------------------------------

    Architecture Operation of InsDecoReg is
    begin
    End Operation;
    
----------------------------------------------------------------------

    
    
    
    library ieee;
      use ieee.std_logic_1164.all;
      use ieee.std_logic_unsigned.all;
      use ieee.std_logic_arith.all;
      
----------------------------------------------------------------------
----------------------------------------------------------------------

      Entity ALU is
        port(
           load_ACC,ALU_acc,ALU_add,ALU_sub,ALU_and,ALU_nr,HLT:in std_logic;
           outinst:in std_logic_vector(7 downto 0);
           z_flag:in std_logic;
           Sbus_ir_0:out std_logic_vector(7 downto 0));
      End ALU;

----------------------------------------------------------------------


      Architecture Operation of ALU is
      begin
        
        
      End Operation;
----------------------------------------------------------------------
       
       
--       Instruction set for MP --


   library ieee;
      use ieee.std_logic_1164.all;
      use ieee.std_logic_unsigned.all;
      use ieee.std_logic_arith.all;
----------------      
    Entity move is
      port(
      clk:in std_logic;
      inm:in std_logic_vector(7 downto 0);
      outm:out std_logic_vector(7 downto 0));
    End move;
----------------    
    Architecture operation of move is
    
    begin
    --variable std_logic_vector(7 downto 0);
    process(clk)
      begin
      outm<=inm;
    end process;
      
    End operation;
    
-------------------------------------------------
-------------------------------------------------   
              ----mux 8---------    
    
  library ieee;
      use ieee.std_logic_1164.all;
      use ieee.std_logic_unsigned.all;
      use ieee.std_logic_arith.all;  
------------------------------------------------- 
    Entity mux8 is
      port(
          sel:in std_logic;
          input1:in std_logic_vector(7 downto 0);
          input2:in std_logic_vector(7 downto 0);
          output:out std_logic_vector(7 downto 0)
          );
    End Mux8;  
    
-------------------------------------------------  
    Architecture Operation of Mux8 is
    Begin
      process(sel)
        begin
        if(sel='0')then 
          output<=input1;
        else
          output<=input2;
        end if;
      end process;
    End Operation;
    
-------------------------------------------------
    
    -----------Decrement 8 bit------------
    
    library ieee;
      use ieee.std_logic_1164.all;
      use ieee.std_logic_unsigned.all;
      use ieee.std_logic_arith.all;  
------------------------------------------------- 
    Entity dec8 is
      port(
          input:in std_logic_vector(7 downto 0);
          output:out std_logic_vector(7 downto 0)
          );
    End dec8;  
    
-------------------------------------------------  
    Architecture Operation of dec8 is
    Begin
      process(input)
        begin
        output<=input-'1';
      end process;
    End Operation;
    
-------------------------------------------------

    
    
   -----------Decrement 16 bit------------
    
    library ieee;
      use ieee.std_logic_1164.all;
      use ieee.std_logic_unsigned.all;
      use ieee.std_logic_arith.all;  
------------------------------------------------- 
    Entity dec16 is
      port(
          input:in std_logic_vector(15 downto 0);
          output:out std_logic_vector(15 downto 0)
          );
    End dec16;  
    
-------------------------------------------------  
    Architecture Operation of dec16 is
    Begin
      process(input)
        begin
        output<=input-'1';
      end process;
    End Operation;
    
-------------------------------------------------  



    -----------Increment 8 bit------------
    
    library ieee;
      use ieee.std_logic_1164.all;
      use ieee.std_logic_unsigned.all;
      use ieee.std_logic_arith.all;  
------------------------------------------------- 
    Entity inc8 is
      port(
          input:in std_logic_vector(7 downto 0);
          output:out std_logic_vector(7 downto 0)
          );
    End inc8;  
    
-------------------------------------------------  
    Architecture Operation of inc8 is
    Begin
      process(input)
        begin
        output<=input+'1';
      end process;
    End Operation;
    
-------------------------------------------------

    
    
   -----------Increment 16 bit------------
    
    library ieee;
      use ieee.std_logic_1164.all;
      use ieee.std_logic_unsigned.all;
      use ieee.std_logic_arith.all;  
------------------------------------------------- 
    Entity inc16 is
      port(
          input:in std_logic_vector(15 downto 0);
          output:out std_logic_vector(15 downto 0)
          );
    End inc16;  
    
-------------------------------------------------  
    Architecture Operation of inc16 is
    Begin
      process(input)
        begin
        output<=input+'1';
      end process;
    End Operation;
    
-------------------------------------------------  
    
    
    ---------------Subtraction 8 Bit-----------
    
     
    library ieee;
      use ieee.std_logic_1164.all;
      use ieee.std_logic_unsigned.all;
      use ieee.std_logic_arith.all;  
------------------------------------------------- 
    Entity sub8 is
      port(
          input1:in std_logic_vector(7 downto 0);
          input2:in std_logic_vector(7 downto 0);
          output:out std_logic_vector(7 downto 0)
          );
    End sub8;  
    
-------------------------------------------------  
    Architecture Operation of sub8 is
    Begin
      process(input1,input2)
        begin
         output<=input1-input2;
      end process;
    End Operation;
    
-------------------------------------------------  



---------------Addition 8 Bit-----------
    
     
    library ieee;
      use ieee.std_logic_1164.all;
      use ieee.std_logic_unsigned.all;
      use ieee.std_logic_arith.all;  
------------------------------------------------- 
    Entity add8 is
      port(
          input1:in std_logic_vector(7 downto 0);
          input2:in std_logic_vector(7 downto 0);
          output:out std_logic_vector(7 downto 0)
          );
    End add8;  
    
-------------------------------------------------  
    Architecture Operation of add8 is
    Begin
      process(input1,input2)
        begin
         output<=input1+input2;
      end process;
    End Operation;
    
-------------------------------------------------  
    
    
    

---------------Oring 2 Byte-----------
    
     
    library ieee;
      use ieee.std_logic_1164.all;
      use ieee.std_logic_unsigned.all;
      use ieee.std_logic_arith.all;  
------------------------------------------------- 
    Entity or8 is
      port(
          input1:in std_logic_vector(7 downto 0);
          input2:in std_logic_vector(7 downto 0);
          output:out std_logic_vector(7 downto 0)
          );
    End or8;  
    
-------------------------------------------------  
    Architecture Operation of or8 is
    Begin
      process(input1,input2)
        begin
         output<=input1 or input2;
      end process;
    End Operation;
    
-------------------------------------------------  
    
    
      

---------------Anding 2 Byte-----------
    
     
    library ieee;
      use ieee.std_logic_1164.all;
      use ieee.std_logic_unsigned.all;
      use ieee.std_logic_arith.all;  
------------------------------------------------- 
    Entity and8 is
      port(
          input1:in std_logic_vector(7 downto 0);
          input2:in std_logic_vector(7 downto 0);
          output:out std_logic_vector(7 downto 0)
          );
    End and8;  
    
-------------------------------------------------  
    Architecture Operation of and8 is
    Begin
      process(input1,input2)
        begin
         output<=input1 and input2;
      end process;
    End Operation;
    
-------------------------------------------------  




----***Nor8***----------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
--------------------------------
entity Nor8 is
  port(
    a:in std_logic_vector(0 to 7);
    o:out std_logic);
end Nor8;
---------------------------------
Architecture Operation of Nor8 is
begin
  

    o<= not(a(0) or a(1) or a(2) or a(3) or a(4) or a(5) or a(6) or a(7));
     
end Operation;




library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


Entity IR is 
port(
clk,rst,irload:in std_logic;
irout:out std_logic_vector(15 downto 0);
irin:in std_logic_vector(7 downto 0)
      );
end IR;



Architecture Operation of IR is
begin
 process(clk) 
  
End Operation;
    
    
    
    
    
    -------****Delay Flip Flop ****-------
library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;
------------------------------------------------
entity DFF is
  port(
  d,clk,pre,clr:in std_logic;
  q,qbar:inout std_logic);
end DFF;
------------------------------------------------
architecture Operation of DFF is

  begin
    process(clk,d,pre,clr)
      variable qq:std_logic:='1';
      variable qqbar:std_logic:='0';
      begin

      if (clk='1' and pre='1' and clr='1' and d='1')then
        qq:=d;
        qqbar:= not qq;
      elsif(clk='1' and pre='1' and clr='1' and d='0')then
        qq:=d;
        qqbar:= not qq;
      end if;
      if(clr='0') then
        qq:='0';
        qqbar:=not qq;
      elsif(pre='0') then
        qq:='1';
        qqbar:=not qq;
      end if;
      q<=qq;
      qbar<=qqbar;
    end process;
end Operation;