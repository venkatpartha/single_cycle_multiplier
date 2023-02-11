`timescale 1ns/1ps

module tb_booth16x16_top;

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

    // Reference signals
    reg signed [31:0] ref_signed;
    reg        [31:0] ref_unsigned;

    // Task to run one test
    task run_test(input [15:0] a_in, input [15:0] b_in, input signed_mode);
        begin
            A = a_in;
            B = b_in;
            alu_signed = signed_mode;
            #5; // wait for combinational logic

            if (alu_signed) begin
                ref_signed   = $signed(A) * $signed(B);
                if (PROD_RESULT !== ref_signed) begin
                    $display("? MISMATCH (signed): A=%h B=%h | DUT=%h Ref=%h",
                             $signed(A), $signed(B), $signed(PROD_RESULT), ref_signed);
                end else begin
                    $display("? OK (signed): A=%h B=%h | Result=%h",
                             $signed(A), $signed(B), $signed(PROD_RESULT));
                end
            end else begin
                ref_unsigned = A * B;
                if (PROD_RESULT !== ref_unsigned) begin
                    $display("? MISMATCH (unsigned): A=%h B=%h | DUT=%h Ref=%h",
                             A, B, PROD_RESULT, ref_unsigned);
                end else begin
                    $display("? OK (unsigned): A=%h B=%h | Result=%h",
                             A, B, PROD_RESULT);
                end
            end
        end
    endtask

    initial begin
        $display("====== Starting Booth16x16 Multiplier Testbench ======");

        // Basic directed tests
        run_test(16'd0, 16'd0, 0);      // 0 * 0
        run_test(16'd5, 16'd7, 0);      // unsigned small
        run_test(16'd255, 16'd10, 0);   // unsigned medium
        run_test(16'hFFFF, 16'd2, 0);   // unsigned max * 2
        run_test(-16'sd12, 16'sd3, 1);  // signed negative * positive
        run_test(-16'sd15, -16'sd2, 1); // signed negative * negative
        run_test(16'sd32767, 16'sd2, 1);// signed max * 2
        run_test(-16'sd32768, 16'sd1, 1);// signed min * 1

        // Randomized stress tests
        repeat (20) begin
            run_test($random, $random, 0); // unsigned
            run_test($random, $random, 1); // signed
        end

        $display("====== Testbench Completed ======");
        $finish;
    end

endmodule

