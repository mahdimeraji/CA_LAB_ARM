module Mux( input [31:0] input1 , input [31:0] input2 , input input3  
      , output [31:0] out 
 
    ); 
  assign out = input3 ? input2 : input1; 
     
endmodule