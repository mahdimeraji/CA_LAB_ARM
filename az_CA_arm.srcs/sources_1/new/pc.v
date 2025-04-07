module PC(
    input clk,
    input rst,
    input [31:0] in,
    input freez,
    output [31:0] out
    );
    reg [31:0] data;

    always @(posedge clk, posedge rst) begin
        if (rst)
            data <= 32'b0;
        else if (~freez)
            data <= in;
    end

    assign out = data;
endmodule

