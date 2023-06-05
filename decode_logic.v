module K_DecodeLogic (
  input  [31:0] instruction,
  output reg [31:0] rs1,
  output reg [31:0] rs2

);
 

  always @(instruction) begin
	   case (instruction)
      32'b00000000000000000000000000000001: rs1 <= 32'b00000000000000000000000000000001;  // If sel is 00, assign 0000 to rs1
      32'b00000000000000000000000000000010: rs1 <= 32'b00000000000000000000000000001111;  // If sel is 00, assign 0000 to rs1
      32'b00000000000000000000000000000011: rs1 <= 32'b00000000000000000000000000000111;  // If sel is 00, assign 0000 to rs1
      32'b00000000000000000000000000000100: rs1 <= 32'b00000000000000000000000000000011;  // If sel is 00, assign 0000 to rs1    
        default: rs1 <= 32'b0;
           endcase
   end

  always @(instruction) begin
	  case (instruction)

      32'b00000000000000000000000000000001: rs2 <= 32'b00000000000000000000000000001111;  // If sel is 00, assign 0000 to rs1
      32'b00000000000000000000000000000010: rs2 <= 32'b00000000000000000000000000000111;  // If sel is 00, assign 0000 to rs1
      32'b00000000000000000000000000000011: rs2 <= 32'b00000000000000000000000000000011;  // If sel is 00, assign 0000 to rs1
      32'b00000000000000000000000000000100: rs2 <= 32'b00000000000000000000000000000001;  // If sel is 00, assign 0000 to rs1
	default: rs2 <= 32'b0;  
	  endcase
   end

endmodule


