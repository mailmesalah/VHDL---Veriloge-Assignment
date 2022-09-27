 // (Q no:10) Implement The Logic Diagram shown below using Dataflow modeling. //
//-----Design a test Bench and obtain the Binary outputs and waveforms.------//
//   -------------Coded by Jenson & Salahudheen--------------------//
module LogicDiag10(x1,x2,x3,x4,z);
  input x1,x2,x3,x4;
  output z;
 
 assign z=((x1 & x2) | (x2 ^ x3) | x4);
    
endmodule