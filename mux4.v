module mux4 (
	input [3:0] i,
	input [1:0] c,
	output o
);

wire w0, w1, w2, w3;
wire nc0, nc1;

not(nc0, c[0]);
not(nc1, c[1]);

and(w0, i[0], nc1, nc0);
and(w1, i[1], nc1, c[0]);
and(w2, i[2], c[0], nc1);
and(w3, i[3], c[0], c[1]);

or(o, w1, w2, w3, w4);

endmodule
