module binario(A, B, C, D, E, S6, S5, S4, S3, S2, S1, S0);
	input A, B, C, D, E;
	output S6, S5, S4, S3, S2, S1, S0;
	
	// Negados
	wire nA, nB, nC, nD, nE;
	not notA(nA, A);
	not notB(nB, B);
	not notC(nC, C);
	not notD(nD, D);
	not notE(nE, E);
	
	// LEDR6
	wire f1, f2, f3;
	and and60(f1, nA, B, D, E);
	and and61(f2, nA, B, C);
	and and62(f3, A, nB, nC); // Reutilizado no LEDR1;
	or or6(S6, f1, f2, f3);
	
	// LEDR5
	wire f4, f5, f6;
	and and50(f4, nA, nB); // Reutilizado no LEDR4;
	and and51(f5, nA, nC, nD); // Reutilizado no LEDR4;
	and and52(f6, nA, nC, nE); // Reutilizado no LEDR4;
	or or5(S5, f4, f5, f6);
	
	// LEDR4
	wire f7;
	and and40(f7, nB, nC, D);
	or or4(S4, f4, f5, f6, f7);
	
	// LEDR3
	wire f8, f9, f10;
	and and30(f8, nA, B, nC, nD);
	and and31(f9, nA, B, nC, nE);
	and and32(f10, A, nB, nC, nD);
	or or3(S3, f8, f9, f10);
	
	// LEDR2
	wire f11, f12, f13;
	and and20(f11, nA, nB, C);
	and and21(f12, nA, C, D);
	and and22(f13, A, nB, nC, E);
	or or2(S2, f11, f12, f13);
	
	// LEDR1
	wire f14, f15, f16;
	and and10(f14, nA, nB, D);
	and and11(f15, nA, nC, D, nE);
	and and12(f16, nA, B, C, nD);
	or or1(S1, f14, f15, f16, f3);
	
	// LEDR0
	wire f17, f18;
	and and00(f17, nA, E);
	and and01(f18, A, nB, nC, nD, nE);
	or or0(S0, f17, f18);
endmodule