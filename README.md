# ⚡ 8-Bit Arithmetic Logic Unit (ALU) Design

A parameterized 8-bit Arithmetic Logic Unit (ALU) implemented in Verilog HDL. This project demonstrates core Register-Transfer Level (RTL) digital design fundamentals, arithmetic logic, and control signal decoding for microarchitecture pipelines.

## 📌 Architecture Overview
The ALU processes two 8-bit inputs (`A` and `B`) using a 4-bit operation select line (`ALU_Sel`) to execute 14 distinct arithmetic and logic operations.

* **Arithmetic Unit:** Addition with carry-out detection, Subtraction, Multiplication, Division.
* **Logic Unit:** Bitwise AND, OR, XOR, NAND, NOR, XNOR.
* **Data Routing & Comparison:** Logical Left Shift, Logical Right Shift, Magnitude Comparison (`A > B`, `A == B`).

## 🛠️ Design Specifications
* **HDL:** Verilog HDL (IEEE 1364 standard)
* **Design Methodology:** Behavioral RTL Modeling
* **Data Bus Width:** 8-bit
* **Control Bus Width:** 4-bit opcode

## ⚙️ Instruction Set Architecture (Opcode Mapping)
| Opcode (`ALU_Sel`) | Operation | Description |
| :--- | :--- | :--- |
| `0000` | ADD | Unsigned Addition (`{CarryOut, ALU_Out} = A + B`) |
| `0001` | SUB | Unsigned Subtraction (`A - B`) |
| `0010` | MUL | Multiplication |
| `0011` | DIV | Division with zero-division safeguard |
| `0100` | AND | Bitwise AND |
| `0101` | OR  | Bitwise OR |
| `0110` | XOR | Bitwise XOR |
| `0111` | NOR | Bitwise NOR |
| `1000` | NAND| Bitwise NAND |
| `1001` | XNOR| Bitwise XNOR |
| `1010` | CMP_GT | Greater-Than check |
| `1011` | CMP_EQ | Equality check |
| `1100` | SHL | Logical Left Shift |
| `1101` | SHR | Logical Right Shift |

---
*Designed by Rajeswari S. | Electronics & Communication Engineering (2023–2027)*
