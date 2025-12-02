module Top (
    input  wire        Clk,
    input  wire        Clr,
    input  wire        RwIn,
    input  wire        EaIn,
    input  wire [15:0] DIn,
    output wire [15:0] Q,
    output wire [15:0] Qa,
    output wire [3:0]  LedCtrl,
    output wire [15:0] LedD
);

    wire [15:0] D;
    wire        Rw;
    wire        Ea;
	 wire [15:0] q_raw, qa_raw;

    assign D  = ~DIn;
    assign Rw = ~RwIn;
    assign Ea = ~EaIn;
	 

    regSixteen uut (
        .CLK(Clk),
        .CLR(Clr),
        .R_W(Rw),
        .Ea(Ea),
        .D(D),
        .Q(q_raw),
        .Qa(qa_raw)
    );
	 
	 assign Q  = ~q_raw;
	 assign Qa = ~qa_raw;

    assign LedCtrl[0] = Clk;
    assign LedCtrl[1] = Clr;
    assign LedCtrl[2] = Rw;
    assign LedCtrl[3] = Ea;

    assign LedD = D;

endmodule
