`default_nettype none
`timescale 1ns/1ps

module full_adder(
   input wire a,
   input wire b,
   input wire cin,
   output wire carry,
   output wire sum
);

   assign sum = a^b^cin;
   assign carry = (a & b)|(cin & (a ^ b));

endmodule 
