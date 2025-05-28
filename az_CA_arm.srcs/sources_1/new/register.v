module If_Id_Register (  
    input [N-1:0] PC_If,  
    input [N-1:0] Inst_If,  
    input clk, en, rst, flush, freeze,
    output reg [N-1:0] PC_Id,  
    output reg [N-1:0] Inst_Id  
);  
    parameter N = 32;  

    always @(posedge clk or posedge rst) begin  
        if (rst) begin  
            PC_Id <= {N{1'b0}};  
            Inst_Id <= {N{1'b0}};  
        end
        else if (flush) begin  
            PC_Id <= {N{1'b0}};  
            Inst_Id <= {N{1'b0}};  
        end
        else if (en && !freeze) begin  
            PC_Id <= PC_If;  
            Inst_Id <= Inst_If;  
        end  
         
    end  
endmodule