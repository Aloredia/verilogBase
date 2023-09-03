module srff(
	input clk,
	input S,
	input R,
	output Q,
	output N
);

wire w1, w2;
nand(w1, S, clk);
nand(w2, R, clk);
sr s(w1, w2, Q, N);

endmodule
