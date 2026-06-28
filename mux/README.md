# 4:1 Multiplexer (MUX) using Gate-Level Verilog

# Project Overview
This project implements a 4:1 Multiplexer (MUX) using gate-level Verilog modeling. 
The design selects one of four input signals based on two select lines and routes it to a single output. 
The functionality is verified using a Verilog testbench and waveform simulation.

# Logic Description

A 4:1 MUX selects one input from four inputs:

Select (s1 s0)	Output
0        0	      a
0        1	      b
1        0	      c
1        1	      d

# Boolean Expression
y = a·s1'·s0' + b·s1'·s0 + c·s1·s0' + d·s1·s0

# Design Architecture
2 NOT gates
4 AND gates
1 OR gate

# Waveform Results
The waveform confirms correct operation:

When s1s0 = 00 → Output = a
When s1s0 = 01 → Output = b
When s1s0 = 10 → Output = c
When s1s0 = 11 → Output = d

# Key Learning Outcomes
Understanding of multiplexer logic
Gate-level Verilog modeling
Testbench creation
Waveform analysis
Basic digital system design flow
