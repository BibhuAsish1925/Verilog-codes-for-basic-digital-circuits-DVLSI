# Verilog-codes-for-basic-digital-circuits-DVLSI

This page is for Verilog codes for some basic digital circuits necessary for **academic** as well as **interview** prospective.

---

### In a design.v code, there contain multiple models of Verilog code which are :-
1. Dataflow  
2. Behavioural  
3. Structural  
4. Gatelevel  

---

### While testing we need to keep some points in our mind :-
1. Choose one model and remove the Multi-line comment Block (`/* */`) at first and last of the model block.  
2. Remember the model blocks should be under (`/* */`) since we can choose only 1 model at a time.  
3. While executing all the models, use `output x,y,z` except in case of behavioural model i.e., `output reg x,y,z`. So comment the unused line.  
4. Follow other instructions and syntax if any error occurs.  

Mostly there will be less or no chances of error since the codes are already tested and verified and if used properly with above instructions and Verilog rules and syntaxes.  

---

## 📂 Repository Structure

The repository is organized into multiple categories of digital circuits:

- [**1. Logic_gates**](./1.%20Logic_gates)  
  Basic AND, OR, NOT, NAND, NOR, XOR, XNOR gates.  

- [**2. Adders and Subtractors**](./2.%20Adders%20and%20Subtractors)  
  Half Adder, Full Adder, Ripple Carry Adder, Subtractor, BCD Adder.  

- [**3. Miscellaneous - 1**](./3.%20Miscellaneous%20-%201)  
  Other basic combinational circuits.  

- [**4. Multiplexers and Demultiplexers**](./4.%20Multiplexers%20and%20Demultiplexers)  
  2x1 MUX, 4x1 MUX, 1x2 DEMUX, 1x4 DEMUX.  

- [**5. Encoders and Decoders**](./5.%20Encoders%20and%20Decoders)  
  Encoder, Priority Encoder, 2x4 Decoder, 3x8 Decoder.  

- [**6. Latches & Flip-Flops**](./6.%20Latches%20&%20Flip-Flops)  
  SR Latch, D Latch, JK Flip-Flop, D Flip-Flop, T Flip-Flop.  

---

## ✅ Features
- Covers **basic to intermediate Verilog codes**.  
- Each design written in **multiple coding styles** (Dataflow, Behavioural, Structural, Gate-level).  
- Codes are **tested and verified**.  
- Helpful for **lab work, projects, and interviews**.  

---

## 🚀 How to Use
1. Clone the repository:
   ```bash
   git clone https://github.com/BibhuAsishPanda1925/Verilog-codes-for-basic-digital-circuits-DVLSI.git
