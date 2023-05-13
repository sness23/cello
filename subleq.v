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
	z,
    d,
    e,
    q0,
    q1,

 );

   input addr_a;
   input addr_b;
   input zero;
   input one;
   input clock;

      input d;
   input e;

   wire  not0;
   wire  and0;
   wire  and1;
   wire  or0;
   wire  or1;
   wire  not1;
   wire  not2;

   output q0;
   output q1;

   output y;
   output z;

   a = (!addr_a && zero) | (addr_a && one);
   b = (!addr_b && zero) | (addr_b && one);

   borrow = !(a && b) && a;
   b_prime = !(a && b) && b;

   assign y = a;
   assign z = b;

   assign not0 = !d;
   assign and0 = e && not0;
   assign and1 = e && d;

   assign or0 = and0 && not2;
   assign or1 = and1 && not1;

   assign not1 = !or0;
   assign not2 = !or1;

   assign q0 = not1;
   assign q1 = not2;

endmodule
