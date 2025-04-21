module  MUX2to1 #(parameter N = 4 ) (I1, I2, S, O);

    input  S;
    input  [N-1:0] I1, I2;
    output [N-1:0] O;

    assign O = S ? I2 : I1;

endmodule