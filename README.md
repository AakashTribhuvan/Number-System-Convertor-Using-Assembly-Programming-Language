# Number System Converter Using Assembly Programming Language

## Overview

This project is a **menu-driven Number System Converter** developed using **8086 Assembly Language (EMU8086)**. It demonstrates how low-level programming can be used to perform efficient conversions between different number systems such as Binary, Decimal, Hexadecimal, and Octal.

The program is designed as an academic mini-project to strengthen understanding of processor-level operations, memory handling, and algorithm implementation in Assembly Language.

---

## Features

This program supports the following number system conversions:

### Binary Conversions
- Binary → Decimal  
  Converts a binary number into its decimal equivalent using positional value logic.
- Binary → Hexadecimal  
  Converts binary input into hexadecimal via intermediate decimal conversion.
- Binary → Octal  
  Converts binary input into octal through decimal conversion.

### Decimal Conversions
- Decimal → Binary  
  Converts decimal numbers into binary using repeated division by 2.
- Decimal → Hexadecimal  
  Converts decimal numbers into hexadecimal using repeated division by 16.
- Decimal → Octal  
  Converts decimal numbers into octal using repeated division by 8.

---

## How It Works

The program follows a simple structured flow:

1. Displays a menu of conversion options  
2. Accepts user input (binary or decimal depending on selection)  
3. Performs conversion using:
   - Repeated division method  
   - Bitwise operations (for binary handling)  
4. Displays the converted result  
5. Returns to the main menu until the user selects Exit  

---

## Key Concepts Used

- Registers for storing intermediate and final values (AX, BX, CX, DX)
- Procedures (PROC / ENDP) for modular program structure
- Stack operations (PUSH / POP) for reversing digits during output
- Interrupts (INT 21H) for input and output handling
- Loops and conditional branching for control flow implementation

---

## Basic Rules of Assembly Language

### Registers
Registers are used for temporary data storage and arithmetic operations. Common registers include:
- AX
- BX
- CX
- DX

### Instructions
Assembly instructions are low-level and directly control CPU operations. They must be efficient and precise.

### Labels
Labels are used to mark positions in code for jumps, loops, and function calls.

### Comments
Comments are used to improve readability and explain logic without affecting execution.

---

## How to Run

Follow these steps to execute the program in EMU8086:

### 1. Download and Install EMU8086
Download from:
https://emu8086.emuapps.com/download

### 2. Open the Program
- Launch EMU8086
- Open the `.asm` file from this repository

### 3. Compile and Run
- Click **Compile**
- Then click **Run**

### 4. View Output
- Interact with the menu in the console
- Enter required values
- View conversion results

---

## Sample Output


==== Number System Converter ====

1.Binary to Decimal
2.Decimal to Binary
3.Binary to Hex
4.Decimal to Hex
5.Decimal to Octal
6.Binary to Octal
7.Exit

Enter choice (1-7):

---

## Learning Outcomes

- Understanding low-level programming concepts  
- Implementing number system conversions manually  
- Working with CPU registers and memory  
- Writing structured Assembly Language programs  
- Using interrupts for input/output operations  

---

## Author

**Aakash Tribhuvan**  
Computer Engineering Student  

### Interests
- Programming  
- System Design  
- Building impactful tech projects  
- 3D modelling  

### About
Passionate about turning ideas into real-world projects and continuously exploring new technologies.

---

## Connect

- GitHub: [https://github.com/your-username  ](https://github.com/AakashTribhuvan)
- LinkedIn: [https://linkedin.com/in/your-profile  ](https://www.linkedin.com/in/aakash-tribhuvan-49107a343/)

---

## Note

This project was developed as part of an academic mini-project to explore **Assembly Language programming and number system conversions**.
