

/*  Design an 8-bit counter using a forever loop,named block,and 
    disabling of named block.The counter starts counting at count=5 
    and finishes at count=67.The count is incremented at positive 
    edge of the clock.The clock has a time period of 10.The counter
    counts through the loop only once and then is disabled.(Hint: use
    the disable statement.)
*/

    module as5_18();
      reg  clk;
      reg [7:0]count;
      initial begin
          count=8'd5;
          clk=1'b0;
          forever
          #10 clk=~clk;
      end
      initial
      begin:block1
          forever
            begin
              @(posedge clk)count=count+1;
              if(count==8'd67)disable block1;
            end
      end
    endmodule
    