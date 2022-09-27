

/*  Whatis the order of execution of statements in the following Verilog code?
    Is there any ambiguity in the order of execution? What are the final values
    of a,b,c,d?
    
    initial
    begin
      a=1'b0;
      #0 c=b;
    end
    initial
    begin
      b=1'b0;
      #0 d=a;
    end      
*/

    module as5_5(w,x,y,z);
      
     output w,x,y,z;
     reg a,b,c,d;
     initial
      begin
        a=1'b0;
        #0 c=b;
      end
     initial
      begin
        b=1'b1;
        #0 d=a;
      end
     assign w=a;
     assign x=b;
     assign y=c;
     assign z=d;
    
    endmodule
    
    
