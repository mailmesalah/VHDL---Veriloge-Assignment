

/*  Design a 2 to 1 multiplexer using bufif0 and bufif1 gates as shown below.
    The delay specifications are given 
    
    Apply stimulus and test the output values.*/
      
    //Program for 2 to 1 mux//
      module mux2x1(in0,in1,s,out);
        input in0,in1,s;
        output out;
        
        wor x;
        
        bufif0 #(1:2:3,3:4:5,5:6:7) b1(x,in0,s);
        bufif1 #(1:2:3,3:4:5,5:6:7) b2(x,in1,s);
        assign out=x;
      endmodule
      
/*----------------------------------------*/
    //Test Bench for 2 to 1 mux//
      module as3_5_tb;
        reg a,b,s;
        wire c;

        initial
         begin   
          
          #0  a=1'b0;  b=1'b0; s=1'b0;
          #10  $display("Mux2x1 a=%b,b=%b,s=%b,c=%b",a,b,s,c);         
          #10  a=1'b0;  b=1'b0; s=1'b1;
          #10  $display("Mux2x1 a=%b,b=%b,s=%b,c=%b",a,b,s,c);          
          #10  a=1'b0;  b=1'b1; s=1'b0;
          #10  $display("Mux2x1 a=%b,b=%b,s=%b,c=%b",a,b,s,c);
          #10  a=1'b0;  b=1'b1; s=1'b1;
          #10  $display("Mux2x1 a=%b,b=%b,s=%b,c=%b",a,b,s,c);
          #10  a=1'b1;  b=1'b0; s=1'b0;
          #10  $display("Mux2x1 a=%b,b=%b,s=%b,c=%b",a,b,s,c);
          #10  a=1'b1;  b=1'b0; s=1'b1;
          #10  $display("Mux2x1 a=%b,b=%b,s=%b,c=%b",a,b,s,c);
          #10  a=1'b1;  b=1'b1; s=1'b0;
          #10  $display("Mux2x1 a=%b,b=%b,s=%b,c=%b",a,b,s,c);
          #10  a=1'b1;  b=1'b1; s=1'b1;
          #10  $display("Mux2x1 a=%b,b=%b,s=%b,c=%b",a,b,s,c);
          #10 $stop;
        
        end
        mux2x1 m1(a,b,s,c);
      endmodule