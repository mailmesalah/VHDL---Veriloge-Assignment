
// (Q no:4) Design Two input Nand Gate Using Behavioural modeling. //
//  Design a test Bench and obtain the Binary outputs and waveforms. //
//   -------------Coded by Jenson & Salahudheen--------------------//

module Nand2_b(a,b,o);
  input a,b;
  output o;
reg o;
always @ (a,b)
 if(a && b)
  o=1'b0;
else
  o=1'b1;    
endmodule