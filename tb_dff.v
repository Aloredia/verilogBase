module tb_dff();

reg clk = 1;
reg A;
wire B;

dff uut(clk, A, B);

always begin
	#10; clk = ~clk;
end

initial begin
	
	$dumpfile("dmp.vcb"); $dumpvars(0, tb_dff);
	
	A = 1; #10;
	A = 0; #30;
	A = 1; #20;
	A = 0; #20;
	A = 0; #20;
	A = 1; #20;
	A = 1; #20;
	A = 1; #20;

	$finish;
end
endmodule
