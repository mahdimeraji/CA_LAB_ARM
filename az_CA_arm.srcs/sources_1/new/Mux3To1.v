module Mux3To1 #(
    parameter N = 32
)(
    input [N-1:0] a0, a1, a2,
    input [1:0] sel,
    output [N-1:0] Mux_out
);
    assign Mux_out = (sel == 2'b00) ? a0 :
                 (sel == 2'b01) ? a1 :
                 (sel == 2'b10) ? a2 : {N{1'b0}}; // Default case: zero
endmodule
