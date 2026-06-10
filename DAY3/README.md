# Day 3: Digital System Design Activities

## Overview
This repository contains the Verilog hardware design tasks completed during Day 3. The activities focus on Finite State Machine (FSM) design and solving real-world data transmission issues using memory buffers.

The project is divided into two main tasks, organized into their respective directories.

## Directory Structure
```text
📁 DAY3
├── 📁 Seq_detector_1110
│   ├── 📄 seq_detector.md        # Documentation for the sequence detector
│   ├── 📄 seq_detector_1110.v    # Verilog design for 1110 detection
│   └── 📄 seq_detector_tb.v      # Testbench for the sequence detector
│
├── 📁 Top_module_task2
│   ├── 📄 Top_module_task2.md    # Documentation for rate matching
│   ├── 📄 face_mod.v             # Fast data producer module
│   ├── 📄 fifo.v                 # First-In-First-Out buffer memory
│   ├── 📄 mod_out.v              # Slow data consumer module with FSM
│   ├── 📄 top_module.v           # Top-level integration wrapper
│   └── 📄 top_module_tb.v        # Testbench for verifying data transmission
│
└── 📄 README.md                  # Main project overview (this file)
