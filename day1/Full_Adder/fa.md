# Full Adder

## Overview
A Full Adder is a combinational logic circuit that performs the addition of three single-bit binary numbers: two operands and a carry-in bit from a previous stage. It produces a sum and a carry-out bit. Full adders form the basic building blocks for multi-bit adder circuits like the Ripple Carry Adder.

## Port Description

| Port Name | Direction | Width  | Description |
| --------- | --------- | ------ | ----------- |
| `A`       | Input     | 1-bit  | First single-bit operand |
| `B`       | Input     | 1-bit  | Second single-bit operand |
| `Cin`     | Input     | 1-bit  | Carry input from previous stage |
| `Sum`     | Output    | 1-bit  | Sum output |
| `Cout`    | Output    | 1-bit  | Carry output to next stage |

## Files Included
* **Design File:** `full_adder.v`
* **Testbench File:** `tb_full_adder.v`
