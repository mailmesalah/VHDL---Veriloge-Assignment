
    
    /*  Given below is an initial block with blocking procedural assignments.
        At what simulation time is each statement executed? What are the 
        intermediate and  final values of a,b,c,d? 
    */
    
        module as5_3(w,x,y,z);
          
         output w,x,y,z;
         reg a,b,c,d;
         initial 
           begin
             a=1'b0;
             b=#10 1'b1;
             c=#5 1'b0;
             d=#20 {a,b,c};   
           end
           assign w=a;
           assign x=b;
           assign y=c;
           assign z=d;
        
        endmodule
        
        
    