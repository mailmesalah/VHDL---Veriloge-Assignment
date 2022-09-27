
  /***************************************************************/
            //UART Implementation in Verilog HDL
            //Coded By Salah
  /***************************************************************/
  
  module BaudRateGenerator(input InClock,input Reset,output reg OutClock);//baud rate generator
  //this is a sample baud rate generator for 19,200 baud rate
  //later can be upgraded for producing any baudrate according to some inputs given
  //since the InClock is expected of 50 MHz the  baud rate generator needs a mod-I63 counter
  //This program produces an output clock which is sampled by 19200*16
  //sampling each baud bit by 16 for sampling
  //the needed 19200 baud rate(for transmiter) is taken by dividing the output signal by 16.
  //For reciever the same baud rate generator is used.
  //frequency of (InClock is greater than OutClock(sampled output) and is greater than baud rate(19200))
  
  reg [7:0]counter;
  
    initial 
      begin
        counter=8'b0;
        OutClock=1'b0;
      end
    always@(posedge InClock)
      begin
  //10100011(binary)=163(decimal)counter
        if(counter==8'b10100011)
          begin
            counter=8'b00000000;
            //ticks one...creates only one pulse
            OutClock=1'b1;
          end
        else
          begin
            counter=counter+1;
            //goes down for next clock after rising to one
            OutClock=1'b0;
          end
        if(Reset==1'b1)
          begin
            counter=8'b0;
            OutClock=1'b0;            
          end
      end  
  endmodule
  
  /***************************************************************/
  
  module Transmitter(input BaudTick,input Reset,input Start,input [7:0]ParallelInData,output reg ReadDone,output reg SerialOutData);
  //This module lets the conversion of Parallel Data to Serial Data
  //And includes the needed conversions like adding of start bit ,stop bit etc
    integer     count;
    integer     datacount;
    integer     stopcount;
    localparam  IdleState  = 4'b0001,
                StartState = 4'b0010,
                DataState  = 4'b0100,
                StopState  = 4'b1000;
    reg         [3:0]state;
    reg         [7:0]InputDataBuffer;
    reg         BaudClock;
    reg         startstatus;
    
    initial
      begin
        count   =0;
        datacount=0;
        stopcount=0;
        SerialOutData=1'b1;
        //kept out data 1 for showing idle state
        state   =4'b0001;
        ReadDone=1'b1;//Initially datas to take from buffer so read done is kept 1 initially
        BaudClock=1'b0;
        InputDataBuffer=8'b0;
        startstatus=1'b0;
      end
      
      always@(posedge BaudTick)
    //This always block generates 19200(no exactly) ticks per second
    //Clock is according to the baud rate generator
    //so its should be again divided to get the real baud rate for transmitter
    //in transmitter baud rate is not sampled
        begin
            if(count==15)
              begin
                count=0;
                BaudClock=1'b1;
              end
            else
              begin
                count=count+1;
                BaudClock=1'b0;
              end
              
              
/*            if(Start == 1'b1 && startstatus==1'b0)
              begin
                state=StartState;
                InputDataBuffer=ParallelInData;
                ReadDone=1'b0;
                count=0;//reseting the count
                startstatus=1'b1;
              end*/              
        end//end of always
      
      
    always@(Start)
    //Monitors the start bit to get new Inputs
      begin
        if(Start == 1'b1 && startstatus==1'b0)
          begin
            state=StartState;
            InputDataBuffer=ParallelInData;
            ReadDone=1'b0;
            count=0;//reseting the count
            startstatus=1'b1;
          end
      end// end of always
  
      
    always@(posedge BaudClock)
      begin
        if(state==IdleState)
        //do nothing
          begin
          end
        else if(state==StartState)
        //send the start bit='0'
          begin
            SerialOutData=1'b0;
            state=DataState;
          end
        else if(state==DataState)
        //sends parallel data bits one by one in each BaudClock
        //LSB to MSB
          begin
            if(datacount==7)//8 bits are send
              begin
                datacount=0;
                SerialOutData=InputDataBuffer[0];// for the 8th bit
                state=StopState;
              end
            else
              begin
                datacount=datacount+1;
                SerialOutData=InputDataBuffer[0];
                InputDataBuffer[7:0]={1'b0,InputDataBuffer[7:1]};
              end
          end
        else if(state==StopState)
        //send the stop bits 1=16 count
          begin
            SerialOutData=1'b1;
            if(stopcount==16)//let the readdone signal be high on 17th tick
              begin
                stopcount=0;
                state=IdleState;
                //Reading one byte is complete
                ReadDone=1'b1;
                startstatus=1'b0;//for ticking 'start' variable only once
              end
            else
              begin
                stopcount=stopcount+1;
              end
          end
      end//end of always
      
      
      
    always@(Reset)
      begin
        if(Reset==1'b1)
          begin
            count   =0;
            datacount=0;
            stopcount=0;
            SerialOutData=1'b1;
          //kept out data 1 for showing idle state
            state   =4'b0001;
            ReadDone=1'b1;
            BaudClock=1'b0;
            InputDataBuffer=8'b0;
            startstatus=1'b0;
          end
      end//end of always
      

  endmodule
  
  /***************************************************************/

  module InputBuffer(input [7:0]InputData,input Clock,input Reset,input InBufEnable,input WriteEnable,output reg Empty,output reg [7:0]OutputData);
  //This module will store the input data for transmission
  //And forward as needed according the status variables
    reg [7:0] Register;
    reg RegFull;
    initial 
      begin
        Empty = 1'b1;//now it is empty
        OutputData  = 8'b0;
        Register  = 8'b0;
        //register and OutputData is kept 00000000
        RegFull = 1'b0;//Register is not full means empty
      end
      
    always @(posedge InBufEnable)
    //Takes the input value to register
    //Sets the corresponding status variables
    //now the register is full
      begin
        if(InBufEnable==1'b1 && RegFull==1'b0)
          begin
            Register  =InputData;
            RegFull =1'b1;
            Empty=1'b0;
          end
      end//end of always
      
      
    always @(posedge Clock)
    //writes the register value to output
    //sets the status signal as needed
    //now the register is empty(can accept any input data to register)
      begin
        if(RegFull==1'b1 && WriteEnable==1'b1)
          begin
            OutputData  = Register;
            RegFull = 1'b0;
            Empty=1'b1;
          end
      end
      
      
    always @(Reset)
    //Resets the variable values to their initial values
      begin
        if(Reset==1'b1)
          begin
            Empty = 1'b1;
            OutputData  = 8'b0;
            Register  = 8'b0;
            RegFull = 1'b0;
          end
      end//end of always
  endmodule
  
  /***************************************************************/
  
  module TransmitUART(input Clock,input Enable,input Reset,input [7:0]ParallelInputData,output SerialOutData);
  //This is the complete transmitter for UART
  //This Combines the three components(Transmitter,BaudRateGenerator and InputBuffer)
  
    wire BaudTick,StartEmpty,ReadDoneWriteEnable;
    wire [7:0]DataToTransmit;
    
    BaudRateGenerator BRG (Clock,Reset,BaudTick);
    Transmitter       T(BaudTick,Reset,StartEmpty,DataToTransmit[7:0],ReadDoneWriteEnable,SerialOutData);
    InputBuffer       IB(ParallelInputData[7:0],Clock,Reset,Enable,ReadDoneWriteEnable,StartEmpty,DataToTransmit[7:0]);
  endmodule
  
    /***************************************************************/
    
    
  module Receiver(input BaudTick,input Reset,input SerialInData,output reg ReadDone,output reg [7:0]ParallelOutData);
  //This module receives input serial data and converts them to proper parellel out put...
  //The input is sampled by the baud rate generator and the middle of each databit is obtained.
  //The middle is taken so that the chance to get wrong data is maximum avoided.
  //SerialInData is monitored to get the start bit('0')
  //As start bit reaches,the databits are counted and stored in a buffer in sequence.
  //the start and stop bits are filtered to get the real data.
  

    integer     Sampler;
    integer     BitCount;
    localparam  IdleState     = 2'b01,
                ProcessState  = 2'b10;
    localparam  StartState    = 3'b001,
                DataState     = 3'b010,
                StopState     = 3'b100,
                IdlState      = 3'b111;
    reg         [1:0]State;
    reg         [2:0]SubState;
    reg         [7:0]InBuffer;
    
    initial
      begin
        InBuffer=8'b0;
        Sampler=0;
        BitCount=0;
        State=IdleState;//initial state
        SubState=IdlState;//initial state(Idle)
        ReadDone=1'b0;//This signal is used to let the OutputBuffer(component) receive the data available at the input
        ParallelOutData=8'b0;
        
      end
  
    always@(posedge BaudTick)
    //BaudTick is used directly from the BuadRateGenerator so that the sampling of the input dta can be done
      begin
        if(State==IdleState && SerialInData==1'b0)
        //State Changes from Idle to Process 
          begin
            Sampler=Sampler+1;//counter or sampler
            State=ProcessState;
            SubState=StartState;
            ReadDone=1'b0;
          end
        else if(State==ProcessState)
        //This state comes when some data arrives at SerialInData for processing(converting to parallel data)
          begin
            
            if(SubState==StartState)
            //StartState
              begin
                if(Sampler==8)
                  begin
                    Sampler=0;
                    //Sampler is set to 0 so that the middle of input data bit is available at each 15 of the Sampler(count)
                    SubState=DataState;
                  end
                else
                  begin
                    Sampler=Sampler+1;
                  end 
              end
              
            else if(SubState==DataState)
            //DataState
            //This sub state is the main part of process state
            //Each data bit is sampled and taken from its middle--Sampler does the counting
            //Total number of databit is counted to get the 8 bits
            //After the 8 data bits are counted SubStae goes directly(unconditionally) to Stop state 
              begin
                if(Sampler==15)
                  begin
                    InBuffer[BitCount]=SerialInData;
                    Sampler=0;
                    if(BitCount==7)
                      begin
                        BitCount=0;
                        SubState=StopState;
                        ParallelOutData=InBuffer;
                      end
                    else
                      begin
                        BitCount=BitCount+1;
                      end
                  end
                else
                  begin
                    Sampler=Sampler+1;
                  end
              end
            
            else if(SubState==StopState)
            //StopState state is not necessary
            //Its implemented only for the sake of perfection
            //It does nothing other than redirecting current state to 'Idle' state
            //16 stop bits are send from the transmitter
            //Here with 16 BaudTick we will get only one bit
            //So if we want to get all the stop bits then the BaudTick should tick 16*16 times
            //here we are taking only one bit of the 16 stop bits
            //The 8 bit data from the register is send to output
            //Read done signal is asserted

              begin
                if(Sampler==15)
                  begin
                    Sampler=0;
                    SubState=IdlState;
                    State=IdleState;
                    ReadDone=1'b1;//now the output available is taken to the OutputBuffer component
                  end
                else
                  begin
                    Sampler=Sampler+1;
                  end
                
              end
          
          end
      end//end of always
      
      
    always@(posedge Reset)
      begin
        if(Reset==1'b1)
          begin
            InBuffer=8'b0;
            Sampler=0;
            BitCount=0;
            State=IdleState;//initial state
            SubState=IdlState;//initial state(Idle)
            ReadDone=1'b0;//This signal is used to let the OutputBuffer(component) receive the data available at the input
            ParallelOutData=8'b0;
          end
      end
  
  endmodule
  
      /***************************************************************/
      
  module OutputBuffer(input [7:0]ParallelInputData,input Clock,input Reset,input Enable,input ReadDone,input WriteEnable,output reg RegOverflow,output reg [7:0]OutputData);
  //This module will store the Output data for transmission
  //And forward as needed according the status variables
  //Over Flow of the internal register cannot be prevented but can be alerted using the RegOverFlow signal
  //'ReadDone' is  a signal coming from Receiver(component) which indicates that the input can be taken to register
  //'WriteEnable' is a signal given from outside circuit which indicates that previous output has been taken by the circuit
  //and new datas can be taken 
    reg [7:0] Register;
    reg RegFull;
    
    initial 
      begin
        RegOverflow=1'b0;
        OutputData  = 8'b0;
        Register  = 8'b0;
        //register and OutputData is kept 00000000
        RegFull = 1'b0;//Register is not full means empty
      end
    
    
    always @(posedge ReadDone)
    //Takes the input value to register
    //Sets the corresponding status variables
    //now the register is full
      begin
        if(Enable==1'b1 && RegFull==1'b0 && ReadDone==1'b1)
        //Register is empty and is ready to receive new data
          begin
            Register  = ParallelInputData;
            RegFull =1'b1;
          end
        else if(Enable==1'b1 && RegFull==1'b1 && ReadDone==1'b1)
        //In this condition the it is assumed that overflow has occured
        //Overflow signal is set high but the register will remain in the previous value
          begin
            RegOverflow=1'b1;//just indicating that some conflict(overflow) has occured
            RegFull =1'b1;
          end
      end//end of always
      
      
    always @(posedge Clock)
    //writes the register value to output
    //sets the status signal as needed
    //now the register is empty(can accept any input data to register)
      begin
        if(RegFull==1'b1 && WriteEnable==1'b1 )
          begin
            OutputData  = Register;
            RegFull = 1'b0;
            RegOverflow=1'b0;//Now the register is empty
          end
      end
      
      
    always @(Reset)
    //Resets the variable values to their initial values
      begin
        if(Reset==1'b1)
          begin
            OutputData  = 8'b0;
            Register  = 8'b0;
            RegFull = 1'b0;
            RegOverflow=  1'b0;
          end
      end//end of always
  endmodule
      
      /***************************************************************/
      
      
  module ReceiveUART(input Clock,input Enable,input Reset,input SerialInData,input WriteEnable,output RegOverflow,output [7:0]ParallelOutData);
  //This is the complete transmitter for UART
  //This Combines the three components(Transmitter,BaudRateGenerator and InputBuffer)
  
    wire BaudTick;
    wire [7:0]DataToTransmit;
    
    BaudRateGenerator BRG (Clock,Reset,BaudTick);
    Receiver          R(BaudTick,Reset,SerialInData,ReadDone,DataToTransmit[7:0]);
    OutputBuffer      OB(DataToTransmit[7:0],Clock,Reset,Enable,ReadDone,WriteEnable,RegOverflow,ParallelOutData[7:0]);

  endmodule
  
      /***************************************************************/
  module UART(input Clock,input Reset,input REnable,input TEnable,input WriteEnable,input [7:0]ParallelInputData,output RegOverflow,output [7:0]ParallelOutData );
    
    wire SerialInOutData;
    
    ReceiveUART    RU(Clock,REnable,Reset,SerialInOutData,WriteEnable,RegOverflow,ParallelOutData[7:0]);
    TransmitUART   TU(Clock,TEnable,Reset,ParallelInputData[7:0],SerialInOutData);

  endmodule
        
      /***************************************************************/
      