

/*  Design a negative edge-triggered D-flipflop(D_FF) with synchronous clear,
    active high(D_FF clears only at a negative edge of clock when clear is 
    high). Use behavioral statements only. (Hint: Output q of D_FF must be 
    declared as reg). Design a clock with a period of 10 units and test the
    D_FF.
*/

    module as5_7(d,clr,clk,q,qbar);
      
     input d,clr,clk;
     output q,qbar;
     reg q,qbar,clock;
     
     initial 
      begin
        clock=1'b0;
        forever #10 clock=~clock;
      end
     
     
     always @(clk)
      begin
        if(clr) @(negedge clk)
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
    
    
