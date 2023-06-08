module K_ALU (
  input [31:0] opA,
  input [31:0] opB,
  output enable,
  output reg [31:0] result

);
  
  always @ (opA) begin
   enable = 1; // Addition 
  end


  always @ (opB) begin
   result = opA + opB; // Addition 
  end

endmodule

