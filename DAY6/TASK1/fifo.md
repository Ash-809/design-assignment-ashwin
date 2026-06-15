# FIFO Design & Verification Documentation

## 1. FIFO Design (`fifo.sv`)
The design is a parameterized Synchronous First-In-First-Out (FIFO) memory buffer.
* **Parameters:** * `DEPTH`: Depth of the FIFO (Default: 8)
  * `DATA_WIDTH`: Width of each data word (Default: 8 bits)
* **Ports:**
  * `clk`, `rst_n`: Active-low reset and system clock.
  * `wr_en`, `rd_en`: Control signals for write and read operations.
  * `data_in`, `data_out`: 8-bit data input and output buses.
  * `full`, `empty`: Status flags indicating the memory state.
* **Logic:** Uses separate read and write pointers. The `full` and `empty` conditions are evaluated by comparing the pointer values and their MSBs.

## 2. Transaction Class (`fifo_transaction`)
To verify the FIFO, a SystemVerilog transaction class was created to generate randomized stimulus.
* **Randomized Variables (Stimulus):**
  * `wr_en` (1-bit): Write enable.
  * `rd_en` (1-bit): Read enable.
  * `data_in` (8-bit): Payload to be written into the FIFO.
* **Output Variables (Response):**
  * `data_out` (8-bit), `full` (1-bit), `empty` (1-bit).
* **Constraints:** * A basic constraint `wr_en != rd_en` is applied to prevent simultaneous read and write operations during the initial basic testing phase.
* **Methods:**
  * `display()`: A custom function to format and print the current state of the randomized inputs and captured outputs to the console.
  * **simulation of tb_fifo.sv:**
  * <img width="1572" height="823" alt="image" src="https://github.com/user-attachments/assets/16a6636b-492b-47dc-9c17-f93b6f100ff9" />

