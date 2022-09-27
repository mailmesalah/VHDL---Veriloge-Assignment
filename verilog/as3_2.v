
/*  A two input xor gate can be built from my_and,my_or and my_not gates.
    Construct an xor module in verilog that realizes the logic function,
    z=xy'+x'y.Inputs are x and y amd z is output.Write a stimulus module
    that exercises all four combinations of x and y inputs.*/
      
    //Program for Xor gate//
      module my_xor(x,y,z);
        input x,y;
        output z;
        my_not n1(x,xbar);
        my_not n2(y,ybar);
        my_and a1(x,ybar,net1);
        my_and a2(xbar,y,net2);
        my_or  o1(net1,net2,z);
      endmodule
      
/*----------------------------------------*/
    //Test Bench for my_xor//
      module as3_2_tb;
        reg a,b;
        wire o;

        initial
          begin   
          
          #0  a=1'b0;  b=1'b0; 
          #1  $display("Xor gate a=%b,b=%b,o1=%b",a,b,o);         
          #1  a=1'b0;  b=1'b1;
          #1 $display("Xor gate a=%b,b=%b,o1=%b",a,b,o);          
          #1  a=1'b1;  b=1'b0;         
          #1 $display("Xor gate a=%b,b=%b,o1=%b",a,b,o);
          #1  a=1'b1;  b=1'b1;         
          #1 $display("Xor gate a=%b,b=%b,o1=%b",a,b,o);
          #10 $stop;
        
        end
        my_xor x1(a,b,o);
      endmodule
      