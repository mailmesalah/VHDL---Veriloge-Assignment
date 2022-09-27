

/*  Using the repeat loop,delay the statement a = a + 1
    by 20 positive edges of clock.
*/

    module as5_16(clk);
     integer a;
     input clk;
     initial 
       begin
         a= 0;
       end
     always @(clk)
     begin
       repeat(20) 
          @(posedge clk);
         a = a+1;
     end     
    endmodule
    
    