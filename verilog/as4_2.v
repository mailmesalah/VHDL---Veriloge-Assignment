 
 /* A magnitude comparator checks if one number is greater than
    or equal to or less than another number.A four bit magnitude
    comparator takes two four bit numbers, A and B as inputs.
    We write the bits in A and B as follows.The left most bit is
    the MSB.
    
    A=A[3]A[2]A[1]A[0]
    
    B=B[3]B[2]B[1]B[0]
    
    The magnitude can be compared by comparing the numbers bit by bit
    starting with MSB.If any bit mismatches,the number with bit 0 is
    the lower number.To realize this functionality in logic equations,
    let us define an intermediate variable.Notice that the function 
    below is an exnor function.
    
    x[i]=A[i].B[i]+A[i]'.B[i]'
    
    The three outputs of the magnitude comparator are A_gt_B,A_lt_B,
    A_eq_B.They are defined with the following logic equations:
    
    A_gt_B = A[3].B[3]'+x[3].A[2].B[2]'+x[3].x[2].A[1].B[1]'+x[3].x[2].x[1].A[0].B[0]'
    
    A_lt_B = A[3]'.B[3]+x[3].A[2]'.B[2]+x[3].x[2].A[1]'.B[1]+x[3].x[2].x[1].A[0]'.B[0]
    
    A_eq_B = x[3].x[2].x[1].x[0]
    
    Write the Verilog description of the module magnitude_comparator.
    Instantiate the magnitude comparator inside the stimulus module
    and try out a few combinations of A and B.
 */
 
 
    module as4_2(A,B,A_gt_B,A_lt_B,A_eq_B);
      input [3:0] A,B;
      output A_gt_B,A_lt_B,A_eq_B;
      wire [3:0] x;
    assign x[0]=(A[0]&B[0])|(~A[0]&~B[0]);
    assign x[1]=(A[1]&B[1])|(~A[1]&~B[1]);
    assign x[2]=(A[2]&B[2])|(~A[2]&~B[2]);
    assign x[3]=(A[3]&B[3])|(~A[3]&~B[3]);
    
    assign A_gt_B = (A[3]&~B[3])|(x[3]&A[2]&~B[2])|(x[3]&x[2]&A[1]&~B[1])|(x[3]&x[2]&x[1]&A[0]&~B[0]);
    assign A_lt_B = (~A[3]&B[3])|(x[3]&~A[2]&B[2])|(x[3]&x[2]&~A[1]&B[1])|(x[3]&x[2]&x[1]&~A[0]&B[0]);
    assign A_eq_B = x[3]&x[2]&x[1]&x[0];
          
    endmodule
    
    
    
/*  Test bench for Comparator */

      
    module as4_2_tb;
        reg [3:0]a,b;
        wire ls,gr,eq;
        initial
        $monitor("a=%b,b=%b,ls=%b,gr=%b,eq=%b",a,b,ls,gr,eq);
        initial
        begin 
        #0 a=4'b0000;  b=4'b0000;   
        #1 a=4'b0011;  b=4'b1000; 
        #1 a=4'b1111;  b=4'b1100;
       
        #1 $stop;
    end 
    as4_2 a1(a,b,gr,ls,eq);
  endmodule
  
  
  