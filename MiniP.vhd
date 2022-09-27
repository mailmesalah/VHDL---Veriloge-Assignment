  ----------------------------------------------------------------------
--------------------------//VHDL MINI-PROJECT//-----------------------
------------------------**8 BIT MICROPROCESSOR**----------------------
-------------------------------Coded by Salah and Jenson--------------

----------------------------------------------------------------------
----------------------------------------------------------------------
-------------------------//Microprocessor//---------------------------
library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_arith.all;

entity Microprocessor is
  port(Input: in std_logic_vector(7 downto 0);
      Clock: in std_logic;
      Reset: in std_logic;
      Output:out std_logic_vector(7 downto 0));
end Microprocessor;
 
architecture Operation of Microprocessor is

component Datapath is
  port(Input:in std_logic_vector(7 downto 0);
      Clock:in std_logic;
      Reset:in std_logic;
      IRload,PCmux,PCload,MemMux,RW,INload,OUTload,Aload,Rload
      ,ANDmux,ORmux,CarryMux,IRsel,MemEnable: in std_logic;
      SUBmux,ADDmux: in std_logic_vector(1 downto 0);
      Amux: in std_logic_vector(2 downto 0);
      IR: out std_logic_vector(7 downto 0);
      CarryFlag: out std_logic;
      ZeroFlag: out std_logic;
      Output:out std_logic_vector(7 downto 0));
end component;
component ControlUnit is
  port(IR: in std_logic_vector(7 downto 0);
      carryflag: in std_logic;
      zeroflag: in std_logic;
      Clock:in std_logic;
      Reset:in std_logic;
      IRload,PCmux,PCload,MemMux,RW,INload,OUTload,Aload,Rload
      ,ANDmux,ORmux,CarryMux,IRsel,MemEnable: out std_logic;
      SUBmux,ADDmux: out std_logic_vector(1 downto 0);
      Amux: out std_logic_vector(2 downto 0));
end component;

signal  IRload,PCmux,PCload,MemMux,RW,INload,OUTload,Aload,Rload,ANDmux,ORmux,CarryMux,
        IRsel,MemEnable,CarryFlag,ZeroFlag:std_logic;
signal  SUBmux,ADDmux:std_logic_vector(1 downto 0);
signal  Amux:std_logic_vector(2 downto 0);
signal  IR:std_logic_vector(7 downto 0);

begin
  DataP:Datapath port map(Input,Clock,Reset,IRload,PCmux,PCload,MemMux,RW,INload,OUTload,Aload,Rload
      ,ANDmux,ORmux,CarryMux,IRsel,MemEnable,SUBmux,ADDmux,Amux,IR,CarryFlag,ZeroFlag,Output);
  ControlU:ControlUnit port map(IR,CarryFlag,ZeroFlag,Clock,Reset,IRload,PCmux,PCload,MemMux,RW,INload
      ,OUTload,Aload,Rload,ANDmux,ORmux,CarryMux,IRsel,MemEnable,SUBmux,ADDmux,Amux);

end Operation;
----------------------------------------------------------------------
----------------------------------------------------------------------
----------------------------//Data Path//-----------------------------
library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_arith.all;
  use ieee.std_logic_unsigned.all;

entity Datapath is
  port(Input:in std_logic_vector(7 downto 0);
      Clock:in std_logic;
      Reset:in std_logic;
      IRload,PCmux,PCload,MemMux,RW,INload,OUTload,Aload,Rload
      ,ANDmux,ORmux,CarryMux,IRsel,MemEnable: in std_logic;
      SUBmux,ADDmux: in std_logic_vector(1 downto 0);
      Amux: in std_logic_vector(2 downto 0);
      IR: out std_logic_vector(7 downto 0);
      CarryFlag: out std_logic;
      ZeroFlag: out std_logic;
      Output:out std_logic_vector(7 downto 0));
end Datapath;
 

architecture Operation of DataPath is
component InstructionR is
  port(Input: in std_logic_vector(7 downto 0);
      Clock: in std_logic;
      Reset: in std_logic;
      IRload:in std_logic;
      IRsel:in std_logic;
      Output:out std_logic_vector(15 downto 0));
end Component;
component Mux2x1x16 is
  port(
    a,b:in std_logic_vector(15 downto 0);
    s:in std_logic;
    Output:out std_logic_vector(15 downto 0));
end component;
component inc16 is
  port(
          input:in std_logic_vector(15 downto 0);
          output:out std_logic_vector(15 downto 0)
          );
End component;  
component ProgramCounter is
  port(Input: in std_logic_vector(15 downto 0);
      Clock: in std_logic;
      Reset: in std_logic;
      PCload:in std_logic;
      Output:out std_logic_vector(15 downto 0));
end component;
component Memory is
  port(Input: in std_logic_vector(15 downto 0);
      Data:in std_logic_vector(7 downto 0);
      Clock: in std_logic;
      MemEnable:in std_logic;
      RW:in std_logic;
      Output:out std_logic_vector(7 downto 0));
end component;
component InputR is
  port(Input: in std_logic_vector(7 downto 0);
      Clock: in std_logic;
      Reset: in std_logic;
      INload:in std_logic;
      Output:out std_logic_vector(7 downto 0));
end component;
component Mux8x1x8 is
  port(
    a,b,c,d,e,f,g,h:in std_logic_vector(7 downto 0);
    s:in std_logic_vector(2 downto 0);
    Output:out std_logic_vector(7 downto 0));
end component;
component AccumulatorR is
  port(Input: in std_logic_vector(7 downto 0);
      Clock: in std_logic;
      Reset: in std_logic;
      Aload:in std_logic;
      Output:out std_logic_vector(7 downto 0));
end component;
component RegisterR is
  port(Input: in std_logic_vector(7 downto 0);
      Clock: in std_logic;
      Reset: in std_logic;
      Rload:in std_logic;
      Output:out std_logic_vector(7 downto 0));
end component;
component Mux4x1x8 is
  port(
    a,b,c,d:in std_logic_vector(7 downto 0);
    s:in std_logic_vector(1 downto 0);
    Output:out std_logic_vector(7 downto 0));
end component;
component Addition is
  port(Input1: in std_logic_vector(7 downto 0);
      Input2: in std_logic_vector(7 downto 0);
      Carry:out std_logic;
      Output:out std_logic_vector(7 downto 0));
end component;
component Subtraction is
  port(Input1: in std_logic_vector(7 downto 0);
      Input2: in std_logic_vector(7 downto 0);
      Borrow: out std_logic;
      Output:out std_logic_vector(7 downto 0));
end component;
component Mux2x1x8 is
  port(
    a,b:in std_logic_vector(7 downto 0);
    s:in std_logic;
    Output:out std_logic_vector(7 downto 0));
end component;
component Anding is
  port(Input1: in std_logic_vector(7 downto 0);
      Input2: in std_logic_vector(7 downto 0);
      Output:out std_logic_vector(7 downto 0));
end component;
component Oring is
  port(Input1: in std_logic_vector(7 downto 0);
      Input2: in std_logic_vector(7 downto 0);
      Output:out std_logic_vector(7 downto 0));
end component;
component OutputR is
  port(Input: in std_logic_vector(7 downto 0);
      Clock: in std_logic;
      Reset: in std_logic;
      OUTload:in std_logic;
      Output:out std_logic_vector(7 downto 0));
end component;
component FlagR is
  port(InCarry: in std_logic;
      InZero: in std_logic;
      Clock: in std_logic;
      Reset: in std_logic;
      OutCarry:out std_logic;
      OutZero:out std_logic);
