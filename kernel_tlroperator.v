module kernel_tlroperator (
        input address_width,
        input address_depth,
        input clk,	
	output tladdress_width,
	output tladdress_depth,
	output traddress_width,
	output traddress_depth
);
	always @(posedge clk) begin

		tladdress_width <= address_width - 1;
		tladdress_depth <= address_depth - 1;
		traddress_width <= address_width + 1;
		traddress_depth <= address_depth - 1;
	end 
	endmodule	

