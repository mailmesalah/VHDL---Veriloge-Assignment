
// (Q no:5) Design Two input Nor Gate Using Dataflow modeling. //
//  Design a test Bench and obtain the Binary outputs and waveforms. //
//   -------------Coded by Jenson & Salahudheen--------------------//
module Nor2(a,b,o);
  input a,b;
  output o;

    assign o=~(a | b);
endmodule