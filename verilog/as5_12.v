
/*  Using a case statement,design an 8-function ALU
    that takes 4-bit inputs a & b and 3-bit inout 
    select,and gives a 5-bit output out.The ALU 
    implements the following functions based on a 
    3-bit input signal select.ignore any overflow
    or underflow bits.
*/

    module as5_12(a,b,sel,out);
     input[3:0] a,b;
     input [2:0] sel;
     output reg[4:0] out;
       
     always @(a,b,sel)
     
      case(sel)
       3'b000:out=a;
       3'b001:out=a + b;
       3'b010:out=a - b;
       3'b011:out=a / b;
       3'b100:out=a % b;
       3'b101:out=a << 1;
       3'b110:out=a >> 1;
       3'b111:out=(a > b);
       default: $display("Invalid select input");
    endcase
    endmodule
    
    