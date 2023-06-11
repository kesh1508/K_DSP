module K_DecodeLogic_TB;

  reg [31:0] instruction;
  reg [31:0] loader;
  reg [31:0] loader1;
  wire [31:0] rs1;
  wire [31:0] rs2;

  K_DecodeLogic dut (
    .instruction(instruction),
    .loader(loader),
    .loader1(loader1),
    .rs1(rs1),
    .rs2(rs2)
  );

  initial begin
    // Test Case 1
    instruction = 32'h1;
    loader = 32'hA5B6C7D8;
    loader1 = 32'h12345678;
    #10;

    // Test Case 2
    instruction = 32'h0;
    loader = 32'h98765432;
    loader1 = 32'h24681357;
    #10;

    // Add more test cases here

    $dumpvars(0, K_DecodeLogic_TB); // Dump variable values at time 0

    $finish;
  end

  // Display outputs for verification
  always @(rs1, rs2) begin
    $display("rs1 = %h, rs2 = %h", rs1, rs2);
  end

endmodule

