module K_value_b_Holder (
  input wire enable,
  output reg [15:0] value
);

  always @(posedge clk) begin
    if (enable) begin
      value <= 16'h00FF;
    end
  end

endmodule

