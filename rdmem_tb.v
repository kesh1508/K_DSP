module RdataMemory_TB;
  reg enable;
  wire [31:0] read_data1;
  wire [31:0] read_data2;
  
  RdataMemory dut (
    .enable(enable),
    .read_data1(read_data1),
    .read_data2(read_data2)
  );
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, RdataMemory_TB);
    
    enable = 1'b0;
    #10;
    
    enable = 1'b1;
    #10;
    
    enable = 1'b0;
    #10;
    
    $finish;
  end
  
  // Display output values for verification
  always @(read_data1, read_data2) begin
    $display("read_data1 = %h, read_data2 = %h", read_data1, read_data2);
  end
endmodule

