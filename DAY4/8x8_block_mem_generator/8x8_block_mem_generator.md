# Day 4 Task: Block Memory Generator (Block RAM)

## Project Overview
This project involves the design and functional verification of a Block Memory Generator (Block RAM) using Verilog. The memory module is designed with independent 8-bit read and write addresses, effectively supporting up to 256 memory locations ($2^8 = 256$), with each location capable of storing 8 bits of data. 

## Module Specifications

### Port Description
| Port Name | Direction | Size | Description |
| :--- | :--- | :--- | :--- |
| `clk` | Input | 1-bit | Clock signal for synchronous operations |
| `arstn` | Input | 1-bit | Active-low asynchronous reset |
| `wrenb` | Input | 1-bit | Write enable signal (1 = Write, 0 = Read) |
| `wraddres`| Input | 8-bit | Target address for write operations |
| `rdaddres`| Input | 8-bit | Target address for read operations |
| `data_in` | Input | 8-bit | Data to be written into the memory |
| `data_out`| Output| 8-bit | Data retrieved from the memory |

## Functional Behavior

* **Reset Operation:** When the `arstn` (asynchronous reset) signal is pulled low (`0`), the entire memory array is cleared, and the `data_out` is immediately set to `00`.
* **Write Operation:** When the write enable signal (`wrenb`) is high (`1`), the module operates in write mode. The 8-bit value present at `data_in` is synchronously stored at the memory location specified by `wraddres` on the positive edge of the clock (`clk`).
* **Read Operation:** When the write enable signal (`wrenb`) is low (`0`), the module switches to read mode. The data stored at the memory location specified by `rdaddres` is routed to the `data_out` port.

## Simulation & Verification
The design has been successfully simulated using a structured testbench. The simulation verifies:
1. Complete memory clearance during an active-low reset.
2. Accurate data writing to specific memory addresses.
3. Successful data retrieval from previously written addresses during read cycles.

## File Structure
* `block_ram.v`: The core Verilog RTL design for the memory block.
* `tb_block_ram.v`: The testbench used to drive stimulus and verify the logic.
* `simulation if tb_block_ram.v`:
* <img width="1204" height="817" alt="image" src="https://github.com/user-attachments/assets/d2c2d90d-23fb-427d-9d4e-34c7a1be180d" />

