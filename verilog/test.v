module anh(a,b,o,s);
  input [3:0] a,b;
  //input x;
  output[3:0] o,s;
 // reg o,s;
  assign o= (a ^ b); 
  assign s= a | b;
endmodule