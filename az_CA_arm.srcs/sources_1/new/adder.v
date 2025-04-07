module Adder( 
    input [31:0] in32, 
    output [31:0] O32, 
    output Carry_out 
    ); 
    assign {Carry_out,O32} = in32 + 32'd1; 
endmodule