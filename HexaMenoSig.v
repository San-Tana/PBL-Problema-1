module HexaMenoSig(A,B,C,D,E,segA,segB,segC,segD,segE,segF,segG);
	input A,B,C,D,E;
	output segA,segB,segC,segD,segE,segF,segG;
	wire nA,nB,nC,nD,nE;
	// NEGADOS
	not not1(nA,A);
	not not2(nB,B);
	not not3(nC,C);
	not not4(nD,D);
	not not5(nE,E);
	// SEGMENTO A
	wire f1,f2,f3,f4,f5,f6,f7;
	and and1(f1,nA,nB,nC,nD,E);
	and and2(f2,nB,C,nD,nE);
	and and3(f3,B,C,D,nE);
	and and4(f4,B,nC,D,E);
	and and5(f5,A,nD,nE);
	and and6(f6,A,C);
	and and7(f7,A,B);
	or or1(segA,f1,f2,f3,f4,f5,f6,f7);
	//SEGMENTO B
	wire f8,f9,f10,f11,f12,f13;
	and and8(f8,nB,C,nD,E);
	and and9(f9,nB,C,D,nE);
	and and10(f10,B,C,D,E);
	and and11(f11,A,E);
	and and12(f12,A,nD);
	and and13(f13,A,B);
	or or2(segB,f8,f9,f10,f11,f12,f13);
	// SEGMENTO C
	wire f14,f15,f16,f17,f18;
	and and14(f14,B,C,nD,nE);
	and and15(f15,nB,nC,D,nE);
	and and16(f16,A,nD,E);
	and and17(f17,A,B);
	and and18(f18,A,C);
	or or3(segC,f14,f15,f16,f17,f18);
	// SEGMENTO D
	wire f19,f20,f21,f22,f23,f24,f25;
	and and19(f19,nA,nB,nC,nD,E);
	and and20(f20,nB,C,D,E);
	and and21(f21,nB,C,nD,nE);
	and and22(f22,B,D,nE);
	and and23(f23,B,nC,D);
	and and24(f24,A,B);
	and and25(f25,A,C);
	or or4(segD,f19,f20,f21,f22,f23,f24,f25);
	// SEGMENTO E
	wire f26,f27,f28,f29,f30;
	and and26(f26,B,C,D);
	and and27(f27,nB,C,nD);
	and and28(f28,A,B);
	and and29(f29,A,C);
	and and30(f30,nA,E);
	or or5(segE,f26,f27,f28,f29,f30);
	// SEGMENTO F
	wire f31,f32,f33,f34,f35,f36,f37;
	and and31(f31,nB,C,D,E);
	and and32(f32,nB,nC,D,nE);
	and and33(f33,nA,nB,nC,E);
	and and34(f34,B,nC,D,E);
	and and35(f35,B,C,nD);
	and and36(f36,A,C);
	and and37(f37,A,B);
	or or6(segF,f31,f32,f33,f34,f35,f36,f37);
	// SEGMENTO G
	wire f38,f39,f40,f41,f42;
	and and38(f38,B,nC,D,E);
	and and39(f39,nB,C,D,E);
	and and40(f40,nA,nB,nC,nD);
	and and41(f41,A,B);
	and and42(f42,A,C);
	or or7(segG,f38,f39,f40,f41,f42);
endmodule
	
	