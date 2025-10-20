// ==================================================
// Testbench: 4-bit Parity Checker
// ==================================================
`timescale 1ns/1ps

module parity_checker_tb;

    reg  [3:0] data;
    reg  parity_bit;
    reg  parity_type;   // 0 = even, 1 = odd
    wire error;

    // Instantiate DUT
    parity_checker uut (
        .data_in(data),
        .parity_bit(parity_bit),
        .parity_type(parity_type),
        .error(error)
    );

    initial begin
        $display("==============================================");
        $display("4-BIT PARITY CHECKER TEST");
        $display("Data\tParityBit\tType(E=0/O=1)\tError");
        $display("==============================================");

        // ---------- EVEN PARITY TESTS ----------
        parity_type = 0; // Even
        data = 4'b1011; parity_bit = 1'b1; #10;  // Correct parity
        $display("%b\t%b\t\t%d\t\t%b", data, parity_bit, parity_type, error);

        data = 4'b1011; parity_bit = 1'b0; #10;  // Wrong parity
        $display("%b\t%b\t\t%d\t\t%b", data, parity_bit, parity_type, error);

        // ---------- ODD PARITY TESTS ----------
        parity_type = 1; // Odd
        data = 4'b1011; parity_bit = 1'b0; #10;  // Correct parity
        $display("%b\t%b\t\t%d\t\t%b", data, parity_bit, parity_type, error);

        data = 4'b1011; parity_bit = 1'b1; #10;  // Wrong parity
        $display("%b\t%b\t\t%d\t\t%b", data, parity_bit, parity_type, error);

        $display("==============================================");
        $finish;
    end

endmodule
