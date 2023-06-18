module kernel_lroperator (
	input address_width,
	input address_depth,
	input clk,
	output rkaddress_width,
	output rkaddress_depth,
	output lkaddress_width,
	output lkaddress_depth
);

   	always @(posedge clk) begin

		rkaddress_width <= address_width + 1;
		rkaddress_depth <= address_depth;
		lkaddress_width <= address_width - 1;
		lkaddress_depth <= address_depth;
	end 
	endmodule

