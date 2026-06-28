# D Flip-Flop (Verilog)

A D Flip-Flop (Data Flip-Flop) is a fundamental sequential circuit used to store 1-bit of data.
It captures the input value (D) on a specific clock edge and holds that value until the next triggering event.

# Overview
Type: Sequential Circuit
Trigger: Positive Edge (posedge clk)
Storage: 1-bit
Main Use: Registers, memory elements, pipelines

# Working Principle

The D Flip-Flop works based on the clock signal:

On every positive edge (0 → 1) of the clock:
Output Q takes the value of input D
Between clock edges:
Output Q remains constant (holds previous value)

# Truth Table
Clock Edge	D	    Q (Next State)
↑ (posedge)	0	         0
↑ (posedge)	1	         1
No Edge	    X	      No Change

# Key Concepts
always @(posedge clk) → triggers only at rising edge
q <= d → non-blocking assignment (used in sequential logic)
reg type → required for storing values in procedural blocks
