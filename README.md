# Verilog Modules

## 📌 Overview
**Verilog Modules** is a personal collection of reusable **Verilog HDL modules** developed for academic projects and FPGA-based designs.

The goal of this repository is to serve as a **local, offline-ready module library**, providing reliable building blocks for digital systems without relying on internet access during development.

These modules have been designed, tested, and reused across multiple projects, including complete FPGA systems.

---

## 🎯 Purpose
- Provide **clean and reusable HDL components**
- Speed up development during time-constrained projects
- Serve as a personal reference library for future designs
- Support offline development environments

---

## 🧩 Included Modules

### 🔢 Combinational Logic
- **Multiplexer**
- **Demultiplexer**
- **Decoders**
- **Encoders**

### 🔁 Sequential Logic
- **Registers**
- **Register Bank**
- **Counters**
  - BCD up counters
  - BCD down counters
- **Frequency Divider**

### 🧠 Control Logic
- **Finite State Machine templates**
- **Enable / control signal routing**

### 🖥 Display Interfaces
- **Binary to BCD**
- **BCD to 7-segment decoder**
- Display routing logic

---

## 🧱 Design Principles
All modules in this repository follow these guidelines:

- Fully **synthesizable** (Quartus / Vivado compatible)
- Parameterizable where applicable
- Clear port naming
- No vendor-specific primitives
- Written with **educational clarity** in mind
- Designed for reuse in larger systems

---

## 🔧 Example Use Cases
These modules have been used in:
- Digital clocks
- Timers and stopwatches
- Alarm systems
- FPGA training boards
- Control-oriented digital designs

---

## 🛠 Tools
- **HDL**: Verilog
- **Target**: FPGA / CPLD
- **Tested with**:
  - Vivado 2024.1

---

*(Folder names may evolve as the library grows.)*

---

## 🚀 Project Status
✅ Actively maintained  
➕ New modules may be added as needed

---

## 🔮 Future Additions
- Testbenches for all modules
- Parameterized FSM templates
- Memory blocks (RAM / FIFO)
- Arithmetic units (ALU, shifters)

---

## 📜 License
Released for educational and academic use.  
Feel free to reuse, modify, and extend these modules with proper attribution.
