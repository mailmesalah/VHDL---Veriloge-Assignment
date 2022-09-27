 
 // (Q no:2) Design four input And Gate Using Behavioral modeling   //
// Design a test Bench and obtain the Binary outputs and waveforms //
//   -------------Coded by Jenson & Salahudheen--------------------//
module And4_b(a,b,c,d,o);
  input a,b,c,d;
  output o;
  
  reg o;
  always @(a or b or c or d)
  begin
    if(a && b && c && d)
      o=1'b1;
    else
      o=1'b0;
  end

endmodule