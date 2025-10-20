// ==================================================
// Testbench: 4-bit Parity Generator
// ==================================================
`timescale 1ns/1ps

module parity_generator_tb;

    reg  [3:0] data;
    wire even_p;
    wire odd_p;

    // Instantiate the DUT (Device Under Test)
    parity_generator uut (
        .data_in(data),
        .even_parity(even_p),
        .odd_parity(odd_p)
    );

    initial begin
        $display("=======================================");
        $display("4-BIT PARITY GENERATOR TEST");
        $display("Data\tEven_Parity\tOdd_Parity");
        $display("=======================================");

        // Apply test vectors
        data = 4'b0000; #10;
        $display("%b\t%b\t\t%b", data, even_p, odd_p);

        data = 4'b0001; #10;
        $display("%b\t%b\t\t%b", data, even_p, odd_p);

        data = 4'b1010; #10;
        $display("%b\t%b\t\t%b", data, even_p, odd_p);

        data = 4'b1111; #10;
        $display("%b\t%b\t\t%b", data, even_p, odd_p);

        data = 4'b1101; #10;
        $display("%b\t%b\t\t%b", data, even_p, odd_p);

        $display("=======================================");
        $finish;
    end

endmodule
