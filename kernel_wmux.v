module kernel_wmux (
  input [0:2] tl_w,
  input [0:2] tr_w,
  input [0:2] bl_w,
  input [0:2] br_w,
  input [0:2] r_w,
  input [0:2] l_w,
  input [0:2] t_w,
  input [0:2] b_w,
  input [0:3] select,
  output reg [0:3] k_w
);

  always @* begin
    case (select)
      4'b0001: k_w = tl_w;
      4'b0010: k_w = tr_w;
      4'b0011: k_w = bl_w;
      4'b0100: k_w = br_w;
      4'b0101: k_w = r_w;
      4'b0110: k_w = l_w;
      4'b0111: k_w = t_w;
      4'b1000: k_w = b_w;
      default: k_w = 4'b0; // Default output when select is out of range
    endcase
  end

endmodule

