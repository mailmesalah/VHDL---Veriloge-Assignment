
library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_arith.all;
  use ieee.std_logic_unsigned.all;

entity DP is
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
end DP;
  


architecture Operation of DP is
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
 
  InRe:InstructionR port map(MemOut,Clock,Reset,IRload,IRsel,IROut);--Instruction Register
  PCMux1:Mux2x1x16 port map(IROut,Inc16Out,PCMux,MuxPCOut);--Program counter Mux
  Incr16:inc16 port map(PCOut,Inc16Out);--Increment 16 bit
  ProC: ProgramCounter port map(MuxPCOut,Clock,Reset,PCload,PCOut);--Program counter
  MemMux1:Mux2x1x16 port map(IROut,PCOut,MemMux,MuxMemOut);--Program counter Mux
  RAM1:Memory port map(MuxMemOut,AccOut,Clock,MemEnable,RW,MemOut);--Memory
  InP:InputR port map(Input,Clock,Reset,INload,InpOut);--Input
  AccMux:Mux8x1x8 port map(MemOut,ROut,InpOut,AddOut,SubOut,AndOut,OrOut,"11111111",Amux,MuxAccOut);--Accumulator mux
  Accu:AccumulatorR port map(MuxAccOut,Clock,Reset,Aload,AccOut);--Accumulator
  RegR:RegisterR port map(AccOut,Clock,Reset,Rload,ROut);--Register R
  AddMux1:Mux4x1x8 port map(MemOut,ROut,"00000001","00000000",ADDmux,MuxAddOut);--Addition Mux
  SubMux1:Mux4x1x8 port map(MemOut,ROut,"00000001","00000000",SUBmux,MuxSubOut);--Subtraction Mux
  Add:Addition port map(MuxAddOut,AccOut,Carry,AddOut);--Addition
  Sub:Subtraction port map(MuxSubOut,AccOut,Borrow,SubOut);--Subtraction
  AndMux1:Mux2x1x8 port map(MemOut,ROut,ANDmux,MuxAndOut);--And Mux
  OrMux1:Mux2x1x8 port map(MemOut,ROut,ORmux,MuxOrOut);--Or Mux
  And1:Anding port map(AccOut,MuxAndOut,AndOut);--Anding
  Or1:Oring port map(AccOut,MuxOrOut,OrOut);--Oring
  OutP:OutputR port map(AccOut,Clock,Reset,OUTload,Output);--Output
  Flag:FlagR port map(MuxCarryOut,Aeq0,Clock,Reset,CarryFlag,ZeroFlag);--Flag Register
  CarryMux1:Mux2x1x1 port map(Carry,Borrow,CarryMux,MuxCarryOut);
  
  Aeq0<=not(Accout(0) or Accout(1) or Accout(2) or Accout(3) or --input for Zero flag
            Accout(4) or Accout(5) or Accout(6) or Accout(7));

end Operation;