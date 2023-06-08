module K_DecodeLogic (
  input  [31:0] instruction,
  input [31:0] loader,
  input [31:0] loader1,
  output reg [31:0] rs1,
  output reg [31:0] rs2

);
 

  always @(instruction) begin
	   case (instruction)
      32'h1: rs1 <= loader;  
        default: rs1 <= 32'h0;
           endcase
   end

  always @(instruction) begin
	  case (instruction)
       32'h1: rs2 <= loader1;  
	default: rs2 <= 32'h0;  
	  endcase
   end

endmodule


