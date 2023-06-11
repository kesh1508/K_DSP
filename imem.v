module K_InstructionMemory (
  input [31:0] address,
  output reg [31:0] instruction
);

  reg [31:0] memory [0:1023]; // Instruction memory with 1024 locations

  // Initial memory contents (example instructions)
  initial begin
    memory[0] = 32'h01; // LBU x0, 0(x0)
    memory[1] = 32'h02; // ADDI x1, x0, 0
    memory[2] = 32'h00; // LHU x0, 0(x0)
    memory[3] = 32'h00; // SH x0, 0(x0)
    // ... Add more instructions as needed
  end

  always @(address) begin
    instruction = memory[address];
  end

endmodule

