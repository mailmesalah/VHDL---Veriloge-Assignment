 
 /* A full subtractor has three 1-bit inputs x,y, and z
    (previous borrow) and two 1-bit outputs D(difference)
    and B(borrow).The logic equations for D and B are as
    follows:
    
      D = x'.y'.z + x'.y.z' + x.y'.z' + x.y.z
      
      B = x'.y + x'.z + y.z
      
    Write the full Verilog description for the full subtractor
    module,including I/O ports(Remember that + in logic equations
    corresponds to a logical or operator(||) in dataflow).Instantiate
    the subtractor inside a stimulus block and test all eight possible 
    combinations of x,y, and z given in the following truth table
 */
 
 
    module as4_1(x,y,z,d,b);
      input x,y,z;
      output d,b;
      
      assign d=(~x && ~y &&z)||(~x && y && ~z)||(x && ~y && ~z)||(x && y && z);
      assign b=(~x && y)||(~x && z)||(y && z);
    endmodule
    
    
/*  Test bench for full subtractor  */

    module as4_1_tb;
        reg a,b,c;
        wire dif,bor;
        initial
        $monitor("a=%b,b=%b,c=%b,dif=%b,bor=%b",a,b,c,dif,bor);
        initial
        begin 
        #0 a=1'b0;  b=1'b0; c=1'b0;  
        #1 a=1'b0;  b=1'b0; c=1'b1;
        #1 a=1'b0;  b=1'b1; c=1'b0;
        #1 a=1'b0;  b=1'b1; c=1'b1;
        #1 a=1'b1;  b=1'b0; c=1'b0;
        #1 a=1'b1;  b=1'b0; c=1'b1;
        #1 a=1'b1;  b=1'b1; c=1'b0;
        #1 a=1'b1;  b=1'b1; c=1'b1;
        #1 $stop;
    end
    
    as4_1 a1(a,b,c,dif,bor);
  endmodule