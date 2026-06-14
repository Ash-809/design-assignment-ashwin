# Day 5: SystemVerilog Interfaces and Design Verification

## Overview
This directory contains the design and verification files for Day 5 of my VLSI & Chip Design activities. The primary focus of this session was to implement hardware modules using **SystemVerilog** and efficiently verify their functionality using **SystemVerilog Interfaces**.

## Directory Structure & Tasks

### 📂 [Task 1: 4-Bit BCD Adder](./Task1)
* **Description:** SystemVerilog implementation of a 4-Bit Binary Coded Decimal (BCD) adder. The design adds two 4-bit numbers and generates a BCD-corrected sum and carry out.
* **Key Learnings:** Combinational logic design, BCD arithmetic rules, and connecting Device Under Test (DUT) using interfaces.
* **Documentation:** Please refer to the [BCD Adder Documentation](./Task1/bcd_adder.md) for design logic and simulation details.

### 📂 [Task 2: Synchronous FIFO](./Task2)
* **Description:** SystemVerilog implementation of a parameterized Synchronous First-In-First-Out (FIFO) memory buffer.
* **Key Learnings:** Sequential logic design, memory array initialization, managing read/write pointers, and generating `empty` and `full` status flags to prevent data loss.
* **Documentation:** Please refer to the [FIFO Documentation](./Task2/fifo.md) for test sequences and verification details.

## Tools & Technologies Used
* **Hardware Description Language:** SystemVerilog
* **Simulation & Verification Tool:** Xilinx Vivado 2023.2
