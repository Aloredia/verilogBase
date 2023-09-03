module tb_sr();

reg A, B;
wire C, D;

sr uut(A, B, C, D);

initial begin
	
	// $dumpfile("dmp.vcb"); $dumpvars(0, tb_sr);
	
	A = 1; B = 0; #10;
	A = 1; B = 1; #10;
	A = 0; B = 1; #10;
	A = 0; B = 0; #10;
end
endmodule
