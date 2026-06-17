# APB Protocol Layered Testbench

This repository/project contains a SystemVerilog layered testbench designed to verify an Advanced Peripheral Bus (APB) design. The project is organized into standard verification components and is fully compatible with **EDA Playground**.

## 📁 File Structure & Overview

The testbench is modular and follows standard SystemVerilog verification architecture. Below is a breakdown of the files included in the `DAY7/APB/tb` directory:

### Design & Top-Level Files
* **`design.sv`**: Contains the Register Transfer Level (RTL) code for the APB Design Under Test (DUT).
* **`testbench.sv`**: The top-level testbench module. It instantiates the DUT, the physical interface, and generates the clock and reset signals. It acts as the entry point for EDA Playground.

### Verification Environment Components
* **`interface.sv`**: Defines the APB protocol signals, clocking blocks, and modports to connect the testbench components to the DUT.
* **`transaction.sv`**: Defines the APB sequence item (packet). It contains the data fields (address, data, read/write control) and randomization constraints.
* **`generator.sv`**: Generates randomized transaction objects and passes them to the driver via mailboxes.
* **`driver.sv`**: Receives transactions from the generator and drives the pin-level signals onto the APB `interface`.
* **`monitor.sv`**: Passively observes the `interface`, samples the APB bus activity, converts pin-level activity back into transaction objects, and sends them to the scoreboard.
* **`scoreboard.sv`**: Receives sampled transactions from the monitor, computes the expected results, and compares them against the actual DUT output to verify correctness.
* **`environment.sv`**: The container class that instantiates, builds, and connects the generator, driver, monitor, and scoreboard using mailboxes and virtual interfaces.
* **`test.sv`**: The test case layer. It instantiates the `environment`, configures the test parameters, and initiates the stimulus generation.

## 🚀 Running on EDA Playground

Since this code is structured for EDA Playground, follow these steps to run the simulation:

1.  **Testbench + Design**: 
    * Place the contents of `testbench.sv` in the **Testbench** window.
    * Place the contents of `design.sv` in the **Design** window.
2.  **Include Directives**: Ensure your `testbench.sv` file correctly includes the class files in the proper compilation order (usually interface, transaction, generator, driver, monitor, scoreboard, environment, and then test). For example:
    ```systemverilog
    `include "interface.sv"
    `include "transaction.sv"
    `include "generator.sv"
    `include "driver.sv"
    `include "monitor.sv"
    `include "scoreboard.sv"
    `include "environment.sv"
    `include "test.sv"
    ```
3.  **Simulator Selection**: Choose a simulator from the left-hand panel (e.g., Aldec Riviera Pro, Cadence Xcelium, Mentor Questa, or Synopsys VCS).
4.  **Run**: Click the **Run** button to compile and execute the testbench
5.  **Simulation:**
6.  <img width="1600" height="583" alt="image" src="https://github.com/user-attachments/assets/b4c78893-beae-4bdd-b5f7-fcb6b4cf6394" />

