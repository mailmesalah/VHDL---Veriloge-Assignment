
/* Are the following legal strings?If not,write the correct strings
    a)"This is a string displaying the % sign"
    b)"Out = in1 + in2"
    c)"Please ring a bell\007"
    d)"This is a backslash\character\n" */ 
  
  module practice2(a,b,c,d);
    output  a,b,c,d;
    reg [8*40:0] a;
    reg [8*15:0] b;
    reg [8*24:0] c;
    reg [8*36:0] d;
  initial 
    begin
      a="This is a string displaying the % sign";
      b="Out = in1 + in2";
      c="Please ring a bell \\ 007";
      d="This is a backslash \\ character \\n";
  
      $display("%S\n",a);
      $display("%S\n",b);
      $display("%S\n",c);
      $display("%S\n",d);
    end
  endmodule




