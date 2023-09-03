module sr(
	input S,
	input R,
	output Q,
	output N
);

nand(N, S, Q);
nand(Q, R, N);

endmodule
