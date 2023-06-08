module TopModule (
  input clk,
  input reset,
  output reg [31:0] pc_output,
  output reg [31:0] rs1,
  output reg [31:0] rs2,
  output reg [31:0] result,
  output reg [31:0] read_data
);
  wire [31:0] rs1_data;
  wire [31:0] rs2_data;

  // Instantiate the program counter
  K_ProgramCounter pc (
    .clk(clk),
    .reset(reset),
    .pc_output(pc_output)
  );

  // Instantiate the instruction memory
  K_InstructionMemory inst_mem (
    .address(pc_output),
    .instruction(instruction)
  );

  // Instantiate the decode logic
  K_DecodeLogic decode (
    .instruction(instruction),
    .loader(read_data1),
    .loader1(read_data2),
    .rs1(rs1),
    .rs2(rs2)
  );

  // Instantiate the register file read
  RegisterFileRead rf_read (
    .rs1_index(rs1),
    .rs2_index(rs2),
    .rs1_data(rs1_data),
    .rs2_data(rs2_data),
    .clk(clk),
    .reset(reset)
  );

  // Instantiate the ALU
  K_ALU alu (
    .opA(rs1_data),
    .opB(rs2_data),
    .enable(enable),
    .result(result)
  );
  // Rdata mem
 RdataMemory rmdata (
       .enable(enable),
       .read_data1(read_data1),
       .read_data2(read_data2)
  );     
  // Instantiate the data memory
  DataMemory data_mem (
    .address(result),
    .write_data(rs2_data),
    .write_enable(1'b1), // Assuming always enabled for this example
    .read_data(read_data)
  );

endmodule

