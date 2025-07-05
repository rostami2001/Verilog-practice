module mem (input clk, input write, input read, input [9:0] addr, input [31:0] wrdata, output reg [31:0] rddata);

  reg [7:0] mem [0:1023];

  always @(posedge clk) begin
    if (write) begin
      mem[addr+3][7:0] <= wrdata[31:24];
      mem[addr+2][7:0] <= wrdata[23:16];
      mem[addr+1][7:0] <= wrdata[15:8];
      mem[addr][7:0] <= wrdata[7:0];
      rddata <= 32'b0;
    end
  end

  always @(read or addr) begin
    if (read && !write) begin
      rddata[31:24] <= mem[addr+3][7:0];
      rddata[23:16] <= mem[addr+2][7:0];
      rddata[15:8] <= mem[addr+1][7:0];
      rddata[7:0] <= mem[addr][7:0];
    end else begin
      rddata <= 32'b0;
    end
  end

endmodule

