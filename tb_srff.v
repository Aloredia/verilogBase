module tb_srff();

reg clk = 0;
reg A, B;
wire C, D;

srff uut(clk, A, B, C, D);

always begin
	clk = ~clk; #10;
end

initial begin
	
	// $dumpfile("dmp.vcb"); $dumpvars(0, tb_srff);
	
	A = 1; B = 0; #10;
	A = 0; B = 0; #10;
	A = 0; B = 1; #10;
	A = 0; B = 0; #10;
	A = 0; B = 1; #10;
	A = 1; B = 0; #10;
	A = 1; B = 0; #10;
	A = 0; B = 1; #10;

	$finish;
end
endmodule
