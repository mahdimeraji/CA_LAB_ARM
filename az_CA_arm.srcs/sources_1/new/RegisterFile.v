module RegisterFile(clk, regWrite,
                    readRegister1, readRegister2,
                    writeRegister, writeData,
                    readData1, readData2,R0,R1,R2,R3,R4,R5,R6, reset);
                    
    input regWrite, clk , reset;
    input [3:0] readRegister1, readRegister2, writeRegister;
    input [31:0] writeData;
    output [31:0] readData1, readData2,R0,R1,R2,R3,R4,R5,R6;

    reg [31:0] registerFile [0:15];
    integer i;

    always @(negedge clk or posedge reset) begin
        if (reset == 1'b1) begin
            for(i=0 ; i<16 ; i=i+1)
                registerFile[i] <=32'b0;
        end
        else if (regWrite)
            registerFile[writeRegister] <= writeData;
    end

    assign readData1 = registerFile[readRegister1];
    assign readData2 = registerFile[readRegister2];
    assign R0 =registerFile[0];
    assign R1 =registerFile[1];
    assign R2 =registerFile[2];
    assign R3 =registerFile[3];
    assign R4 =registerFile[4];
    assign R5 =registerFile[5];
    assign R6 =registerFile[6];
    

endmodule

