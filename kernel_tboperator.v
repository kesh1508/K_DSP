module kernel_tboperator (
        input address_width,
        input address_depth,
        input clk,
        output tkaddress_width,
        output tkaddress_depth,
        output bkaddress_width,
        output bkaddress_depth
);

        always @(posedge clk) begin

                tkaddress_width <= address_width;
                tkaddress_depth <= address_depth - 1;
                bkaddress_width <= address_width;
                bkaddress_depth <= address_depth + 1;
        end 
        endmodule

