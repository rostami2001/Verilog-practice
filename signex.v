module signextend #(parameter n = 31) (input [n-1:0] in, output [31:0] out);
  assign out = { {32-n{in[n-1]}}, in };
endmodule
