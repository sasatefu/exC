module TopWLI (

	 input wire SZeroInput,
    input wire SOneInput,
	 input wire STwoInput,
	 output wire OutA,
	 output wire OutB,
	 output wire OutC,
	 output wire OutD,
	 output wire OutE,
	 output wire OutF,
	 output wire OutG
);

	 wire SZero;
	 wire SOne;
	 wire STwo;
	 
	 wire OutARaw;
    wire OutBRaw;
    wire OutCRaw;
    wire OutDRaw;
    wire OutERaw;
    wire OutFRaw;
    wire OutGRaw;

	 

  	 assign SZero = ~SZeroInput;
	 assign SOne = ~SOneInput;
	 assign STwo = ~STwoInput;
	
	 WLI uut (
        .SZero(SZero),
        .SOne(SOne),
        .STwo(STwo),
        .OutA(OutARaw),
        .OutB(OutBRaw),
        .OutC(OutCRaw),
        .OutD(OutDRaw),
        .OutE(OutERaw),
        .OutF(OutFRaw),
        .OutG(OutGRaw)
    );
	 
	 assign OutA = ~OutARaw;
	 assign OutB = ~OutBRaw;
	 assign OutC = ~OutCRaw;
	 assign OutD = ~OutDRaw;
	 assign OutE = ~OutERaw;
	 assign OutF = ~OutFRaw;
	 assign OutG = ~OutGRaw;
	 
endmodule


	 
	 