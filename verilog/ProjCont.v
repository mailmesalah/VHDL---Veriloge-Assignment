 
/*  MINI PROJECT IN VERILOG ON GENERAL PURPOSE MICROPROCESSOR
--------------------------------------------------------------------------  
---------------------Coded By Jenson And Salahudheen----------------------
--------------------------------------------------------------------------
--------------------------------------------------------------------------
    
Verilog Description for the Control Unit  */


    module ControlUnit(input Clock,input Reset,input[7:0]IR,input Aneq0,
                       output Halt,output IRload,output PCload,output INmux,
                       output Aload,output JNZmux);
    wire [2:0] d; 
    wire [2:0] q,qbar;                  
                       
       dff d0( q[0], qbar[0], d[0], Clock, Reset); 
       dff d1( q[1], qbar[1], d[1], Clock, Reset);
       dff d2( q[2], qbar[2], d[2], Clock, Reset); 
       
       assign d[0]= (q[2] & q[1] & q[0]) | ((qbar[2] & q[1] & qbar[0]) &((IR[6] & IR[5]) |
                    (IR[7] & IR[5]))) | (qbar[2] & qbar[1] & qbar[0]) ;
                    
       assign d[1]= (q[2] & q[1] & q[0]) | ((qbar[2] & q[1] & qbar[0]) &((IR[6] & IR[5]) |
                    (IR[7] & IR[6]))) | (qbar[2] & qbar[1] & q[0]) ;
        
       assign d[2]= (q[2] & q[1] & q[0]) | (qbar[2] & q[1] & qbar[0] & IR[7]);
    
    
       assign IRload= qbar[2] & qbar[1] & q[0];
       assign PCload= (qbar[2] & qbar[1] & q[0]) | (q[2] & q[1] & qbar[0] & Aneq0);
       assign INmux= qbar[2] & q[1] & q[0];
       assign Aload= (qbar[2] & q[1] & q[0]) | (q[2] & qbar[1] & q[0]);
       assign JNZmux= q[2] & q[1] & qbar[0];
       assign Halt= q[2] & q[1] & q[0];
       
    endmodule
    
 
/*---------------------------------------------------------------------------*/

/*   Verilog Description for DataPath     */

    module DataPath(input Clock,input Reset,input PCload,input IRload ,input INmux,output[7:0]out,
                    input Aload,input JNZmux,input[7:0]in,output Aneq0,output [7:0]IR);
                       
    wire [7:0] romout,net1,dec8out,mux8out,accout,net3;
    wire [3:0] inc4out,mux4out,pcout,net2;
   
   
   
      dffir ir(IR[7:0],net1[7:0],romout[7:0],Clock,Reset,IRload);
      mux4 m4(IR[3:0],inc4out[3:0],JNZmux,mux4out[3:0]);
      dffpc pc(pcout[3:0],net2[3:0],mux4out[3:0],Clock,Reset,PCload);
      incr4 inc4(pcout[3:0],inc4out[3:0]);
      rom r(Clock,pcout[3:0],romout[7:0]);
      mux8 m8(in[7:0],dec8out[7:0],INmux,mux8out[7:0]);
      decr8 dec8(accout[7:0],dec8out[7:0]);
      dffacc acc(accout[7:0],net3[7:0],mux8out[7:0],Clock,Reset,Aload);
    
    assign out=accout;
    assign Aneq0=|accout;
    endmodule
    
/*    ---------------EC 1 Microprocessor-----------------     */
    
    module microprocessor(input [7:0]IN,input Clock,input Reset,output Halt,output [7:0]OUT);
    
    wire [7:0]IR;
      
      ControlUnit ControlU(Clock,Reset,IR[7:0],Aneq0,
                       Halt,IRload,PCload,INmux,
                       Aload,JNZmux);
                       
      DataPath DataP(Clock,Reset,PCload,IRload,INmux,OUT[7:0],
                    Aload,JNZmux,IN[7:0],Aneq0,IR[7:0]);
      
    endmodule
    
    
    
/*  ----------------------------------------------------------------------*/
/*  ----------------------------------------------------------------------*/


