module K_ALU (
  input [31:0] opA,
  input [31:0] opB, 
  output reg [31:0] result

);
  
  always @ (opA or opB) begin
   result = opA + opB; // Addition 
  end

endmodule

