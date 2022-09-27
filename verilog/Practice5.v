

/* What would be the output/effect of the following statements?
    a)latch = 4'd12;
      $display("The current value of latch = %b\n",latch);
    b)in_reg = 3'd2;
      $monitor($time,"In register value = %b\n",in_reg[2:0]);
    c)`define MEM_SIZE 1024
      $display("The maximum memory size is %h",`MEM_SIZE); 
*/
      
  module practice5;
    `define MEM_SIZE 1024
    reg [3:0]latch; 
    reg [2:0]in_reg; 
    
    initial
    begin
      
      latch = 4'd12;
      in_reg = 3'd2;
      $display("The current value of latch = %b \n",latch);
      $monitor ($time," In register value = %b\n",in_reg[2:0]);
      $display ("The maximum memory size is %h",`MEM_SIZE);//hex value of 1024 is 400
    end
  endmodule