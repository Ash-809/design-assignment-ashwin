# D Flip-Flop

## Overview
A D Flip-Flop (Data or Delay Flip-Flop) is a sequential logic circuit that tracks the input, meaning the output `q` follows the input `d` at every active clock edge.

## Port Description

| Port Name | Direction | Width  | Description |
| --------- | --------- | ------ | ----------- |
| `clk`     | Input     | 1-bit  | Clock signal |
| `reset`   | Input     | 1-bit  | Reset signal |
| `d`       | Input     | 1-bit  | Data input |
| `q`       | Output    | 1-bit  | Data output |

## Files Included
* **Design File:** `d_ff.v`
* **Testbench File:** `tb_d_ff.v`
