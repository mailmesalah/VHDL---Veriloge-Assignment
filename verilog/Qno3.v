
// (Q no:3) Design Two input Nand Gate Using Dataflow modeling. //
//  Design a test Bench and obtain the Binary outputs and waveforms. //
//   -------------Coded by Jenson & Salahudheen--------------------//
module Nand2(a,b,o);
  input a,b;
  output o;

    assign o=~(a & b);
endmodule