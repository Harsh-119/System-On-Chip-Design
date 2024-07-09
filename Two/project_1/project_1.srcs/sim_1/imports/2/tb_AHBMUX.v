`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/10/2022 12:59:55 PM
// Design Name: 
// Module Name: tb_AHBMUX
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


module tb_AHBMUX();
      
    reg t_HCLK, t_HRESETn, t_HREADYOUT_S0, t_HREADYOUT_S1, t_HREADYOUT_S2, t_HREADYOUT_S3, t_HREADYOUT_S4,
		t_HREADYOUT_S5, t_HREADYOUT_S6, t_HREADYOUT_S7, t_HREADYOUT_S8, t_HREADYOUT_S9, t_HREADYOUT_NOMAP;
	reg [3:0] t_MUX_SEL;
	reg [31:0] t_HRDATA_S0, t_HRDATA_S1, t_HRDATA_S2, t_HRDATA_S3, t_HRDATA_S4, t_HRDATA_S5, t_HRDATA_S6,
		t_HRDATA_S7, t_HRDATA_S8, t_HRDATA_S9, t_HRDATA_NOMAP;
    wire t_HREADY;	 
    wire [31:0] t_HRDATA;
      
	AHBMUX UUT(
		.HCLK (t_HCLK),
		.HRESETn (t_HRESETn),	   
		.MUX_SEL (t_MUX_SEL),
		.HRDATA_S0 (t_HRDATA_S0),		
		.HRDATA_S1 (t_HRDATA_S1),
		.HRDATA_S2 (t_HRDATA_S2),
		.HRDATA_S3 (t_HRDATA_S3),
		.HRDATA_S4 (t_HRDATA_S4),
		.HRDATA_S5 (t_HRDATA_S5),
		.HRDATA_S6 (t_HRDATA_S6),
		.HRDATA_S7 (t_HRDATA_S7),
		.HRDATA_S8 (t_HRDATA_S8),
		.HRDATA_S9 (t_HRDATA_S9),
		.HRDATA_NOMAP (t_HRDATA_NOMAP),
		.HREADYOUT_S0 (t_HREADYOUT_S0),
		.HREADYOUT_S1 (t_HREADYOUT_S1),
		.HREADYOUT_S2 (t_HREADYOUT_S2),
		.HREADYOUT_S3 (t_HREADYOUT_S3),
		.HREADYOUT_S4 (t_HREADYOUT_S4),
		.HREADYOUT_S5 (t_HREADYOUT_S5),
		.HREADYOUT_S6 (t_HREADYOUT_S6),
		.HREADYOUT_S7 (t_HREADYOUT_S7),
		.HREADYOUT_S8 (t_HREADYOUT_S8),
		.HREADYOUT_S9 (t_HREADYOUT_S9),
		.HREADYOUT_NOMAP (t_HREADYOUT_NOMAP),
		.HREADY (t_HREADY),
		.HRDATA (t_HRDATA)
		);
		
	always
    begin
        #5;
        t_HCLK = 1'b1;
        #5;
        t_HCLK = 1'b0; 
    end

    initial
        begin
            #10;
            t_HRESETn = 1'b0;
			
			#10;
            t_HRESETn = 1'b1;
			
			#10;
            t_MUX_SEL = 4'b0000;
			t_HRDATA_S0	= 32'b00000000000000000000000000000000;	
			t_HREADYOUT_S0 = 1'b1;
			
			#10;
            t_MUX_SEL = 4'b0001;
			t_HRDATA_S1 = 32'b00000000000000000000000000000001;
			t_HREADYOUT_S1 = 1'b1;
            
            // Add rest of the test vectors here including for NOMAP
			#10;
            t_MUX_SEL = 4'b0010;
			t_HRDATA_S2 = 32'b00000000000000000000000000000010;
			t_HREADYOUT_S2 = 1'b1;

			#10;
            t_MUX_SEL = 4'b0011;
			t_HRDATA_S3 = 32'b00000000000000000000000000000011;
			t_HREADYOUT_S3 = 1'b1;

			#10;
            t_MUX_SEL = 4'b0100;
			t_HRDATA_S4 = 32'b00000000000000000000000000000100;
			t_HREADYOUT_S4 = 1'b1;

			#10;
            t_MUX_SEL = 4'b0101;
			t_HRDATA_S5 = 32'b00000000000000000000000000000101;
			t_HREADYOUT_S5 = 1'b1;

			#10;
            t_MUX_SEL = 4'b0110;
			t_HRDATA_S6 = 32'b00000000000000000000000000000110;
			t_HREADYOUT_S6 = 1'b1;

			#10;
            t_MUX_SEL = 4'b0111;
			t_HRDATA_S7 = 32'b00000000000000000000000000000111;
			t_HREADYOUT_S7 = 1'b1;						

			#10;
            t_MUX_SEL = 4'b1000;
			t_HRDATA_S8 = 32'b00000000000000000000000000001000;
			t_HREADYOUT_S8 = 1'b1;	

			#10;
            t_MUX_SEL = 4'b1001;
			t_HRDATA_S9 = 32'b00000000000000000000000000001001;
			t_HREADYOUT_S9 = 1'b1;	

			#10;
            t_MUX_SEL = 4'b1111;
			t_HRDATA_NOMAP = 32'b00000000000000000000000000001111;
			t_HREADYOUT_NOMAP = 1'b1;
        end
endmodule
