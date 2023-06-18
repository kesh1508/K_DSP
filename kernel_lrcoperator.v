module kernel_lroperator (
	input  [0:2] address_width,
	input  [0:2] address_depth,
	input clk,
	output reg [0:2] rkaddress_width,
	output reg [0:2] rkaddress_depth,
	output reg [0:2] lkaddress_width,
	output reg [0:2] lkaddress_depth,
	output reg [0:2] ckaddress_width,
	output reg [0:2] ckaddress_depth
);

   	always @(posedge clk) begin

		rkaddress_width <= address_width + 1;
		rkaddress_depth <= address_depth;
		lkaddress_width <= address_width - 1;
		lkaddress_depth <= address_depth;
		ckaddress_width <= address_width;
		ckaddress_depth <= address_depth;
	end 
	endmodule

