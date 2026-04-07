`default_nettype none
`timescale 1ns/1ps

module MUX21(
    input wire a,
    input wire b,
    input wire sel,
    output wire y
);

    assign y = sel ? b : a;

endmodule
