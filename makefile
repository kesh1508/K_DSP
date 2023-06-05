# Verilog source files
DESIGN_SRCS = pc.v imem.v decode_logic.v regfile.v alu.v dmem.v
TB_SRCS = pc_tb.v imem_tb.v decode_logic_tb.v regfile_tb.v alu_tb.v dmem_tb.v

# Output file names
TARGETS = pc.vvp imem.vvp decode_logic.vvp regfile.vvp alu.vvp dmem.vvp

# Compilation and simulation commands
IVERILOG_CMD = iverilog
VVP_CMD = vvp

all: $(TARGETS)

$(TARGETS): $(DESIGN_SRCS) $(TB_SRCS)
    $(IVERILOG_CMD) -o $@ $^

run: $(TARGETS)
    $(VVP_CMD) $(TARGETS)

clean:
	 rm -f $(TARGETS)

.PHONY: all run clean

