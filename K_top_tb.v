module TopModule_TB;

  reg clk;
  reg reset;
  reg [31:0] instruction;
  reg [31:0] read_data1;
  reg [31:0] read_data2;
  wire [31:0] pc_output;
  wire [31:0] rs1;
  wire [31:0] rs2;
  wire [31:0] result;
  wire [31:0] read_data;

  // Instantiate the top module
  TopModule dut (
    .clk(clk),
    .reset(reset),
    .pc_output(pc_output),
    .rs1(rs1),
    .rs2(rs2),
    .result(result),
    .read_data(read_data)
  );

  // Clock generation
  always begin
    clk = 1'b0;
    #5;
    clk = 1'b1;
    #5;
  end

  // Test stimulus
  initial begin
    // Initialize inputs
    reset = 1'b1;
    instruction = 32'h0;
    read_data1 = 32'h0;
    read_data2 = 32'h0;

    // Wait for a few clock cycles
    #10;

    // Deassert reset
    reset = 1'b0;

    // Set inputs to test values
    instruction = 32'h1;
    read_data1 = 32'hA5B6C7D8;
    read_data2 = 32'h12345678;

    // Wait for a few clock cycles
    #10;

    // Add more test cases here

    // Finish simulation
    $finish;
  end

  // Dump variables for debugging
  initial begin
    $dumpvars(0, TopModule_TB);
    $dumpfile("dump.vcd");
  end

endmodule