end component;
component Mux2x1x1 is
  port(
    a,b:in std_logic;
    s:in std_logic;
    Output:out std_logic);
end component;






signal MemOut,AccOut,InpOut,MuxAccOut,ROut,AddOut,SubOut,AndOut,OrOut,MuxAddOut,MuxSubOut:std_logic_vector(7 downto 0);
signal MuxAndOut,MuxOrOut:std_logic_vector(7 downto 0);
signal IROut,Inc16Out,MuxMemOut,MuxPCOut,PCOut:std_logic_vector(15 downto 0);
signal Carry,Borrow,Aeq0,MuxCarryOut:std_logic;

begin
  
  --Memory used
  RAM1:Memory port map(MuxMemOut,AccOut,Clock,MemEnable,RW,MemOut);--Memory
  
  --Storing Mechanisms 
  OutP:OutputR port map(AccOut,Clock,Reset,OUTload,Output);--Output
  Flag:FlagR port map(MuxCarryOut,Aeq0,Clock,Reset,CarryFlag,ZeroFlag);--Flag Register
  InP:InputR port map(Input,Clock,Reset,INload,InpOut);--Input
  ProC: ProgramCounter port map(MuxPCOut,Clock,Reset,PCload,PCOut);--Program counter
  Accu:AccumulatorR port map(MuxAccOut,Clock,Reset,Aload,AccOut);--Accumulator
  RegR:RegisterR port map(AccOut,Clock,Reset,Rload,ROut);--Register R
  InRe:InstructionR port map(MemOut,Clock,Reset,IRload,IRsel,IROut);--Instruction Register
  
  --Muxes used
  AccMux:Mux8x1x8 port map(MemOut,ROut,InpOut,AddOut,SubOut,AndOut,OrOut,"11111111",Amux,MuxAccOut);--Accumulator mux
  MemMux1:Mux2x1x16 port map(PCOut,IROut,MemMux,MuxMemOut);--Memory Mux
  PCMux1:Mux2x1x16 port map(Inc16Out,IROut,PCMux,MuxPCOut);--Program counter Mux
  AddMux1:Mux4x1x8 port map(MemOut,ROut,"00000001","00000000",ADDmux,MuxAddOut);--Addition Mux
  SubMux1:Mux4x1x8 port map(MemOut,ROut,"00000001","00000000",SUBmux,MuxSubOut);--Subtraction Mux
  AndMux1:Mux2x1x8 port map(MemOut,ROut,ANDmux,MuxAndOut);--And Mux
  OrMux1:Mux2x1x8 port map(MemOut,ROut,ORmux,MuxOrOut);--Or Mux
  CarryMux1:Mux2x1x1 port map(Carry,Borrow,CarryMux,MuxCarryOut);--Carry Mux
  
  --Operations
  Add:Addition port map(MuxAddOut,AccOut,Carry,AddOut);--Addition
  Sub:Subtraction port map(MuxSubOut,AccOut,Borrow,SubOut);--Subtraction
  And1:Anding port map(AccOut,MuxAndOut,AndOut);--Anding
  Or1:Oring port map(AccOut,MuxOrOut,OrOut);--Oring 
  Incr16:inc16 port map(PCOut,Inc16Out);--Increment 16 bit 
  
  Aeq0<=not(Accout(0) or Accout(1) or Accout(2) or Accout(3) or --input for Zero flag
            Accout(4) or Accout(5) or Accout(6) or Accout(7));
  IR<=IROut(15 downto 8);

end Operation;
----------------------------------------------------------------------
----------------------------------------------------------------------
--------------------------//Control Unit//----------------------------
library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_arith.all;

entity ControlUnit is
  port(IR: in std_logic_vector(7 downto 0);
      carryflag: in std_logic;
      zeroflag: in std_logic;
      Clock:in std_logic;
      Reset:in std_logic;
      IRload,PCmux,PCload,MemMux,RW,INload,OUTload,Aload,Rload
      ,ANDmux,ORmux,CarryMux,IRsel,MemEnable: out std_logic;
      SUBmux,ADDmux: out std_logic_vector(1 downto 0);
      Amux: out std_logic_vector(2 downto 0));
end ControlUnit;
 
architecture Operation of ControlUnit is
 
