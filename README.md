# Number-System-Convertor-Using-Assembly-Programming-Language
A menu-driven Number System Converter built using 8086 Assembly Language (EMU8086). This program allows users to convert numbers between different number systems including Binary, Decimal, Hexadecimal, and Octal through an interactive console interface.

Welcome to this repository! This project demonstrates a menu-driven Number System Converter implemented using 8086 Assembly Language (EMU8086). It showcases how low-level programming can be used to perform conversions between different number systems efficiently.


Features
This program supports the following conversions:

-Number System Conversions
Binary → Decimal
Converts a binary number into its decimal equivalent using positional value logic.
Decimal → Binary
Converts a decimal number into binary using repeated division by 2.
Binary → Hexadecimal
Converts binary input into hexadecimal via intermediate decimal conversion.
Decimal → Hexadecimal
Converts decimal numbers into hexadecimal using repeated division by 16.
Decimal → Octal
Converts decimal numbers into octal using repeated division by 8.
Binary → Octal
Converts binary input into octal through decimal conversion.


How It Works

The program follows a simple flow:

-Displays a menu of conversion options
-Accepts user input (binary or decimal)
-Performs conversion using:
    -Repeated division method
    -Bitwise operations (for binary)
-Displays the result
-Returns to the menu until the user selects Exit


Key Concepts Used
-Registers for storing intermediate and final values
-Procedures (PROC / ENDP) for modular programming
-Stack operations (PUSH / POP) for reversing output digits
-INT 21H interrupts for input/output handling
-Loops and conditional branching for control flow


Basic Rules of Assembly Language
-Registers
Registers are used for temporary data storage and manipulation. Commonly used registers include AX, BX, CX, and DX.

-Instructions
Assembly instructions should be concise and efficient, as they directly translate to machine-level operations.

-Labels
Labels are used to mark positions in the code for branching, looping, and function calls.

-Comments
Comments improve readability and help explain the purpose of code sections.


How to Run

Follow these steps to run the program:

-Download and Install EMU8086
https://emu8086.emuapps.com/download

-Open the Program

-Launch EMU8086

-Open the .asm file from this repository

-Compile and Run

-Click Compile

-Then click Run

-View Output


Interact with the menu in the console window
Enter values and view conversion results
Sample Output::

==== Number System Converter ====
1. Binary to Decimal
2. Decimal to Binary
3. Binary to Hex
4. Decimal to Hex
5. Decimal to Octal
6. Binary to Octal
7. Exit

Enter choice (1-7):


Learning Outcomes
Understanding low-level programming concepts
Implementing number system conversions manually
Working with registers and memory
Writing structured Assembly programs
Using interrupts for I/O operations


Author,
Aakash Tribhuvan
Computer Engineering Student | Developer

-Interested in various disciplins amongsts programming, system design, and building impactful tech, 3d modelling
-Passionate about turning ideas into real-world projects
-Continuously learning and exploring new technologies

📫 Connect with me:

GitHub: [https://github.com/your-username](https://github.com/AakashTribhuvan)
LinkedIn: [https://linkedin.com/in/your-profile](https://www.linkedin.com/in/aakash-tribhuvan-49107a343/)
Developed as part of an academic project to explore Assembly Language and number system conversions.
