# Top_module_task2: Rate Matching with FIFO

## Project Overview
This project demonstrates a fundamental digital hardware design concept: safely transferring data between a high-speed data producer and a low-speed data consumer without losing any information. To solve this rate-matching problem, a First-In-First-Out (FIFO) memory buffer is placed between the two modules to temporarily hold the incoming data until the slower module is ready to process it.

## System Architecture & File Structure

* **`face_mod.v` (Fast Producer)**: Generates and sends 8-bit data continuously at every positive clock edge. It acts as the high-speed source.
* **`fifo.v` (Buffer Memory)**: An area-optimized memory buffer. It uses read and write pointers to store data from the producer and feed it to the consumer upon request.
* **`mod_out.v` (Slow Consumer)**: Uses a 3-state Finite State Machine (FSM) (`IDLE`, `READ_PROC`, `DONE`) to carefully read data from the FIFO, simulate a processing delay, and output the final result.
* **`top_module.v` (Top-Level Wrapper)**: The structural file that instantiates the above three modules and wires them together along with a global reset signal.
* **`top_module_tb.v` (Testbench)**: The simulation file that injects a burst of fast data (`d1`, `d2`, `d3`, etc.) to verify that the FIFO successfully buffers it and outputs it sequentially without dropping any initial values.
* **simulatio of:** `top_module_tb.v`
* <img width="512" height="266" alt="image" src="https://github.com/user-attachments/assets/3f876b6b-4b31-4cc4-90ee-3487bd5e3090" />
**no of LUT in:** `top_module_.v
  <img width="713" height="365" alt="image" src="https://github.com/user-attachments/assets/0fedc50d-cc61-43c2-a41b-e1d2b3b5e1a0" />
**schematic:**
  <img width="1571" height="813" alt="image" src="https://github.com/user-attachments/assets/38a04a2f-011d-4d0b-8da1-c2fe9a35feba" />
**synthesis device:**
  <img width="1575" height="816" alt="image" src="https://github.com/user-attachments/assets/447c4f26-66dd-40ca-b1c5-b8805eb05e5f" />

    




## How to Run Simulation in Vivado
1. Add `face_mod.v`, `fifo.v`, `mod_out.v`, and `top_module.v` to your **Design Sources**.
2. Add `top_module_tb.v` to your **Simulation Sources**.
3. Right-click `top_module_tb.v` and select **Set as Top**.
4. Click **Run Simulation** -> **Run Behavioral Simulation**.
