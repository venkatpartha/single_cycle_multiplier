`timescale 1ns/1ps

module tb_booth32x32_top;

    reg  [31:0] A, B;
    reg         alu_signed;
    wire [31:0] PROD_MSB;
    wire [31:0] PROD_LSB;

    // DUT Instance
    booth32x32_top dut (
        .A(A),
        .B(B),
        .alu_signed(alu_signed),
        .PROD_MSB(PROD_MSB),
        .PROD_LSB(PROD_LSB)
    );

    // Expected result (for checking)
    reg signed [63:0] exp_signed;
    reg       [63:0] exp_unsigned;
    reg       [63:0] dut_result;

    initial begin
        $display("===============================================");
        $display("      Booth Multiplier 32x32 Testbench         ");
        $display("===============================================");

        // ------------------------------
        // Unsigned Tests
        // ------------------------------
        alu_signed = 0;

        A = 32'd15;  B = 32'd3; #10;
        exp_unsigned = A * B;
        dut_result = {PROD_MSB, PROD_LSB};
        $display("UNSIGNED: %0d * %0d = %0d | DUT = %0d", A, B, exp_unsigned, dut_result);

        A = 32'd12345;  B = 32'd6789; #10;
        exp_unsigned = A * B;
        dut_result = {PROD_MSB, PROD_LSB};
        $display("UNSIGNED: %0d * %0d = %0d | DUT = %0d", A, B, exp_unsigned, dut_result);

        A = 32'hFFFFFFFF;  B = 32'd2; #10;  // (max unsigned * 2)
        exp_unsigned = A * B;
        dut_result = {PROD_MSB, PROD_LSB};
        $display("UNSIGNED: %0d * %0d = %0d | DUT = %0d", A, B, exp_unsigned, dut_result);

        // ------------------------------
        // Signed Tests
        // ------------------------------
        alu_signed = 1;

        A = -32'sd10;  B = 32'sd20; #10;
        exp_signed = A * B;
        dut_result = {PROD_MSB, PROD_LSB};
        $display("SIGNED: %0d * %0d = %0d | DUT = %0d", A, B, exp_signed, dut_result);

        A = -32'sd1234;  B = -32'sd56; #10;
        exp_signed = A * B;
        dut_result = {PROD_MSB, PROD_LSB};
        $display("SIGNED: %0d * %0d = %0d | DUT = %0d", A, B, exp_signed, dut_result);

        A = 32'sd32768;  B = -32'sd32768; #10;
        exp_signed = A * B;
        dut_result = {PROD_MSB, PROD_LSB};
        $display("SIGNED: %0d * %0d = %0d | DUT = %0d", A, B, exp_signed, dut_result);

        // ------------------------------
        // Random Tests
        // ------------------------------
        repeat (5) begin
            A = $random;
            B = $random;
            alu_signed = $random % 2;
            #10;
            if (alu_signed) begin
                exp_signed = $signed(A) * $signed(B);
                dut_result = {PROD_MSB, PROD_LSB};
                $display("RANDOM SIGNED: %0d * %0d = %0d | DUT = %0d", $signed(A), $signed(B), exp_signed, dut_result);
            end else begin
                exp_unsigned = A * B;
                dut_result = {PROD_MSB, PROD_LSB};
                $display("RANDOM UNSIGNED: %0d * %0d = %0d | DUT = %0d", A, B, exp_unsigned, dut_result);
            end
        end

        $display("===============================================");
        $finish;
    end

endmodule

