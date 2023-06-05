module RegisterFileRead (
  input [4:0] rs1_index,
  input [4:0] rs2_index,
  output reg [31:0] rs1_data,
  output reg [31:0] rs2_data,
  input clk,
  input reset
);

  always @(posedge clk) begin
    if (reset) begin
      rs1_data <= 32'h0; // Reset the rs1_data output to zero
      rs2_data <= 32'h0; // Reset the rs2_data output to zero
    end
    else begin
      rs1_data <= rs1_index; // Read rs1_data from the register file based on rs1_index
      rs2_data <= rs2_index; // Read rs2_data from the register file based on rs2_index
    end
    end
endmodule
