  // (Q no:13) Minimize the following equation,then implement the result using structural //
 //  Design a test Bench and obtain the Binary outputs and waveforms.    //

module Eq1(x1,x2,x3,x4,z);
  input x1,x2,x3,x4;
  output z;
  and a1(net1,x2,x3);
  or o1(z,net1,~x4);
endmodule