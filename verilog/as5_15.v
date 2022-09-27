

/*  Using a forever statement, design a clock with time period=
    10 and duty cycle = 40%.Initial value of clock is 0.
*/

    module as5_15(clock);
     
     output clock;
     reg clk;
     initial 
       begin
         clk=1'b0;
         forever 
         begin 
           #6 clk=~clk;
           #4 clk=~clk;
         end
       end     
     assign clock=clk;
    endmodule
    
    