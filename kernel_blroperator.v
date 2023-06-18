module kernel_blroperator (
        input address_width,
        input address_depth,
        input clk,      
        output bladdress_width,
        output bladdress_depth,
        output braddress_width,
        output braddress_depth
);
        always @(posedge clk) begin

                bladdress_width <= address_width - 1;
                bladdress_depth <= address_depth + 1;
                braddress_width <= address_width + 1;
                braddress_depth <= address_depth + 1;
        end 
        endmodule    
