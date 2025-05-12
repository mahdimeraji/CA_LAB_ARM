module Adder_32(
    input  [31:0] a,
    input  [23:0] b, // 24-bit input
    output [31:0] w
);
    wire [31:0] b_ext;

    // Choose sign-extension or zero-extension as needed:
    assign b_ext = {{8{b[23]}}, b};  // sign-extension example

    assign w = a + b_ext;
endmodule
