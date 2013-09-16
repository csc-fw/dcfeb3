`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: The Ohio State University
// Engineer: Marissa Rodenburg
// 
// Create Date:    12:30:24 10/11/2010 
// Design Name: 
// Module Name:    instr_dcd 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
//   Performs instruction register decoding (JTAG User1 register).
//
// Function  Description
// ---------------------------------------
//   0     | No Op 
//   1     | JTAG System Reset (JTAG_SYS_RST), Equivalent to power on reset without reprogramming. Instruction only, (Auto reset)
//   2     | DCFEB status reg (32 bits) shift only for reading back without updating
//   3     | DCFEB status reg (32 bits) capture and shift for updated information.
//   4     | Program Comparator DAC -- same as in old CFEB
//   5     | Set Extra L1a Delay (2 bits) -- not used on DCFEB, exist for compatability with old DMB
//   6     | Read FIFO 1 -- ADC data (16 channels x 12 bits = 192 bits) wide X (6 chips x 8 sample)/event deep
//   7     | Set F5, F8, and F9 in one serial loop (daisy chained) for compatability with old DMB
//   8     | Set Pre Block End (4 bits) (not needed in DCFEB) -- not used on DCFEB, exist for compatability with old DMB
//   9     | Set Comparator Mode and Timing (5 bits) same format as old CFEB
//  10     | Set Buckeye Mask for shifting (6 bits) (default 6'b111111) same format as old CFEB, one bit for each chip
//  11     | Shift data to/from Buckeye chips (48 bits/chip)
//  12     | Set ADC configuration MASK (12 bits)
//  13     | Command to initialize ADC -- Instruction only, (Auto reset)
//  14     | Shift data and write to ADC configuration memory (26 bits)
//  15     | Command to restart pipeline -- Instruction only, (Auto reset)
//  16     | Set pipeline depth (9 bits)
//  17     | Set TTC source (2 bits) Selects 0:FF_EMU_mode, 1:FF_EEM_mode, or 2:Skew_Clr_mode
//  18     | Set calibration mode to external. (only for optical modes) -- Instruction only
//  19     | Set calibration mode to internal. (only for optical modes) -- Instruction only
//  20     | Set number of samples to readout (7 bits).
//  21     | Write word to BPI interface write FIFO (16 bits).
//  22     | Read word from BPI readback FIFO (16 bits).
//  23     | Read status word from BPI interface (16 bits).
//  24     | Read BPI timer (32 bits).
//  25     | Reset BPI interface. -- Instruction only, (Auto reset)
//  26     | Disable BPI processing. -- Instruction only, persisting
//  27     | Enable BPI processing. -- Instruction only, persisting
//  28     | Comparator Clock phase register (4-bits, 0-15).
//  29     | TMB transmit mode (2-bits, 0: comparator data, 1: fixed patterns, 2: counters, 3: randoms, 4: comparator data, 5: half strip patterns).
//  30     | TMB half strips for injecting patterns into the optical serial data stream for transmit mode 5. (30-bits, 5 per layer) {ly6,...ly1}
//  31     | TMB layer mask to indicat the active layers for half strip patterns in transmit mode 5. (6-bits, 1 per layer)
//  32     | Set DAQ rate to 1 GbE (1.25Gbps line rate) -- Instruction only
//  33     | Set DAQ rate to 2.56 GbE (3.2Gbps line rate) -- Instruction only
//  34     | Program Calibration DAC -- same style as Comparator DAC
//  35     | Send Control Byte to the MAX 1271 ADC (and conversion clocks)
//  36     | Read back the MAX 1271 ADC conversion stored in the SPI return register.
//  37     | Read the FRAME Address Register for the address of the frame with the bit errors that caused the CRC error (24 bits).
//  38     | Reset the configuration ECC error counters. -- Instruction only, (Auto reset)
//  39     | Read the ECC error counters (16-bits total, {8-bits for multi-bit error count, 8-bits for single-bit error counts})
//  40     | Set L1A_MATCH source to use only matched L1A's (skw_rw_l1a_match). Clear the USE_ANY_L1A flag. -- Instruction only
//  41     | Set L1A_MATCH source to use any L1A to send data (skw_rw_l1a). Set the USE_ANY_L1A flag. -- Instruction only
//  42     | Disable l1anum use in data to ODMB. Clear the L1A_HEAD flag. -- Instruction only
//  43     | Enable l1anum use in data to ODMB. Set the L1A_HEAD flag.  This is the default -- Instruction only
//  44     | Sampling Clock phase register (3-bits, 0-7).
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module instr_dcd(
  input TCK,
  input DRCK,
  input SEL,
  input TDI,
  input UPDATE,
  input SHIFT,
  input RST,
  input CLR,            // clear current instruction
  output reg [63:0] F,
  output TDO);

  reg[7:0] d;
  wire rst_f;
  
  assign TDO = d[0];
  assign rst_f = RST | CLR;
  
  always @(posedge DRCK or posedge RST) begin
    if (RST)
	   d <= 8'h00;
	 else
      if (SEL & SHIFT)
        d <= {TDI,d[7:1]};
		else
		  d <= d;
  end
  
  always @(posedge TCK or posedge rst_f) begin
    if(rst_f)
	   F <= 64'h0000000000000000;
	 else
	   if(UPDATE)
		  case (d)
		    8'h00:   F <= 64'h0000000000000001;
		    8'h01:   F <= 64'h0000000000000002;
		    8'h02:   F <= 64'h0000000000000004;
		    8'h03:   F <= 64'h0000000000000008;
		    8'h04:   F <= 64'h0000000000000010;
		    8'h05:   F <= 64'h0000000000000020;
		    8'h06:   F <= 64'h0000000000000040;
		    8'h07:   F <= 64'h0000000000000080;
		    8'h08:   F <= 64'h0000000000000100;
		    8'h09:   F <= 64'h0000000000000200;
		    8'h0A:   F <= 64'h0000000000000400;
		    8'h0B:   F <= 64'h0000000000000800;
		    8'h0C:   F <= 64'h0000000000001000;
		    8'h0D:   F <= 64'h0000000000002000;
		    8'h0E:   F <= 64'h0000000000004000;
		    8'h0F:   F <= 64'h0000000000008000;
			 
		    8'h10:   F <= 64'h0000000000010000;
		    8'h11:   F <= 64'h0000000000020000;
		    8'h12:   F <= 64'h0000000000040000;
		    8'h13:   F <= 64'h0000000000080000;
		    8'h14:   F <= 64'h0000000000100000;
		    8'h15:   F <= 64'h0000000000200000;
		    8'h16:   F <= 64'h0000000000400000;
		    8'h17:   F <= 64'h0000000000800000;
		    8'h18:   F <= 64'h0000000001000000;
		    8'h19:   F <= 64'h0000000002000000;
		    8'h1A:   F <= 64'h0000000004000000;
		    8'h1B:   F <= 64'h0000000008000000;
		    8'h1C:   F <= 64'h0000000010000000;
		    8'h1D:   F <= 64'h0000000020000000;
		    8'h1E:   F <= 64'h0000000040000000;
		    8'h1F:   F <= 64'h0000000080000000;
			 
		    8'h20:   F <= 64'h0000000100000000;
		    8'h21:   F <= 64'h0000000200000000;
		    8'h22:   F <= 64'h0000000400000000;
		    8'h23:   F <= 64'h0000000800000000;
		    8'h24:   F <= 64'h0000001000000000;
		    8'h25:   F <= 64'h0000002000000000;
		    8'h26:   F <= 64'h0000004000000000;
		    8'h27:   F <= 64'h0000008000000000;
		    8'h28:   F <= 64'h0000010000000000;
		    8'h29:   F <= 64'h0000020000000000;
		    8'h2A:   F <= 64'h0000040000000000;
		    8'h2B:   F <= 64'h0000080000000000;
		    8'h2C:   F <= 64'h0000100000000000;
		    8'h2D:   F <= 64'h0000200000000000;
		    8'h2E:   F <= 64'h0000400000000000;
		    8'h2F:   F <= 64'h0000800000000000;
			 
		    8'h30:   F <= 64'h0001000000000000;
		    8'h31:   F <= 64'h0002000000000000;
		    8'h32:   F <= 64'h0004000000000000;
		    8'h33:   F <= 64'h0008000000000000;
		    8'h34:   F <= 64'h0010000000000000;
		    8'h35:   F <= 64'h0020000000000000;
		    8'h36:   F <= 64'h0040000000000000;
		    8'h37:   F <= 64'h0080000000000000;
		    8'h38:   F <= 64'h0100000000000000;
		    8'h39:   F <= 64'h0200000000000000;
		    8'h3A:   F <= 64'h0400000000000000;
		    8'h3B:   F <= 64'h0800000000000000;
		    8'h3C:   F <= 64'h1000000000000000;
		    8'h3D:   F <= 64'h2000000000000000;
		    8'h3E:   F <= 64'h4000000000000000;
		    8'h3F:   F <= 64'h8000000000000000;
		    default: F <= 64'h0000000000000000;
		  endcase
		else
		  F <= F;
  end
  
endmodule
