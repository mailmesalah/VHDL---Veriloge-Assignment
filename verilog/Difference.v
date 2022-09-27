//This program shows how $dislpay,$strobe and $monitor works

module Strob_vs_Monitor;
  reg [3:0] sig;
  //we are monitoring 'sig' for finding the difference!
  
  initial begin
    sig=1;
  end 
  
  initial begin
    $strobe("$Strobe at time =%0d: sig='b%b",$time,sig);
    $display("$Strobe and monitor call finished at time =%0d",$time);
    
    #5 $monitor("$monitor at time =%0d: sig='b%b",$time,sig);
    
  end
endmodule 