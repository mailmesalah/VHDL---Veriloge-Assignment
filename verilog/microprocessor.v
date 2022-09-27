//8 bit decrement-------------------------------------
   module bit8dec(input [7:0] outA7_0,output reg  [7:0] dec8_bit);
   
   always@ (outA7_0)
   begin
   dec8_bit=(outA7_0 - 1);
   
 end
   
 endmodule

  /*--------control-------------------*/

module ff(input clock,input clear,input d,output reg q,output reg q_bar);//q,q_bar,clock,clear,d);
 //input d,clock,clear;
// output q,q_bar;
//  reg q,q_bar,d,clock,clear;
  always @(posedge clock)
  begin
  if (clear==1)
begin
  q=0;
  q_bar=1;
    end
  
 else 
begin
  q=d;
  q_bar=~d;
  end
end
endmodule
//----------------
module control(input an_0,clock,clear,input [7:0]ir,output ir_load,pc_load,inmux,a_load,jnz_mux,halt);//ir_load,pc_load,inmux,a_load,jnz_mux,halt,an_0,ir[7:0],clock,clear);
//input an_0,clock,clear;
//input [7:0]ir;

//output ir_load,pc_load,inmux,a_load,jnz_mux,halt;
wire q2,q1,q0,q2_bar,q1_bar,q0_bar,d2,d1,d0;//ir_load,pc_load,inmux,a_load,jnz_mux,halt;
//reg flag;

 assign  d2=((q2&q1&q0)|(q2_bar & q1 & q0_bar & ir[7]));
 assign  d1=((q2&q1&q0)|(q2_bar & q1 & q0_bar &((ir[6]&ir[5])|(ir[7]&ir[6])))|(q2_bar&q1_bar&q0));
 assign d0=(q2&q1&q0)|(q2_bar & q1 & q0_bar &((ir[6]&ir[5])|(ir[7]&ir[5]))|(q2_bar&q1_bar&q0_bar));
  
   
 assign  ir_load=q2_bar&q1_bar&q0;
 assign   pc_load=((q2_bar&q1_bar&q0)|((q2&q1&q0_bar)&an_0));
 assign   inmux=(q2_bar&q1&q0);
 assign    a_load=((q2_bar&q1&q0)|(q2&q1_bar&q0));
 assign   jnz_mux=(q2&q1&q0_bar);
 assign   halt=(q2&q1&q0);


//if(flag==1)
//begin

ff ff1 (clock,clear,d2,q2,q2_bar);
ff ff2 (clock,clear,d1,q1,q1_bar);
ff ff3 (clock,clear,d0,q0,q0_bar);

endmodule





/*---------accumulator-----------*/
module accumulator_8_reg(input Aload,clock,reset,input[7:0] d7_0,output reg[7:0]outA7_0 );
 
  
  
always @(posedge clock)
begin
 if(reset==1)  //(posedge clock)
   outA7_0=8'b0;
 else if(Aload==1 && reset==0)//@(posedge clock)
   outA7_0=d7_0;
 end
 endmodule
 
 
 /*---------increment-----------*/
 module incre(input [3:0]pc_3,output reg[3:0]inc_3 );

always@(pc_3)
begin
 inc_3= pc_3 + 1; 
end
endmodule 

/*--------------mux8 i/p---------------*/
  module mux2_8(input inmux,input [7:0] input_1,dec8_bit, output reg [7:0] d7_0);
    
         always@(inmux)
     begin
     if(inmux==1)
       d7_0=input_1;
     else if(inmux==0)
       d7_0=dec8_bit;
     end
   endmodule

   /*--------------mux4 i/p---------------*/
    module mux2_4(input jnzmux,input [3:0] ir3_0,dec4_bit, output reg [3:0] d4_0);
    
         always@(jnzmux)
     begin
     if(jnzmux==1)
       d4_0=ir3_0;
     else if(jnzmux==0)
       d4_0=dec4_bit;
     end
   endmodule
 

   /*--------------pc---------------*/
   module pc1(input[3:0]d3_0,input pcload,clock,reset,output reg[3:0] pc3_0);

