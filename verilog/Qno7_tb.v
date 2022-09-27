 //----- Test Bench  For Q no:7-----//
//---------------------------------//

module ExNor3_tb;
  reg a,b,c;
  wire o;
  initial
    $monitor("a=%b,b=%b,c=%b,o=%b",a,b,c,o);
  initial
    begin 
      #0 a=1'b0;  b=1'b0;   c=1'b0;  
          
      #1 a=1'b0;  b=1'b0;  c=1'b1;
          
      #1 a=1'b0;  b=1'b1;   c=1'b0;
          
      #1 a=1'b0;  b=1'b1;   c=1'b1;
      
      #1 a=1'b1;  b=1'b0;   c=1'b0;  
           
      #1 a=1'b1;  b=1'b0;   c=1'b1; 
      
      #1 a=1'b1;  b=1'b1;   c=1'b0;
        
      #1 a=1'b1;  b=1'b1;   c=1'b1; 
      
      #1 $stop;
    end
    
    ExNor3 a1(a,b,c,o);
  endmodule