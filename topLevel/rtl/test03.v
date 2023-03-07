`timescale 1ns/1ps

module compressor42_vec (
    input  wire [31:0] a,
    input  wire [31:0] b,
    input  wire [31:0] c,
    input  wire [31:0] d,
    input  wire             cin_chain,   // seed for bit 0, normally 1'b0
    output wire [31:0] sum,         // same weight
    output wire [31:0] carry        // carry row (to be interpreted as <<1)
);
    // Internal per-bit carries between the two adders that form the 4:2
    wire [31:0] c1;
    wire [31:0] c2;
    wire [31:0] s1;

    // Per-bit "cout" from the 4:2 (goes to cin of next higher bit)
    wire [31:0] cout;

    genvar i;
    generate
        for (i = 0; i < 32; i = i + 1) begin
            // bit-local cin comes from previous bit's cout (chain)
            wire cin_i ;//= (i == 0) ? cin_chain : cout[i-1];
	if (i == 0) begin
      		assign cin_i = cin_chain;
	 end
    	else begin
      		assign cin_i = cout[i-1];
	 end

            // First FA: a + b + c -> s1, c1
            assign s1[i]  = a[i] ^ b[i] ^ c[i];
            assign cout[i]  = (a[i] & b[i]) | (a[i] & c[i]) | (b[i] & c[i]);

            // Second FA: s1 + d + cin -> sum, c2
            assign sum[i] = s1[i] ^ d[i] ^ cin_i;
            assign carry[i]  = (s1[i] & d[i]) | (s1[i] & cin_i) | (d[i] & cin_i);

            // Combine carries:
            // (c1 + c2) contributes to bit i+1 and i+2.
            // carry (row) represents the bit-(i+1) contribution;
            // cout is the bit-(i+2) contribution that chains to cin of next bit.
            //assign carry[i] = c2[i];     // to weight i+1 (carry row)
            //assign cout[i]  = c1[i];     // forwarded to next bit's cin
        end
    endgenerate
endmodule

module compressor32_vec (
    input  wire [31:0] a,
    input  wire [31:0] b,
    input  wire [31:0] c,
    //input  wire [63:0] d,
    //input  wire             cin_chain,   // seed for bit 0, normally 1'b0
    output wire [31:0] sm,         // same weight
    output wire [31:0] cry        // carry row (to be interpreted as <<1)
);
    // Internal per-bit carries between the two adders that form the 3:2
    // wire [63:0] c1;

    genvar i;
    generate
        for (i = 0; i < 32; i = i + 1) begin
            // FA: a + b + c -> s1, c1
            assign sm[i]  = a[i] ^ b[i] ^ c[i];
            assign cry[i]  = (a[i] & b[i]) | (a[i] & c[i]) | (b[i] & c[i]);

         
        end
    endgenerate
endmodule

// ============================================================
// 16-to-2 Partial Product Reduction Tree using 4:2 compressors
// Layout matches the drawing:
//  Stage 1: 4 compressors on {P0..P3}, {P4..P7}, {P8..P11}, {P12..P15}
//  Stage 2: 2 compressors combining adjacent pairs of Stage 1 results
//  Stage 3: 1 compressor combining the two Stage 2 results
// Outputs: final SUM and CARRY rows (feed to a CPA next).
// ============================================================
module pp_tree7x32 (
    input  wire [31:0] P0,  input wire [31:0] P1,
    input  wire [31:0] P2,  input wire [31:0] P3,
    input  wire [31:0] P4,  input wire [31:0] P5,
    input  wire [31:0] P6,  input wire [31:0] P7,
    input  wire [31:0] P8,
    output wire [31:0] s_u_m,     
    output wire [31:0] c_arr_y
);
    wire [31:0] c0, c00, c1, s0, s00, s1;

    // ---------------- Stage 1 ----------------
    wire [31:0] cl0, cl00;
    wire [31:0] cl1;

    compressor42_vec S1_0 (
        .a(P0), .b(P1), .c(P2), .d(P3),
        .cin_chain(1'b0),
        .sum(s00), .carry(c00)
    );
    compressor42_vec S1_1 (
        .a(P4), .b(P5), .c(P6), .d(P7),
        .cin_chain(1'b0),
        .sum(s1), .carry(c1)
    );

    assign cl00 = (c00 << 1);
    compressor32_vec S1_FINAL (
        .a(s00), .b(cl00), .c(P8),
        .sm(s0), .cry(c0)
    );

    // ---------------- Stage 2 ----------------
    // Final reduction: {s0,c0,s1,c1} -> SUM, CARRY
    assign cl1 = (c1 << 1);
    assign cl0 = (c0 << 1);
    compressor42_vec S2_FINAL (
        .a(s0), .b(cl0), .c(s1), .d(cl1),
        .cin_chain(1'b0),
        .sum(s_u_m), .carry(c_arr_y)
    );

endmodule

