 // (Q no:7) Design Two input Ex-Nor Gate Using Behavioural modeling. //
//  Design a test Bench and obtain the Binary outputs and waveforms. //
//   -------------Coded by Jenson & Salahudheen--------------------//
module ExNor3(a,b,c,o);
  input a,b,c;
  output o;
  reg o;
  always @(a,b,c)
  begin
    
    if((a && b && ~c)|(a && ~b && c)|(~a && b && c))
      o=1'b1;
    else
      o=1'b0;
  end       
endmodule