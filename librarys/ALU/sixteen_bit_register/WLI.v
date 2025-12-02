module WLI (

	 input wire SZero,
    input wire SOne,
	 input wire STwo,
	 output wire OutA,
	 output wire OutB,
	 output wire OutC,
	 output wire OutD,
	 output wire OutE,
	 output wire OutF,
	 output wire OutG
);

	assign OutA = (~SZero) & ( STwo | (~SOne) );
	assign OutB = STwo & (~SOne);
	assign OutC = STwo & (~SOne);
	assign OutD = (STwo) & (~SOne);
	assign OutE = 1'b1;
	assign OutF = 1'b1;
	assign OutG = STwo | (SOne) | (~SZero);
	
endmodule

