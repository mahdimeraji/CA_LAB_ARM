module Register (  
    input [N-1:0] in_1,  
    input [N-1:0] in_2,  
    input clk, en, rst,  
    output reg [N-1:0] out_1,  
    output reg [N-1:0] out_2  
);  
    parameter N = 32;  

    always @(posedge clk or posedge rst) begin  
        if (rst) begin  
            out_1 <= {N{1'b0}};  
            out_2 <= {N{1'b0}};  
        end  
        else if (en) begin  
            out_1 <= in_1;  
            out_2 <= in_2;  
        end  
        // else: outputs retain their values (implicit)  
    end  
endmodule  