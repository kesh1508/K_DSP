module K_ALU_tb;

  // Inputs
  reg [31:0] opA;
  reg [31:0] opB;

  // Outputs
  wire [31:0] result;

  // Instantiate the K_ALU module
  K_ALU uut (
    .opA(opA),
    .opB(opB),
    .result(result)
  );

  // Clock signal
  reg clk;
  always #5 clk = ~clk;

  // Test stimulus
  initial begin
    clk = 0;

    // Initialize inputs
    opA = 10;
    opB = 20;

    // Display initial values
    $display("opA = %d, opB = %d", opA, opB);

    // Apply inputs and check outputs
    #10 opA = 15;
    #10 opB = 30;

    // Display updated values
    $display("opA = %d, opB = %d", opA, opB);

    // Wait for a few more clock cycles
    #20;

    // Display final result
    $display("result = %d", result);

    // End the simulation
    $finish;
  end

  // Generate clock
  always #2 clk = ~clk;

endmodule

