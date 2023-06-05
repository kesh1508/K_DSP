module tb_RegisterFileRead;

  // Inputs
  reg [4:0] rs1_index;
  reg [4:0] rs2_index;
  reg clk;
  reg reset;

  // Outputs
  wire [31:0] rs1_data;
  wire [31:0] rs2_data;

  // Instantiate the unit under test (UUT)
  RegisterFileRead dut (
    .rs1_index(rs1_index),
    .rs2_index(rs2_index),
    .rs1_data(rs1_data),
    .rs2_data(rs2_data),
    .clk(clk),
    .reset(reset)
  );

  // Clock generation
  always begin
    clk = 0;
    #5;  // Half-period delay
    clk = 1;
    #5;  // Half-period delay
  end

  // Reset generation
  initial begin
    reset = 1;
    #10;  // Reset for 10 time units
    reset = 0;
  end

  // Stimulus
  initial begin
    #15;  // Wait for a few clock cycles for the circuit to stabilize

    // Set the register indices
    rs1_index = 5'b00001;
    rs2_index = 5'b00100;

    // Display the initial values of rs1_data and rs2_data
    $display("Initial rs1_data: %h", rs1_data);
    $display("Initial rs2_data: %h", rs2_data);

    // Generate clock cycles to observe the values of rs1_data and rs2_data
    repeat (10) begin
      #10;  // Wait for 10 time units
      $display("Current rs1_data: %h", rs1_data);
      $display("Current rs2_data: %h", rs2_data);
    end

    $finish;  // End the simulation
  end

endmodule

