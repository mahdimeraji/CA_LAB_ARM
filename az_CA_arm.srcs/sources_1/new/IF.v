module IF(
    input clk,
    input rst,
    input Frz,
    input mux_ctl,
    input [31:0] Branch_Address,
    output [31:0] Prog_cnter,
    output [31:0] pc_out
    );
    wire [31:0] pc_in;
    
    wire [31:0] adder_out;
    wire carry;
    Adder addr(pc_out,adder_out,carry);

    Mux mux(Branch_Address,adder_out,mux_ctl,pc_in);
    PC pc(clk,rst,pc_in,Frz,pc_out);
    assign Prog_cnter =adder_out;
endmodule