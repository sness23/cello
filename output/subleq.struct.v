module and_gate (input d, e, output q1, q0);

	wire \$n7_0;
	wire \$n7_1;
	wire \$n6_0;
	wire \$n8_0;
	wire \$n8_1;
	wire \$n13_0;
	wire \$n11_0;
	wire \$n12_0;

	not (\$n6_0, d);
	nor (\$n11_0, \$n7_0, \$n6_0);
	not (\$n12_0, \$n11_0);
	nor (\$n13_0, \$n8_0, \$n12_0);
	not (q1, \$n13_0);
	not (\$n7_0, e);
	not (\$n7_1, e);
	nor (\$n8_0, \$n7_1, d);
	nor (\$n8_1, \$n7_1, d);
	not (q0, \$n8_1);

endmodule
