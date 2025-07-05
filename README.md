# Verilog-practice

This repository contains Verilog implementations of fundamental computer architecture components developed as part of my Computer Architecture course in 2023.

## Components Implemented

### 1. Register File (`regbank.v`)
- 32x32-bit register bank
- Synchronous write, asynchronous read
- Zero output during write operations

### 2. Arithmetic Logic Unit (`alu.v`)
- Supports 8 operations:  
  AND, OR, ADD, XOR,  
  SLL, SRL, SUB, SRA
- Zero flag output
- Combinational logic

### 3. Byte-Addressable Memory (`memory.v`)
- 1024-byte memory (8-bit cells)
- 32-bit read/write operations
- Little-endian byte ordering
- Synchronous write, asynchronous read

### 4. Sign Extension Unit (`signex.v`)
- Parameterized sign-extension module
- Extends n-bit input to 32-bit output
