`timescale 1ns/1ps

module tb_booth16x16_extremes;

    // DUT inputs
    reg  [15:0] A, B;
    reg         alu_signed;

    // DUT outputs
    wire        neg_flag;
    wire        zero_flag;
    wire [31:0] PROD_RESULT;

    // Instantiate DUT
    booth16x16_top dut (
        .A(A),
        .B(B),
        .alu_signed(alu_signed),
        .neg_flag(neg_flag),
        .zero_flag(zero_flag),
        .PROD_RESULT(PROD_RESULT)
    );

    // Reference values
    reg signed [31:0] ref_signed;
    reg        [31:0] ref_unsigned;

    task run_test(input [15:0] a_in, input [15:0] b_in, input signed_mode);
        begin
            A = a_in;
            B = b_in;
            alu_signed = signed_mode;
            #5;

            if (alu_signed) begin
                ref_signed = $signed(A) * $signed(B);
                $display("SIGNED:   A=%h B=%h | DUT=%h Ref=%h %s",
                         $signed(A), $signed(B), $signed(PROD_RESULT), ref_signed,
                         (PROD_RESULT===ref_signed) ? "Matched" : "Not Matched");
            end else begin
                ref_unsigned = A * B;
                $display("UNSIGNED: A=%h B=%h | DUT=%h Ref=%h %s",
                         A, B, PROD_RESULT, ref_unsigned,
                         (PROD_RESULT===ref_unsigned) ? "Matched" : "Not Matched");
            end
        end
    endtask

    initial begin
        $display("====== Extreme Value Testbench ======");

        // ----------------
        // Unsigned extremes
        // ----------------
        run_test(16'h0000, 16'h0000, 0); // min * min
        run_test(16'h0001, 16'hFFFF, 0); // smallest * largest
        run_test(16'hFFFF, 16'hFFFF, 0); // max * max
        run_test(16'h8000, 16'h8000, 0); // mid * mid

        // ----------------
        // Signed extremes
        // ----------------
        run_test(16'sh0000, 16'sh0000, 1); // 0 * 0
        run_test(16'sh7FFF, 16'sh7FFF, 1); // max_pos * max_pos
        run_test(16'sh8000, 16'sh8000, 1); // min_neg * min_neg
        run_test(16'sh7FFF, 16'sh8000, 1); // max_pos * min_neg
        run_test(16'sh8000, 16'sh0001, 1); // min_neg * 1
        run_test(16'shFFFF, 16'shFFFF, 1); // -1 * -1

        $display("====== Completed Extreme Tests ======");
        $finish;
    end

endmodule

