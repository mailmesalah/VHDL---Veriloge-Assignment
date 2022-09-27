 
 //----- Test Bench  For Q no:3-----//
//---------------------------------//

module Nand2_tb;
  reg a,b;
  wire o;
  initial
    $monitor("a=%b,b=%b,o=%b",a,b,o);
  initial
    begin 
      #0  a=1'b0;  b=1'b0;  
          
      #10 a=1'b0;  b=1'b1; 
          
      #1 a=1'b1;  b=1'b0;  
          
      #1 a=1'b1;  b=1'b1;  
          
    
      #1 $stop;
    end
    
    Nand2 a1(a,b,o);
  endmodule