# Day 14: AXI DMA Controller - SystemVerilog Testbench

## Overview
This folder contains the "Day 14" progress for the SystemVerilog verification environment of an AXI DMA Controller. It focuses on the active components of a layered testbench architecture, specifically handling transaction generation, randomized constraints, and physical pin driving for both Normal and Scatter-Gather (SG) memory transfers.

## Directory Structure
The `DAY14` directory encompasses the core class files for the agent sequence:

```text
DAY14/
├── Agent.sv
├── Driver.sv
├── Generator.sv
└── Transaction.sv

### Verification Components

#### 1. `Transaction.sv`
This file defines the `transaction` class, which acts as the base data object (sequence item) passed through the verification environment.
* **Properties:** Contains randomized properties for DMA operations, including `sg_mode`, `src_addr`, `dest_addr`, `transfer_bytes`, `chunk_size`, and `sg_desc_addr`.
* **Constraints:** Implements the `c_addr` constraint block to ensure all generated addresses and transfer sizes fall strictly within valid, realistic AXI memory ranges.
* **Utilities:** Features a `copy()` function for safe deep-copying of data when moving objects through mailboxes.

#### 2. `Generator.sv`
This file defines the `generator` class, responsible for creating the randomized stimuli.
* **Operation:** Generates a set number of `transaction` objects, randomizes them, and pushes them into the `gen2driv` mailbox.
* **Test Overrides:** Supports runtime test case overrides (`force_mode` and `force_size`) to easily inject specific Scatter-Gather or Normal mode transactions without altering the base constraints.

#### 3. `Driver.sv`
This file defines the `driver` class, acting as the bridge between the object-oriented testbench and the static, module-based Device Under Test (DUT).
* **Operation:** Pulls `transaction` objects from the `gen2driv` mailbox and translates them into cycle-accurate pin wiggles via the `axi_dma_if` virtual interface.
* **Control Flow:** Contains a robust `reset()` sequence to initialize DUT registers and a `main()` task that dynamically asserts/deasserts signals, handshaking appropriately by waiting for `SG_DONE` or `DMA_DONE` completion flags depending on the active mode.

#### 4. `Agent.sv`
This file acts as the primary container for the active components.
* **Operation:** Responsible for instantiating the `Generator` and `Driver` classes. It builds the component hierarchy and actively connects the `gen2driv` mailbox between them to establish the execution pipeline.
