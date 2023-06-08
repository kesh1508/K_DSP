module RdataMemory (
  input enable,
  output reg [31:0] read_data1,
  output reg [31:0] read_data2
);
  reg [31:0] memory [0:1023]; // Data memory with 1024 locations, each 32 bits wide
  reg [9:0] address_counter = 0; // Counter to increment the memory address
  
  initial begin
    memory[0] = 32'h2FBC4A9D;
    memory[1] = 32'hA57ED613;
    memory[2] = 32'h3; 
    memory[3] = 32'h4; 
  end

  initial begin
  assign  read_data1 = memory[address_counter];
  end

  always @(enable) begin
    address_counter <= address_counter + 1; // Increment the memory address on each enable signal
    read_data2 <= memory[address_counter];
  end
endmodule

