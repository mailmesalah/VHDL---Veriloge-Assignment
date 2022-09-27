 // (Q no:11) Implement The Logic Diagram shown below using Dataflow modeling. //
//-----Design a test Bench and obtain the Binary outputs and waveforms.------//
//   -------------Coded by Jenson & Salahudheen--------------------//
module LogicDiag11(x1,x2,x3,z1);
  input x1,x2,x3;
  output z1;
 
 assign z1=((x1 | x2) & (~x2 | x3));
    
endmodule