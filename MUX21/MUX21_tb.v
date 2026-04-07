`default_nettype none
`timescale 1ns/1ps

module MUX21_tb;
   
   reg  a,b,sel;
   wire y;

   MUX21 uut(
      .a(a),
      .b(b),
      .sel(sel),
      .y(y)
   );
   initial begin

      $dumpfile("dump.vcd");
      $dumpvars(0, uut);
      
      sel=0; a=0; b=1; #10;   
      sel=0; a=1; b=0; #10;   

      sel=1; a=0; b=1; #10;   
      sel=1; a=1; b=0; #10;   
      $finish;
    end

endmodule
