# Binary Coded Decimal (BCD) Adder

## Overview
A BCD (Binary Coded Decimal) Adder is a digital circuit that adds two BCD digits and produces a BCD sum. In BCD representation, each decimal digit (0 to 9) is represented by a 4-bit binary code. Since the maximum value of a valid BCD digit is 9 (1001), any sum greater than 9 or any addition that generates a carry-out requires a correction. This correction is done by adding 6 (0110 in binary) to the initial binary sum.

## Design Architecture
The BCD Adder architecture generally consists of two main parts:
1. **Initial Adder:** A 4-bit binary adder that adds the two 4-bit BCD inputs along with the input carry.
2. **Detection & Correction Logic:** A combinational circuit that detects if the sum exceeds 9 or if a carry is generated. If detected, it triggers a second 4-bit adder to add 6 (`4'b0110`) to the initial sum, adjusting it to a valid BCD result and generating the final output carry.

## Port Description

| Port Name | Direction | Width  | Description |
| --------- | --------- | ------ | ----------- |
| `A`       | Input     | 4-bit  | First BCD digit input (0-9) |
| `B`       | Input     | 4-bit  | Second BCD digit input (0-9) |
| `Cin`     | Input     | 1-bit  | Initial carry input |
| `Sum`     | Output    | 4-bit  | Corrected BCD Sum output (0-9) |
| `Cout`    | Output    | 1-bit  | Final BCD carry output |

## Files Included
* **Design File:** `bcd_adder.v`
* **Documentation:** `bcd.md`
