 // (Q no:9) Implement The Logic Diagram shown in the previous using structural modeling. //
//-----Design a test Bench and obtain the Binary outputs and waveforms.------//
//   -------------Coded by Jenson & Salahudheen--------------------//
module LogicDiag_2(x1,x2,x3,x4,z);
  input x1,x2,x3,x4;
  output z;
 
 and a1(net1,x1,x2);
 and a2(net2,x3,x4);
 and a3(net3,x2,x4);
 and a4(z,net3,net4);
 or  o1(net4,net1,net2);
  
  
endmodule