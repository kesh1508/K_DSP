module tb_K_InstructionMemory;

  // Inputs
  reg [31:0] address;

  // Outputs
  wire [31:0] instruction;

  // Instantiate the unit under test (UUT)
  K_InstructionMemory dut (
    .address(address),
    .instruction(instruction)
  );

  // Stimulus
  initial begin
    // Read instructions at specific addresses
    address = 0;
    #5;
    $display("Instruction at address %d: %b", address, instruction);

    address = 1;
    #5;
    $display("Instruction at address %d: %b", address, instruction);

    address = 2;
    #5;
    $display("Instruction at address %d: %b", address, instruction);

    address = 3;
    #5;
    $display("Instruction at address %d: %b", address, instruction);

    // ... Add more stimulus as needed

    $finish;  // End the simulation
  end

endmodule

