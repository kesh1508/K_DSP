module DataMemory_tb;

  reg [31:0] write_data;
  reg write_enable, clk;
  wire [31:0] data;

  // Instantiate the DataMemory module
  DataMemory dut (
    .write_data(write_data),
    .write_enable(write_enable),
    .clk(clk),
    .data(data)
  );

  // Testbench clock generation
  always begin
    #5 clk = ~clk; // Toggle the clock every 5 time units
  end

  // Testbench stimulus
  initial begin
    // Initialize inputs
    write_data = 32'h12345678;
    write_enable = 1;

    // Reset signals
    clk = 0;

    // Run test cases
    #10; // Wait for some time after reset

    // Test case 1
    $display("Test Case 1");
    write_data = 32'hff00;
    write_enable = 1;
    $display(data);
    #10;
    
    // Test case 2
    $display("Test Case 2");
    write_data = 32'h00ff00;
    write_enable = 1;
    #10;
    
    // Test case 3
    $display("Test Case 3");
    #10;
    
    // Test case 4
    $display("Test Case 4");
    #10;
    
    // Test case 5
    $display("Test Case 5");
    #10;
    
    // Test case 6
    $display("Test Case 6");
    #10;
    
    // Test case 7
    $display("Test Case 7");
    #10;
    
    // Test case 8
    $display("Test Case 8");
    #10;
    
    // Test case 9
    $display("Test Case 9");
    #10;
    
    // Test case 10
    $display("Test Case 10");
    #10;

    $finish; // End simulation
  end

  // Dump variables for waveform viewing
  initial begin
    $dumpfile("waveform.vcd");
    $dumpvars(0, DataMemory_tb);
  end

endmodule

