module mux4to1_gate (
    input a, b, c, d,
    input s1, s0,
    output y
);

wire s1n, s0n;
wire w0, w1, w2, w3;

// NOT gates
not (s1n, s1);
not (s0n, s0);

// AND gates
and (w0, a, s1n, s0n);
and (w1, b, s1n, s0);
and (w2, c, s1,  s0n);
and (w3, d, s1,  s0);

// OR gate
or (y, w0, w1, w2, w3);

endmodule
