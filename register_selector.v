module K_registerSelector (
  input wire [31:0] rsin1,
  input wire [31:0] rsin2,
  input wire [31:0] rsin3,
  input wire select,
  output reg [31:0] rsout
);

  always @(clk) begin
    case (select)
      2'b01: rsout <= rsin1
      2'b10: rsout <= rsin2;
      2'b11: rsout <= rsin3;
      default: rsout <= 32'b0; // Set default value if select is neither 0 nor 1
    endcase
  end

endmodule

