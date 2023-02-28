`timescale 1ns/1ps

module tb_booth_multiplier_top;

    reg  [31:0] A, B;
    reg         alu_signed;
    wire [63:0] PRODUCT;

    // Instantiate the DUT (Device Under Test)
    booth_multiplier_top dut (
        .A(A),
        .B(B),
        .alu_signed(alu_signed),
        .PRODUCT(PRODUCT)
    );

    // Task for applying test cases
    task apply_test(input [31:0] a_in, input [31:0] b_in, input signed_mode);
        begin
            A = a_in;
            B = b_in;
            alu_signed = signed_mode;
            #10;  // wait for signals to settle

            if (alu_signed)
                $display("SIGNED  : %0d x %0d = %0d, DUT: %0d",
                         $signed(A), $signed(B), $signed(A) * $signed(B), $signed(PRODUCT));
            else
                $display("UNSIGNED: %0d x %0d = %0d, DUT: %0d",
                         A, B, A * B, PRODUCT);
        end
    endtask

    initial begin
        $display("===== Booth Multiplier Top Testbench =====");

        // Unsigned tests
        apply_test(32'd15, 32'd10, 0);             // 15 * 10
        apply_test(32'd1000, 32'd2000, 0);         // Large numbers
        apply_test(32'hFFFFFFFF, 32'd2, 0);        // Max unsigned (2^32-1) * 2

        // Signed tests
        apply_test(32'sd15, -32'sd10, 1);          // 15 * -10
        apply_test(-32'sd1000, 32'sd2000, 1);      // -1000 * 2000
        apply_test(-32'sd2147483648, 32'sd1, 1);   // Min int * 1
        apply_test(-32'sd2147483648, -32'sd1, 1);  // Min int * -1 (edge case)

        // Zero cases
        apply_test(32'd0, 32'd12345, 0);
        apply_test(32'd12345, 32'd0, 1);

        $display("===== Testbench Completed =====");
        $stop;
    end

endmodule

