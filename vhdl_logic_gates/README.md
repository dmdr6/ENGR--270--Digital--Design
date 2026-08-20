# VHDL Logic Gates Collection 

This directory contains pure VHDL implementations and corresponding testbenches for all 7 standard digital logic gates.

## 📌 Included Components

Each logic gate is split into a **design file** (`*_design.vhd`) containing the entity/architecture implementation and a **testbench file** (`*_testbench.vhd`) for simulation verification.

* **AND Gate**: Output is `HIGH` (`1`) only when all inputs are `HIGH`.
* **NAND Gate**: Inverted AND logic; output is `LOW` (`0`) only when all inputs are `HIGH`.
* **OR Gate**: Output is `HIGH` (`1`) when at least one input is `HIGH`.
* **NOR Gate**: Inverted OR logic; output is `HIGH` (`1`) only when all inputs are `LOW`.
* **XOR Gate**: Exclusive OR; output is `HIGH` (`1`) when inputs are different.
* **XNOR Gate**: Inverted XOR logic; output is `HIGH` (`1`) when inputs are identical.
* **NOT Gate**: Single-input inverter; flips `0` to `1` and `1` to `0`.

---

## 📁 Directory Structure

```text
vhdl_logic_gates/
├── AND_Gate_design.vhd
├── AND_Gate_testbench.vhd
├── NAND_Gate_design.vhd
├── NAND_Gate_testbench.vhd
├── NOR_Gate_design.vhd
├── NOR_Gate_testbench.vhd
├── NOT_Gate_design.vhd
├── NOT_Gate_testbench.vhd
├── OR_Gate_design.vhd
├── OR_Gate_testbench.vhd
├── XNOR_Gate_design.vhd
├── XNOR_Gate_testbench.vhd
├── XOR_Gate_design.vhd
└── XOR_Gate_testbench.vhd
