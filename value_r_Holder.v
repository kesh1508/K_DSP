module K_valueHolder (
  output reg [23:0] value
);

  initial begin
    value = 24'hFF0000; // Initialize the value to 0xFF0000
  end

endmodule

