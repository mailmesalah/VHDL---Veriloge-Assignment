     /*------------------------------------------------------------------
     --------------------------//MAIN PROJECT//--------------------------
     ------------------**16 BIT RISC MICROPROCESSOR**--------------------
     ----------------------Coded by Salah and Jenson---------------------

     --------------------------------------------------------------------
     ------------------------------------------------------------------*/


/*------------------------------------------------------------------------*/    

  /*  Program for 16 bit Addition/Subtraction */

    module AdditionSubtraction(input [15:0] a,input [15:0] b,input addsubsel,output reg carry,output reg [15:0] c );

      always@(a,b,addsubsel)
        begin
          if(addsubsel==1'b0)                                                                                                                                                                                                                                                                                                                           
            begin
              {carry,c} =  a + b;
            end
          else if(addsubsel==1'b1)
            begin
              {carry,c} =  a - b;
            end
        end
    endmodule
/*------------------------------------------------------------------------*/    

  /*  Program for 16-Bit Oring/Anding */

    module OrAnd(input [15:0] a,input [15:0] b,input orandsel,output reg [15:0] c );

      always@(a,b,orandsel)
        begin
          if(orandsel==1'b0)
            begin
              c =  a | b;
            end
          else if(orandsel==1'b1)
            begin
              c =  a & b;
            end
        end
    endmodule
/*------------------------------------------------------------------------*/  

  /*  Program for 8-Bit Program Counter Increment */

    module PCIncrement(input [7:0] a,output reg [7:0] b );

      always@(a)
        begin
          b = a + 8'b00000001;
        end
    endmodule
/*------------------------------------------------------------------------*/  

  /*  Program for 8-Bit Program Counter  */

    module ProgramCounter(input [7:0] a,input PCload,input Clock,input Reset,output reg [7:0] b );
      
      initial
        begin
          b = 8'b00000000;
        end

      always@(posedge Clock)
        begin
          if(Reset==1'b1)
            begin
              b = 8'b00000000;
            end
          else if(PCload==1'b1)
            begin
              b = a ;
            end
        end
    endmodule
/*------------------------------------------------------------------------*/    
  
  /*  Program for 16-Bit Instruction Register  */

    module InstructionRegister(input [15:0] a,input IRload,input Clock,input Reset,output reg [15:0] b );
      
      initial
        begin
          b = 16'b0001010100000000;
        end

      always@(posedge Clock)
        begin
          if(Reset==1'b1)
            begin
              b = 16'b0001010100000000;
            end
          else if(IRload==1'b1)
            begin
              b = a ;
            end
        end
    endmodule
/*------------------------------------------------------------------------*/    
  
  /*  Program for 16-Bit Output Register  */

    module OutputRegister(input [15:0] a,input OutEnable,input Clock,input Reset,output reg [15:0] b );
      
      initial
        begin
          b = 16'b0000000000000000;
        end

      always@(posedge Clock)
        begin
          if(Reset==1'b1)
            begin
              b = 16'b0000000000000000;
            end
          else if(OutEnable==1'b1)
            begin
              b = a ;
            end
        end
    endmodule
/*------------------------------------------------------------------------*/   
  
  /*  Program for 16-Bit R Register  */

    module RegisterR(input [15:0] a,input Rload,input Clock,input Reset,output reg [15:0] b );
      
      initial
        begin
          b = 16'b0000000000000000;
        end

      always@(posedge Clock)
        begin
          if(Reset==1'b1)
            begin
              b = 16'b0000000000000000;
            end
          else if(Rload==1'b1)
            begin
              b = a ;
            end
        end
    endmodule
/*------------------------------------------------------------------------*/     
    
  /*  Program for 16-Bit Accumulator Register  */

    module Accumulator(input [15:0] a,input Aload,input Clock,input Reset,output reg [15:0] b );
      
      initial
        begin
          b = 16'b0000000000000000;
        end

      always@(posedge Clock)
        begin
          if(Reset==1'b1)
            begin
              b = 16'b0000000000000000;
            end
          else if(Aload==1'b1)
            begin
              b = a ;
            end
        end
    endmodule
/*------------------------------------------------------------------------*/ 
  
  /*  Program for Flag Register  */

    module Flag(input  ZeroIn,input CarryIn,input Clock,input Reset,output reg ZeroOut,output reg CarryOut );
      
      initial
        begin
          ZeroOut  = 1'b1;
          CarryOut = 1'b0;
        end

      always@(posedge Clock)
        begin
          if(Reset==1'b1)
            begin
              ZeroOut  = 1'b1;
              CarryOut = 1'b0;
            end
          else
            begin
              ZeroOut  = ZeroIn;
              CarryOut = CarryIn;
            end
        end
    endmodule
/*------------------------------------------------------------------------*/ 

 /*  Program for 2 x 1 x 16 Bit Mux  */
 
    module Memory(input Clock,input [15:0]a,input Enable,input ReadWrite,input [7:0]Address,output reg[15:0] MemoryOut);
      
      reg [15:0]mem[255:0];
      
      initial 
      begin
        mem[0]  = 16'b0000100100000000;//in
        mem[1]  = 16'b0000010100000000;//movr,a
        mem[2]  = 16'b0000101000000000;//addr
        mem[3]  = 16'b0000100000000000;//out
        mem[4]  = 16'b0000111000000110;//jmp
        mem[5]  = 16'b0000101000000000;//add r
        mem[6]  = 16'b0000101000000000;//ana r
        mem[7]  = 16'b0000010100000000;//movr,a
        mem[8]  = 16'b0000100100000000;//in
        mem[9]  = 16'b0000111100000010;//jnc
        mem[10] = 16'b0000100000000000;//out
        mem[11] = 16'b0000011000001010;//load a 10 
        mem[12] = 16'b0001011000000000;//hlt
        
      end
      always @(posedge Clock)
      begin
        if(Enable==1'b1)
          begin
            if(ReadWrite==1'b0)
              //writing to memory
              begin
                mem[Address] = a ;
              end
            else if(ReadWrite==1'b1)
              //Reading from memory
              begin
                MemoryOut = mem[Address] ;
              end
          end
      end
    endmodule
/*------------------------------------------------------------------------*/ 

 /*  Program for 2 x 1 x 16 Bit Mux  */

    module Mux2x1x16(input  [15:0] a,input [15:0] b,input sel,output reg [15:0] d);

      always@(a,b,sel)
        begin
          if(sel==1'b0)
            begin
              d = a;
            end
          else if(sel==1'b1)
            begin
              d = b;
            end
        end
    endmodule
/*------------------------------------------------------------------------*/ 

 /*  Program for 2 x 1 x 8 Bit Mux  */

    module Mux2x1x8(input  [7:0] a,input [7:0] b,input sel,output reg [7:0] d);

      always@(a,b,sel)
        begin
          if(sel==1'b0)
            begin
              d = a;
            end
          else if(sel==1'b1)
            begin
              d = b;
            end
        end
    endmodule
/*------------------------------------------------------------------------*/ 

 /*  Program for 8 x 1 x 16 Bit Mux  */

    module Mux8x1x16(input  [15:0] IN,input [15:0] R,input [15:0] Mem,input [15:0] AddSub,input [15:0] OrAnd,input [2:0]sel,output reg [15:0] AmuxOut);

      always@(IN,R,Mem,AddSub,OrAnd,sel)
        begin
          if(sel==3'b000)
            begin
               AmuxOut = IN;
            end
          else if(sel==3'b001)
            begin
               AmuxOut = R;
            end
          else if(sel==3'b010)
            begin
               AmuxOut = Mem;
            end
          else if(sel==3'b011)
            begin
               AmuxOut = AddSub;
            end
          else if(sel==3'b100)
            begin
               AmuxOut = OrAnd;
            end
        end
    endmodule
/*------------------------------------------------------------------------*/ 

 /*  Program for DataPath */

    module DataPath(input Clock,input Reset,input [15:0]IN,input PCload,input IRload,input MemMux,input ReadWrite,
                    input [2:0] Amux,input Aload,input AddSubMux,input Rload,input OutEnable,input OrAndSel,
                    input AddSubSel,input PCMux,input MemEnable,input [7:0] Address,output [15:0]Instruction,output CarryFlag,output ZeroFlag,
                    output [15:0]OUT);
                       
    wire [15:0] MemOut,IROut,AOut,ROut,AmuxOut,AddSubOut,OrAndOut,AddSubMuxOut;
    wire [7:0] IncOut,PCMuxOut,PCOut,MemMuxOut;
    wire Carry,ZeroIn;
    //IROut should be redirected to control unit
      InstructionRegister IR  (MemOut,IRload,Clock,Reset,IROut);
      Mux2x1x8            PCmux  (IncOut,Address,PCMux,PCMuxOut);      
      ProgramCounter      PC  (PCMuxOut,PCload,Clock,Reset,PCOut);
      PCIncrement         PCInc (PCOut,IncOut);
      Mux2x1x8            MemoryMux (PCOut,Address,MemMux,MemMuxOut);  
      Memory              M (Clock,AOut,MemEnable,ReadWrite,MemMuxOut,MemOut);
      Mux8x1x16           AccMux  (IN,ROut,MemOut,AddSubOut,OrAndOut,Amux,AmuxOut);
      Accumulator         Acc (AmuxOut,Aload,Clock,Reset,AOut);
      Mux2x1x16           AddSubmux(ROut,16'b1,AddSubMux,AddSubMuxOut);
      AdditionSubtraction AddSub(AddSubMuxOut,AOut,AddSubSel,Carry,AddSubOut);
      RegisterR           R   (AOut,Rload,Clock,Reset,ROut);
      OrAnd               OA  (ROut,AOut,OrAndSel,OrAndOut);
      OutputRegister      OR  (AOut,OutEnable,Clock,Reset,OUT);
      Flag                F (ZeroIn,Carry,Clock,Reset,ZeroFlag,CarryFlag);    
      
      assign ZeroIn      = ~|AOut,
             Instruction = IROut ;
             
    endmodule
    
    
    
/*------------------------------------------------------------------------*/ 



 /*  Program for ControlUnit */
 
    module ControlUnit( input Clock,input Reset,input [15:0]Instruction,input CarryFlag,input ZeroFlag,
                        output reg PCload,output reg IRload,output reg MemMux,output reg ReadWrite,
                        output reg [2:0] Amux,output reg Aload,output reg AddSubMux,output reg Rload,
                        output reg OutEnable,output reg OrAndSel,output reg AddSubSel,output reg PCMux,
                        output reg MemEnable,output reg Halted,output reg [7:0] Address);
      
      reg [2:0] PipelineStates   [2:0];
      reg [2:0] DelayedStates    [2:0];
      reg [7:0] InstructionQueue [2:0];
      reg [7:0] DelayInstruction  ;
      reg [7:0] DelayAddress    ;
      reg [7:0] AddressT         [2:0];
      reg [7:0] ExecuteInstruction ;
    
      //status signals
      reg JumpStatus  ;
      reg DelayStatus ;
      reg Delayed ;
      reg DelayDecode ;
      
      //States
      localparam  Idle    = 3'b000,//Idle State
                  Fetch   = 3'b001,//Fetch State
                  Decode  = 3'b010,//Decode State
                  Execute = 3'b011,//Execute State
                  Halt    = 3'b100,//Halt State
                  Delay   = 3'b101;//Delay State
      integer i,Now,DelayIndex;
      
                        
      initial
        begin
          //initialising
          for(i=0;i<=2;i=i+1)
            begin
              PipelineStates  [i] = Idle ;
              DelayedStates   [i] = Idle  ;
              InstructionQueue[i] = 8'b00010101 ;//NOP
              
            end
          
          JumpStatus  =   1'b0 ;
          DelayStatus =   1'b0 ;
          Delayed     =   1'b0 ;
          DelayIndex  =   -1  ;
          DelayDecode =   1'b0 ;
          DelayInstruction   = 8'b00010101 ;//NOP
          ExecuteInstruction = 8'b00010101 ;//NOP
          //Output Signals
          PCload      =   1'b0 ; 
          IRload      =   1'b0 ; 
          MemMux      =   1'b0 ; 
          ReadWrite   =   1'b0 ;
          MemEnable   =   1'b0 ; 
          Aload       =   1'b0 ; 
          AddSubMux   =   1'b0 ; 
          Rload       =   1'b0 ; 
          OutEnable   =   1'b0 ; 
          OrAndSel    =   1'b0 ; 
          AddSubSel   =   1'b0 ; 
          PCMux       =   1'b0 ;
          Amux        =   3'b000 ;
          Halted      =   1'b0 ;
        end

      always@(posedge Clock)
        begin
          if(Reset==1'b1)//Resets the Control Unit
            begin
              for(i=0;i<=2;i=i+1)
                begin
                  PipelineStates  [i] = Idle ;
                  DelayedStates   [i] = Idle  ;
                  InstructionQueue[i] = 8'b00010101 ;//NOP
                  
                end
              
              JumpStatus  =   1'b0 ;
              DelayStatus =   1'b0 ;
              Delayed     =   1'b0 ; 
              DelayIndex  =   -1  ;
              DelayDecode =   1'b0 ;
              DelayInstruction   = 8'b00010101 ;//NOP 
              ExecuteInstruction = 8'b00010101 ;//NOP
              //Output Signals
              PCload      =   1'b0 ; 
              IRload      =   1'b0 ; 
              MemMux      =   1'b0 ; 
              ReadWrite   =   1'b0 ;
              MemEnable   =   1'b0 ; 
              Aload       =   1'b0 ; 
              AddSubMux   =   1'b0 ; 
              Rload       =   1'b0 ; 
              OutEnable   =   1'b0 ; 
              OrAndSel    =   1'b0 ; 
              AddSubSel   =   1'b0 ; 
              PCMux       =   1'b0 ;
              Amux        =   3'b000 ;
              Halted      =   1'b0 ;
            end
          else
            begin
              //Pipeline hazards
              //(1)Jump instructions:Solution:-wait for the instruction to complete
              //(2)STA,LDA instructions:Solution:-Delay other pipelines by one clock
              //After initialisation the pipeline should be so filled that.. 
              //..it should start from the top to bottom in each clock cycle
              //The same is applicable for (1) and (2) with small modifications as they need
              
              //searching the Pipelinestates for 'Delay' state is available
              Delayed = 1'b0  ;
              for(i=2;i>0;i=i-1)//shifting
                begin
                  if(PipelineStates [i] ==  Delay)
                    begin
                      Delayed = 1'b1  ;//Delay state is found
                    end 
                end
                    
              if(Delayed  == 1'b0)
                begin
                  //Shifts Pipeline states
                  for(i=2;i>0;i=i-1)//shifting
                    begin
                      PipelineStates  [i] = PipelineStates [i-1] ;
                    end 
              
                  if(PipelineStates [0] == Idle)
                    begin
                      PipelineStates [0] = Fetch ;
                    end
                  else if(PipelineStates [0] == Fetch)
                    begin
                      PipelineStates [0] = Decode ;
                    end
                  else if(PipelineStates [0] == Decode)
                    begin
                      PipelineStates [0] = Execute ;
                    end
                  else if(PipelineStates [0] == Execute)
                    begin
                      PipelineStates [0] = Fetch ;
                    end
                  else if(PipelineStates [0] == Halt)
                    begin
                      PipelineStates [0] = Halt ;
                    end
                  //simple shifting is over
                end
              else if(Delayed  == 1'b1)
                begin
                  //If any of the instruction contains the 'Delay' state then the next state is..
                  //..set here 
                  for(i=0;i<=2;i=i+1)//shifting
                    begin
                      if(PipelineStates [i] == Idle)
                        begin
                          PipelineStates [i] = Fetch ;
                        end
                      else if(PipelineStates [i] == Fetch)
                        begin
                          PipelineStates [i] = Decode ;
                        end
                      else if(PipelineStates [i] == Decode)
                        begin
                          PipelineStates [i] = Execute ;
                        end
                      else if(PipelineStates [i] == Execute)
                        begin
                          PipelineStates [i] = Fetch ;
                        end
                      else if(PipelineStates [i] == Halt)
                        begin
                          PipelineStates [i] = Halt ;
                        end
                    end
                end
              
              
              //if the previous state is Delay then restore its state
              for(i=0;i<=2;i=i+1)
                begin
                  if(PipelineStates  [i] == Delay)
                    begin
                      PipelineStates  [i] = DelayedStates   [i] ;
                      DelayedStates   [i] = Idle ;
                    end
                end
              
              //Starting Fetching Decoding (States)
              //instruction to execute
              ExecuteInstruction = 8'b00010101 ;//NOP
              
              for(i=0;i<=2;i=i+1)
                begin
                  
                  //finding which state in each row
                  case (PipelineStates [i])
                    
                    //Fetching
                    Fetch   : begin
                                if(DelayStatus == 1'b0 || DelayIndex != i )
                                  begin
                                    if(JumpStatus  ==   1'b0 )
                                      begin
                                        PCload    = 1'b1 ; IRload     = 1'b1 ; MemMux     = 1'b0 ; 
                                        ReadWrite = 1'b1 ; MemEnable  = 1'b1 ; PCMux      = 1'b0 ;
                                      end
                                    else if(JumpStatus  ==   1'b1 )
                                      begin
                                        PCload    = 1'b1 ; IRload     = 1'b1 ; MemMux     = 1'b0 ; 
                                        ReadWrite = 1'b1 ; MemEnable  = 1'b1 ; PCMux      = 1'b1 ;//now address is taken fron CU
                                        JumpStatus  = 1'b0  ;
                                      end
                                  end
                                else if(DelayStatus == 1'b1 &&  DelayIndex == i)//if the previous instruction is STA or LDA
                                  begin
                                    DelayStatus = 1'b0 ;//reseting
                                    DelayedStates   [i] = PipelineStates  [i] ;
                                    PipelineStates  [i] = Delay ;
                                    
                                    DelayIndex  =   -1  ;//reseting

                                  end
                              end
                    //Decoding
                    Decode  : begin
                                if(DelayDecode == 1'b0)
                                  begin
                                    //Taking Instruction from [7:0]Instruction
                                    InstructionQueue[i] = Instruction[15:8] ;
                                    AddressT        [i] = Instruction[7:0] ;
                                  end
                                else if(DelayDecode == 1'b1)
                                  begin
                                    DelayDecode = 1'b0  ;//reseting
                                    InstructionQueue[i] = DelayInstruction ;
                                    AddressT        [i] = DelayAddress  ;
                                    
                                    DelayInstruction  = 8'b00010101 ;//NOP
                                  end
                              end
                              
                    //Taking out the intruction to execute
                    Execute : begin
                                ExecuteInstruction = InstructionQueue[i] ;//instruction to be executed
                                Now = i ;//keeping the row number for finding the adress on jump instruction
                                //for tracking ump instruction and retrieve the address
                              end
                    
                    default :;//Do nothing
                  endcase
                end//end of for loop
                
                //
                
              
                            
              //Executing the instruction
              
              case (ExecuteInstruction)
                
                //instruction execution
                
                //MOV A,R
                8'b00000100 : begin
                                Aload     = 1'b1 ; AddSubMux  = 1'b0 ; Rload     = 1'b0   ;  
                                OrAndSel  = 1'b0 ; AddSubSel  = 1'b0 ; Amux      = 3'b001 ; 
                                OutEnable = 1'b0 ;
                              end
                
                //MOV R,A
                8'b00000101 : begin
                                Aload     = 1'b0 ; AddSubMux  = 1'b0 ; Rload     = 1'b1   ;  
                                OrAndSel  = 1'b0 ; AddSubSel  = 1'b0 ; Amux      = 3'b000 ; 
                                OutEnable = 1'b0 ; 
                              end
                
                //LDA 8Bit Address
                8'b00000110 : begin
                                DelayStatus = 1'b1;//setting this status for tracking the next...
                                // fetch state to set it in dalay state.
                                //sending the address to take the data from it
                                Address = AddressT  [Now]  ;
                                //saving the current index
                                DelayIndex  =   Now ;
                                DelayDecode =   1'b1 ;//for late decode
                                //setting other two states to delay
                                for(i=0;i<=2;i=i+1)
                                  begin
                                    if(i != Now)
                                      begin
                                        if(PipelineStates[i]  ==  Decode)//keeping the instruction for further use
                                          begin
                                            DelayInstruction  = Instruction[15:8] ;
                                            DelayAddress      = Instruction[7:0] ;
                                          end
                                          
                                        DelayedStates   [i] = PipelineStates  [i] ;
                                        PipelineStates  [i] = Delay ;
                                      end
                                  end
                                  
                                //reseting ALU
                                Aload     = 1'b0 ; AddSubMux  = 1'b0 ; Rload     = 1'b0   ;  
                                OrAndSel  = 1'b0 ; AddSubSel  = 1'b0 ; Amux      = 3'b000 ; 
                                OutEnable = 1'b0 ;
                                
                                //Loading Accumulator with the data in memory 
                                PCload    = 1'b0 ; IRload     = 1'b0 ; MemMux     = 1'b1 ; //address is taken from CU
                                ReadWrite = 1'b1 ; MemEnable  = 1'b1 ; PCMux      = 1'b0 ;
                              end
                
                //STA 8Bit Address
                8'b00000111 : begin
                                DelayStatus = 1'b1;//setting this status for tracking the next...
                                // ...fetch state to set it in dalay state.
                                //sending the address to take the data from it
                                Address = AddressT  [Now]  ;
                                //saving the current index
                                DelayIndex  =   Now ;
                                DelayDecode =   1'b1 ;//for late decode
                                //setting other two states to delay
                                for(i=0;i<=2;i=i+1)
                                  begin
                                    if(i != Now)
                                      begin
                                        if(PipelineStates[i]  ==  Decode)//keeping the instruction for further use
                                          begin
                                            DelayInstruction  = Instruction[15:8] ;
                                            DelayAddress      = Instruction[7:0] ;
                                          end
                                          
                                        DelayedStates   [i] = PipelineStates  [i] ;
                                        PipelineStates  [i] = Delay ;
                                      end
                                  end
                                  
                                //reseting ALU
                                Aload     = 1'b0 ; AddSubMux  = 1'b0 ; Rload     = 1'b0   ;  
                                OrAndSel  = 1'b0 ; AddSubSel  = 1'b0 ; Amux      = 3'b000 ; 
                                OutEnable = 1'b0 ;
                                
                                //Storing Accumulator data in memory 
                                PCload    = 1'b0 ; IRload     = 1'b0 ; MemMux     = 1'b1 ; //address is taken from CU
                                ReadWrite = 1'b0 ; MemEnable  = 1'b1 ; PCMux      = 1'b0 ; 
                              end
                
                //OUT
                8'b00001000 : begin
                                Aload     = 1'b0 ; AddSubMux  = 1'b0 ; Rload     = 1'b0   ;  
                                OrAndSel  = 1'b0 ; AddSubSel  = 1'b0 ; Amux      = 3'b000 ; 
                                OutEnable = 1'b1 ; 
                              end
                
                //IN
                8'b00001001 : begin
                                Aload     = 1'b1 ; AddSubMux  = 1'b0 ; Rload     = 1'b0   ;  
                                OrAndSel  = 1'b0 ; AddSubSel  = 1'b0 ; Amux      = 3'b000 ; 
                                OutEnable = 1'b0 ; 
                              end
                
                //ADD R
                8'b00001010 : begin
                                Aload     = 1'b1 ; AddSubMux  = 1'b0 ; Rload     = 1'b0   ;  
                                OrAndSel  = 1'b0 ; AddSubSel  = 1'b0 ; Amux      = 3'b011 ; 
                                OutEnable = 1'b0 ; 
                              end
                
                //SUB R
                8'b00001011 : begin
                                Aload     = 1'b1 ; AddSubMux  = 1'b0 ; Rload     = 1'b0   ;  
                                OrAndSel  = 1'b0 ; AddSubSel  = 1'b1 ; Amux      = 3'b011 ; 
                                OutEnable = 1'b0 ;
                              end
                
                //INR
                8'b00001100 : begin
                                Aload     = 1'b1 ; AddSubMux  = 1'b1 ; Rload     = 1'b0   ;  
                                OrAndSel  = 1'b0 ; AddSubSel  = 1'b0 ; Amux      = 3'b011 ; 
                                OutEnable = 1'b0 ; 
                              end
                
                //DCR
                8'b00001101 : begin
                                Aload     = 1'b1 ; AddSubMux  = 1'b1 ; Rload     = 1'b0   ;  
                                OrAndSel  = 1'b0 ; AddSubSel  = 1'b1 ; Amux      = 3'b011 ; 
                                OutEnable = 1'b0 ; 
                              end
                
                //JMP 8Bit Address
                8'b00001110 : begin
                                //changing the next instruction to be fetched
                                //the address for next instruction to be fetched is taken from instruction register
                                PCload    = 1'b1 ; IRload     = 1'b0 ; MemMux     = 1'b0 ; 
                                ReadWrite = 1'b0 ; MemEnable  = 1'b0 ; PCMux      = 1'b0 ;
                                
                                //reseting the ALU(Execution part)
                                Aload     = 1'b0 ; AddSubMux  = 1'b0 ; Rload     = 1'b0   ;  
                                OrAndSel  = 1'b0 ; AddSubSel  = 1'b0 ; Amux      = 3'b000 ; 
                                OutEnable = 1'b0 ;
                                
                                //sending the address of the next instruction to be fetched
                                Address     = AddressT  [Now]  ;
                                JumpStatus  =   1'b1 ;//setting to 1 so that when fetching next instruction...
                                //... it can fetch instruction from the address specified by the control unit.
                                
                                //changing the current states to idle
                                //so that it can execute instruction from the address PC have.
                                for(i=0;i<=2;i=i+1)
                                  begin
                                    PipelineStates  [i] = Idle ;
                                    InstructionQueue[i] = 8'b00010101 ;//NOP instruction
                                  end                                 
                              end
                
                //JNC 8Bit Address
                8'b00001111 : begin
                                
                                //reseting the ALU(Execution part)
                                Aload     = 1'b0 ; AddSubMux  = 1'b0 ; Rload     = 1'b0   ;  
                                OrAndSel  = 1'b0 ; AddSubSel  = 1'b0 ; Amux      = 3'b000 ; 
                                OutEnable = 1'b0 ;
                                
                                if(CarryFlag  ==  1'b0)
                                  begin
                                    //changing the next instruction to be fetched
                                    //the address for next instruction to be fetched is taken from instruction register
                                    PCload    = 1'b0 ; IRload     = 1'b0 ; MemMux     = 1'b0 ; 
                                    ReadWrite = 1'b0 ; MemEnable  = 1'b0 ; PCMux      = 1'b0 ;
                                

                                    //sending the address of the next instruction to be fetched
                                    Address     = AddressT  [Now]  ;
                                    JumpStatus  =   1'b1 ;//setting to 1 so that when fetching next instruction...
                                    //... it can fetch instruction from the address specified by the control unit.
                                
                                    //changing the current states to idle
                                    //so that it can execute instruction from the address PC have.
                                    for(i=0;i<=2;i=i+1)
                                      begin
                                        PipelineStates  [i] = Idle ;
                                        InstructionQueue[i] = 8'b00010101 ;//NOP instruction
                                      end  
                                  end
                                else if(CarryFlag  ==  1'b1)
                                  begin
                                    //works normal
                                    JumpStatus  =   1'b0 ;//setting to 1 so that when fetching next instruction...
                                    //... it can fetch instruction from the address specified by the control unit.
                                  end                               
                              end
                
                //JC 8Bit Address
                8'b00010000 : begin
                                
                                //reseting the ALU(Execution part)
                                Aload     = 1'b0 ; AddSubMux  = 1'b0 ; Rload     = 1'b0   ;  
                                OrAndSel  = 1'b0 ; AddSubSel  = 1'b0 ; Amux      = 3'b000 ; 
                                OutEnable = 1'b0 ;
                                
                                if(CarryFlag  ==  1'b1)
                                  begin
                                    //changing the next instruction to be fetched
                                    //the address for next instruction to be fetched is taken from instruction register
                                    PCload    = 1'b0 ; IRload     = 1'b0 ; MemMux     = 1'b0 ; 
                                    ReadWrite = 1'b0 ; MemEnable  = 1'b0 ; PCMux      = 1'b0 ;
                                

                                    //sending the address of the next instruction to be fetched
                                    Address     = AddressT  [Now]  ;
                                    JumpStatus  =   1'b1 ;//setting to 1 so that when fetching next instruction...
                                    //... it can fetch instruction from the address specified by the control unit.
                                
                                    //changing the current states to idle
                                    //so that it can execute instruction from the address PC have.
                                    for(i=0;i<=2;i=i+1)
                                      begin
                                        PipelineStates  [i] = Idle ;
                                        InstructionQueue[i] = 8'b00010101 ;//NOP instruction
                                      end  
                                  end
                                else if(CarryFlag  ==  1'b0)
                                  begin
                                    //works normal
                                    JumpStatus  =   1'b0 ;//setting to 1 so that when fetching next instruction...
                                    //... it can fetch instruction from the address specified by the control unit.
                                  end 
                              end
                
                //JNZ 8Bit Address
                8'b00010001 : begin
                                
                                //reseting the ALU(Execution part)
                                Aload     = 1'b0 ; AddSubMux  = 1'b0 ; Rload     = 1'b0   ;  
                                OrAndSel  = 1'b0 ; AddSubSel  = 1'b0 ; Amux      = 3'b000 ; 
                                OutEnable = 1'b0 ;
                                
                                if(ZeroFlag  ==  1'b0)
                                  begin
                                    //changing the next instruction to be fetched
                                    //the address for next instruction to be fetched is taken from instruction register
                                    PCload    = 1'b0 ; IRload     = 1'b0 ; MemMux     = 1'b0 ; 
                                    ReadWrite = 1'b0 ; MemEnable  = 1'b0 ; PCMux      = 1'b0 ;
                                

                                    //sending the address of the next instruction to be fetched
                                    Address     = AddressT  [Now]  ;
                                    JumpStatus  =   1'b1 ;//setting to 1 so that when fetching next instruction...
                                    //... it can fetch instruction from the address specified by the control unit.
                                
                                    //changing the current states to idle
                                    //so that it can execute instruction from the address PC have.
                                    for(i=0;i<=2;i=i+1)
                                      begin
                                        PipelineStates  [i] = Idle ;
                                        InstructionQueue[i] = 8'b00010101 ;//NOP instruction
                                      end  
                                  end
                                else if(ZeroFlag  ==  1'b1)
                                  begin
                                    //works normal
                                    JumpStatus  =   1'b0 ;//setting to 1 so that when fetching next instruction...
                                    //... it can fetch instruction from the address specified by the control unit.
                                  end 
                              end
                
                //JZ 8Bit Address
                8'b00010010 : begin
                                
                                //reseting the ALU(Execution part)
                                Aload     = 1'b0 ; AddSubMux  = 1'b0 ; Rload     = 1'b0   ;  
                                OrAndSel  = 1'b0 ; AddSubSel  = 1'b0 ; Amux      = 3'b000 ; 
                                OutEnable = 1'b0 ;
                                
                                if(ZeroFlag  ==  1'b1)
                                  begin
                                    //changing the next instruction to be fetched
                                    //the address for next instruction to be fetched is taken from instruction register
                                    PCload    = 1'b0 ; IRload     = 1'b0 ; MemMux     = 1'b0 ; 
                                    ReadWrite = 1'b0 ; MemEnable  = 1'b0 ; PCMux      = 1'b0 ;
                                

                                    //sending the address of the next instruction to be fetched
                                    Address     = AddressT  [Now]  ;
                                    JumpStatus  =   1'b1 ;//setting to 1 so that when fetching next instruction...
                                    //... it can fetch instruction from the address specified by the control unit.
                                
                                    //changing the current states to idle
                                    //so that it can execute instruction from the address PC have.
                                    for(i=0;i<=2;i=i+1)
                                      begin
                                        PipelineStates  [i] = Idle ;
                                        InstructionQueue[i] = 8'b00010101 ;//NOP instruction
                                      end  
                                  end
                                else if(ZeroFlag  ==  1'b0)
                                  begin
                                    //works normal
                                    JumpStatus  =   1'b0  ;//setting to 1 so that when fetching next instruction...
                                    //... it can fetch instruction from the address specified by the control unit.
                                  end 
                              end
                
                //ANA R
                8'b00010011 : begin
                                Aload     = 1'b1 ; AddSubMux  = 1'b0 ; Rload     = 1'b0   ;  
                                OrAndSel  = 1'b1 ; AddSubSel  = 1'b0 ; Amux      = 3'b100 ; 
                                OutEnable = 1'b0 ; 
                              end
                
                //ORA R
                8'b00010100 : begin
                                Aload     = 1'b1 ; AddSubMux  = 1'b0 ; Rload     = 1'b0   ;  
                                OrAndSel  = 1'b0 ; AddSubSel  = 1'b0 ; Amux      = 3'b100 ; 
                                OutEnable = 1'b0 ; 
                              end
                
                //NOP
                8'b00010101 : begin
                                Aload     = 1'b0 ; AddSubMux  = 1'b0 ; Rload     = 1'b0   ;  
                                OrAndSel  = 1'b0 ; AddSubSel  = 1'b0 ; Amux      = 3'b000 ; 
                                OutEnable = 1'b0 ; 
                              end
                
                //HLT :- The system is send to halt state
                //Reset to change from Halt state
                8'b00010110 : begin
                                Aload     = 1'b0 ; AddSubMux  = 1'b0 ; Rload     = 1'b0   ;  
                                OrAndSel  = 1'b0 ; AddSubSel  = 1'b0 ; Amux      = 3'b000 ; 
                                OutEnable = 1'b0 ;
                                PipelineStates [0] = Halt ;
                                PipelineStates [1] = Halt ;
                                PipelineStates [2] = Halt ;
                                Halted    =   1'b1 ; 
                                //reseting further execution
                                PCload    = 1'b0 ; IRload     = 1'b0 ; MemMux     = 1'b0 ; 
                                ReadWrite = 1'b0 ; MemEnable  = 1'b0 ; PCMux      = 1'b0 ;
                              end
                
                //Default  Instruction is NOP
                default     : begin
                                Aload     = 1'b0 ; AddSubMux  = 1'b0 ; Rload     = 1'b0   ;  
                                OrAndSel  = 1'b0 ; AddSubSel  = 1'b0 ; Amux      = 3'b000 ; 
                                OutEnable = 1'b0 ; 
                              end
              endcase
              
            end
        end
    endmodule
/*------------------------------------------------------------------------*/ 
  
  /*  Program for Microprocessor  */

    module RiscProcessor(input  Clock,input Reset,input [15:0]IN,output Halted,output [15:0]OUT );
    
      wire  PCload,IRload,MemMux,ReadWrite,Aload,AddSubMux,Rload,OutEnable,OrAndSel,AddSubSel,PCMux,MemEnable,
            CarryFlag,ZeroFlag ;
      wire  [2:0]   Amux ; 
      wire  [15:0]  Instruction ;
      wire  [7:0]   Address ;
      
      
      DataPath    DP( Clock,Reset,IN,PCload,IRload,MemMux,ReadWrite,Amux,Aload,AddSubMux,Rload,OutEnable,OrAndSel,
                    AddSubSel,PCMux,MemEnable,Address,Instruction,CarryFlag,ZeroFlag,OUT );
      ControlUnit CU( Clock,Reset,Instruction,CarryFlag,ZeroFlag,PCload,IRload,MemMux,ReadWrite,Amux,Aload,
                    AddSubMux,Rload,OutEnable,OrAndSel,AddSubSel,PCMux,MemEnable,Halted,Address );
    endmodule
/*------------------------------------------------------------------------*/ 


