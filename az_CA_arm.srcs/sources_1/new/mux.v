module My_mux #(  
    parameter WIDTH = 32   
)(  
    input [WIDTH-1:0] input1,   
    input [WIDTH-1:0] input2,   
    input s,  
    output [WIDTH-1:0] out   
);   
    assign out = s ? input2 : input1;   
endmodule  