
/* Practice Writing The Following Numbers
    a)Decimal number 123 as a sixed 8-Bit number in Binary.
    b)A 16-Bit hexadecimal unknown number with all x's
    c)A 4-Bit negative 2 in decimal.Write the 2's compliment
      for this number
    d)An unsized hex number 1234.
*/
  
  module practice1( a,b,c,d);
    output  a,b,c,d;
    wire [7:0] a;
    wire [15:0] b;
    wire [3:0] c;
    wire [4:0] d;
  
    assign a=8'b0111_1011;
    assign b=16'hXXXX_XXXX_XXXX_XXXX;
    assign c=-4'd2;
    assign d='h1234;
  endmodule




