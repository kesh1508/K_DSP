module TopModule (
  input clk,
  input reset
);
 
  

  // Instantiate the program counter
  K_ProgramCounter pc (
    .clk(clk),
    .reset(reset),
    .pc_reg(address0)
  );

  // Instantiate the instruction memory
  K_InstructionMemory inst_mem (
    .address(address0),
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
    .write_data(result),
    .write_enable(1'b0), // Assuming always not enabled for this example
    .data(data)
  );

endmodule

