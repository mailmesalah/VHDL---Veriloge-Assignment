 //----- Test Bench  For Q no:12b-----//
//---------------------------------//
module karnaugh_pos_tb;
  reg a,b,c,d;
  wire o;
  initial
    $monitor("a=%b,b=%b,c=%b,d=%b,o=%b",a,b,c,d,o);
  initial
    begin 
      #0  a=1'b0;  b=1'b0;  c=1'b0;  d=1'b0;
          
      #1 a=1'b0;  b=1'b0;  c=1'b0;  d=1'b1;
          
      #1 a=1'b0;  b=1'b0;  c=1'b1;  d=1'b0;
          
      #1 a=1'b0;  b=1'b0;  c=1'b1;  d=1'b1;
          
      #1 a=1'b0;  b=1'b1;  c=1'b0;  d=1'b0;
          
      #1 a=1'b0;  b=1'b1;  c=1'b0;  d=1'b1;
          
      #1 a=1'b0;  b=1'b1;  c=1'b1;  d=1'b0;
          
      #1 a=1'b0;  b=1'b1;  c=1'b1;  d=1'b1;
          
      #1 a=1'b1;  b=1'b0;  c=1'b0;  d=1'b0;
          
      #1 a=1'b1;  b=1'b0;  c=1'b0;  d=1'b1;
          
      #1 a=1'b1;  b=1'b0;  c=1'b1;  d=1'b0;
          
      #1 a=1'b1;  b=1'b0;  c=1'b1;  d=1'b1;
          
      #1 a=1'b1;  b=1'b1;  c=1'b0;  d=1'b0;
          
      #1 a=1'b1;  b=1'b1;  c=1'b0;  d=1'b1;
          
      #1 a=1'b1;  b=1'b1;  c=1'b1;  d=1'b0;
          
      #1 a=1'b1;  b=1'b1;  c=1'b1;  d=1'b1;
      
      #1 $stop;
    end
    
    karnaugh_pos a1(a,b,c,d,o);
  endmodule