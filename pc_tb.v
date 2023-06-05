module tb_K_ProgramCounter;

  // Inputs
  reg clk;
  reg reset;

  // Outputs
  wire [31:0] pc_output;

  // Instantiate the unit under test (UUT)
  K_ProgramCounter dut (
    .clk(clk),
    .reset(reset),
    .pc_reg(pc_output)
  );

  // Clock generation
  always begin
    clk = 1'b0;
    #5;  // Half-period delay
    clk = 1'b1;
    #5;  // Half-period delay
  end

  // Reset generation
  initial begin
    reset = 1'b1;
    #10;  // Reset for 10 time units
    reset = 1'b0;
  end

  // Stimulus
  initial begin
    #15;  // Wait for a few clock cycles for the circuit to stabilize

    // Display the initial value of the program counter
    $display("Initial PC: %d", pc_output);

    // Generate clock cycles to observe the program counter
    repeat (10) begin
      #10;  // Wait for 10 time units
      $display("Current PC: %d", pc_output);
    end

    $finish;  // End the simulation
  end
  initial begin
  // Simulation code

  $dumpvars(0, tb_K_ProgramCounter); // Dump signals from the testbench module
  $dumpvars(0, dut); // Dump signals from the DUT module

  #100; // Simulation duration
  $finish; // End simulation
  end

endmodule

