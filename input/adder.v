/* 
Full Adder Module for bit Addition
*/
module adder
(
    addr_a,
    addr_b,
    zero,
    one,
    clock,
    y,
	z
 );

   input addr_a;
   input addr_b;
   input zero;
   input one;
   input clock;

   output y;
   output z;

   assign y = tmp;
   assign z = addr_a || addr_b;


endmodule
