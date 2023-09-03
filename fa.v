module fa(
	input P,
	input Q,
	input R,
	output S,
	output C
);

wire w1;
xor(w1, P, Q);
xor(S, w1, R);

wire w2;
and(w2, P, Q);

wire w3;
and(w3, w1, R);

or(C, w3, w2);
endmodule
