module Kdsp (
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
    .opA(),
    .opB(),
    .enable(),
    .write_enable(),
    .selector(),
    .result()
  );
  // Rdata mem
 K_rdataMemory rmdata (
   .write_data()
   .write_enable()
   .read_enable(),
   .read_address(),
   .mem_bank(),
   .clk(), 
   .data()
 );     
  // Instantiate the Wdata mem
  K_wdataMemory wmdata (
    .write_data(),
    .write_enable(), 
    .read_address(),
    .read_enable(),
    .mem_bank(),
    .clk(),
    .data()
    
  );
  
  // blue holder
  K_value_b_Holder bholder (
    .value()
  );
  
  // green holder
  K_value_g_Holder gholder (
    .value()
  );
  // red holder
  K_value_r_Holder rholder (
    .value()
  );
  K_registerSelector rsel (
    .rsin1(),
    .rsin2(),
    .rsin3(),
    .select(),
    .rsout()
  );
  

endmodule

