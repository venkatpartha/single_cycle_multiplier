`timescale 1ns/1ps

module tb_booth_radix4_multiplier;

  // Inputs
  reg  signed [31:0] A, B;
  reg                alu_signed;

  // Outputs
  wire signed [63:0] PP0, PP1, PP2, PP3;
  wire signed [63:0] PP4, PP5, PP6, PP7;
  wire signed [63:0] PP8, PP9, PP10, PP11;
  wire signed [63:0] PP12, PP13, PP14, PP15, PP16;

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

  // To hold sum of partial products
  reg signed [63:0] sum_pp;
  reg signed [63:0] expected_product;

  integer i;

  // Task to apply a test case
  task run_test(input signed [31:0] a_in, input signed [31:0] b_in);
  begin
    A = a_in;
    B = b_in;
    alu_signed = 1'b1; // signed mode
    #10; // Wait for outputs

    // Compute expected product
    expected_product = A * B;

    // Add up all 17 partial products
    sum_pp = PP0 + PP1 + PP2 + PP3 +
             PP4 + PP5 + PP6 + PP7 +
             PP8 + PP9 + PP10 + PP11 +
             PP12 + PP13 + PP14 + PP15 + PP16;

    // Display results
    $display("==================================================");
    $display("A = %0d (0x%h), B = %0d (0x%h)", A, A, B, B);
    $display("Expected Product       = %0d", expected_product);
    $display("Sum of Partial Products= %0d", sum_pp);

    if (sum_pp !== expected_product)
      $display("? ERROR: Mismatch detected!");
    else
      $display("? PASS: Product matches!");
    $display("==================================================");
  end
  endtask

  initial begin
    // Test with negative values only
    run_test(-32'sd1,  -32'sd1);
    run_test(-32'sd2,  -32'sd3);
    run_test(-32'sd15, -32'sd7);
    run_test(-32'sd128, -32'sd64);
    run_test(-32'sd1024, -32'sd256);
    run_test(32'sd32768, -32'sd2);
    run_test(32'sd100000, -32'sd123);
    run_test(32'sd2147483648, -32'sd1); // lowest 32-bit signed × -1
    run_test(32'sd9999999, -32'sd1111);

    $finish;
  end

endmodule

