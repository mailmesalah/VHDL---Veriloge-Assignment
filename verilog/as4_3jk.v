
/*  A synchronous counter can be designed by using master-slave 
    JK flipflops.Design a 4 bit synchronous counter.Circuit 
    diagrams for the synchronos counter and JK flipflop are given
    below.The clear signal is active low.Data gets latched on the 
    positive edge clock,and the output of the flipflop appears on 
    the negative edge of clock.Counting is disabled when count_en
    able signal is low.Write the datafloe model for synchronous 
    counter.Write a stimulus file that excercises clear and count
    _enable.Display the output count Q[3:0].
*/

    module as4_3jk(j,k,clear,clock,q,qbar);
      input j,k,clear,clock;
      output q,qbar;
      wire a,b,y,ybar,c,d,cbar;
      assign cbar=~clock;
      assign a=~(qbar & j & clock & clear);
      assign b=~(q & k & clock);
      assign ybar=~(y & clear & b);
      assign y=~(a & ybar);
      assign c=~(y & cbar);
      assign d=~(cbar & ybar);
      assign q=~(c & qbar);
      assign qbar=~(q & clear & d);
 
 
    endmodule
    
    module as4_3(count_enable,clear,clock,Q);
     input count_enable,clear,clock;
     inout [3:0] Q;
 
     wire [3:0] Qb;
  
     wire[3:0]j;wire[3:0]k;
     initial begin

    end
  
     assign j[3]=(count_enable & Q[1]&Q[2]&Q[0]);
     assign j[2]=(count_enable & Q[1]&Q[0]);
     assign j[1]=(count_enable & Q[0]);
     assign j[0]=1'b1;
     assign k[0]=1'b1;
 
 
     as4_3jk jk0(j[0],j[0],clear,clock,Q[0],Qb[0]);
     as4_3jk jk1(j[1],j[1],clear,clock,Q[1],Qb[1]);
     as4_3jk jk3(j[2],j[2],clear,clock,Q[2],Qb[2]);
     as4_3jk jk4(j[3],j[3],clear,clock,Q[3],Qb[3]);
  endmodule