 
 /* A full subtractor has three 1-bit inputs x,y, and z
    (previous borrow) and two 1-bit outputs D(difference)
    and B(borrow).The logic equations for D and B are as
    follows:
    
      D = x'.y'.z + x'.y.z' + x.y'.z' + x.y.z
      
      B = x'.y + x'.z + y.z
      
    Write the full Verilog description for the full subtractor
    module,including I/O ports(Remember that + in logic equations
    corresponds to a logical or operator(II) in dataflow).
 */