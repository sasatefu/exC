`timescale 1ns/1ps
module tbRegSixteen;
    reg        CLK;
    reg        CLR;
    reg        R_W;
    reg        Ea;
    reg [15:0] D;
    wire [15:0] Q;
    wire [15:0] Qa;

    regSixteen uut (
        .CLK(CLK),
        .CLR(CLR),
        .R_W(R_W),
        .Ea(Ea),
        .D(D),
        .Q(Q),
        .Qa(Qa)
    );

    always #10 CLK = ~CLK;

    initial begin
        CLK = 0;
        CLR = 0; R_W = 1; Ea = 1; D = 16'h0000;
        #25;
        CLR = 1;

        R_W = 0; D = 16'h00AA;
        #20;

        R_W = 1;
        #40;

        R_W = 0; D = 16'h1234;
        #20;

        Ea = 0;
        #40;

        Ea = 1;
        #20;

        $stop;
    end
endmodule
