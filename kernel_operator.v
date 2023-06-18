module kernel_lroperator (
	input  [0:2] address_width,
	input  [0:2] address_depth,
	input clk,
	output reg [0:2] rkaddress_width,
	output reg [0:2] rkaddress_depth,
	output reg [0:2] lkaddress_width,
	output reg [0:2] lkaddress_depth,
	output reg [0:2] ckaddress_width,
	output reg [0:2] ckaddress_depth,
	output reg [0:2] bladdress_width,
        output reg [0:2] bladdress_depth,
        output reg [0:2] braddress_width,
        output reg [0:2] braddress_depth,
	output reg [0:2] tkaddress_width,
        output reg [0:2] tkaddress_depth,
        output reg [0:2] bkaddress_width,
        output reg [0:2] bkaddress_depth,
	output reg [0:2] tladdress_width,
        output reg [0:2] tladdress_depth,
        output reg [0:2] traddress_width,
        output reg [0:2] traddress_depth



);

   	always @(posedge clk) begin

		rkaddress_width <= address_width + 1;
		rkaddress_depth <= address_depth;
		lkaddress_width <= address_width - 1;
		lkaddress_depth <= address_depth;
		ckaddress_width <= address_width;
		ckaddress_depth <= address_depth;
		bladdress_width <= address_width - 1;
                bladdress_depth <= address_depth + 1;
                braddress_width <= address_width + 1;
                braddress_depth <= address_depth + 1;
		tkaddress_width <= address_width;
                tkaddress_depth <= address_depth - 1;
                bkaddress_width <= address_width;
                bkaddress_depth <= address_depth + 1;
		tladdress_width <= address_width - 1;
                tladdress_depth <= address_depth - 1;
                traddress_width <= address_width + 1;
                traddress_depth <= address_depth - 1;

	end 
	endmodule

