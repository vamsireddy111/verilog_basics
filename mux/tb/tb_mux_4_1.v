module tb_mux4;

reg a, b, c, d;
reg s1, s0;
wire y;

mux4to1_gate uut (
    .a(a), .b(b), .c(c), .d(d),
    .s1(s1), .s0(s0),
    .y(y)
);

initial begin
    $dumpfile("mux4.vcd");
    $dumpvars(0, tb_mux4);

    $monitor("a=%b b=%b c=%b d=%b s1=%b s0=%b y=%b",
              a,b,c,d,s1,s0,y);

    a=0; b=1; c=0; d=1;

    s1=0; s0=0; #10;
    s1=0; s0=1; #10;
    s1=1; s0=0; #10;
    s1=1; s0=1; #10;

    $finish;
end

endmodule
