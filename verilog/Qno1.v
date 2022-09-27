
  // (Q no:1) Design four input And Gate Using DataFlow modeling. //
 //  Design a test Bench and obtain the Binary outputs and waveforms //
//   -------------Coded by Jenson & Salahudheen--------------------//
module And4(a,b,c,d,o);
  input a,b,c,d;
  output o;
  assign o= a & b & c & d;
endmodule