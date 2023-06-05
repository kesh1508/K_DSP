module K_InstructionMemory (
  input [31:0] address,
  output reg [31:0] instruction
);

  reg [31:0] memory [0:1023]; // Instruction memory with 1024 locations

  // Initial memory contents (example instructions)
  initial begin
    memory[0] = 32'b00000000000000000000000000000001; // LBU x0, 0(x0)
    memory[1] = 32'b00000000000000000000000000000010; // ADDI x1, x0, 0
    memory[2] = 32'b00000000000000000000000000000011; // LHU x0, 0(x0)
    memory[3] = 32'b00000000000000000000000000000000; // SH x0, 0(x0)
    // ... Add more instructions as needed
  end

  always @(address) begin
    instruction = memory[address];
  end

endmodule

