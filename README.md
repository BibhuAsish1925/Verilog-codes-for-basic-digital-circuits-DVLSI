<h1 align="center"> Verilog Codes for Basic Digital Circuits (DVLSI) </h1>

<p align="center">
  <b>Made by</b><br>
  <span style="font-size:80px"> <b>Bibhu Asish Panda</b> </span><br>
  🎓 Batch 2022–26, Silicon University, Bhubaneswar (BBSR)  
</p>

<p align="center">
  LinkedIn: www.linkedin.com/in/bibhu-asish-panda-05332b288
</p>

---

This repository contains Verilog codes for basic digital circuits, useful for both **academic learning** and **interview preparation**.

---

### 📘 Verilog Coding Models and Verification
Verilog is a hardware description language (HDL) used to model digital systems. Each circuit in this repository is implemented in multiple coding styles to give a complete understanding of design approaches. Alongside RTL design, **testbench files** are provided for simulation and functional verification. This ensures that each circuit is tested, verified, and ready for practical usage in labs and projects.  

The `design.v` files contain the main circuit, while the `tb.v` files are testbenches used to verify the correctness of the design.  

The coding models covered are:  
1. **Dataflow** – Describes the circuit in terms of Boolean expressions.  
2. **Behavioral** – Uses high-level constructs (always blocks, if-else, case) to model behavior.  
3. **Structural** – Describes the design by interconnecting submodules or components.  
4. **Gate-level** – Implements the design using primitive logic gates.  

---

### ✅ Notes for Testing:
1. Choose one model and remove the multi-line comment block (`/* */`) around it.  
2. Keep all other model blocks under (`/* */`) since only one model can be active at a time.  
3. In sequential circuit codes, both **Structural** and **Behavioral** models are provided. In the testbench, comment out the one you don’t want to use. (*Behavioral model is generally preferred for sequential circuits.*)  
4. While executing all models, use `output x,y,z` except in the Behavioral model where `output reg x,y,z` must be used. Comment out unused lines accordingly.  
5. Follow Verilog syntax rules and the given instructions; errors are rare since the codes are tested and verified.  

---

## 📂 Repository Structure  

The repository is organized into the following categories of digital circuits:  

- [1. Logic_gates](./1.%20Logic_gates)  
- [2. Adders and Subtractors](./2.%20Adders%20and%20Subtractors)  
- [3. Miscellaneous - 1](./3.%20Miscellaneous%20-%201)  
- [4. Multiplexers and Demultiplexers](./4.%20Multiplexers%20and%20Demultiplexers)  
- [5. Encoders and Decoders](./5.%20Encoders%20and%20Decoders)  
- [6. Latches and Flip-Flops](./6.%20Latches%20and%20Flip-Flops)  
- [7. Shift Registers](./7.%20Shift%20Registers)  
- [8. Counters](./8.%20Counters)  
- [9. State Based Problems](./9.%20State%20Based%20Problems)  

---

## 📂 Folder Structure

Each project folder contains:
- `design.v` – Verilog RTL code  
- `tb.v` – Testbench to verify the design  
- Optionally: RTL schematic, waveform outputs  

---

## 🛠 Tools Used
- **Language:** Verilog HDL  
- **Software:** Vivado / EDA Playground / Xilinx  
- **Version Control:** Git & GitHub  
- **Assistance:** ChatGPT for README design and code refinement  

---

## ✅ Features
- Covers **basic to intermediate Verilog codes**.  
- Each design implemented in **multiple coding styles** (Dataflow, Behavioral, Structural, Gate-level).  
- Includes **testbenches for verification**.  
- All codes are **tested and verified**.  
- Useful for **lab work, projects, and interview preparation**.  

---

## 📷 Proof of Testing (Vivado Outputs)

Below are some screenshots of RTL design, testbench results, and waveform outputs as proof of testing in **Vivado**.  

<p align="center">
  <img src="<img width="1918" height="996" alt="ssp4" src="https://github.com/user-attachments/assets/95710f2f-8e5b-47ff-837a-1a64440c2198" />" width="500"/>
  <img src="<img width="1917" height="1017" alt="ssp1" src="https://github.com/user-attachments/assets/f32f1117-fbd0-42d2-8c64-76cdfa0eca96" />" width="500"/>  
  <img src="<img width="1918" height="1020" alt="ssp2" src="https://github.com/user-attachments/assets/c74c265f-83ab-4381-b73c-9c8dd59f515a" />" width="500"/>  
  <img src="<img width="1918" height="1017" alt="ssp3" src="https://github.com/user-attachments/assets/d19b5ccb-8b17-4225-beb8-0b785c913aad" />" width="500"/>    
</p>

---

