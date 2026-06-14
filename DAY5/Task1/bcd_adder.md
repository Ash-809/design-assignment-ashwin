# 4-Bit BCD Adder using SystemVerilog

## Overview
This directory contains the SystemVerilog implementation of a 4-bit Binary Coded Decimal (BCD) Adder. The design utilizes SystemVerilog interfaces to efficiently connect the Device Under Test (DUT) with the testbench.

## Files Included
* **Design Code:** Contains the RTL logic for the BCD adder.
* **Testbench & Interface:** Contains the SystemVerilog interface declaration and the testbench module used to verify the design.

## Design Logic
A BCD adder computes the sum of two 4-bit BCD numbers and an input carry (`cin`). 
* If the initial binary sum is greater than `9` (i.e., `> 4'b1001`), the result is an invalid BCD number.
* To correct this, `6` (`4'b0110`) is added to the sum, and the carry out (`cout`) is set to `1`.
* If the sum is `9` or less, the result remains unchanged, and `cout` is `0`.

## Simulation & Verification
The design was successfully simulated and verified using Xilinx Vivado. 
**Executed Test Case:**
* **Inputs:** `a = 9`, `b = 8`, `cin = 0`
* **Expected Output:** `17` (Decimal) $\rightarrow$ `cout = 1`, `sum = 7` (BCD)
* **Status:** Verified successfully via simulation waveform.
* **simulation of tb_bcd_adder**
* # 4-Bit BCD Adder using SystemVerilog

## Overview
This directory contains the SystemVerilog implementation of a 4-bit Binary Coded Decimal (BCD) Adder. The design utilizes SystemVerilog interfaces to efficiently connect the Device Under Test (DUT) with the testbench.

## Files Included
* **Design Code:** Contains the RTL logic for the BCD adder.
* **Testbench & Interface:** Contains the SystemVerilog interface declaration and the testbench module used to verify the design.

## Design Logic
A BCD adder computes the sum of two 4-bit BCD numbers and an input carry (`cin`). 
* If the initial binary sum is greater than `9` (i.e., `> 4'b1001`), the result is an invalid BCD number.
* To correct this, `6` (`4'b0110`) is added to the sum, and the carry out (`cout`) is set to `1`.
* If the sum is `9` or less, the result remains unchanged, and `cout` is `0`.

## Simulation & Verification
The design was successfully simulated and verified using Xilinx Vivado. 
**Executed Test Case:**
* **Inputs:** `a = 9`, `b = 8`, `cin = 0`
* **Expected Output:** `17` (Decimal) $\rightarrow$ `cout = 1`, `sum = 7` (BCD)
* **Status:** Verified successfully via simulation waveform.
* **Simulation of tb_bcd_adder.sv**
* <img width="1563" height="820" alt="image" src="https://github.com/user-attachments/assets/5e0b4a7e-2411-4028-a0c0-e77b11846d08" />

