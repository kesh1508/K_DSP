module K_ALU (
  input [31:0] opA,
  input [31:0] opB,
  output enable,
  output write_enable
  output reg [31:0] result

);
  
  always @ (opA) begin
   enable = 1;  
  end


  always @ (opB) begin
   result = opA + opB; // Addition
   write_enable = 1; 
  end

endmodule

