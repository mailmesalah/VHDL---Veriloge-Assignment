   
    /*The logic diagram for an RS latch with delay is shown below.*/
      
    //Program for RS Latch//
      module RSLatch(set,reset,q,qbar);
        input set,reset;
        output q,qbar;
        
        nor n1(q,reset,qbar);
        nor n2(qbar,set,q);
      endmodule
      
/*----------------------------------------*/
    //Test Bench for RS Latch//
      module as3_4_tb;
        reg a,b;
        wire c,d;

        initial
          begin   
          
          #0  a=1'b0;  b=1'b0;
          #1  $display("RS Latch a=%b,b=%b,q=%b,qbar=%b",a,b,c,d);         
          #1  a=1'b0;  b=1'b1;
          #1  $display("RS Latch a=%b,b=%b,q=%b,qbar=%b",a,b,c,d);          
          #1  a=1'b1;  b=1'b0;        
          #1  $display("RS Latch a=%b,b=%b,q=%b,qbar=%b",a,b,c,d);
          #1  a=1'b1;  b=1'b1;       
          #1  $display("RS Latch a=%b,b=%b,q=%b,qbar=%b",a,b,c,d);
          #10 $stop;
        
        end
        RSLatch r1(a,b,c,d);
      endmodule