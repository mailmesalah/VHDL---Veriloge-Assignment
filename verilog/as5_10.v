  

/*  Design 4-to-1 multiplexer[module mux4_to_1(out,i0,i1,i2,i3,s1,s0)]
    by using if and else statements.       
*/

    module as5_10(out,i0,i1,i2,i3,s1,s0);
      
     input i0,i1,i2,i3,s1,s0;
     output out;
     reg out;
     
 
     always @(s1,s0)
      if (~s1 & ~s0)
         out=i0;
      else if(~s1 & s0)
         out=i1;
      else if(s1 & ~s0)
         out=i2;
      else if(s1 & s0)
         out=i3;
      else
         out=1'bx;
      
         
    endmodule
    