begin

  process(Clock)
     
    variable state:std_logic_vector(7 downto 0):="00000000";
     
  begin
    
    if(Reset='1' and Clock='1')then     state:="00000000";
                          IRload<='0';   PCmux<='0'; PCload<='0';    MemMux<='0';
                          RW<='0';      INload<='0';   OUTload<='0';  Aload<='0';
                          Rload<='0';   ANDmux<='0';   ORmux<='0';    CarryMux<='0';
                          IRsel<='0';   MemEnable<='0';
                          SUBmux<="00"; ADDmux<="00";
                          Amux<="111";
    elsif(clock='1')then 
      case state is
        when "00000000" =>  state:="00000001";--Start state
                          IRload<='0';   PCmux<='0';  PCload<='0';    MemMux<='0';
                          RW<='0';      INload<='0';   OUTload<='0';  Aload<='0';
                          Rload<='0';   ANDmux<='0';   ORmux<='0';    CarryMux<='0';
                          IRsel<='0';   MemEnable<='0';
                          SUBmux<="00"; ADDmux<="00";
                          Amux<="111";
        when "00000001" =>  state:="00000010";--Fetch state 
                          IRload<='1';   PCmux<='0'; PCload<='1';    MemMux<='0';
                          RW<='1';      INload<='0';   OUTload<='0';  Aload<='0';
                          Rload<='0';   ANDmux<='0';   ORmux<='0';    CarryMux<='0';
                          IRsel<='0';   MemEnable<='1';
                          SUBmux<="00"; ADDmux<="00";
                          Amux<="111";
        when "00000010" =>  state:=IR;--Takes the instruction from IR for decoding
                          IRload<='0';   PCmux<='0'; PCload<='0';    MemMux<='0';
                          RW<='0';      INload<='0';   OUTload<='0';  Aload<='0';
                          Rload<='0';   ANDmux<='0';   ORmux<='0';    CarryMux<='0';
                          IRsel<='0';   MemEnable<='0';
                          SUBmux<="00"; ADDmux<="00";
                          Amux<="111"; 
        when "00000011" =>  state:="00000000";--MOV A,R
                          IRload<='0';   PCmux<='0'; PCload<='0';    MemMux<='0';
                          RW<='0';      INload<='0';   OUTload<='0';  Aload<='1';
                          Rload<='0';   ANDmux<='0';   ORmux<='0';    CarryMux<='0';
                          IRsel<='0';   MemEnable<='0';
                          SUBmux<="00"; ADDmux<="00";
                          Amux<="001";
        when "00000100" =>  state:="00000000";--MOV R,A
                          IRload<='0';   PCmux<='0'; PCload<='0';    MemMux<='0';
                          RW<='0';      INload<='0';   OUTload<='0';  Aload<='0';
                          Rload<='1';   ANDmux<='0';   ORmux<='0';    CarryMux<='0';
                          IRsel<='0';   MemEnable<='0';
                          SUBmux<="00"; ADDmux<="00";
                          Amux<="111";
        when "00000101" =>  state:="00000110";--MVI 8BitData
                          IRload<='0';   PCmux<='0'; PCload<='0';    MemMux<='0';
                          RW<='1';      INload<='0';   OUTload<='0';  Aload<='0';
                          Rload<='0';   ANDmux<='0';   ORmux<='0';    CarryMux<='0';
                          IRsel<='0';   MemEnable<='1';
                          SUBmux<="00"; ADDmux<="00";
                          Amux<="111";
        when "00000110" =>  state:="00000000";--Start state
                          IRload<='0';   PCmux<='0';  PCload<='0';    MemMux<='0';
                          RW<='0';      INload<='0';   OUTload<='0';  Aload<='1';
                          Rload<='0';   ANDmux<='0';   ORmux<='0';    CarryMux<='0';
                          IRsel<='0';   MemEnable<='0';
                          SUBmux<="00"; ADDmux<="00";
                          Amux<="000";
        when "00000111" =>  state:="00001000";--LDA 16BitAddress --lncrementing Program counter for taking the next address data
                          IRload<='0';   PCmux<='0'; PCload<='1';    MemMux<='0';
                          RW<='0';      INload<='0';   OUTload<='0';  Aload<='0';
                          Rload<='0';   ANDmux<='0';   ORmux<='0';    CarryMux<='0';
                          IRsel<='0';   MemEnable<='0';
                          SUBmux<="00"; ADDmux<="00";
                          Amux<="111";
        when "00001000" =>  state:="00001001";--Reading the Higher order 8 bit
                          IRload<='0';   PCmux<='0';  PCload<='0';    MemMux<='0';
                          RW<='1';      INload<='0';   OUTload<='0';  Aload<='0';
                          Rload<='0';   ANDmux<='0';   ORmux<='0';    CarryMux<='0';
                          IRsel<='0';   MemEnable<='1';
                          SUBmux<="00"; ADDmux<="00";
                          Amux<="111";
        when "00001001" =>  state:="00001010";--loading the Higher order 8 bit to IR register
                          IRload<='1';   PCmux<='0';  PCload<='0';    MemMux<='0';
                          RW<='0';      INload<='0';   OUTload<='0';  Aload<='0';
                          Rload<='0';   ANDmux<='0';   ORmux<='0';    CarryMux<='0';
                          IRsel<='0';   MemEnable<='0';
                          SUBmux<="00"; ADDmux<="00";
                          Amux<="111";
        when "00001010" =>  state:="00001011";--lncrementing Program counter for taking the next address data
                          IRload<='0';   PCmux<='0'; PCload<='1';    MemMux<='0';
                          RW<='0';      INload<='0';   OUTload<='0';  Aload<='0';
                          Rload<='0';   ANDmux<='0';   ORmux<='0';    CarryMux<='0';
                          IRsel<='0';   MemEnable<='0';
                          SUBmux<="00"; ADDmux<="00";
                          Amux<="111";
        when "00001011" =>  state:="00001100";--Reading the Lower order 8 bit
                          IRload<='0';   PCmux<='0';  PCload<='0';    MemMux<='0';
                          RW<='1';      INload<='0';   OUTload<='0';  Aload<='0';
                          Rload<='0';   ANDmux<='0';   ORmux<='0';    CarryMux<='0';
                          IRsel<='0';   MemEnable<='1';
                          SUBmux<="00"; ADDmux<="00";
                          Amux<="111";
        when "00001101" =>  state:="00001110";--Loading the Lower order 8 bit to IR register
                          IRload<='1';   PCmux<='0';  PCload<='0';    MemMux<='0';
                          RW<='0';      INload<='0';   OUTload<='0';  Aload<='0';
                          Rload<='0';   ANDmux<='0';   ORmux<='0';    CarryMux<='0';
                          IRsel<='1';   MemEnable<='0';
                          SUBmux<="00"; ADDmux<="00";
                          Amux<="111";
        when "00001110" =>  state:="00001111";--Reading the Memory corresponding to the address in IR
                          IRload<='0';   PCmux<='0';  PCload<='0';    MemMux<='1';
                          RW<='1';      INload<='0';   OUTload<='0';  Aload<='0';
                          Rload<='0';   ANDmux<='0';   ORmux<='0';    CarryMux<='0';
                          IRsel<='0';   MemEnable<='1';
                          SUBmux<="00"; ADDmux<="00";
                          Amux<="111";
        when "00010000" =>  state:="00000000";--Loading the memory data to Accumulator
                          IRload<='0';   PCmux<='0';  PCload<='0';    MemMux<='0';
                          RW<='0';      INload<='0';   OUTload<='0';  Aload<='1';
                          Rload<='0';   ANDmux<='0';   ORmux<='0';    CarryMux<='0';
                          IRsel<='0';   MemEnable<='0';
                          SUBmux<="00"; ADDmux<="00";
                          Amux<="000";
        when "00010001" =>  state:="00010010";--STA 16BitAddress
                          IRload<='0';   PCmux<='0'; PCload<='1';    MemMux<='0';
                          RW<='0';      INload<='0';   OUTload<='0';  Aload<='0';
                          Rload<='0';   ANDmux<='0';   ORmux<='0';    CarryMux<='0';
                          IRsel<='0';   MemEnable<='0';
                          SUBmux<="00"; ADDmux<="00";
                          Amux<="111";
        when "00010010" =>  state:="00010011";--Reading the Higher order 8 bit
                          IRload<='0';   PCmux<='0';  PCload<='0';    MemMux<='0';
                          RW<='1';      INload<='0';   OUTload<='0';  Aload<='0';
                          Rload<='0';   ANDmux<='0';   ORmux<='0';    CarryMux<='0';
                          IRsel<='0';   MemEnable<='1';
                          SUBmux<="00"; ADDmux<="00";
                          Amux<="111";
        when "00010100" =>  state:="00010101";--loading the Higher order 8 bit to IR register
                          IRload<='1';   PCmux<='0';  PCload<='0';    MemMux<='0';
                          RW<='0';      INload<='0';   OUTload<='0';  Aload<='0';
                          Rload<='0';   ANDmux<='0';   ORmux<='0';    CarryMux<='0';
                          IRsel<='0';   MemEnable<='0';
                          SUBmux<="00"; ADDmux<="00";
                          Amux<="111";
        when "00010101" =>  state:="00010110";--lncrementing Program counter for taking the next address data
                          IRload<='0';   PCmux<='0'; PCload<='1';    MemMux<='0';
                          RW<='0';      INload<='0';   OUTload<='0';  Aload<='0';
                          Rload<='0';   ANDmux<='0';   ORmux<='0';    CarryMux<='0';
                          IRsel<='0';   MemEnable<='0';
                          SUBmux<="00"; ADDmux<="00";
                          Amux<="111";
        when "00010110" =>  state:="00010111";--Reading the Lower order 8 bit
                          IRload<='0';   PCmux<='0';  PCload<='0';    MemMux<='0';
                          RW<='1';      INload<='0';   OUTload<='0';  Aload<='0';
                          Rload<='0';   ANDmux<='0';   ORmux<='0';    CarryMux<='0';
                          IRsel<='0';   MemEnable<='1';
                          SUBmux<="00"; ADDmux<="00";
                          Amux<="111";
        when "00011000" =>  state:="00011001";--Loading the Lower order 8 bit to IR register
                          IRload<='1';   PCmux<='0';  PCload<='0';    MemMux<='0';
                          RW<='0';      INload<='0';   OUTload<='0';  Aload<='0';
                          Rload<='0';   ANDmux<='0';   ORmux<='0';    CarryMux<='0';
                          IRsel<='1';   MemEnable<='0';
                          SUBmux<="00"; ADDmux<="00";
                          Amux<="111";
        when "00011001" =>  state:="00011010";--Reading the Memory corresponding to the address in IR
                          IRload<='0';   PCmux<='0';  PCload<='0';    MemMux<='1';
                          RW<='1';      INload<='0';   OUTload<='0';  Aload<='0';
                          Rload<='0';   ANDmux<='0';   ORmux<='0';    CarryMux<='0';
                          IRsel<='0';   MemEnable<='1';
                          SUBmux<="00"; ADDmux<="00";
                          Amux<="111";
        when "00011010" =>  state:="00000000";--Storing the Accumulator data in the address space specified by IR
                          IRload<='0';   PCmux<='0'; PCload<='0';    MemMux<='0';
                          RW<='0';      INload<='0';   OUTload<='0';  Aload<='0';
                          Rload<='0';   ANDmux<='0';   ORmux<='0';    CarryMux<='0';
                          IRsel<='0';   MemEnable<='1';
                          SUBmux<="00"; ADDmux<="00";
                          Amux<="111";
        when "00011011" =>  state:="00000000";--OUT
                          IRload<='0';   PCmux<='0'; PCload<='0';    MemMux<='0';
                          RW<='0';      INload<='0';   OUTload<='1';  Aload<='0';
                          Rload<='0';   ANDmux<='0';   ORmux<='0';    CarryMux<='0';
                          IRsel<='0';   MemEnable<='0';
                          SUBmux<="00"; ADDmux<="00";
                          Amux<="111";
        when "00011100" =>  state:="00011101";--IN--Reading the input
                          IRload<='0';   PCmux<='0'; PCload<='0';    MemMux<='0';
                          RW<='0';      INload<='1';   OUTload<='0';  Aload<='0';
                          Rload<='0';   ANDmux<='0';   ORmux<='0';    CarryMux<='0';
                          IRsel<='0';   MemEnable<='0';
                          SUBmux<="00"; ADDmux<="00";
                          Amux<="111";
        when "00011101" =>  state:="00000000";--Loading the input to Accumulator
                          IRload<='0';   PCmux<='0';  PCload<='0';    MemMux<='0';
                          RW<='0';      INload<='0';   OUTload<='0';  Aload<='0';
                          Rload<='0';   ANDmux<='0';   ORmux<='0';    CarryMux<='0';
                          IRsel<='0';   MemEnable<='0';
                          SUBmux<="00"; ADDmux<="00";
                          Amux<="111";
        when "00011110" =>  state:="00011111";--ADD R--Adding Operation is done
                          IRload<='0';   PCmux<='0'; PCload<='0';    MemMux<='0';
                          RW<='0';      INload<='0';   OUTload<='0';  Aload<='0';
                          Rload<='0';   ANDmux<='0';   ORmux<='0';    CarryMux<='0';
                          IRsel<='0';   MemEnable<='0';
                          SUBmux<="00"; ADDmux<="01";
                          Amux<="111";
        when "00011111" =>  state:="00000000";--Loading the added data to Accumulator
                          IRload<='0';   PCmux<='0';  PCload<='0';    MemMux<='0';
                          RW<='0';      INload<='0';   OUTload<='0';  Aload<='1';
                          Rload<='0';   ANDmux<='0';   ORmux<='0';    CarryMux<='0';
                          IRsel<='0';   MemEnable<='0';
                          SUBmux<="00"; ADDmux<="00";
                          Amux<="011";
        when "00100000" =>  state:="00100001";--ADI 8BitData--loading the address of data
                          IRload<='0';   PCmux<='0'; PCload<='1';    MemMux<='0';
                          RW<='0';      INload<='0';   OUTload<='0';  Aload<='0';
                          Rload<='0';   ANDmux<='0';   ORmux<='0';    CarryMux<='0';
                          IRsel<='0';   MemEnable<='0';
                          SUBmux<="00"; ADDmux<="00";
                          Amux<="111";
        when "00100001" =>  state:="00100010";--Reading the data from Memory as specified by PC
                          IRload<='0';   PCmux<='0';  PCload<='0';    MemMux<='0';
                          RW<='1';      INload<='0';   OUTload<='0';  Aload<='0';
                          Rload<='0';   ANDmux<='0';   ORmux<='0';    CarryMux<='0';
                          IRsel<='0';   MemEnable<='1';
                          SUBmux<="00"; ADDmux<="00";
                          Amux<="111";
        when "00100011" =>  state:="00100100";--Adding the Memory data with Accumulator
                          IRload<='0';   PCmux<='0';  PCload<='0';    MemMux<='0';
                          RW<='0';      INload<='0';   OUTload<='0';  Aload<='0';
                          Rload<='0';   ANDmux<='0';   ORmux<='0';    CarryMux<='0';
                          IRsel<='0';   MemEnable<='0';
                          SUBmux<="00"; ADDmux<="00";
                          Amux<="111";
        when "00100100" =>  state:="00000000";--Loading the Sum in Accumulator
                          IRload<='0';   PCmux<='0';  PCload<='0';    MemMux<='0';
                          RW<='0';      INload<='0';   OUTload<='0';  Aload<='0';
                          Rload<='0';   ANDmux<='0';   ORmux<='0';    CarryMux<='0';
                          IRsel<='0';   MemEnable<='0';
                          SUBmux<="00"; ADDmux<="00";
                          Amux<="011";
        when "00100101" =>  state:="00100110";--SUB R--Subtracting R from A
                          IRload<='0';   PCmux<='0'; PCload<='0';    MemMux<='0';
                          RW<='0';      INload<='0';   OUTload<='0';  Aload<='0';
                          Rload<='0';   ANDmux<='0';   ORmux<='0';    CarryMux<='1';
                          IRsel<='0';   MemEnable<='0';
                          SUBmux<="01"; ADDmux<="00";
                          Amux<="111";
        when "00100110" =>  state:="00000000";--Loading the difference to Accumulator
                          IRload<='0';   PCmux<='0';  PCload<='0';    MemMux<='0';
                          RW<='0';      INload<='0';   OUTload<='0';  Aload<='1';
                          Rload<='0';   ANDmux<='0';   ORmux<='0';    CarryMux<='1';
                          IRsel<='0';   MemEnable<='0';
                          SUBmux<="01"; ADDmux<="00";
                          Amux<="100";
        when "00100111" =>  state:="00101000";--SUI 8BitData
                          IRload<='0';   PCmux<='0'; PCload<='1';    MemMux<='0';
                          RW<='0';      INload<='0';   OUTload<='0';  Aload<='0';
                          Rload<='0';   ANDmux<='0';   ORmux<='0';    CarryMux<='1';
                          IRsel<='0';   MemEnable<='0';
                          SUBmux<="00"; ADDmux<="00";
                          Amux<="111";
        when "00101000" =>  state:="00101001";--Reading the data from Memory as specified by PC
                          IRload<='0';   PCmux<='0';  PCload<='0';    MemMux<='0';
                          RW<='1';      INload<='0';   OUTload<='0';  Aload<='0';
                          Rload<='0';   ANDmux<='0';   ORmux<='0';    CarryMux<='0';
                          IRsel<='0';   MemEnable<='1';
                          SUBmux<="00"; ADDmux<="00";
                          Amux<="111";
        when "00101001" =>  state:="00101010";--Subtracting the Memory data with Accumulator
                          IRload<='0';   PCmux<='0';  PCload<='0';    MemMux<='0';
                          RW<='0';      INload<='0';   OUTload<='0';  Aload<='0';
                          Rload<='0';   ANDmux<='0';   ORmux<='0';    CarryMux<='1';
                          IRsel<='0';   MemEnable<='0';
                          SUBmux<="00"; ADDmux<="00";
                          Amux<="111";
        when "00101010" =>  state:="00000000";--Loading the difference in Accumulator
                          IRload<='0';   PCmux<='0';  PCload<='0';    MemMux<='0';
                          RW<='0';      INload<='0';   OUTload<='0';  Aload<='1';
                          Rload<='0';   ANDmux<='0';   ORmux<='0';    CarryMux<='1';
                          IRsel<='0';   MemEnable<='0';
                          SUBmux<="00"; ADDmux<="00";
                          Amux<="100";
        when "00101011" =>  state:="00101100";--INR
                          IRload<='0';   PCmux<='0'; PCload<='0';    MemMux<='0';
                          RW<='0';      INload<='0';   OUTload<='0';  Aload<='0';
                          Rload<='0';   ANDmux<='0';   ORmux<='0';    CarryMux<='0';
                          IRsel<='0';   MemEnable<='0';
                          SUBmux<="00"; ADDmux<="10";
                          Amux<="111";
        when "00101100" =>  state:="00000000";--Loading the sum in Accumulator
                          IRload<='0';   PCmux<='0';  PCload<='0';    MemMux<='0';
                          RW<='0';      INload<='0';   OUTload<='0';  Aload<='1';
                          Rload<='0';   ANDmux<='0';   ORmux<='0';    CarryMux<='0';
                          IRsel<='0';   MemEnable<='0';
                          SUBmux<="00"; ADDmux<="00";
                          Amux<="011";
        when "00101101" =>  state:="00101110";--DCR
                          IRload<='0';   PCmux<='0'; PCload<='0';    MemMux<='0';
                          RW<='0';      INload<='0';   OUTload<='0';  Aload<='0';
                          Rload<='0';   ANDmux<='0';   ORmux<='0';    CarryMux<='1';
                          IRsel<='0';   MemEnable<='0';
                          SUBmux<="10"; ADDmux<="00";
                          Amux<="111";
        when "00101110" =>  state:="00000000";--Loading the difference in Accumulator
                          IRload<='0';   PCmux<='0';  PCload<='0';    MemMux<='0';
                          RW<='0';      INload<='0';   OUTload<='0';  Aload<='1';
                          Rload<='0';   ANDmux<='0';   ORmux<='0';    CarryMux<='1';
                          IRsel<='0';   MemEnable<='0';
                          SUBmux<="00"; ADDmux<="00";
                          Amux<="100";
                          
        
        when "00101111" =>  state:="00110000";--JMP 16BitAddress-- PC load
                          IRload<='0';   PCmux<='0'; PCload<='1';    MemMux<='0';
                          RW<='0';      INload<='0';   OUTload<='0';  Aload<='0';
                          Rload<='0';   ANDmux<='0';   ORmux<='0';    CarryMux<='0';
                          IRsel<='0';   MemEnable<='0';
                          SUBmux<="00"; ADDmux<="00";
                          Amux<="111";
        when "00110000" =>  state:="00110001";--Read higher order byte from memory
                          IRload<='0';   PCmux<='0';  PCload<='0';    MemMux<='0';
                          RW<='1';      INload<='0';   OUTload<='0';  Aload<='0';
                          Rload<='0';   ANDmux<='0';   ORmux<='0';    CarryMux<='0';
                          IRsel<='0';   MemEnable<='1';
                          SUBmux<="00"; ADDmux<="00";--carry load signal should be added
                          Amux<="111";
        when "00110001" =>  state:="00110010";--Load the higher order byte to IR
                          IRload<='1';   PCmux<='0';  PCload<='0';    MemMux<='0';
                          RW<='0';      INload<='0';   OUTload<='0';  Aload<='0';
                          Rload<='0';   ANDmux<='0';   ORmux<='0';    CarryMux<='0';
                          IRsel<='0';   MemEnable<='0';
                          SUBmux<="00"; ADDmux<="00";
                          Amux<="111";
        when "00110010" =>  state:="00110011";--Increment PC
                          IRload<='0';   PCmux<='0';  PCload<='1';    MemMux<='0';
                          RW<='0';      INload<='0';   OUTload<='0';  Aload<='0';
                          Rload<='0';   ANDmux<='0';   ORmux<='0';    CarryMux<='0';
                          IRsel<='0';   MemEnable<='0';
                          SUBmux<="00"; ADDmux<="00";
                          Amux<="111";
        when "00110011" =>  state:="00110100";--Read the lower order byte from memory
                          IRload<='0';   PCmux<='0';  PCload<='0';    MemMux<='0';
                          RW<='1';      INload<='0';   OUTload<='0';  Aload<='0';
                          Rload<='0';   ANDmux<='0';   ORmux<='0';    CarryMux<='0';
                          IRsel<='0';   MemEnable<='1';
                          SUBmux<="00"; ADDmux<="00";
                          Amux<="111";
        when "00110100" =>  state:="00110101";--Loading higher order byte to IR
                          IRload<='1';   PCmux<='0';  PCload<='0';    MemMux<='0';
                          RW<='0';      INload<='0';   OUTload<='0';  Aload<='0';
                          Rload<='0';   ANDmux<='0';   ORmux<='0';    CarryMux<='0';
                          IRsel<='1';   MemEnable<='0';
                          SUBmux<="00"; ADDmux<="00";
                          Amux<="111";
        when "00110101" =>  state:="00000000";--Loading PC with IR
                          IRload<='0';   PCmux<='1'; PCload<='1';    MemMux<='0';
                          RW<='0';      INload<='0';   OUTload<='0';  Aload<='0';
                          Rload<='0';   ANDmux<='0';   ORmux<='0';    CarryMux<='0';
                          IRsel<='0';   MemEnable<='0';
                          SUBmux<="00"; ADDmux<="00";
                          Amux<="111";
                          
        when "00110110" => --JNC 16BitAddress
                          if(carryflag='0')then
                            state:="00110000";--JMP 16BitAddress
                            IRload<='0';   PCmux<='0'; PCload<='1';    MemMux<='0';
                            RW<='0';      INload<='0';   OUTload<='0';  Aload<='0';
                            Rload<='0';   ANDmux<='0';   ORmux<='0';    CarryMux<='0';
                            IRsel<='0';   MemEnable<='0';
                            SUBmux<="00"; ADDmux<="00";
                            Amux<="111";
                          elsif(carryflag='1')then --increments the PC--skipping 2 bytes
                            state:="00110111";
                            IRload<='0';   PCmux<='0'; PCload<='1';    MemMux<='0';
                            RW<='0';      INload<='0';   OUTload<='0';  Aload<='0';
                            Rload<='0';   ANDmux<='0';   ORmux<='0';    CarryMux<='0';
                            IRsel<='0';   MemEnable<='0';
                            SUBmux<="00"; ADDmux<="00";
                            Amux<="111";
                          end if;
        when "00111000" =>  state:="00000000";--Skipping the second byte
                          IRload<='0';   PCmux<='0';  PCload<='1';    MemMux<='0';
                          RW<='0';      INload<='0';   OUTload<='0';  Aload<='0';
                          Rload<='0';   ANDmux<='0';   ORmux<='0';    CarryMux<='0';
                          IRsel<='0';   MemEnable<='0';
                          SUBmux<="00"; ADDmux<="00";
                          Amux<="111";
        when "00111001" =>  --JC 16BitAddress
                          if(carryflag='1')then
                            state:="00110000";--JMP 16BitAddress
                            IRload<='0';   PCmux<='0'; PCload<='1';    MemMux<='0';
                            RW<='0';      INload<='0';   OUTload<='0';  Aload<='0';
                            Rload<='0';   ANDmux<='0';   ORmux<='0';    CarryMux<='0';
                            IRsel<='0';   MemEnable<='0';
                            SUBmux<="00"; ADDmux<="00";
                            Amux<="111";
                          elsif(carryflag='0')then --increments the PC
                            state:="00111010";
                            IRload<='0';   PCmux<='0'; PCload<='1';    MemMux<='0';
                            RW<='0';      INload<='0';   OUTload<='0';  Aload<='0';
                            Rload<='0';   ANDmux<='0';   ORmux<='0';    CarryMux<='0';
                            IRsel<='0';   MemEnable<='0';
                            SUBmux<="00"; ADDmux<="00";
                            Amux<="111";
                          end if;
        when "00111010" =>  state:="00000000";--Skipping second byte
                          IRload<='0';   PCmux<='0';  PCload<='0';    MemMux<='0';
                          RW<='0';      INload<='0';   OUTload<='0';  Aload<='0';
                          Rload<='0';   ANDmux<='0';   ORmux<='0';    CarryMux<='0';
                          IRsel<='0';   MemEnable<='0';
                          SUBmux<="00"; ADDmux<="00";
                          Amux<="111";
        when "00111011" =>  --JNZ 16BitAddress
                          if(zeroflag='0')then
                            state:="00110000";--JMP 16BitAddress
                            IRload<='0';   PCmux<='0'; PCload<='1';    MemMux<='0';
                            RW<='0';      INload<='0';   OUTload<='0';  Aload<='0';
                            Rload<='0';   ANDmux<='0';   ORmux<='0';    CarryMux<='0';
                            IRsel<='0';   MemEnable<='0';
                            SUBmux<="00"; ADDmux<="00";
                            Amux<="111";
                          elsif(zeroflag='1')then --increments the PC
                            state:="00111011";
                            IRload<='0';   PCmux<='0'; PCload<='1';    MemMux<='0';
                            RW<='0';      INload<='0';   OUTload<='0';  Aload<='0';
                            Rload<='0';   ANDmux<='0';   ORmux<='0';    CarryMux<='0';
                            IRsel<='0';   MemEnable<='0';
                            SUBmux<="00"; ADDmux<="00";
                            Amux<="111";
                          end if;
        when "00111100" =>  state:="00000000";--Skipping second byte
                          IRload<='0';   PCmux<='0';  PCload<='1';    MemMux<='0';
                          RW<='0';      INload<='0';   OUTload<='0';  Aload<='0';
                          Rload<='0';   ANDmux<='0';   ORmux<='0';    CarryMux<='0';
                          IRsel<='0';   MemEnable<='0';
                          SUBmux<="00"; ADDmux<="00";
                          Amux<="111";
        when "00111101" =>  --JZ 16BitAddress
                          if(zeroflag='1')then
                            state:="00110000";--JMP 16BitAddress
                            IRload<='0';   PCmux<='0'; PCload<='1';    MemMux<='0';
                            RW<='0';      INload<='0';   OUTload<='0';  Aload<='0';
                            Rload<='0';   ANDmux<='0';   ORmux<='0';    CarryMux<='0';
                            IRsel<='0';   MemEnable<='0';
                            SUBmux<="00"; ADDmux<="00";
                            Amux<="111";
                          elsif(zeroflag='0')then --increments the PC
                            state:="00111110";
                            IRload<='0';   PCmux<='0'; PCload<='1';    MemMux<='0';
                            RW<='0';      INload<='0';   OUTload<='0';  Aload<='0';
                            Rload<='0';   ANDmux<='0';   ORmux<='0';    CarryMux<='0';
                            IRsel<='0';   MemEnable<='0';
                            SUBmux<="00"; ADDmux<="00";
                            Amux<="111";
                          end if;
        when "00111110" =>  state:="00000000";--Skipping the second byte
                          IRload<='0';   PCmux<='0';  PCload<='1';    MemMux<='0';
                          RW<='0';      INload<='0';   OUTload<='0';  Aload<='0';
                          Rload<='0';   ANDmux<='0';   ORmux<='0';    CarryMux<='0';
                          IRsel<='0';   MemEnable<='0';
                          SUBmux<="00"; ADDmux<="00";
                          Amux<="111";
                          
        when "00111111" =>  state:="01000000";--ANA R
                          IRload<='0';   PCmux<='0'; PCload<='0';    MemMux<='0';
                          RW<='0';      INload<='0';   OUTload<='0';  Aload<='0';
                          Rload<='0';   ANDmux<='1';   ORmux<='0';    CarryMux<='0';
                          IRsel<='0';   MemEnable<='0';
                          SUBmux<="00"; ADDmux<="00";
                          Amux<="111";
        when "01000000" =>  state:="00000000";--Load Anded data to Accumulator
                          IRload<='0';   PCmux<='0';  PCload<='0';    MemMux<='0';
                          RW<='0';      INload<='0';   OUTload<='0';  Aload<='1';
                          Rload<='0';   ANDmux<='0';   ORmux<='0';    CarryMux<='0';
                          IRsel<='0';   MemEnable<='0';
                          SUBmux<="00"; ADDmux<="00";
                          Amux<="101";
                          
        when "01000001" =>  state:="01000010";--ANI 8BitData
                          IRload<='0';   PCmux<='0'; PCload<='0';    MemMux<='0';
                          RW<='0';      INload<='0';   OUTload<='0';  Aload<='0';
                          Rload<='0';   ANDmux<='0';   ORmux<='0';    CarryMux<='0';
                          IRsel<='0';   MemEnable<='0';
                          SUBmux<="00"; ADDmux<="00";
                          Amux<="111";
        when "01000010" =>  state:="00000000";--Load Anded data to Accumulator
                          IRload<='0';   PCmux<='0';  PCload<='0';    MemMux<='0';
                          RW<='0';      INload<='0';   OUTload<='0';  Aload<='1';
                          Rload<='0';   ANDmux<='0';   ORmux<='0';    CarryMux<='0';
                          IRsel<='0';   MemEnable<='0';
                          SUBmux<="00"; ADDmux<="00";
                          Amux<="101";
        
        when "01000011" =>  state:="01000100";--ORA R
                          IRload<='0';   PCmux<='0'; PCload<='0';    MemMux<='0';
                          RW<='0';      INload<='0';   OUTload<='0';  Aload<='0';
                          Rload<='0';   ANDmux<='0';   ORmux<='1';    CarryMux<='0';
                          IRsel<='0';   MemEnable<='0';
                          SUBmux<="00"; ADDmux<="00";
                          Amux<="111";
        when "01000100" =>  state:="00000000";--Load Ored Data in Accumulator
                          IRload<='0';   PCmux<='0';  PCload<='0';    MemMux<='0';
                          RW<='0';      INload<='0';   OUTload<='0';  Aload<='1';
                          Rload<='0';   ANDmux<='0';   ORmux<='0';    CarryMux<='0';
                          IRsel<='0';   MemEnable<='0';
                          SUBmux<="00"; ADDmux<="00";
                          Amux<="110";
                          
        when "01000101" =>  state:="01000110";--ORI 8BitData
                          IRload<='0';   PCmux<='0'; PCload<='0';    MemMux<='0';
                          RW<='0';      INload<='0';   OUTload<='0';  Aload<='0';
                          Rload<='0';   ANDmux<='0';   ORmux<='0';    CarryMux<='0';
                          IRsel<='0';   MemEnable<='0';
                          SUBmux<="00"; ADDmux<="00";
                          Amux<="111";
        when "01000110" =>  state:="00000000";--Load Ored Data in Accumulator
                          IRload<='0';   PCmux<='0';  PCload<='0';    MemMux<='0';
                          RW<='0';      INload<='0';   OUTload<='0';  Aload<='1';
                          Rload<='0';   ANDmux<='0';   ORmux<='0';    CarryMux<='0';
                          IRsel<='0';   MemEnable<='0';
                          SUBmux<="00"; ADDmux<="00";
                          Amux<="110";
        when "01000111" =>  state:="00000000";--NOP
                          IRload<='0';   PCmux<='0'; PCload<='0';    MemMux<='0';
                          RW<='0';      INload<='0';   OUTload<='0';  Aload<='0';
                          Rload<='0';   ANDmux<='0';   ORmux<='0';    CarryMux<='0';
                          IRsel<='0';   MemEnable<='0';
                          SUBmux<="00"; ADDmux<="00";
                          Amux<="111";
        when "01001000" =>  state:="01001000";--HALT
                          IRload<='0';   PCmux<='0'; PCload<='0';    MemMux<='0';
                          RW<='0';      INload<='0';   OUTload<='0';  Aload<='0';
                          Rload<='0';   ANDmux<='0';   ORmux<='0';    CarryMux<='0';
                          IRsel<='0';   MemEnable<='0';
                          SUBmux<="00"; ADDmux<="00";
                          Amux<="111";
  --      when "00011111" =>  state:="00000000";
       
  --      when "00100000" =>  state:="00000000";
      
  --      when "00100001" =>  state:="00000000";
      
  --      when "00100010" =>  state:="00000000";
      
  --      when "00100011" =>  state:="00000000";
      
  --      when "00100100" =>  state:="00000000";
      
  --      when "00100101" =>  state:="00000000";
      
  --      when "00100110" =>  state:="00000000";
      
  --      when "00100111" =>  state:="00000000";
      
  --      when "00101000" =>  state:="00000000";
      
  --      when "00101001" =>  state:="00000000";
      
  --      when "00101010" =>  state:="00000000";
      
  --      when "00101011" =>  state:="00000000";
      
  --      when "00101100" =>  state:="00000000";
      
  --      when "00101101" =>  state:="00000000";
      
        when others     =>  state:="00000000";
                          IRload<='0';   PCmux<='0';   PCload<='0';     MemMux<='0';
                          RW<='0';      INload<='0';   OUTload<='0';  Aload<='0';
                          Rload<='0';   ANDmux<='0';   ORmux<='0';    CarryMux<='0';
                          IRsel<='0';   MemEnable<='0';
                          SUBmux<="00"; ADDmux<="00";
                          Amux<="111";
      end case;
    end if;
  end Process;

 
