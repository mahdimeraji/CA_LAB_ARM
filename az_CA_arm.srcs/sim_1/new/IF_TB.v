//`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////////
//// Company: 
//// Engineer: 
//// 
//// Create Date: 03/10/2025 05:12:35 PM
//// Design Name: 
//// Module Name: IF_TB
//// Project Name: 
//// Target Devices: 
//// Tool Versions: 
//// Description: 
//// 
//// Dependencies: 
//// 
//// Revision:
//// Revision 0.01 - File Created
//// Additional Comments:
//// 
////////////////////////////////////////////////////////////////////////////////////


//module IF_TB(    );
//wire rst;
//reg clk;

//endmodule




`timescale 1ns / 1ns  

module tb_IF;  


    reg clk;  
    reg rst;  
    reg Frz;  
    reg mux_ctl;  
    reg [31:0] Branch_Address;  
    wire [31:0] Prog_cnter;  
 //   wire [31:0] pc_out;  
wire [31:0] d_out;

//    IF uut (  
//        .clk(clk),  
//        .rst(rst),  
//        .Frz(Frz),  
//        .mux_ctl(mux_ctl),  
//        .Branch_Address(Branch_Address),  
//        .Prog_cnter(Prog_cnter),  
//        .pc_out(pc_out)  
//    );  
 design_1_wrapper wraper
   (.Prog_cnter_0(Prog_cnter),
    .clk_0(clk),
    .douta_0(d_out),
    .rst_0(rst));
    
    initial begin  
        clk = 0;  
        Frz=0;
        mux_ctl=1;
        rst = 0; 
        #10;      
        rst = 1;  
        #10;     
        rst = 0;
        #1000;
        $stop; 
    end  
always #5 clk = ~clk;


 
      

endmodule  