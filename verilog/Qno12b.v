  // (Q no:12b) Karnaugh Map is given below.Obtain SOP and POS Expression //
 //Implement Both Expression in Behavioural Modeling                     //
//  Design a test Bench and obtain the Binary outputs and waveforms.    //

module karnaugh_pos(x1,x2,x3,x4,pos);
  input x1,x2,x3,x4;
  output pos;
  reg pos;
 always @(x1,x2,x3,x4)
 begin
 if((~x1&& ~x2&& ~x3&& ~x4)|(~x1&& ~x2&& ~x3&&x4)|(~x1&& ~x2&& x3&& ~x4)|(~x1&& x2&& ~x3&& ~x4)
     |(~x1&& x2&& x3&& ~x4)|(x1&& x2&& ~x3&&~x4)|(x1&& x2&& x3&& ~x4))
    
    pos=1'b1;
  else 
    pos=1'b0;
  end   
endmodule                                                 