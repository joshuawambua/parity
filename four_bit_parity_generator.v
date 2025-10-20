// ==================================================
// Module: 4-bit Parity Generator
// Author: Joshua Muthenya Wambua
// Description: Generates even and odd parity bits
// ==================================================

module parity_generator (
    input  [3:0] data_in,     // 4-bit input data
    output even_parity,       // Even parity output
    output odd_parity         // Odd parity output
);

    // Even parity = XOR of all data bits
    assign even_parity = data_in[3] ^ data_in[2] ^ data_in[1] ^ data_in[0];

    // Odd parity = complement of even parity
    assign odd_parity  = ~even_parity;

endmodule
