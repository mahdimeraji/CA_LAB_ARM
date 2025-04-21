module Mux #(  
    parameter WIDTH = 32   
)(  
    input [WIDTH-1:0] input1,   
    input [WIDTH-1:0] input2,   
    input input3,  
    output [WIDTH-1:0] out   
);   
    assign out = input3 ? input2 : input1;   
endmodule  