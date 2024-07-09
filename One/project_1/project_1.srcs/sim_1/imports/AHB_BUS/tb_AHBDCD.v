`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/10/2022 12:42:00 PM
// Design Name: 
// Module Name: tb_AHBDCD
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


module tb_AHBDCD();
      
    reg [31:0] t_HADDR;
    wire t_HSEL_S0, t_HSEL_S1, t_HSEL_S2, t_HSEL_S3, t_HSEL_S4, t_HSEL_S5, t_HSEL_S6, t_HSEL_S7,
	     t_HSEL_S8, t_HSEL_S9, t_HSEL_NOMAP;
    wire [3:0] t_MUX_SEL;
      
    AHBDCD UUT(
        .HADDR (t_HADDR),
        .HSEL_S0 (t_HSEL_S0),
        .HSEL_S1 (t_HSEL_S1),
        .HSEL_S2 (t_HSEL_S2),
        .HSEL_S3 (t_HSEL_S3),
        .HSEL_S4 (t_HSEL_S4),
        .HSEL_S5 (t_HSEL_S5),
        .HSEL_S6 (t_HSEL_S6),
        .HSEL_S7 (t_HSEL_S7),
        .HSEL_S8 (t_HSEL_S8),
        .HSEL_S9 (t_HSEL_S9),
        .HSEL_NOMAP (t_HSEL_NOMAP),
        .MUX_SEL (t_MUX_SEL)
        ); 

    initial
        begin
            #10;
            t_HADDR = 32'b00000000000000000000000000000000; // 0x0000_0000
            
            #10;
            t_HADDR = 32'b01010000000000000000000000000000; // 0x5000_0000
            
                        
            // Add rest of the test vectors here including for NOMAP
			
        end
endmodule

