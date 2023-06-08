module DataMemory (

  input [31:0] write_data,
  input write_enable,
  output reg [31:0] read_data
);
  reg [31:0] mem [0:1023]; // Data memory with 1024 locations, each 32 bits wide
  reg [9:0] address = 0;
  always @(address, write_data, write_enable) begin
    if (write_enable)
      mem[address] <= write_data; // Write data to the memory location specified by the address if write_enable is asserted
    read_data <= mem[address]; // Read data from the memory location specified by the address
    address <= address + 1
  end
endmodule

