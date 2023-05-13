/*
 And gate
*/
module and_gate
(
 d,
 e,
 q0,
 q1,
 );

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

   assign not0 = !d;
   assign and0 = e && not0;
   assign and1 = e && d;

   assign or0 = and0 && not2;
   assign or1 = and1 && not1;

   assign not1 = !or0;
   assign not2 = !or1;

   assign q0 = not1;
   assign q1 = not2;

endmodule // and_gate
