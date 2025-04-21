`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/10/2025 05:12:35 PM
// Design Name: 
// Module Name: design_1_wrapper_TB
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////////

module design_1_wrapper_TB();

    reg clk;
    reg rst;
    
    design_1_wrapper uut (
        .clk_0(clk),
        .rst_0(rst)
    );
    
    always #5 clk = ~clk;  
    
    initial begin
        clk = 0;
        rst = 0;
        
        #10 rst = 1;
        #20 rst = 0;
        
        #1000;
        $stop;
    end

endmodule