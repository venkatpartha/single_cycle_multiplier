`timescale 1ns/1ps

module booth32x32_top (
    input  wire [31:0] A,
    input  wire [31:0] B,
    input  wire        alu_signed,   // 1 = signed, 0 = unsigned
    output wire [31:0] PROD_MSB,     // upper 32 bits
    output wire [31:0] PROD_LSB      // lower 32 bits
);

    // -------------------------
    // Stage 1: Booth Encoder
    // -------------------------
    wire [63:0] PP0, PP1, PP2, PP3;
    wire [63:0] PP4, PP5, PP6, PP7;
    wire [63:0] PP8, PP9, PP10, PP11;
    wire [63:0] PP12, PP13, PP14, PP15, PP16;

    booth_radix4_multiplier booth_enc (
        .A(A),
        .B(B),
        .alu_signed(alu_signed),
        .PP0(PP0),   .PP1(PP1),   .PP2(PP2),   .PP3(PP3),
        .PP4(PP4),   .PP5(PP5),   .PP6(PP6),   .PP7(PP7),
        .PP8(PP8),   .PP9(PP9),   .PP10(PP10), .PP11(PP11),
        .PP12(PP12), .PP13(PP13), .PP14(PP14), .PP15(PP15),
        .PP16(PP16)
    );

    // -------------------------
    // Stage 2: Reduction Tree
    // -------------------------
    wire [63:0] s_um, c_arry;

    pp_tree16x64 tree (
        .P0(PP0), .P1(PP1), .P2(PP2), .P3(PP3),
        .P4(PP4), .P5(PP5), .P6(PP6), .P7(PP7),
        .P8(PP8), .P9(PP9), .P10(PP10), .P11(PP11),
        .P12(PP12), .P13(PP13), .P14(PP14), .P15(PP15),
        .P16(PP16),
        .SUM(s_um), .CARRY(c_arry)
    );

    // -------------------------
    // Stage 3: Final CPA (CLA)
    // -------------------------
    wire [63:0] FINAL_PROD;
    wire        Cout;
    wire [63:0] cry_sh;
    assign cry_sh = (c_arry << 1);

    cla_64bit cla (
        .A(s_um),
        .B(cry_sh), // carry row shifted left
        .Cin(1'b0),
        .Sum(FINAL_PROD),
        .Cout(Cout)
    );

    // -------------------------
    // Split Output
    // -------------------------
    assign PROD_LSB = FINAL_PROD[31:0];
    assign PROD_MSB = FINAL_PROD[63:32];

endmodule

