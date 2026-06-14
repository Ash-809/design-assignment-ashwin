# Synchronous FIFO using SystemVerilog

## Overview
This directory contains the SystemVerilog implementation of a Synchronous First-In-First-Out (FIFO) memory buffer. The design utilizes SystemVerilog interfaces to streamline the connection between the Device Under Test (DUT) and the testbench.

## Files Included
* **`fifo.sv`:** Contains the RTL design logic for the Synchronous FIFO, parameterized for customizable data width (8-bit) and memory depth (16).
* **`tb_fifo.sv`:** Contains the SystemVerilog interface declaration and the testbench module used to verify the read and write operations.

## Design Logic
A FIFO is a specialized storage buffer where the first data written is the first data to be read. 
* **Write Operation:** Data is written into the memory array at the `wr_ptr` location when the write enable (`wr_en`) signal is high and the FIFO is not `full`.
* **Read Operation:** Data is read from the memory array at the `rd_ptr` location when the read enable (`rd_en`) signal is high and the FIFO is not `empty`.
* **Pointers & Flags:** The design automatically maintains internal write and read pointers, along with a counter to generate `full` and `empty` status flags. This prevents data overflow (writing when full) and underflow (reading when empty).

## Simulation & Verification
The design was successfully simulated and verified using Xilinx Vivado. 

**Executed Test Sequence:**
1. **Reset:** Asserted the reset signal to initialize all pointers and flags to zero.
2. **Write Cycle:** Sequentially wrote three hexadecimal values (`8'hA1`, `8'hB2`, `8'hC3`) into the FIFO memory.
3. **Read Cycle:** Read the data back from the memory, verifying the strict First-In-First-Out retrieval order.
4. **Status:** Verified successfully via simulation waveform.
5. **Simulation of tb_fifo.sv:**
6. <img width="1567" height="814" alt="image" src="https://github.com/user-attachments/assets/076bda98-bbbc-4ff1-8ce2-d87b23fc9fd6" />


