module Condition_Check(input clk, rst, input [3:0] Cond, SR, output reg condition_met);
parameter EQ = 4'b0000;
parameter NE = 4'b0001;
parameter CS = 4'b0010;
parameter CC = 4'b0011;
parameter MI = 4'b0100;
parameter PL = 4'b0101;
parameter VS = 4'b0110;
parameter VC = 4'b0111;
parameter HI = 4'b1000;
parameter LS = 4'b1001;
parameter GE = 4'b1010;
parameter LT = 4'b1011;
parameter GT = 4'b1100;
parameter LE = 4'b1101;
parameter AL = 4'b1110;

wire N, Z, C, V;

assign N = SR[3];
assign Z = SR[2];
assign C = SR[1];
assign V = SR[0];

always @(N, Z, C, V, Cond) begin
    case (Cond)
        EQ: condition_met = (Z == 1'b1);
        NE: condition_met = (Z == 1'b0);
        CS: condition_met = (C == 1'b1);
        CC: condition_met = (C == 1'b0);
        MI: condition_met = (N == 1'b1);
        PL: condition_met = (N == 1'b0);
        VS: condition_met = (V == 1'b1);
        VC: condition_met = (V == 1'b0);
        HI: condition_met = ((C == 1'b1) && (Z == 1'b0));
        LS: condition_met = ((C == 1'b0) || (Z == 1'b1));
	      GE: condition_met = (N == V);
	      LT: condition_met = (N != V);
        GT: condition_met = ((Z == 1'b0) && (N == V));
        LE: condition_met = ((Z != 1'b1) || (N != V));
        AL: condition_met = 1'b1;
        default: condition_met = 1'b1; ///
    endcase
end
endmodule
