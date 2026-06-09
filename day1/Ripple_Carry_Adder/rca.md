# 4-Bit Ripple Carry Adder (RCA)

## Overview
A Ripple Carry Adder is a combinational logic circuit used to add two N-bit binary numbers. It is constructed by cascading N Full Adders in series. The carry-out of each Full Adder is connected to the carry-in of the next more significant Full Adder. 

## Design Architecture
In a 4-bit RCA, four Full Adders are chained together. The carry bit "ripples" from the least significant bit (LSB) stage to the most significant bit (MSB) stage. Because each full adder must wait for the carry bit to be calculated from the previous full adder, it introduces a propagation delay.

## Port Description

| Port Name | Direction | Width  | Description |
| --------- | --------- | ------ | ----------- |
| `A`       | Input     | 4-bit  | First operand |
| `B`       | Input     | 4-bit  | Second operand |
| `Cin`     | Input     | 1-bit  | Initial carry input |
| `Sum`     | Output    | 4-bit  | Sum output |
| `Cout`    | Output    | 1-bit  | Final carry output |

## Files Included
* **Design File:** `design/top.v`
* **Testbench File:** `tb/tb_top.v`
