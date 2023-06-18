module K_alu (
  input [31:0] opA,
  input [31:0] opB,
  output [2:0] reg selector,
  output reg enable,
  output reg write_enable,
  output reg [31:0] result

);
  
  always @ (opA) begin
   enable = 1;  
  end


  always @ (opB) begin
 case(selector)

  3'b000: result = opA + opB; 
  3'b001: result = opA & opB;
  3'b010: result = opB >> 8;
  3'b011: result = opB >> 16;
  3'b101: result = opA - opB;
  3'b100: result = opA / opB;
  3'b110: begin
	  if (opA = 0)

	  end

   write_enable = 1; 
  end

endmodule

