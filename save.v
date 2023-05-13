module adder
(
    addr_a,
    addr_b,
    zero,
    one,
    clock,
    a,
    b,
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

   a = (!addr_a && zero) | (addr_a && one);
   b = (!addr_b && zero) | (addr_b && one);

   borrow = !(a && b) && a;
   b_prime = !(a && b) && b;

   assign y = a;
   assign z = b;

endmodule
