module Execute_Memory_Stage_Register (
    input wire clock,            
    input wire rst,         
    input wire en,         

    input wire write_back_enable,          
    input wire memory_read_enable,      
    input wire memory_write_enable,      
    input wire [31:0] Rm_value_In,  
    input wire [3:0] destination,    
    input wire [31:0] alu_result_input, 

    output reg write_back_enable_out,
    output reg memory_read_enable_out,
    output reg memory_write_enable_out,
    output reg [31:0] Rm_value_Out,
    output reg [31:0] alu_result_output,
    output reg [3:0] destination_output
);

always @(posedge clock) begin
    if (rst) begin
        write_back_enable_out     <= 0;
        memory_read_enable_out    <= 0;
        memory_write_enable_out   <= 0;
        Rm_value_Out    <= 0;
        destination_output        <= 0;
        alu_result_output         <= 0;
    end
    else if (en) begin
        write_back_enable_out     <= write_back_enable;
        memory_read_enable_out    <= memory_read_enable;
        memory_write_enable_out  <= memory_write_enable;
        Rm_value_Out     <= Rm_value_In;
        destination_output        <= destination;
        alu_result_output         <= alu_result_input;
    end
end

endmodule