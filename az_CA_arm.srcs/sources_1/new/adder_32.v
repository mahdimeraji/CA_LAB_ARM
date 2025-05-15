module Adder_32(
    input  [31:0] a,
    input  [23:0] b, 
    output [31:0] w
);
    wire [31:0] b_ext;

    assign b_ext = {{8{b[23]}}, b};  

    assign w = a + b_ext;
endmodule
