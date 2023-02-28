`timescale 1ns/1ps

module booth_multiplier_top (
    input  wire [31:0] A,          // Operand 1 (Multiplicand)
    input  wire [31:0] B,          // Operand 2 (Multiplier)
    input  wire        alu_signed, // 1 = signed, 0 = unsigned
    output wire [63:0] PRODUCT     // Final 64-bit product
);

    // Partial products from Booth encoding
    wire [63:0] PP0, PP1, PP2, PP3;
    wire [63:0] PP4, PP5, PP6, PP7;
    wire [63:0] PP8, PP9, PP10, PP11;
    wire [63:0] PP12, PP13, PP14, PP15, PP16;

    // Wires for Wallace tree outputs
    wire [63:0] SUM, CARRY;

    // Booth radix-4 partial product generator
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

    // Partial product reduction tree (Wallace tree using compressors)
    pp_tree16x64 tree (
        .P0(PP0),   .P1(PP1),   .P2(PP2),   .P3(PP3),
        .P4(PP4),   .P5(PP5),   .P6(PP6),   .P7(PP7),
        .P8(PP8),   .P9(PP9),   .P10(PP10), .P11(PP11),
        .P12(PP12), .P13(PP13), .P14(PP14), .P15(PP15),
        .P16(PP16),
        .s_u_m(SUM), 
        .c_arr_y(CARRY)
    );

    // Final Carry Propagate Adder (CPA)
    //assign PRODUCT = SUM + (CARRY << 1);
    //
    cla_64bit cla (
        .A(s_um),
        .B(c_arry << 1), // carry row shifted left
        .Cin(1'b0),
        .Sum(PRODUCT),
        .Cout(Cout)
    );

endmodule

