# 1110 Sequence Detector

## Overview
This directory contains the Verilog RTL design and testbench for a **1110 Sequence Detector**. The design is implemented using a Finite State Machine (FSM) that continuously monitors a serial input stream and triggers the output high whenever the specific binary sequence `1110` is detected.

## Port Description

| Port Name | Direction | Width  | Description |
| --------- | --------- | ------ | ----------- |
| `clk`     | Input     | 1-bit  | System clock signal |
| `reset`   | Input     | 1-bit  | Reset signal to initialize the FSM |
| `din`     | Input     | 1-bit  | Serial data input |
| `dout`    | Output    | 1-bit  | Output flag (High when `1110` is detected) |

## Files Included
* **Design File:** `seq_detector_1110.v`
* **Testbench File:** `seq_detector_tb.v`
* **screen shot of:** `seq_detector_tb.v`
* <img width="1575" height="817" alt="image" src="https://github.com/user-attachments/assets/991690f9-3709-4147-b64f-600fd22bad45" />

