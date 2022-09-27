
/*  Using the wait statement,design a level-sensitive latch
    that takes clock and d as inputs and q as output.q = d 
    whenever clock=1.
       
*/

    module as5_9(d,clk,q);
      
     input d,clk;
     output q;
     reg q;
     
 
     always @ (clk or d)
      wait(clk)
      
          q=d;
    endmodule
    