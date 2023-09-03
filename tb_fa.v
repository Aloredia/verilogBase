module fa_tb();

reg A, B, C;
wire D, E;

fa uut(A, B, C, D, E);

initial begin
	/*
	$dumpfile("dmp.vcb");
	$dumpvars(0, tb_fa);
	*/
	A = 0;
	B = 0;
	C = 0;
	#10;

	A = 1;
	B = 1;
	C = 1;
	#10;
	
	A = 1;
	B = 0;
	C = 1;
	#10;

	A = 0;
	B = 1;
	C = 1;
	#10;
	
	A = 1;	
	B = 1;
	C = 0;
	#10;

	A = 0;
	B = 0;
	C = 1;
	#10;

	A = 0;
	B = 1;
	C = 0;
	#10;

	A = 1;
	B = 0;
	C = 0;
	#10;

end
endmodule
