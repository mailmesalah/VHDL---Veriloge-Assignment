
module q3_2(clk,cl,q_ff,count_enable);
inout [1:4]q_ff;wire [1:4]qbar_ff;
wire [1:4]j_c;wire [1:4]k_c;
input count_enable,clk,cl;

assign j_c[1]=(count_enable&q_ff[2]&q_ff[3]&q_ff[4]);
assign j_c[2]=(count_enable&q_ff[3]&q_ff[4]);
assign j_c[3]=(count_enable&q_ff[4]);
assign j_c[4]=1'b1;
assign k_c[4]=1'b1;

as4_3jk jk1(j_c[1],j_c[1],clk,cl,q_ff[1],qbar_ff[1]);
as4_3jk jk2(j_c[2],j_c[2],clk,cl,q_ff[2],qbar_ff[2]);
as4_3jk jk3(j_c[3],j_c[3],clk,cl,q_ff[3],qbar_ff[3]);
as4_3jk jk4(j_c[4],k_c[4],clk,cl,q_ff[4],qbar_ff[4]);

endmodule