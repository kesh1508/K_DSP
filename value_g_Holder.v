module K_value_g_Holder (
  input wire enable,
  output reg [15:0] value
);

  always @(posedge clk) begin
    if (enable) begin
      value <= 16'hFF00;
    end
  end

endmodule