always @(posedge clock)
   begin
   if (reset==1)//@(posedge clock)
   pc3_0=3'b0;
  
 else if (pcload==1 )//@(posedge clock)
 
  pc3_0=d3_0;
 end
   
 endmodule
 
 /*--------------rom---------------*/
 module rom(input [3:0]addr,input clock,output reg[7:0]q);
reg [7:0]rom[16:0];
initial
begin
rom[0]=8'b01100000;
rom[1]=8'b10000000;
rom[2]=8'b10100000;
rom[3]=8'b11000001;
rom[4]=8'b11111111;
end
always @(posedge clock)
begin
  if(addr==0000)//@(posedge clock)
    q=rom[0];
    else if(addr==4'b0001)//@(posedge clock)
    q=rom[1];
    else if(addr==4'b0010)//@(posedge clock)
    q=rom[2];
    else if(addr==4'b0011)//@(posedge clock)
    q=rom[3];
    else if(addr==4'b0100)//@(posedge clock)
    q=rom[4];
end
endmodule
/*-------IR-------------------*/

module ir_1(input[7:0] d7_0,input irload,clear,clock,output reg [7:0]ir);
always@(posedge clock)
begin
if(irload==1&&clear==0)//@(posedge clock)
ir=d7_0;
else if(clear==1)//@(posedge clock)
ir=0;
end
endmodule
//---------------------------------------------------------------------------------------
/*-----------------datapath------------------------*/

module datapath(input irload,jnzmux,pcload,inmux,aload,reset,clock,input [7:0] inp,output [7:0]out,output [2:0]ir7_5,output ane0);
  wire [7:0]q,d7_0,outA7_0,dec8_bit,ir;
  wire [4:0]inc_3,d4_0,pc3_0;
  
  ir_1 ir1 (q,irload,reset,clock,ir);
  mux2_4 jnmx (jnzmux,{ir[3:0]},inc_3,d4_0);
  pc1 pc_1 (d4_0,pcload,clock,reset,pc3_0);
  rom rom_1 (pc3_0,clock,q);
  
  mux2_8 mux (inmux,inp,dec8_bit,d7_0);
  accumulator_8_reg accu (aload,clock,reset,d7_0,outA7_0);
  bit8dec dec (outA7_0,dec8_bit);
  incre inc(pc3_0,inc_3 );
  
 assign out= outA7_0;
assign ir7_5= (ir[7:5]);
 assign ane0=(|outA7_0);
/*input jnzmux,input [3:0] ir3_0,dec4_bit, output reg [7:0] d4_0);
pc_1(input[3:0]d3_0,input pcload,clock,reset,output reg[3:0] pc3_0);
 module rom(input [3:0]addr,input clock,output reg[7:0]q);
  module incre(input [3:0]pc_3,output reg[3:0]inc_3 );
 
   module mux2_8(input inmux,input [7:0] input_1,dec8_bit, output reg [7:0] d7_0);
      module bit8dec(input [7:0] outA7_0,output reg  [7:0] dec8_bit);
module accumulator_8_reg(input Aload,clock,reset,input[7:0] d7_0,output reg[7:0]outA7_0 );*/

endmodule


/*-------------microprocessor-------------*/
   module microprocessor(input [7:0]inp,input clock,reset,output [7:0]out,output halt);
     datapath ds(irload,jnzmux,pcload,inmux,aload,reset,clock,inp,out,ir7_5,ane0);
     control cs(an_0,clock,clear,ir,ir_load,pc_load,inmux,a_load,jnz_mux,halt);
     //ir_load,pc_load,inmux,a_load,jnz_mux,halt,an_0,ir,clock,clear);
   
 endmodule
 /*
   input irload,jnzmux,pcload,inmux,aload,reset,clock,input [7:0] inp,output [7:0]out,output [2:0]ir7_5,output ane0
  module control(input an_0,clock,clear,input [7:0]ir,output ir_load,pc_load,inmux,a_load,jnz_mux,halt);//ir_load,pc_load,inmux,a_load,jnz_mux,halt,an_0,ir[7:0],clock,clear);
 
   module control(ir_load,pc_load,inmux,a_load,jnz_mux,halt,an_0,ir[7:0],clock,clear);*/

   
   
   
   