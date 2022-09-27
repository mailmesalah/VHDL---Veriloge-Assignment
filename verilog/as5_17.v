
/*  Below is a block with nested sequential and parallel block.
    When does the block finishes and what is the order of execution 
    of events?At what simulation time does each statement finish
    execution?
      
       
*/

    module as5_17(a,b,p,m);
      
     reg x,y;
     output reg a,b,p,m;
     
     initial 
      begin
        x=1'b0;
        #5 y=1'b1;
      fork
          #20 a=x;
          #15 b=y;
      join
     
      #40 x=1'b1;
      fork
          #10 p=x;
          begin
            #10 a=y;
            #30 b=x;
          end
          #5 m=y;
      join
      end
    endmodule
    