# List of Verilog source files and their corresponding testbenches
VERILOG_FILES := K_top.v alu.v pc.v decode_logic.v rdmem.v imem.v dmem.v regfile.v 
TESTBENCH_FILES := K_top_tb.v alu_tb.v pc_tb.v decode_logic_tb.v rdmem_tb.v imem_tb.v dmem_tb.v regfile_tb.v 

# Generate the list of compiled object files
#OBJECT_FILES := $(patsubst %.v,%.o,$(VERILOG_FILES))

# Default target
all: simulate

# Simulation target
simulate:
	iverilog -o /home/keshave/riscv/sim/all_vvp/regfile.vvp regfile.v regfile_tb.v
	vvp /home/keshave/riscv/sim/all_vvp/regfile.vvp
	iverilog  alu.v alu_tb.v -o /home/keshave/riscv/sim/all_vvp/alu.vvp 
	vvp /home/keshave/riscv/sim/all_vvp/alu.vvp
	iverilog -o /home/keshave/riscv/sim/all_vvp/pc.vvp pc.v pc_tb.v 
	vvp /home/keshave/riscv/sim/all_vvp/pc.vvp
	iverilog -o /home/keshave/riscv/sim/all_vvp/decode_logic.vvp decode_logic.v decode_logic_tb.v
	vvp /home/keshave/riscv/sim/all_vvp/decode_logic.vvp
	iverilog -o /home/keshave/riscv/sim/all_vvp/rdmem.vvp rdmem.v rdmem_tb.v
	vvp /home/keshave/riscv/sim/all_vvp/rdmem.vvp
	iverilog -o /home/keshave/riscv/sim/all_vvp/imem.vvp imem.v imem_tb.v
	vvp /home/keshave/riscv/sim/all_vvp/imem.vvp
	iverilog -o /home/keshave/riscv/sim/all_vvp/dmem.vvp dmem.v dmem_tb.v
	vvp /home/keshave/riscv/sim/all_vvp/dmem.vvp
	
# Rule to compile each Verilog source file into an object file
#%.o: %.v
#	iverilog -o $@ -c $<

# Clean target
clean:
	rm -f simulation $(OBJECT_FILES)
#alu_tb.v  alu.v  decode_logic_tb.v  decode_logic.v  dmem_tb.v  dmem.v  imem_tb.v  imem.v  K_top.v  makefile  pc_tb.v  pc.v  rdmem.v  regfile_tb.v  regfile.v
