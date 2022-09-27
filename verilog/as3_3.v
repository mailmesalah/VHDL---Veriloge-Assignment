
/*  The 1 bit full adder described in the chapter can be expressed in a
    sum of products form 
    sum=a.b.c_in+a'.b.c_in'+a'.b'.c_in+a.b'.c_in'.
    c_out=a.b+b.c_in+a.c_in
    
    Assuming a,b,c_in are the inputs and the sum and the c_out are outputs,
    design a logic circuit to implement the one bit fulladder,using only
    and,not & or gate.Write the verilog description for the circuit.
    You may use upto four inputs verilog premitive and & or gates.
    Write the stimulus for the full adder and check the functionality
    for all input combinations. */
      
    //Program for one bit Full adder gate//
      module fulladder(a,b,c_in,sum,c_out);
        input a,b,c_in;
        output sum,c_out;
        
        not n1(abar,a);
        not n2(bbar,b);
        not n3(cbar,c_in);
        and a1(net1,a,b,c_in);
        and a2(net2,abar,b,cbar);
        and a3(net3,abar,bbar,c_in);
        and a4(net4,a,bbar,cbar);
        or  o1(sum,net1,net2,net3,net4);
        
        and a5(net5,a,b);
        and a6(net6,b,c_in);
        and a7(net7,a,c_in);
        or  o2(c_out,net5,net6,net7);
      endmodule
      
/*----------------------------------------*/
    //Test Bench for one bit full adder//
      module as3_3_tb;
        reg a,b,c;
        wire sum,carry;

        initial
          begin   
          
          #0  a=1'b0;  b=1'b0; c=1'b0;
          #1  $display("Full Adder a=%b,b=%b,c=%b,sum=%b,carry=%b",a,b,c,sum,carry);         
          #1  a=1'b0;  b=1'b0; c=1'b1;
          #1 $display("Full Adder a=%b,b=%b,c=%b,sum=%b,carry=%b",a,b,c,sum,carry);          
          #1  a=1'b0;  b=1'b1; c=1'b0;        
          #1 $display("Full Adder a=%b,b=%b,c=%b,sum=%b,carry=%b",a,b,c,sum,carry);
          #1  a=1'b0;  b=1'b1;  c=1'b1;       
          #1 $display("Full Adder a=%b,b=%b,c=%b,,sum=%b,carry=%b",a,b,c,sum,carry);
          #1  a=1'b1;  b=1'b0;  c=1'b0;       
          #1 $display("Full Adder a=%b,b=%b,c=%b,,sum=%b,carry=%b",a,b,c,sum,carry);
          #1  a=1'b1;  b=1'b0;  c=1'b1;       
          #1 $display("Full Adder a=%b,b=%b,c=%b,,sum=%b,carry=%b",a,b,c,sum,carry);
          #1  a=1'b1;  b=1'b1;  c=1'b0;       
          #1 $display("Full Adder a=%b,b=%b,c=%b,,sum=%b,carry=%b",a,b,c,sum,carry);
          #1  a=1'b1;  b=1'b1;  c=1'b1;       
          #1 $display("Full Adder a=%b,b=%b,c=%b,,sum=%b,carry=%b",a,b,c,sum,carry);
          #10 $stop;
        
        end
        fulladder f1(a,b,c,sum,carry);
      endmodule
      