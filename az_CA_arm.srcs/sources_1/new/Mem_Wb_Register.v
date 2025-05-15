module Memory_WriteBack_Stage_Register (
    input wire clock,
    input wire reset_signal,
    input wire en,
    
    input wire writeback_enable,
    input wire memory_read_enable,
    input wire [3:0] destination_reg,
    input wire [31:0] alu_result_input,
    input wire [31:0] memory_data_input,
    
    output reg writeback_enable_out,
    output reg memory_read_enable_out,
    output reg [3:0] destination_reg_out,
    output reg [31:0] alu_result_output,
    output reg [31:0] memory_data_output
);

always @(posedge clock) begin
    if (reset_signal) begin
        writeback_enable_out <= 0;
        memory_read_enable_out <= 0;
        destination_reg_out <= 0;
        alu_result_output <= 0;
        memory_data_output <= 0;
    end
    else if (en) begin
        writeback_enable_out <= writeback_enable;
        memory_read_enable_out <= memory_read_enable;
        destination_reg_out <= destination_reg;
        alu_result_output <= alu_result_input;
        memory_data_output <= memory_data_input;
    end
end

endmodule