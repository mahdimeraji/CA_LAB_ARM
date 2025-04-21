module ALU (SrcA1, SrcB1, ALUcnt, CarryIn, ALUResult1, status_flags);

    input [31:0 ] SrcA1, SrcB1;
    input [3:0] ALUcnt;
    input CarryIn;
    output reg [3:0] status_flags;
    output reg [31:0] ALUResult1;
     
    reg Negative, Zero, Carry_out, Overflow;

    always @(*) begin
        if(ALUcnt != 4'b0000) begin
        Carry_out = 1'b0;
        Zero = 1'b0;
        Negative = 1'b0;
        case (ALUcnt)
            4'b0001 : ALUResult1 = SrcB1;
            4'b1001 : ALUResult1 = ~SrcB1;
            4'b0010 : {Carry_out, ALUResult1} = SrcA1 + SrcB1;
            4'b0011 : {Carry_out, ALUResult1} = SrcA1 + SrcB1 + CarryIn;
            4'b0100 : {Carry_out, ALUResult1} = SrcA1 - SrcB1;
            4'b0101 : {Carry_out, ALUResult1} = SrcA1 - SrcB1 - {31'b0, ~CarryIn};
            4'b0110 : ALUResult1 = SrcA1 & SrcB1;
            4'b0111 : ALUResult1 = SrcA1 | SrcB1;
            4'b1000 : ALUResult1 = SrcA1 ^ SrcB1;
            default : ALUResult1 = 32'bx;
        
        endcase


        Zero = (ALUResult1 == 0);
        Negative = ALUResult1[31];
    
        Overflow = (
            (ALUcnt == 4'b0010 || ALUcnt == 4'b0011) &&  (SrcA1[31] == SrcB1[31]) && (ALUResult1[31] != SrcA1[31])
        ) || (
            (ALUcnt == 4'b0100 || ALUcnt == 4'b0101) &&  (SrcA1[31] != SrcB1[31]) && (ALUResult1[31] != SrcA1[31])
        );
        status_flags = {Negative, Zero, Carry_out, Overflow};
        end else begin
            status_flags = status_flags;
            ALUResult1 = ALUResult1;
        end
    end

endmodule