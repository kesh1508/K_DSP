module DataMemory_tb;
  reg [31:0] address;
  reg [31:0] write_data;
  reg write_enable;
  wire [31:0] read_data;

  DataMemory dut (
    .address(address),
    .write_data(write_data),
    .write_enable(write_enable),
    .read_data(read_data)
  );

  initial begin
    $dumpfile("DataMemory_tb.vcd");
    $dumpvars(0, DataMemory_tb);

    // Test Case 1: Write and read data
    address = 0;         // Set the address to write to
    write_data = 16'hA5A5;   // Set the data to be written
    write_enable = 1;    // Enable write
    #10;                 // Wait for 10 time units
    write_enable = 0;    // Disable write
    #10;                 // Wait for 10 time units
    address = 0;         // Set the address to read from
    #10;                 // Wait for 10 time units

    // Test Case 2: Write and read data
    address = 5;         // Set the address to write to
    write_data = 16'h1234;   // Set the data to be written
    write_enable = 1;    // Enable write
    #10;                 // Wait for 10 time units
    write_enable = 0;    // Disable write
    #10;                 // Wait for 10 time units
    address = 5;         // Set the address to read from
    #10;                 // Wait for 10 time units

    $finish;             // End the simulation
  end
endmodule