end Operation;

----------------------------------------------------------------------
----------------------------------------------------------------------
-----------------------//Instruction Register//-----------------------
library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_arith.all;

entity InstructionR is
  port(Input: in std_logic_vector(7 downto 0);
      Clock: in std_logic;
      Reset: in std_logic;
      IRload:in std_logic;
      IRsel:in std_logic;
      Output:out std_logic_vector(15 downto 0));
end InstructionR;
 
architecture Operation of InstructionR is

begin
  process(Clock)
    variable IR:std_logic_vector(15 downto 0):="0000000000000000";
    begin
      if(Reset='1' and Clock='1')then
        IR:="0000000000000000";        
      elsif(IRload='1' and clock='1' and IRsel='0')then
        IR(15 downto 8):=Input;
      elsif(IRload='1' and clock='1' and IRsel='1')then  
        IR(7 downto 0):=Input;
      end if;
      Output<=IR;
    end process;
end Operation;


----------------------------------------------------------------------
----------------------------------------------------------------------
--------------------------//Program Counter//-------------------------
library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_arith.all;

entity ProgramCounter is
  port(Input: in std_logic_vector(15 downto 0);
      Clock: in std_logic;
      Reset: in std_logic;
      PCload:in std_logic;
      Output:out std_logic_vector(15 downto 0));
