

/*  Using the for loop,initialise locations 0 to 1023 of a 
    4 bit register array cache_var to 0.
*/

    module as5_14();
     reg[3:0]cache_var[0:1023];
     integer i;
     initial 
       begin
         for(i=0;i<1024;i=i+1)
          cache_var[i]=4'b0000;  
         
       end
      
     
    endmodule
    
    