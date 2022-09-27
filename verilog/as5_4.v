

/*  Repeat exercise 3 if non blocking procedure assignments
    were used
*/

    module as5_4(w,x,y,z);
      
     output w,x,y;
     output [2:0]z;
     reg a,b,c;
     reg [2:0]d;
     initial 
       begin
         a<=1'b0;
         b<=#10 1'b1;
         c<=#5 1'b0;
         d<=#20 {a,b,c};   
       end
       assign w=a;
       assign x=b;
       assign y=c;
       assign z=d;
    
    endmodule
    
    
