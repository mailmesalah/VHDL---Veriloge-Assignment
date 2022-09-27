
/*  Design 4 bit Carry look ahead adder and create its
    dataflow model in Verilog HDL
*/

    module as4_4(a,b,sum,carry,cin);
     input[3:0]a,b;
     wire[3:0]g,p;
     input cin;
     output[3:0] sum;
     inout[3:0]carry;
     
     assign g[0]=a[0] & b[0];
     assign g[1]=a[1] & b[1];
     assign g[2]=a[2] & b[2];
     assign g[3]=a[3] & b[3];
     assign p[0]=a[0] ^ b[0];
     assign p[1]=a[1] ^ b[1];
     assign p[2]=a[2] ^ b[2];
     assign p[3]=a[3] ^ b[3];
     assign carry[0]=g[0] | (p[0] & cin);
     assign carry[1]=g[1] | (p[1] & carry[0]);
     assign carry[2]=g[2] | (p[2] & carry[1]);
     assign carry[3]=g[3] | (p[3] & carry[2]);
     assign sum[0]=a[0] ^ b[0] ^ cin;
     assign sum[1]=a[1] ^ b[1] ^ carry[0];
     assign sum[2]=a[2] ^ b[2] ^ carry[1];
     assign sum[3]=a[3] ^ b[3] ^ carry[2];

   endmodule
     
     
     
     