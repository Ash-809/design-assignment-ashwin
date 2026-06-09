# Day 1: Basic Adders Design

## Overview
This repository contains the Verilog RTL design and testbenches for basic digital adder circuits as part of the design assignment. 

## Projects Included
This folder contains the design and documentation for two types of adders:

1. **Ripple Carry Adder (RCA)**
   * A combinational logic circuit that adds two N-bit binary numbers.
   * **Documentation:** [RCA Readme](./Ripple_Carry_Adder/rca.md)

2. **Binary Coded Decimal (BCD) Adder**
   * A digital circuit that adds two BCD digits and produces a valid BCD sum with necessary corrections.
   * **Documentation:** [BCD Adder Readme](./BCD_Adder/bcd.md)

## Directory Structure
```text
day1/
├── BCD_Adder/
│   ├── bcd.md
│   └── bcd_adder.v
├── Ripple_Carry_Adder/
│   ├── design/
│   │   └── top.v
│   ├── tb/
│   │   └── tb_top.v
│   └── rca.md
└── README.md
**How to Run in Vivado**
1.Open Xilinx Vivado and create a new RTL project.

2.Add the respective .v design files (e.g., top.v or bcd_adder.v) as Design Sources.

3.Add the corresponding testbench files (e.g., tb_top.v) as Simulation Sources.

4.Click on Run Simulation -> Run Behavioral Simulation from the Flow Navigator to view the waveforms.
