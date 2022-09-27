
/*  Design the D flipflop in exercise 7 with asynchronous clear(D_FF clears
    whenever clear goes high. It does not wait for next negative edge).Test
    the D_FF.
       
*/

    module as5_8(d,clr,clk,q,qbar);
      
     input d,clr,clk;
     output q,qbar;
     reg q,qbar,clock;
     
     initial 
      begin
        clock=1'b0;
        forever #10 clock=~clock;
      end
     
     
     always @(clk or clr)
      begin
        if(clr)
          begin
            q=1'b0;
            qbar=1'b1;
          end
        else @(negedge clk) 
          begin
            q=d;
            qbar=~d;
          end
      end
      assign clk=clock;
    endmodule
    