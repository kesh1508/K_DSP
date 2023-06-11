module MemoryToFifo (
  input wire clk,
  input wire rst,
  input wire read_enable,
  output wire data_out
);

  // Define parameters for the FIFO size
  parameter DATA_WIDTH = 8;  // Width of the data in bits
  parameter FIFO_DEPTH = 16; // Depth of the FIFO in number of elements

  // Define FIFO memory array
  reg [DATA_WIDTH-1:0] fifo [0:FIFO_DEPTH-1];

  // Define read and write pointers
  reg [log2(FIFO_DEPTH)-1:0] read_ptr;
  reg [log2(FIFO_DEPTH)-1:0] write_ptr;

  // Define register to hold the output data
  reg [DATA_WIDTH-1:0] register_out;

  // Write logic
  always @(posedge clk) begin
    if (rst) begin
      write_ptr <= 0;
    end else if (read_enable) begin
      write_ptr <= write_ptr + 1;
      fifo[write_ptr] <= memory_data;  // Replace 'memory_data' with the actual signal from memory
    end
  end

  // Read logic
  always @(posedge clk) begin
    if (rst) begin
      read_ptr <= 0;
      register_out <= 0;
    end else if (read_enable) begin
      read_ptr <= read_ptr + 1;
      register_out <= fifo[read_ptr];
    end
  end

  // Assign output
  assign data_out = register_out;

endmodule

