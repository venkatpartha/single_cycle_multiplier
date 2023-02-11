`timescale 1ns/1ps

module booth_radix4_multiplier_tb;

    // DUT Inputs
    reg  [31:0] A;
    reg  [31:0] B;
    reg         alu_signed;

    // DUT Outputs (partial products)
    wire [63:0] PP0, PP1, PP2, PP3;
    wire [63:0] PP4, PP5, PP6, PP7;
    wire [63:0] PP8, PP9, PP10, PP11;
    wire [63:0] PP12, PP13, PP14, PP15, PP16;

    // Instantiate DUT
    booth_radix4_multiplier uut (
        .A(A),
        .B(B),
        .alu_signed(alu_signed),
        .PP0(PP0), .PP1(PP1), .PP2(PP2), .PP3(PP3),
        .PP4(PP4), .PP5(PP5), .PP6(PP6), .PP7(PP7),
        .PP8(PP8), .PP9(PP9), .PP10(PP10), .PP11(PP11),
        .PP12(PP12), .PP13(PP13), .PP14(PP14), .PP15(PP15), .PP16(PP16)
    );

    // Expected results
    reg  [63:0] expected;
    reg  [63:0] sum_pp;

    // Task to check results
    task check_result;
        begin
            // Add all partial products
            sum_pp = PP0 + PP1 + PP2 + PP3 +
                     PP4 + PP5 + PP6 + PP7 +
                     PP8 + PP9 + PP10 + PP11 +
                     PP12 + PP13 + PP14 + PP15 + PP16;

            // Expected product
            if (alu_signed)
                expected = $signed(A) * $signed(B);
            else
                expected = A * B;

            // Display results
            $display("\nTime=%0t | A=%h | B=%h | signed=%b", $time, A, B, alu_signed);
            $display("Expected Product = %h", expected);
            $display("Sum of Partial Products = %h", sum_pp);

            // PASS/FAIL check
            if (sum_pp === expected)
                $display("? TEST PASSED");
            else
                $display("? TEST FAILED");
        end
    endtask

    // Test sequence
    initial begin
        // Case 1: LSB × LSB
        alu_signed = 0; A = 32'h0000_0001; B = 32'h0000_0001; #10; check_result();

        // Case 2: LSB × MSB
        A = 32'h0000_0001; B = 32'h8000_0000; #10; check_result();

        // Case 3: MSB × LSB
        A = 32'h8000_0000; B = 32'h0000_0001; #10; check_result();

        // Case 4: MSB × MSB
        A = 32'h8000_0000; B = 32'h8000_0000; #10; check_result();

        // Case 5: Signed, MSB × LSB
        alu_signed = 1; A = 32'h8000_0000; B = 32'h0000_0001; #10; check_result();

        // Case 6: Signed, LSB × MSB
        A = 32'h0000_0001; B = 32'h8000_0000; #10; check_result();

        // Case 7: Signed, MSB × MSB
        A = 32'h8000_0000; B = 32'h8000_0000; #10; check_result();

        $finish;
    end

endmodule

