# Universal Shift Register (USR)

## Overview
A Universal Shift Register is a sequential circuit that can shift its stored data both to the left and right, and also allows for parallel data loading.

## Port Description

| Port Name | Direction | Width  | Description |
| --------- | --------- | ------ | ----------- |
| `clk`     | Input     | 1-bit  | Clock signal |
| `reset`   | Input     | 1-bit  | Reset signal |
| `sel`     | Input     | 2-bit  | Mode selection (00:Hold, 01:Right, 10:Left, 11:Load) |
| `d_in`    | Input     | 4-bit  | Parallel data input |
| `q_out`   | Output    | 4-bit  | Shift register output |

## Files Included
* **Design File:** `usr.v`
* **Testbench File:** `tb_usr.v`
* **simulation of:** `tb_usr.v`
* <img width="1571" height="818" alt="image" src="https://github.com/user-attachments/assets/7e259ca2-5c90-4133-b26c-f1343d8c02b0" />

