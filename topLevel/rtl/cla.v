`timescale 1ns/1ps

// 64-bit Carry Lookahead Adder
module cla_64bit (
    input  [63:0] A,
    input  [63:0] B,
    input         Cin,
    output [63:0] Sum,
    output        Cout
);

    wire [63:0] G, P;     // Generate & Propagate
    wire [64:0] C;        // Carry bits

    assign C[0] = Cin;

    // Generate & Propagate for each bit
    assign G = A & B;
    assign P = A ^ B;

    // Carry lookahead logic
    genvar i;
    generate
        for (i = 0; i < 64; i = i + 1) begin : CLA_LOOP
            assign C[i+1] = G[i] | (P[i] & C[i]);
            assign Sum[i] = P[i] ^ C[i];
        end
    endgenerate

    assign Cout = C[64];

endmodule
