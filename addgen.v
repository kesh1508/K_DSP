module K_addgenerator (
	input start,
	input clk,
	input enable,
	output reg address_width,
	output reg address_depth
);

parameter ADDWITH = 3;
parameter ADDDEPTH = 3;
parameter DEPTH = 240;

initial begin
        kcentre <= 4;
        kcside <= 2;
        ksedge <= 1;
end

   reg [0:ADDWITH-1] address_width = 0;
   reg [0:ADDDEPTH-1] address_depth = 0;

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



		



