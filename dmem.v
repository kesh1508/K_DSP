module K_wdataMemory (
  input [31:0] write_data,
  input write_enable,
  input read_enable,
  input mem_bank,
  input read_address,
  input clk,
  output reg [31:0] data
);

parameter MEMW_SIZE = 3200; // Define parameter for memW size
parameter REG_SIZE = 32; // define parameter for pixes
parameter NUM_BANKS = 24;
parameter MEM_BIT = 2;
  
  reg [REG_SIZE-1:0] memory[0:MEMW_SIZE-1][0:NUM_BANKS-1]; // Data memory with var locations, each 32 bits wide
  reg [MEMW_SIZE-1:0] address = 0;
  reg [MEM_BIT-1:0] mem_select = 0;
  
  always @(posedge clk) begin
          if (write_enable) begin
      memory[address][mem_select] <= write_data; // Write data to the memory location specified by the address if write_enable is asserted
      if (address == MEMW_SIZE-1) begin
            address <= 0; // Wrap around to the beginning of the memory
            mem_select <= mem_select + 1; // move to next bank
    end
    else begin       
        address <= address + 1;
    end
  end 
end  

  always @(posedge clk) begin
          if (read_enable) begin
                  data <= memory[read_address][mem_bank];
          end 
  end
  endmodule
