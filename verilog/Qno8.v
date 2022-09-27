 // (Q no:8) Implement The Logic Diagram shown below using dataflow modeling. //
//-----Design a test Bench and obtain the Binary outputs and waveforms.------//
//   -------------Coded by Jenson & Salahudheen--------------------//
module LogicDiag(x1,x2,x3,x4,z);
  input x1,x2,x3,x4;
  output z;
  wire a1,a2,b1,b2;
  
  assign a1 = x1 & x2;
  assign a2 = x3 & x4;
  assign b2 = x2 & x4;
  assign b1 = a1 | a2;
  assign z  = b1 & b2; 
  
endmodule