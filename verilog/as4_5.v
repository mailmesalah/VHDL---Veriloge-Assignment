
/*  Design a 4 bit ALU using Dataflow modeling  */

    
    module as4_5(a,b,out,s,c_or_b);
      input[3:0]a,b;
      input[1:0]s;
      output[3:0]out;
      output c_or_b;
      
      assign out= s[1]?s[0]?(a&b):(a|b):s[0]?(a^b):(a^b);     
      assign c_or_b= ~s & (a & b) |((~s[1] & s[0]) & (~a & b)) ;
    endmodule
      