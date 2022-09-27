

/* Illustrate with suitable examples the difference between the following
   constructs/usages [Binary outputs with Simulation time expected whereever applicable]
   
    a)$display,$monitor,$strobe
    b)`include and module instantiation
    c)`define and parameter
    d)conditional compilation and conditional execution
    e)$stop and $finish 
*/
      

module practice6;
  //a)Implementing $display,$monitor,$strobe to find the difference.
  reg [3:0] sig;
  `define const 1000
  parameter nochange=500;
  initial begin
    sig=1;
  end 
  
  initial begin
    $strobe("$Strobe at time =%0d: sig='b%b",$time,sig);
    $display("$Strobe and monitor call finished at time =%0d",$time);
    
    #5 $monitor("$monitor at time =%0d: sig='b%b",$time,sig);
    
  end
  //c)Implementing `define and parameter
  initial begin
    $display ("The value of the const is %d",`const);
    $display ("The value of the nochange is %d",nochange);
  end
  
  //e)Implementing $stop and $finish
  initial begin
    #50 $display ("Simulation suspending!");
    #100  $stop;//This will suspend the simulation at time = 100
    $display ("Simulation terminating...!");
    #900 $finish;//This will terminate the simulation at time = 1000
  end
  
endmodule 