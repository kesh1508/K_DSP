module K_addgenerator (
	input start,
	input clk,
	input enable,
	output reg [2:0] address_width,
	output reg [2:0] address_depth
);



parameter DEPTH = 240;





	always @(posedge clk) begin
		if (address_depth != DEPTH) begin
		address_depth <= address_depth + 1;	
		end
		else begin
		       address_width <= address_width + 1;
	       	       address_depth <= 0;

		end

	end
	endmodule



		



