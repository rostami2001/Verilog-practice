module alu (input [3:0]control, input [31:0]a, input [31:0]b, output [31:0]c, output [3:0]zero);
    reg [31:0]out;
    reg [3:0]z;
    always @(*) begin
        case (control)
            4'b0000: assign out = a & b;
            4'b0001: assign out = a | b;
            4'b0010: assign out = a + b;
            4'b0011: assign out = a ^ b;
            4'b0100: assign out = a << b;
            4'b0101: assign out = a >> b;
            4'b0110: assign out = a - b;
            4'b0111: assign out = $signed(a) >>> b;
        endcase
        if(c == 0) begin
            assign z = 4'b0001;
        end
        else begin
            assign z = 4'b0000;
        end

    end
    assign c = out;
    assign zero = z;
endmodule