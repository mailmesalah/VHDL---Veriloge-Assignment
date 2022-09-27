

/* Are these legal identifiers?
    a) system1
    b) 1reg
    c) $latch
    d) exec$
*/
module practice3;
    reg system1;
    //reg 1reg;//wrong because an identifier should not start with numbers
    reg $latch;//wrong because an identifier should not start with '$' sign
    reg exec$;    
endmodule 