module K_ProgramCounter (
  input clk,
  input reset,
  output reg [31:0] pc_reg
);



  always @(posedge clk or posedge reset) begin
    if (reset)
      pc_reg <= 32'h0;  // Reset the program counter to zero
    else
      pc_reg <= pc_reg + 1;  // Increment the program counter by 4 (for sequential execution)
  end

  assign pc_output = pc_reg;

endmodule