end ProgramCounter;
 
architecture Operation of ProgramCounter is

begin
  process(Clock)
    variable PC:std_logic_vector(15 downto 0):="0000000000000000";
    begin
      if(Reset='1' and Clock='1')then
        PC:="0000000000000000";        
      elsif(PCload='1' and Clock='1')then
        PC:=Input;
      end if;
      Output<=PC;
    end process;
end Operation;


----------------------------------------------------------------------
----------------------------------------------------------------------
---------------------//Memory 16 X 16 X 8BitData//--------------------
library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;
  use ieee.std_logic_arith.all;

entity Memory is
  port(Input: in std_logic_vector(15 downto 0);
      Data:in std_logic_vector(7 downto 0);
      Clock: in std_logic;
      MemEnable:in std_logic;
      RW:in std_logic;
      Output:out std_logic_vector(7 downto 0));
end Memory;
 
architecture Operation of Memory is

begin
  process(Clock)
    type ram is array (0 to 65535)of std_logic_vector(7 downto 0);
    variable r:ram;

    begin
      --write the program here
      r(0):="00011100";--in
      r(1):="00000100";--movr,a
      r(2):="00011100";--in
      r(3):="00011110";--addr
      r(4):="00011011";--out
      r(5):="01001000";--halt

      if(MemEnable='1' and Clock='1' and RW='0')then
        r(conv_integer(Input)):=Data;
      elsif(MemEnable='1' and Clock='1' and RW='1')then
        Output<=r(conv_integer(Input));
      end if;
    end process;
