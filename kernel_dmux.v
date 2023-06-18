module kernel_dmux (
  input [0:2] tl_d,
  input [0:2] tr_d,
  input [0:2] bl_d,
  input [0:2] br_d,
  input [0:2] r_d,
  input [0:2] l_d,
  input [0:2] t_d,
  input [0:2] b_d,
  input [0:2] c_d,
  input [0:3] select,
  output reg [0:3] k_d
);

  always @* begin
    case (select)
      4'b0001: k_d = tl_d;
      4'b0010: k_d = tr_d;
      4'b0011: k_d = bl_d;
      4'b0100: k_d = br_d;
      4'b0101: k_d = r_d;
      4'b0110: k_d = l_d;
      4'b0111: k_d = t_d;
      4'b1000: k_d = b_d;
      4'b1111: k_d = c_d;
      default: k_d = 4'b0; // Default output when select is out of range
    endcase
  end

endmodule

