
# Reconfigurable-Hardware-Systems-VHDL

This project focuses on the design, verification, and analysis of digital circuits using VHDL and FPGA technology. It includes multiple implementations of logic functions, arithmetic units, and complex digital structures, using both behavioral and structural modeling techniques. Simulation tools and synthesis workflows are used to evaluate the performance, timing, and resource usage of each design.

## Description of the 10 Exercises

### 1. Logic Function Design using Behavioral Description  
The function `F = (X' + Y)(X + Y')(X + Z')` was implemented behaviorally in VHDL. A testbench with a truth table was used for verification. Simulation (waveform), RTL view, synthesis, and FPGA implementation results were provided.

### 2. Logic Function Design using Structural Description  
The same function was implemented structurally using NOT, OR, and AND gates connected via signals. It was verified and analyzed through waveform, RTL, synthesis, and implementation results.

### 3. Full Adder Design in Three Ways  
Three types of full adders were created:  
(a) Behavioral Full Adder with XOR and AND gates  
(b) Structural Full Adder with two half adders and an OR gate  
(c) 4-bit Ripple Carry Adder (referenced from allaboutfpga.com)  
All implementations were verified using testbenches and presented with results.

### 4. Full Subtractor Design in Two Ways  
A full subtractor was implemented:  
(a) Behavioral version using XOR and AND gates (based on basicenggknowledge.blogspot.com)  
(b) Structural version with two half subtractors and an OR gate.  
Waveform, RTL, and implementation results were analyzed.

### 5. 2x2 Bit Multiplier Design in Three Ways  
A 2x2 bit multiplier was designed:  
(a) Structural using half adders  
(b) Behavioral using logic gates  
(c) Behavioral using arithmetic operation (referenced from en.wikibooks.org)  
All were verified and results presented.

### 6. Divider Design in Three Ways  
Dividers were implemented:  
(a) 4-bit Behavioral Divider with shift registers (based on jjmk.dk)  
(b) 8-bit Behavioral Divider with similar logic  
(c) A third version which remained incomplete  
All tested and analyzed via testbenches and implementation.

### 7. Boolean Logic Gates Design in Two Ways  
All Boolean gates (NOT, OR, AND, XOR, NAND, NOR, XNOR) were implemented behaviorally. The structural implementation was not fully completed. Testbench verification and analysis were provided.

### 8. ALU Design (8, 16, 32, 64-bit)  
A Behavioral ALU was implemented supporting addition, subtraction, AND, and OR operations. Versions for 8, 16, 32, and 64 bits were analyzed with waveform, RTL, synthesis, and implementation, focusing on timing and resource usage.

### 9. ALU Using DSP Resources  
An attempt was made to implement an ALU using DSP slices, with limited success (addition only). Comparison with the behavioral ALU showed DSP usage via IP Catalog.

### 10. Compare all applications using at least 2 different FPGAs.
