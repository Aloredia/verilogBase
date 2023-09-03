module dff(
	input clk,
	input d,
	output o
);
wire nd, no;
not(nd, d);
srff s(clk, nd, d, o, no);
// intentionally flipped
endmodule
