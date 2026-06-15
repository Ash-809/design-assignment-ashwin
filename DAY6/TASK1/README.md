# Day 6 / Task 1: Synchronous FIFO with Transaction Class

## Overview
This repository/folder contains the deliverables for Day 6, Task 1. The objective is to design a Synchronous FIFO and verify it using a SystemVerilog testbench that incorporates a `transaction` class for stimulus generation.

## Directory Structure
* `README.md`: Project overview and execution instructions.
* `fifo.md`: Detailed documentation of the FIFO architecture and transaction class properties.
* `fifo.sv`: The RTL design code for the Synchronous FIFO.
* `tb_fifo.sv`: The simulation environment containing the `fifo_transaction` class and the testbench module.

## Tools Required
* Xilinx Vivado (for RTL simulation and synthesis)

## How to Run in Vivado
1. Create a new RTL Project in Vivado.
2. Add `fifo.sv` as a Design Source.
3. Add `tb_fifo.sv` as a Simulation Source.
4. Navigate to the Flow Navigator and select **Run Simulation** -> **Run Behavioral Simulation**.
5. Observe the transaction displays in the Tcl Console and view the signal transitions in the waveform window.
