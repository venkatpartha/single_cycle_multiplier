`timescale 1ns/1ps

module tb_cla_64bit;

    reg  [63:0] A, B;
    reg         Cin;
    wire [63:0] Sum;
    wire        Cout;

    // Instantiate DUT
    cla_64bit uut (
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Cout(Cout)
    );

    initial begin
        $display("====== 64-bit CLA Testbench ======");

        // Test 1: Small numbers
        A = 64'd5; B = 64'd10; Cin = 0;
        #5;
        $display("Test1: %0d + %0d = %0d (Cout=%b)", A, B, Sum, Cout);

        // Test 2: With carry in
        A = 64'd20; B = 64'd30; Cin = 1;
        #5;
        $display("Test2: %0d + %0d + Cin = %0d (Cout=%b)", A, B, Sum, Cout);

        // Test 3: Big numbers without overflow
        A = 64'h0000_FFFF_FFFF_FFFF;
        B = 64'h0000_0000_0000_0001;
        Cin = 0;
        #5;
        $display("Test3: %h + %h = %h (Cout=%b)", A, B, Sum, Cout);

        // Test 4: Overflow case
        A = 64'hFFFF_FFFF_FFFF_FFFF;
        B = 64'h0000_0000_0000_0001;
        Cin = 0;
        #5;
        $display("Test4: %h + %h = %h (Cout=%b)", A, B, Sum, Cout);

        // Test 5: Random test
        A = 64'h1234_5678_9ABC_DEF0;
        B = 64'h0FED_CBA9_8765_4321;
        Cin = 0;
        #5;
        $display("Test5: %h + %h = %h (Cout=%b)", A, B, Sum, Cout);

        $finish;
    end

endmodule
