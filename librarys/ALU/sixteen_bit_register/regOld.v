module regOld (
    input  wire        CLK,
    input  wire        CLR,
    input  wire        R_W,
    input  wire        Ea,
    input  wire [15:0] D,
    output wire [15:0] Q,
    output wire [15:0] Qa
);
    reg [15:0] q;

    always @(posedge CLK or negedge CLR) begin
        if (!CLR)        q <= 16'b0;
        else if (!R_W)   q <= D;
        else             q <= q;
    end

    assign Q  = q;
    assign Qa = Ea ? q : 16'b0;
endmodule
