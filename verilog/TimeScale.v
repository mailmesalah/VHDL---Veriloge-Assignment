//implementing timescale

`timescale 100 ns/1 ns
module timescale100;
  reg toggle;
  
  initial
    toggle=1'b0;
  always #5 //500 ns
    begin
      toggle=~toggle;
      $display("time=%0d, toggle=%b",$time,toggle);
    end
endmodule