
/*  What is the final value of d in the following example
    (Hint: See intra-assignment delays.)
    
    initial
      begin
        b=1'b1;c=1'b0;
        #10 b=1'b0;
      end 
      initial
      begin
        d= #25(b|c);
      end    
*/

    module as5_6(x,y,z);
      
     output x,y,z;
     reg b,c,d;
      initial
      begin
        b=1'b1;c=1'b0;
        #10 b=1'b0;
      end 
      initial
      begin
        d= #25(b|c);
      end 
     assign x=b;
     assign y=c;
     assign z=d;
    
    endmodule
    