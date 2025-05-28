module PC(
    input clk,
    input rst,
    input [31:0] Pc_in,
    input freez,
    output [31:0] Pc_out
    );
    reg [31:0] data;

    always @(posedge clk, posedge rst) begin
        if (rst)
            data <= 32'b0;
        else if (~freez)
            data <= Pc_in;
    end

    assign Pc_out = data;
endmodule

