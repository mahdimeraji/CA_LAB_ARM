module Val2generate (
    VAL2in , val2out , VAL2RM , MEM_EN
);
    

    input [25:0] VAL2in;
    inout [31:0] VAL2RM;
    input MEM_EN;
    output reg[31:0] val2out;

    always @(*) begin
        if(MEM_EN) begin
            if(VAL2in[11]) val2out={20'b1 , VAL2in[11:0]};
            else val2out={20'b0 , VAL2in[11:0]};
        end 
        else begin
            if(VAL2in[25]) begin
                case(VAL2in[11:8]) 
                    4'd0: val2out = {24'b0 , VAL2in[7:0]};
                    4'd1: val2out = {VAL2in[1:0] , 24'b0 , VAL2in[7:2]};
                    4'd2: val2out = {VAL2in[3:0] , 24'b0 , VAL2in[7:4]};
                    4'd3: val2out = {VAL2in[5:0] , 24'b0 , VAL2in[7:6]};
                    4'd4: val2out = {VAL2in[7:0] , 24'b0 };
                    4'd5: val2out = {2'b0 , VAL2in[7:0] , 22'b0};
                    4'd6: val2out = {4'b0 , VAL2in[7:0] , 20'b0};
                    4'd7: val2out = {6'b0 , VAL2in[7:0] , 18'b0};
                    4'd8: val2out = {8'b0 , VAL2in[7:0] , 16'b0};
                    4'd9: val2out = {10'b0 , VAL2in[7:0] , 14'b0};
                    4'd10: val2out = {12'b0 , VAL2in[7:0] , 12'b0};
                    4'd11: val2out = {14'b0 , VAL2in[7:0] , 10'b0};
                    4'd12: val2out = {16'b0 , VAL2in[7:0] , 8'b0};
                    4'd13: val2out = {18'b0 , VAL2in[7:0] , 6'b0};
                    4'd14: val2out = {20'b0 , VAL2in[7:0] , 4'b0};
                    4'd15: val2out = {22'b0 , VAL2in[7:0] , 2'b0};
                endcase
            end
            else begin 
                if(VAL2in[4]) 
                    val2out = VAL2RM;
                else begin
                    case(VAL2in[6:5])
                    2'b00: val2out = VAL2RM << VAL2in[11:7];
                    2'b01: val2out = VAL2RM >> VAL2in[11:7];
                    2'b10: val2out = VAL2RM >>> VAL2in[11:7];
                    2'b11: begin
                        case(VAL2in[11:7])
                        4'd0: val2out = {VAL2RM};
                        4'd1: val2out = {VAL2RM[0], VAL2RM[31:1]};
                        4'd2: val2out = {VAL2RM[1:0], VAL2RM[31:2]};
                        4'd3: val2out = {VAL2RM[2:0], VAL2RM[31:3]};
                        4'd4: val2out = {VAL2RM[3:0], VAL2RM[31:4]};
                        4'd5: val2out = {VAL2RM[4:0], VAL2RM[31:5]};
                        4'd6: val2out = {VAL2RM[5:0], VAL2RM[31:6]};
                        4'd7: val2out = {VAL2RM[6:0], VAL2RM[31:7]};
                        4'd8: val2out = {VAL2RM[7:0], VAL2RM[31:8]};
                        4'd9: val2out = {VAL2RM[8:0], VAL2RM[31:9]};
                        4'd10: val2out = {VAL2RM[9:0], VAL2RM[31:10]};
                        4'd11: val2out = {VAL2RM[10:0], VAL2RM[31:11]};
                        4'd12: val2out = {VAL2RM[11:0], VAL2RM[31:12]};
                        4'd13: val2out = {VAL2RM[12:0], VAL2RM[31:13]};
                        4'd14: val2out = {VAL2RM[13:0], VAL2RM[31:14]};
                        4'd15: val2out = {VAL2RM[14:0], VAL2RM[31:15]};
                        endcase
                    end
                    endcase
                end
            end
        end
    end
endmodule