end Operation;




----------------------------------------------------------------------
----------------------------------------------------------------------
--------------------------//Input Register//--------------------------
library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_arith.all;

entity InputR is
  port(Input: in std_logic_vector(7 downto 0);
      Clock: in std_logic;
      Reset: in std_logic;
      INload:in std_logic;
      Output:out std_logic_vector(7 downto 0));
end InputR;
 
architecture Operation of InputR is

begin
  process(Clock)
    variable INp:std_logic_vector(7 downto 0):="00000000";
    begin
      if(Reset='1' and Clock='1')then
        INp:="00000000";        
      elsif(INload='1' and Clock='1')then
        INp:=Input;
      end if;
      Output<=INp;
    end process;
end Operation;



----------------------------------------------------------------------
----------------------------------------------------------------------
--------------------------//Output Register//-------------------------
library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_arith.all;

entity OutputR is
  port(Input: in std_logic_vector(7 downto 0);
      Clock: in std_logic;
      Reset: in std_logic;
      OUTload:in std_logic;
      Output:out std_logic_vector(7 downto 0));
end OutputR;
 
architecture Operation of OutputR is

begin
  process(Clock)
    variable OUTp:std_logic_vector(7 downto 0):="00000000";
    begin
      if(Reset='1' and Clock='1')then
        OUTp:="00000000";        
      elsif(OUTload='1' and Clock='1')then
        OUTp:=Input;
      end if;
      Output<=OUTp;
    end process;
