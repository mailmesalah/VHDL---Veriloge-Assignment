//-----------------------
module ff(output reg q,output reg q_bar,input clock,input clear,input d);//q,q_bar,clock,clear,d);
 //input d,clock,clear;
// output q,q_bar;
//  reg q,q_bar,d,clock,clear;
  always @(posedge clock)
  begin
  if (clear==1)
begin
  q=0;
  q_bar=1;
    end
  
 else 
begin
  q=d;
  q_bar=~d;
  end
end
endmodule
//-----------------------------
module control(ir_load,pc_load,inmux,a_load,jnz_mux,halt,an_0,ir[7:0],clock,clear);
input an_0,clock,clear;
input [7:0]ir;

output ir_load,pc_load,inmux,a_load,jnz_mux,halt;
wire q2,q1,q0,q2_bar,q1_bar,q0_bar,d2,d1,d0,ir_load,pc_load,inmux,a_load,jnz_mux,halt;
//reg flag;

 assign  d2=((q2&q1&q0)|(q2_bar & q1 & q0_bar & ir[7]));
 assign  d1=((q2&q1&q0)|(q2_bar & q1 & q0_bar &((ir[6]&ir[5])|(ir[7]&ir[6])))|(q2_bar&q1_bar&q0));
      assign d0=(q2&q1&q0)|(q2_bar & q1 & q0_bar &((ir[6]&ir[5])|(ir[7]&ir[5]))|(q2_bar&q1_bar&q0_bar));
  
   
  assign  ir_load=q2_bar&q1_bar&q0;
 assign   pc_load=((q2_bar&q1_bar&q0)|((q2&q1&q0_bar)&an_0));
 assign   inmux=(q2_bar&q1&q0);
 assign    a_load=((q2_bar&q1&q0)|(q2&q1_bar&q0));
 assign   jnz_mux=(q2&q1&q0_bar);
 assign   halt=(q2&q1&q0);


//if(flag==1)
//begin

ff ff1 (q2,q2_bar,clock,clear,d2);
ff ff2 (q1,q1_bar,clock,clear,d1);
ff ff3 (q0,q0_bar,clock,clear,d0);

endmodule




