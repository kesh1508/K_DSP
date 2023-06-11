module K_dataBuffer (
  input wire [31:0] data_in,
  input wire enable,
  output wire [31:0] data_out
);
  
  reg [31:0] buffer;

  always @(posedge clk) begin
    if (enable)
      buffer <= data_in; // Store input data in the buffer when enable signal is asserted
    data_out <= buffer; // Output the data stored in the buffer
  end

endmodule


	