end Operation;

----------------------------------------------------------------------
----------------------------------------------------------------------
-----------------------//Accumulator Register//-----------------------
library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_arith.all;

entity AccumulatorR is
  port(Input: in std_logic_vector(7 downto 0);
      Clock: in std_logic;
      Reset: in std_logic;
      Aload:in std_logic;
      Output:out std_logic_vector(7 downto 0));
end AccumulatorR;
 
architecture Operation of AccumulatorR is

begin
  process(Clock)
    variable Acc:std_logic_vector(7 downto 0):="00000000";
    begin
      if(Reset='1' and Clock='1')then
        Acc:="00000000";        
      elsif(Aload='1' and Clock='1')then
        Acc:=Input;
      end if;
      Output<=Acc;
    end process;
end Operation;



----------------------------------------------------------------------
----------------------------------------------------------------------
-----------------------------//Register R//---------------------------
library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_arith.all;

entity RegisterR is
  port(Input: in std_logic_vector(7 downto 0);
      Clock: in std_logic;
      Reset: in std_logic;
      Rload:in std_logic;
      Output:out std_logic_vector(7 downto 0));
end RegisterR;
 
architecture Operation of RegisterR is

begin
  process(Clock)
    variable Rr:std_logic_vector(7 downto 0):="00000000";
    begin
      if(Reset='1' and Clock='1')then
        Rr:="00000000";        
      elsif(Rload='1' and Clock='1')then
        Rr:=Input;
      end if;
      Output<=Rr;
    end process;
