module regfile (
input clk,
input write,
input [4:0] rdaddr1,
input [4:0] rdaddr2,
input [4:0] wraddr,
input [31:0] wrdata,
output reg [31:0] rddata1,
output reg [31:0] rddata2
);

reg [31:0] registers [0:31];

always @(posedge clk) begin
if (write) begin
registers[wraddr] <= wrdata;
end
end

always @(write or rdaddr1 or rdaddr2) begin
if (~write) begin
rddata1 <= registers[rdaddr1];
rddata2 <= registers[rdaddr2];
end
else begin
rddata1 <= 0;
rddata2 <= 0;
end
end

endmodule
