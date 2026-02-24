`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/24/2026 06:38:22 AM
// Design Name: 
// Module Name: bcd_to_7_seg_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


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
