## 16-bit Simple Instruction Set Processor

This project implements a 16-bit simple instruction set processor capable of supporting various instructions, including load and store, arithmetic, logical, jump, and halt instructions. The processor is built using Vivado and is intended for use on an FPGA board.

## Overview

This project demonstrates the design and implementation of a simple 16-bit processor. The processor is capable of executing a variety of instructions and is designed to be synthesized and deployed on an FPGA board. The project includes all necessary files for simulation, synthesis, and deployment.
Features

    -16-bit data width
    -Comprehensive instruction set including arithmetic, logical, load/store, and jump instructions
    -Designed for FPGA deployment

## Architecture

The processor architecture consists of the following main components:

    Control Unit: Reads instructions from the instruction register and decodes them to control other parts of the processor.
    Instruction Register: Holds the current instruction to be executed.
    Program Memory: Stores the sequence of instructions to be executed by the processor.
    General Purpose Register: Holds intermediate data and results.
    Arithmetic Unit: Performs arithmetic operations.
    Logic Unit: Performs logical operations.
    Data Memory: Stores data to be read and written during program execution.
    Input Buffer: Handles input data from external sources (GPIO).
    Output Buffer: Sends output data to external destinations (GPIO).

## Instruction Set

The processor supports the following instructions:
Data Movement Instructions

    MOVSGPR - Move data to general purpose register
    MOV - Move data between registers

Arithmetic Instructions

    ADD - Add two registers
    SUB - Subtract two registers
    MUL - Multiply two registers

Logical Instructions

    ROR - Rotate right
    RAND - Logical AND
    RXOR - Logical XOR
    RXNOR - Logical XNOR
    RNAND - Logical NAND
    RNOR - Logical NOR
    RNOT - Logical NOT

Load and Store Instructions

    STOREREG - Store content of register in data memory
    STOREDIN - Store content of DIN bus in data memory
    SENDDOUT - Send data from data memory to DOUT bus
    SENDREG - Send data from data memory to register

Jump and Branch Instructions

    JUMP - Unconditional jump
    JCARRY - Jump if carry flag is set
    JNOCARRY - Jump if carry flag is not set
    JSIGN - Jump if sign flag is set
    JNOSIGN - Jump if sign flag is not set
    JZERO - Jump if zero flag is set
    JNOZERO - Jump if zero flag is not set
    JOVERFLOW - Jump if overflow flag is set
    JNOOVERFLOW - Jump if overflow flag is not set

Halt Instruction

    HALT - Halt the processor

## Implementation

The processor is implemented in Vivado using Verilog.

## Simulation and Testing

To simulate and test the processor:

    Open Vivado and create a new simulation project.
    Add the testbench files from the tb/ directory.
    Run the simulation and verify the results.
