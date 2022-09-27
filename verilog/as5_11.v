  

/*  Design the traffic signal controller with the given specifications
    by using if and else statements...       
*/

    module as5_11(highGYR,counGYR,x,delay,clk);
      output reg [2:0]highGYR,counGYR; 
      input x,clk,delay;
      `define delay 10
      initial
        begin
          highGYR=3'b100;counGYR=3'b001;//state(s0)
        end
      always @ (clk)
        begin
          if (clk==1'b1)begin
            if(x==1'b1 && highGYR==3'b100 && counGYR==3'b001)//if state(s0)
              begin
                highGYR=3'b010;counGYR=3'b001;//state(S1)
              end 
            else if(x==1'b1 && highGYR==3'b010 && counGYR==3'b001)//if state(s1)
              begin                                 
                #`delay highGYR=3'b001;counGYR=3'b001;//state(S2)
              end
            else if(x==1'b1 && highGYR==3'b001 && counGYR==3'b001)//if state(s2)     
              begin
                #`delay highGYR=3'b001;counGYR=3'b100;//state(S3)
              end
            else if(x==1'b0 && highGYR==3'b001 && counGYR==3'b100)//if state(s3)
              begin
                highGYR=3'b001;counGYR=3'b010;//state(S4)
              end
            else if(x==1'b0 && highGYR==3'b001 && counGYR==3'b010)//if state(s4)
              begin
                #`delay highGYR=3'b100;counGYR=3'b001;//state(S0)
              end
          end
        end  
    endmodule
    
