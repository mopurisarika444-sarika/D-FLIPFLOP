`timescale 1ns/1ps

module d_flip_flop_tb;

reg clk;
reg rst;
reg d;
wire q;

// Instantiate the DUT
d_flip_flop uut (
    .clk(clk),
    .rst(rst),
    .d(d),
    .q(q)
);

// Clock Generation
always #5 clk = ~clk;

initial begin
    $dumpfile("d_flip_flop.vcd");
    $dumpvars(0, d_flip_flop_tb);

    clk = 0;
    rst = 1;
    d = 0;

    #10 rst = 0;

    #10 d = 1;
    #10 d = 0;
    #10 d = 1;
    #10 d = 1;
    #10 d = 0;

    #20 $finish;
end

endmodule