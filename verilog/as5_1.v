

/*  Declare a register called oscillate.Initialise it
    to 0 and make it to toggle at every 30 time units.
    Donot use always statemenr(Hint: Use forever loop)
*/

    module as5_1(out);
     output out;
     reg oscillate;

    initial begin
     oscillate=1'b0;
     forever #30 oscillate= ~ oscillate;
        
    end
     assign out= oscillate;
    endmodule
    
    
