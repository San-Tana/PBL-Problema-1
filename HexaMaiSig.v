module HexaMaiSig(A,B,C,D,E,segA,segB,segC,segD,segE,segF,segG);
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
	wire f1,f2,f3,f4,f5;
	and and1(f1,B,D,E);
	and and2(f2,B,C);
	and and3(f3,A,nD);
	and and4(f4,A,C);
	and and5(f5,A,B);
	or or1(segA,f1,f2,f3,f4,f5);
	// SEGMENTO B
	wire f6,f7,f8;
	and and6(f6,A,C);
	and and7(f7,A,B);
	and and8(f8,A,D);
	or or2(segB,f6,f7,f8);
	// SEGMENTO C
	wire f9,f10;
	and and9(f9,A,C);
	and and10(f10,A,B);
	or or3(segC,f9,f10);
	//SEGMENTO D
	wire f11,f12,f13,f14,f15;
	and and11(f11,B,D,E);
	and and12(f12,B,C);
	and and13(f13,A,nD);
	and and14(f14,A,C);
	and and15(f15,A,B);
	or or4(segD,f11,f12,f13,f14,f15);
	//SEGMENTO E 
	or or5(segE, E, nE);
	
	//SEGMENTO F
	wire f16, f17, f18, f19, f20;
	and and16(f16, nA, nB);
	and and17(f17, nB, C);
	and and18(f18, A, B);
	and and19(f19, nA, nC, nD);
	and and20(f20, nA, nC, nE);
	or or6(segF,f16,f17,f18,f19,f20);
	
	// SEGMENTO G == C
	or (segG,f9,f10);
endmodule



	
	
	
	
	