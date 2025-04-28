module Mem_Wb_Pipeline_Register (
    input wire clk,            
    input wire reset,         
    input wire enable,         

    input wire WB_EN,          
    input wire MEM_R_EN,      
    input wire [3:0] Dest, 
    input wire [31:0] Alu_Res_In,
    input wire [31:0] Data_to_WB_In,     

    output reg WB_EN_out,
    output reg MEM_R_EN_out,
    output reg [3:0] Dest_out,
    output reg [31:0] Alu_Res_Out,
    output reg [31:0] Data_to_WB_Out    
);

always @(posedge clk) begin
    if (reset) begin
        WB_EN_out     <= 0;
        MEM_R_EN_out  <= 0;
        Dest_out      <= 0;
        Alu_Res_Out   <= 0;
        Data_to_WB_Out <=0;
    end
    else if (enable) begin
        WB_EN_out     <= WB_EN;
        MEM_R_EN_out  <= MEM_R_EN;
        Dest_out      <= Dest;
        Alu_Res_Out   <= Alu_Res_In;
        Data_to_WB_Out <=Data_to_WB_In;
    end
end

endmodule