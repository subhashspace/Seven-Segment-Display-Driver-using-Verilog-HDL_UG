# Seven-Segment-Display-Driver-using-Verilog-HDL
# EXP NO: 2.A Seven-Segment Display Driver using Verilog HDL
# Aim
To design and simulate a seven-segment display driver using Verilog HDL, and verify its functionality through a testbench in the Vivado 2023.1 environment. The objective is to implement the logic that converts a 4-bit binary input into the corresponding 7-segment display output for the digits 0 to 9.

# Apparatus Required
Vivado 2023.1

# Procedure

1. Launch Vivado 2023.1
Open Vivado and create a new project.
2. Design the Verilog Code
Write the Verilog code for the seven-segment display, defining the logic that maps a 4-bit binary input to the corresponding segments (a to g) of the display.
3. Create the Testbench
Write a testbench to simulate the seven-segment display behavior. The testbench should apply various 4-bit input values and monitor the corresponding output on the seven-segment display.
4. Create the Verilog Files
Create both the design module and the testbench in the Vivado project.
5. Run Simulation
Run the behavioral simulation to verify the output. Ensure the seven-segment display behaves correctly for binary inputs 0000 to 1001 (decimal 0 to 9).
6. Observe the Waveforms
Analyze the output waveforms in the simulation window, and verify that the correct segments light up for each digit.
7. Save and Document Results
Capture screenshots of the waveform and save the simulation logs. These will be included in the lab report.

# Verilog Code for Seven-Segment Display
```
`timescale 1ns / 1ps

module bcd_to_7_seg(bcd,seg,an);
    input [3:0] bcd;
    output reg [6:0] seg;
    output reg [3:0] an;
    
    always @ (*)
    begin
        an<=4'b1110;
        case(bcd)
            4'b0000: seg = 7'b1000000;
            4'b0001: seg = 7'b1111001;
            4'b0010: seg = 7'b0100100;
            4'b0011: seg = 7'b0110000;
            4'b0100: seg = 7'b0011001;
            4'b0101: seg = 7'b0010010;
            4'b0110: seg = 7'b0000010;
            4'b0111: seg = 7'b1111000;
            4'b1000: seg = 7'b0000000;
            4'b1001: seg = 7'b0010000;
            4'b1010: seg = 7'b0001000;
            4'b1011: seg = 7'b0000011;
            4'b1100: seg = 7'b1000110;
            4'b1101: seg = 7'b0100001;
            4'b1110: seg = 7'b0000110;
            4'b1111: seg = 7'b0001110;
            default: seg = 7'b1111111;
        endcase
    end
endmodule

```
# Testbench for Seven-Segment Display
```
`timescale 1ns / 1ps

module bcd_to_7_seg_tb;
    
    reg [3:0] bcd_t;
    wire [6:0] seg_t;
    wire [3:0] an_t;
    
    bcd_to_7_seg dut (bcd_t,seg_t,an_t);
    
    initial
    begin
            bcd_t=4'b0000;
         #100
            bcd_t=4'b0001;
         #100
            bcd_t=4'b0011;
         #100
            bcd_t=4'b0110;
         #100
            bcd_t=4'b1000;
         #100
            bcd_t=4'b1010;
         #100
            bcd_t=4'b1011;
         #100
            bcd_t=4'b1110;
         #100 $stop;
      end
endmodule

```

# Simulated Output
<img width="1920" height="1200" alt="bcd_to_7_seg" src="https://github.com/user-attachments/assets/dec93629-3518-42f3-81f2-5c7bcfe9f5b8" />



# Conclusion
In this experiment, a seven-segment display driver was successfully designed and simulated using Verilog HDL. The simulation results confirmed that the display correctly represented the digits 0 to 9 based on the 4-bit binary input. The testbench effectively verified the functionality of the seven-segment display by applying various input combinations and observing the corresponding segment outputs.

This experiment highlights how Verilog HDL can be used to control hardware components like a seven-segment display in digital systems.