end Operation;


----------------------------------------------------------------------
----------------------------------------------------------------------
-------------------------------//Flag//-------------------------------
library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_arith.all;

entity FlagR is
  port(InCarry: in std_logic;
      InZero: in std_logic;
      Clock: in std_logic;
      Reset: in std_logic;
      OutCarry:out std_logic;
      OutZero:out std_logic);
end FlagR;
 
architecture Operation of FlagR is

begin
  process(Clock)
    variable Fr:std_logic_vector(1 downto 0):="00";
    begin
      if(Reset='1' and Clock='1')then
        Fr:="00";        
      elsif(Clock='1')then
        Fr(0):=InCarry;
        Fr(1):=InZero;
      end if;
      OutCarry<=Fr(0);
      OutZero<=Fr(1);
    end process;
end Operation;


----------------------------------------------------------------------
----------------------------------------------------------------------
------------------------------//Addition//----------------------------
library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_arith.all;
  use ieee.std_logic_unsigned.all;

entity Addition is
  port(Input1: in std_logic_vector(7 downto 0);
      Input2: in std_logic_vector(7 downto 0);
      Carry:out std_logic;
      Output:out std_logic_vector(7 downto 0));
end Addition;
 
architecture Operation of Addition is

begin
  process(Input1,Input2)
    variable x:std_logic_vector(8 downto 0);
    begin
      x:='0'&Input1+Input2;
      Carry<=x(8);
      Output<=x(7 downto 0);
    end process;    
end Operation;


----------------------------------------------------------------------
----------------------------------------------------------------------
----------------------------//Subtraction//---------------------------
library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_arith.all;
  use ieee.std_logic_unsigned.all;

entity Subtraction is
  port(Input1: in std_logic_vector(7 downto 0);
      Input2: in std_logic_vector(7 downto 0);
      Borrow: out std_logic;
      Output:out std_logic_vector(7 downto 0));
end Subtraction;
 
architecture Operation of Subtraction is

begin
  process(Input1,Input2)
    variable x:std_logic_vector(8 downto 0);
    begin
      x:='0'&Input1-Input2;
      Borrow<=x(8);
      Output<=x(7 downto 0);
    end process;
end Operation;


----------------------------------------------------------------------
----------------------------------------------------------------------
------------------------------//Anding//------------------------------
library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_arith.all;
  use ieee.std_logic_unsigned.all;

entity Anding is
  port(Input1: in std_logic_vector(7 downto 0);
      Input2: in std_logic_vector(7 downto 0);
      Output:out std_logic_vector(7 downto 0));
end Anding;
 
architecture Operation of Anding is

begin
  process(Input1,Input2)
    begin
      Output<=Input1 and Input2;
    end process;
end Operation;

----------------------------------------------------------------------
----------------------------------------------------------------------
------------------------------//Oring//------------------------------

library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_arith.all;
  use ieee.std_logic_unsigned.all;

entity Oring is
  port(Input1: in std_logic_vector(7 downto 0);
      Input2: in std_logic_vector(7 downto 0);
      Output:out std_logic_vector(7 downto 0));
end Oring;
 
architecture Operation of Oring is

begin
  process(Input1,Input2)
    begin
      Output<=Input1 or Input2;
    end process;
end Operation;


----------------------------------------------------------------------
----------------------------------------------------------------------
-------------------------//MUX 2x1  16 bit//--------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
----------------------------
entity Mux2x1x16 is
  port(
    a,b:in std_logic_vector(15 downto 0);
    s:in std_logic;
    Output:out std_logic_vector(15 downto 0));
end Mux2x1x16;
----------------------------
architecture Operation of Mux2x1x16 is
begin
  process(s,a,b)
    begin
      if(s='0') then
        Output<= a;
      elsif(s='1') then
        Output<= b;
      end if;
    end Process;
end Operation;


----------------------------------------------------------------------
----------------------------------------------------------------------
-------------------------//MUX 2x1  1bit//----------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
----------------------------
entity Mux2x1x1 is
  port(
    a,b:in std_logic;
    s:in std_logic;
    Output:out std_logic);
end Mux2x1x1;
----------------------------
architecture Operation of Mux2x1x1 is
begin
  process(s,a,b)
    begin
      if(s='0') then
        Output<= a;
      elsif(s='1') then
        Output<= b;
      end if;
    end Process;
end Operation;


----------------------------------------------------------------------
----------------------------------------------------------------------
-------------------------//MUX 8x1x8  1bit//----------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
----------------------------
entity Mux8x1x8 is
  port(
    a,b,c,d,e,f,g,h:in std_logic_vector(7 downto 0);
    s:in std_logic_vector(2 downto 0);
    Output:out std_logic_vector(7 downto 0));
end Mux8x1x8;
----------------------------
architecture Operation of Mux8x1x8 is
begin
  process(s,a,b)
    begin
      if(s="000") then
        Output<= a;
      elsif(s="001") then
        Output<= b;
      elsif(s="010") then
        Output<= c;
      elsif(s="011") then
        Output<= d;
      elsif(s="100") then
        Output<= e;
      elsif(s="101") then
        Output<= f;
      elsif(s="110") then
        Output<= g;
      elsif(s="111") then
        --Output<= h;nothing to be done(no change)
      end if;
    end Process;
end Operation;

----------------------------------------------------------------------
----------------------------------------------------------------------
-------------------------//MUX 4x1x8  1bit//----------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
----------------------------
entity Mux4x1x8 is
  port(
    a,b,c,d:in std_logic_vector(7 downto 0);
    s:in std_logic_vector(1 downto 0);
    Output:out std_logic_vector(7 downto 0));
end Mux4x1x8;
----------------------------
architecture Operation of Mux4x1x8 is
begin
  process(s,a,b)
    begin
      if(s="00") then
        Output<= a;
      elsif(s="01") then
        Output<= b;
      elsif(s="10") then
        Output<= c;
      elsif(s="11") then
        Output<= d;
      end if;
    end Process;
end Operation;



----------------------------------------------------------------------
----------------------------------------------------------------------
-------------------------//MUX 2x1x8  1bit//----------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
----------------------------
entity Mux2x1x8 is
  port(
    a,b:in std_logic_vector(7 downto 0);
    s:in std_logic;
    Output:out std_logic_vector(7 downto 0));
end Mux2x1x8;
----------------------------
architecture Operation of Mux2x1x8 is
begin
  process(s,a,b)
    begin
      if(s='0') then
        Output<= a;
      elsif(s='1') then
        Output<= b;
      end if;
    end Process;
end Operation;



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



