`default_nettype none
`timescale 1ns/1ps

module full_adder_tb;
   
   reg a,b,cin;
   wire sum,carry;

   full_adder uut(
      .a(a),
      .b(b),
      .cin(cin),
      .sum(sum),
      .carry(carry)
   );
   initial begin
      $dumpfile("dump.vcd");
      $dumpvars(0, full_adder_tb);
      
      a = 0; b = 0; cin = 0; #10;
      a = 0; b = 0; cin = 1; #10;
      a = 0; b = 1; cin = 0; #10;
      a = 0; b = 1; cin = 1; #10;
      a = 1; b = 0; cin = 0; #10;
      a = 1; b = 0; cin = 1; #10;
      a = 1; b = 1; cin = 0; #10;
      a = 1; b = 1; cin = 1; #10;

      $finish;      
   end
endmodule
