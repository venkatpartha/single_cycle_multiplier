`timescale 1ns/1ps

// ============================================================
// 4:2 Compressor (parameterized width; default 64)
// ============================================================
module compressor42_vec #(
    parameter WIDTH = 64
)(
    input  [WIDTH-1:0] a,
    input  [WIDTH-1:0] b,
    input  [WIDTH-1:0] c,
    input  [WIDTH-1:0] d,
    input              cin_chain,   // seed for bit 0
    output [WIDTH-1:0] sum,         // same weight
    output [WIDTH-1:0] carry        // carry row (to be interpreted as <<1)
);
    // local partials
    wire [WIDTH-1:0] s1;
    wire [WIDTH-1:0] cout;

    genvar i;
    generate
        for (i = 0; i < WIDTH; i = i + 1) begin : COMP42_BIT
            // declare per-bit cin_i (unique per generate iteration)
            wire cin_i;
            if (i == 0) begin
                assign cin_i = cin_chain;
            end else begin
                // NOTE: because this is inside the generate-if, cout[i-1] is only referenced
                // for i>0 so the simulator won't see cout[-1].
                assign cin_i = cout[i-1];
            end

            // First FA: a + b + c -> s1, cout
            assign s1[i]   = a[i] ^ b[i] ^ c[i];
            assign cout[i] = (a[i] & b[i]) | (a[i] & c[i]) | (b[i] & c[i]);

            // Second FA: s1 + d + cin -> sum, carry
            assign sum[i]   = s1[i] ^ d[i] ^ cin_i;
            assign carry[i] = (s1[i] & d[i]) | (s1[i] & cin_i) | (d[i] & cin_i);
        end
    endgenerate
endmodule


// ============================================================
// 3:2 Compressor (Full adder) (parameterized width)
// ============================================================
module compressor32_vec #(
    parameter WIDTH = 64
)(
    input  [WIDTH-1:0] a,
    input  [WIDTH-1:0] b,
    input  [WIDTH-1:0] c,
    output [WIDTH-1:0] sum,
    output [WIDTH-1:0] carry
);
    genvar i;
    generate
        for (i = 0; i < WIDTH; i = i + 1) begin : COMP32_BIT
            assign sum[i]   = a[i] ^ b[i] ^ c[i];
            assign carry[i] = (a[i] & b[i]) | (a[i] & c[i]) | (b[i] & c[i]);
        end
    endgenerate
endmodule


// ============================================================
// pp_tree16x64
//   - compresses 17 partial-product rows (P0..P16), each WIDTH bits
//   - internal signals are unique per stage
//   - only final stage drives outputs SUM and CARRY
// ============================================================
module pp_tree16x64 #(
    parameter WIDTH = 64
)(
    input  [WIDTH-1:0] P0,  input  [WIDTH-1:0] P1,
    input  [WIDTH-1:0] P2,  input  [WIDTH-1:0] P3,
    input  [WIDTH-1:0] P4,  input  [WIDTH-1:0] P5,
    input  [WIDTH-1:0] P6,  input  [WIDTH-1:0] P7,
    input  [WIDTH-1:0] P8,  input  [WIDTH-1:0] P9,
    input  [WIDTH-1:0] P10, input  [WIDTH-1:0] P11,
    input  [WIDTH-1:0] P12, input  [WIDTH-1:0] P13,
    input  [WIDTH-1:0] P14, input  [WIDTH-1:0] P15,
    input  [WIDTH-1:0] P16,
    output [WIDTH-1:0] SUM,     // final sum row
    output [WIDTH-1:0] CARRY    // final carry row (interpret as <<1)
);

    // ---------- Stage 1 outputs ----------
    wire [WIDTH-1:0] s0, s1, s2, s3;
    wire [WIDTH-1:0] c0, c1, c2, c3;

    // ---------- Stage 2 outputs ----------
    wire [WIDTH-1:0] s4, s5;
    wire [WIDTH-1:0] c4, c5;

    // ---------- Stage 3 outputs ----------
    wire [WIDTH-1:0] s6, c6;

    // ---------------- Stage 1 ----------------
    compressor42_vec #(.WIDTH(WIDTH)) S1_0 (.a(P0),  .b(P1),  .c(P2),  .d(P3),  .cin_chain(1'b0), .sum(s0), .carry(c0));
    compressor42_vec #(.WIDTH(WIDTH)) S1_1 (.a(P4),  .b(P5),  .c(P6),  .d(P7),  .cin_chain(1'b0), .sum(s1), .carry(c1));
    compressor42_vec #(.WIDTH(WIDTH)) S1_2 (.a(P8),  .b(P9),  .c(P10), .d(P11), .cin_chain(1'b0), .sum(s2), .carry(c2));
    compressor42_vec #(.WIDTH(WIDTH)) S1_3 (.a(P12), .b(P13), .c(P14), .d(P15), .cin_chain(1'b0), .sum(s3), .carry(c3));

    // ---------------- Stage 2 ----------------
    // shift carries by one (weight i+1)
    wire [WIDTH-1:0] c0_sh = c0 << 1;
    wire [WIDTH-1:0] c1_sh = c1 << 1;
    wire [WIDTH-1:0] c2_sh = c2 << 1;
    wire [WIDTH-1:0] c3_sh = c3 << 1;

    compressor42_vec #(.WIDTH(WIDTH)) S2_L (
        .a(s0), .b(c0_sh), .c(s1), .d(c1_sh),
        .cin_chain(1'b0), .sum(s4), .carry(c4)
    );

    compressor42_vec #(.WIDTH(WIDTH)) S2_R (
        .a(s2), .b(c2_sh), .c(s3), .d(c3_sh),
        .cin_chain(1'b0), .sum(s5), .carry(c5)
    );

    // ---------------- Stage 3 ----------------
    wire [WIDTH-1:0] c4_sh = c4 << 1;
    wire [WIDTH-1:0] c5_sh = c5 << 1;

    compressor42_vec #(.WIDTH(WIDTH)) S3_FINAL (
        .a(s4), .b(c4_sh), .c(s5), .d(c5_sh),
        .cin_chain(1'b0),
        .sum(s6), .carry(c6)
    );

    // ---------------- Stage 4 (final) ----------------
    wire [WIDTH-1:0] c6_sh = c6 << 1;

    // ONLY this instance drives the module outputs SUM and CARRY
    compressor32_vec #(.WIDTH(WIDTH)) S4_FINAL (
        .a(s6), .b(c6_sh), .c(P16),
        .sum(SUM), .carry(CARRY)
    );

endmodule

