

/*  Design a clock with time period = 40 and duty cycle of 25% by
    using the always and initial statements.The value of clock at 
    time = 0 should be  initialized to 0.
*/

    module as5_2(out);
     output out;
     reg clock;

     initial 
       begin
         clock=1'b0;   
       end
    
     always
       begin
         clock=#30~clock;
         clock=#10~clock;
       end
     assign out= clock;
    endmodule
    
    
