  // (Q no:12a) Karnaugh Map is given below.Obtain SOP and POS Expression //
 //Implement Both Expression in Behavioural Modeling                     //
//  Design a test Bench and obtain the Binary outputs and waveforms.    //

module karnaugh_sop(x1,x2,x3,x4,sop);
  input x1,x2,x3,x4;
  output sop;
  reg sop;
 always @(x1,x2,x3,x4)
 begin
 if((~x1 && ~x2&&x3&&x4)|(~x1 &&x2&& ~x3 &&x4)|(~x1 &&x2&&x3&& x4)|(x1&& ~x2&& ~x3&& ~x4)|
    (x1 && ~x2 && ~x3 && x4)|(x1 && ~x2 && x3 && ~x4)|(x1&& ~x2 &&x3&&x4)|(x1&&x2&& ~x3&& ~x4)
    |(x1&&x2&& ~x3&&x4)|(x1&&x2&&x3&& ~x4)|(x1&&x2&&x3&&x4))
    
    sop=1'b1;
  else 
    sop=1'b0;
  end   
endmodule