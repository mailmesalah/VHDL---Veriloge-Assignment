
/*  Using a while loop,design a clock generator.Initial value
    of clock is 0.Time period for the clock is 10.
*/

    module as5_13(out);
    reg clock;
    output out;
       
    initial 
      begin
        clock=1'b0;
        while(1)
          #5 clock=~clock;
      end
    assign out=clock;
    endmodule
    
    