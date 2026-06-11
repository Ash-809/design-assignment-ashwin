# VLSI Internship Day 4: Block Memory Generator

## Overview
This folder contains the Verilog RTL design and testbench verification for a Block Memory Generator (Block RAM). The module is designed with 8-bit data width and 8-bit independent read/write addresses, supporting up to 256 memory locations. 

## Directory Structure
* **`README.md`**: This file, providing a high-level overview of the repository and instructions.
* **`8x8_block_mem_generator.md`**: Contains the detailed technical documentation, including port descriptions, design specifications, and functional conditions.
* **`block_ram.v`**: The core Verilog RTL source code for the memory module.
* **`tb_block_ram.v`**: The Verilog testbench used to drive stimulus and verify the logic.

## Key Features
* **Data Width**: 8-bit input (`data_in`) and 8-bit output (`data_out`).
* **Addressing**: 8-bit Write Address (`wraddres`) and 8-bit Read Address (`rdaddres`).
* **Control Logic**: 
  * Active-low asynchronous reset (`arstn`).
  * Single bit Write Enable (`wrenb`) to switch between Write (`1`) and Read (`0`) modes.
* **Synchronous Write**: Memory updates occur precisely on the positive edge of the clock signal.

## Simulation Instructions (Xilinx Vivado)
1. Open Xilinx Vivado and create a new RTL project.
2. Add `block_ram.v` as a **Design Source**.
3. Add `tb_block_ram.v` as a **Simulation Source**.
4. Navigate to the Flow Navigator and run **Behavioral Simulation**.
5. Analyze the waveform output to verify that data is correctly written to and read from the specified memory addresses based on the `wrenb` signal.
