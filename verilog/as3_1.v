
/*  Create your own 2-input Verilog gates called my-or,my-and and my-not
    from 2-input nand gates.check the functionality of these gates with a stimulus 
    module.*/
      
    //Program for And gate//
      module my_and(a,b,out);
        input a,b;
        output out;
        nand a1(net1,a,b);
        nand a2(out,net1,net1);
      endmodule
      
    //Program for Not gate//
      module my_not(a,out);
        input a;
        output out;
        nand n1(out,a,a);
      endmodule
      
    //Program for Or gate//
      module my_or(a,b,out);
        input a,b;
        output out;
        nand o1(net1,a,a);
        nand o2(net2,b,b);
        nand o3(out,net1,net2);
      endmodule
      
/*----------------------------------------*/
    //Test Bench for my_and//
      module as3_1_tb;
        reg a,b,c,d,e;
        wire o1,o2,o3;

        initial
          begin   
          
      #0  a=1'b0;  b=1'b0; 
      #1  $display("And gate a=%b,b=%b,o1=%b",a,b,o1);         
      #1  a=1'b0;  b=1'b1;
      #1 $display("And gate a=%b,b=%b,o1=%b",a,b,o1);          
      #1  a=1'b1;  b=1'b0;         
      #1 $display("And gate a=%b,b=%b,o1=%b",a,b,o1);
      #1  a=1'b1;  b=1'b1;         
      #1 $display("And gate a=%b,b=%b,o1=%b",a,b,o1);
      #1  c=1'b0;  d=1'b0;
      #1 $display("Or gate c=%b,d=%b,o2=%b",c,d,o2);         
      #1  c=1'b0;  d=1'b1;          
      #1 $display("Or gate c=%b,d=%b,o2=%b",c,d,o2);
      #1  c=1'b1;  d=1'b0;
      #1 $display("Or gate c=%b,d=%b,o2=%b",c,d,o2);
      #1  c=1'b1;  d=1'b1;          
      #1 $display("Or gate c=%b,d=%b,o2=%b",c,d,o2);
      #1  e=1'b0;          
      #1 $display("Not gate e=%b,o3=%b",e,o3);
      #1  e=1'b1;
      #1 $display("Not gate e=%b,o3=%b",e,o3);
      #10 $stop;
        
        end
        my_and a1(a,b,o1);
        my_or  a2(c,d,o2);
        my_not a3(e,o3);
      endmodule
      