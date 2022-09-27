   // (Q no:15) Obtain the equation for the logic circuit that generates an output    //
  //  when 4-bit unsigned binary number z=x1x2x3x4 is graeter than 5,but less than 10//
 //   Equation should be in a minimum sop form.Implement using behavioural modeling // 
//  Design a test Bench and obtain the Binary outputs and waveforms.               //

module Eq3(x1,x2,x3,x4,z);
  input x1,x2,x3,x4;
  output z;
  reg z;
  always @ (x1,x2,x3,x4)
  begin
    if((~x1 &x2&x3& ~x4)||(~x1&x2&x3&x4)||(x1& ~x2& ~x3& ~x4)||(x1& ~x2& ~x3&x4))
      z=1'b1;
    else
      z=1'b0;
    end
endmodule