/*  Program for IR Register in Data Path  */

    module dffir(output [7:0] q,output  [7:0] qbar,input  [7:0] d,input clk,input clear,input enable);

      dffen d0(q[0],qbar[0],d[0],clk,clear,enable);
      dffen d1(q[1],qbar[1],d[1],clk,clear,enable);
      dffen d2(q[2],qbar[2],d[2],clk,clear,enable);
      dffen d3(q[3],qbar[3],d[3],clk,clear,enable);
      dffen d4(q[4],qbar[4],d[4],clk,clear,enable);
      dffen d5(q[5],qbar[5],d[5],clk,clear,enable);
      dffen d6(q[6],qbar[6],d[6],clk,clear,enable);
      dffen d7(q[7],qbar[7],d[7],clk,clear,enable);

    endmodule
/*------------------------------------------------------------------------*/    


/*  program for PC in DataPath  */

    module dffpc(output [3:0] q,output  [3:0] qbar,input  [3:0] d,input clk,input clear,input enable);
      
      dffen d0(q[0],qbar[0],d[0],clk,clear,enable);
      dffen d1(q[1],qbar[1],d[1],clk,clear,enable);
      dffen d2(q[2],qbar[2],d[2],clk,clear,enable);
      dffen d3(q[3],qbar[3],d[3],clk,clear,enable);
    endmodule
/*  ----------------------------------------------------------------------*/

   
/*  Program for D-Flipflop  */


    module dff(output q,output qbar,input d,input clk,input clear);
      wire s,sbar,r,rbar,cbar;
      
      assign cbar= ~clear;
      assign sbar= ~(rbar & s),
             s= ~(sbar & cbar & clk),
             r= ~(rbar & clk & s),
             rbar= ~(r & cbar & d);
      assign q= ~(s & qbar),
             qbar=~(q & r & cbar);
    endmodule
    
/*------------------------------------------------------------------------*/



/*  Program for D-Flipflop with enable  */


    module dffen(output reg q,output reg qbar,input d,input clk,input clear,input enable);
    
             always @(posedge clk)
              begin
                if(clear==1'b1)
                  begin
                    q=1'b0;
                    qbar=1'b1;
                  end
                else if(enable==1'b1)
                  begin
                    q=d;
                    qbar=~d;
                  end
              end
    endmodule
    
/*------------------------------------------------------------------------*/



/*           Program for ROM             */

    
    module rom(input clk,input [3:0]addr,output reg[7:0] data);
      
      reg [7:0]mem[15:0];
      initial 
      begin
        mem[0]= 8'b01100000;//in
        mem[1]= 8'b10000000;//out
        mem[2]= 8'b10100000;//dec
        mem[3]= 8'b11000001;//jnz
        mem[4]= 8'b11111111;//halt
      end
      always @(posedge clk)
      begin
        data=mem[addr];
      end
    endmodule
        
/*------------------------------------------------------------------------*/


/*  Program for Accumulator in Data Path  */

    module dffacc(output [7:0] q,output  [7:0] qbar,input  [7:0] d,
                               input clk,input clear,input enable);

      dffen d0(q[0],qbar[0],d[0],clk,clear,enable);
      dffen d1(q[1],qbar[1],d[1],clk,clear,enable);
      dffen d2(q[2],qbar[2],d[2],clk,clear,enable);
      dffen d3(q[3],qbar[3],d[3],clk,clear,enable);
      dffen d4(q[4],qbar[4],d[4],clk,clear,enable);
      dffen d5(q[5],qbar[5],d[5],clk,clear,enable);
      dffen d6(q[6],qbar[6],d[6],clk,clear,enable);
      dffen d7(q[7],qbar[7],d[7],clk,clear,enable);

    endmodule
/*------------------------------------------------------------------------*/    


/*  Program for 4-Bit increment in Data Path  */

    module incr4(input [3:0] in,output [3:0] out );

    assign out=in+4'b0001;
    endmodule
/*------------------------------------------------------------------------*/    


/*  Program for 8-Bit decrement in Data Path  */

    module decr8(input [7:0] in,output [7:0] out );

    assign out=in-8'b1;
    endmodule
/*------------------------------------------------------------------------*/    


/*  Program for Mux4 in Data Path  */

    module mux4(input [3:0]in1,input [3:0]in2,input s,output [3:0]out);

    assign out= s ? in1:in2;
    endmodule
/*------------------------------------------------------------------------*/    


/*  Program for Mux8 in Data Path  */

    module mux8(input [7:0]in1,input [7:0]in2,input s,output [7:0]out);

    assign out= s ? in1:in2;
    endmodule
/*------------------------------------------------------------------------*/    




     
      