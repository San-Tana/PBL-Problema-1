module TOP_MODULE (A,B,C,D,E, Disp1, Disp2, Disp3, LED);
    input A,B,C,D,E;
    output [6:0]Disp1, Disp2, Disp3, LED;
    wire C1;  // Carry entre os dois somadores de 1 bit

    // Instanciando o primeiro somador completo de 1 bit (bit menos significativo)
    HexaMaiSig DISPLAY02 (
        .A(A),
        .B(B),
        .C(C),
        .D(D),
		  .E(E),
        .segA(Disp2[0]),
		  .segB(Disp2[1]),
		  .segC(Disp2[2]),
		  .segD(Disp2[3]),
		  .segE(Disp2[4]),
		  .segF(Disp2[5]),
		  .segG(Disp2[6])
    );

    // Instanciando o segundo somador completo de 1 bit (bit mais significativo)
     HexaMenoSig DISPLAY01 (
        .A(A),
        .B(B),
        .C(C),
        .D(D),
		  .E(E),
        .segA(Disp1[0]),
		  .segB(Disp1[1]),
		  .segC(Disp1[2]),
		  .segD(Disp1[3]),
		  .segE(Disp1[4]),
		  .segF(Disp1[5]),
		  .segG(Disp1[6])
    );
	 
	 caractere DISPLAY03 (
			.A(A),
			.B(B),
			.C(C),
			.D(D),
			.E(E),
			.a(Disp3[0]),
			.b(Disp3[1]),
			.c(Disp3[2]),
			.d(Disp3[3]),
			.e(Disp3[4]),
			.f(Disp3[5]),
			.g(Disp3[6])
	);
	
	binario LEDS (
			.A(A),
			.B(B),
			.C(C),
			.D(D),
			.E(E),
			.S6(LED[6]),
			.S5(LED[5]),
			.S4(LED[4]),
			.S3(LED[3]),
			.S2(LED[2]),
			.S1(LED[1]),
			.S0(LED[0]) 
	);
			

endmodule