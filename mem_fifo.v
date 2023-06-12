module memFifo  (
  input wire clk,
  input wire rst,
  input wire read_enable,
  input wire write_enable,
  input reg read_data,
  output wire data_out
);

  // Define parameters for the FIFO size
  parameter DATA_WIDTH = 32;  // Width of the data in bits
  parameter FIFO_DEPTH = 16; // Depth of the FIFO in number of elements

  // Define FIFO memory array
  reg [DATA_WIDTH-1:0] fifo [0:FIFO_DEPTH-1];
  // Define register to hold the output data
  reg [DATA_WIDTH-1:0] register_out;
  reg [FIFO_DEPTH-1:0] write_ptr;
  // Write logic
  always @(posedge clk) begin
    if (rst) begin
      write_ptr <= 0;
    end 
    else if (read_enable) begin
      fifo[write_ptr] <= read_data;  // Replace 'memory_data' with the actual signal from memory
      write_ptr <= write_ptr + 1;
    end
  end

  // Read logic
  always @(posedge clk) begin
    if (rst) begin
      read_ptr <= 0;
      register_out <= 0;
    end else if (read_enable) begin
       register_out <= fifo[read_ptr];
       read_ptr <= read_ptr + 1;
    end
  end

  // Assign output
  assign data_out = register_out;

endmodule

