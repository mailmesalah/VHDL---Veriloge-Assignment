

/* Declare the following variables in Verilog:
    a)An 8-Bit vector net called a_in.
    b)a 32 bit storage register called address.Bit 31 must be the most 
      significant bit.Set the value of the register to a 32-Bit decimal
      number equal to 3.
    c)An integer called count.
    d)A Time variable called snap_shot.
    e)An array called delays.Array contains 20 elwments of the type 
      integer
    f)A memory MEM containing 256 words of 64 bits each.
    g)A parameter cache_size equal to 512*/
  
  module practice4;
    reg [7:0] a_in;
    reg [31:0]address;
    integer count;
    time snap_shot;
    integer delays[0:19];
    reg [63:0]MEM[0:255];
    parameter cache_size=512;
    integer cache;
    
  initial
    begin
      a_in=8'b1;
      address=32'd3;
      count=10;
      snap_shot=$time;
      delays[0]=1;
      MEM[0]=64'd1;
      cache=cache_size;
    end
  endmodule




