REM ############################################################################
REM   ____  ____ 
REM  /   /\/   / 
REM /___/  \  /    Vendor: Xilinx 
REM \   \   \/     Version : 1.8
REM  \   \         Application : Virtex-6 FPGA GTX Transceiver Wizard
REM  /   /         Filename : simulate_ncsim.bat
REM /___/   /\      
REM \   \  /  \ 
REM  \___\/\___\ 
REM
REM
REM Script SIMULATE_NCSIM.BAT
REM Generated by Xilinx Virtex-6 FPGA GTX Transceiver Wizard
REM
REM (c) Copyright 2009-2010 Xilinx, Inc. All rights reserved.
REM 
REM This file contains confidential and proprietary information
REM of Xilinx, Inc. and is protected under U.S. and 
REM international copyright and other intellectual property
REM laws.
REM 
REM DISCLAIMER
REM This disclaimer is not a license and does not grant any
REM rights to the materials distributed herewith. Except as
REM otherwise provided in a valid license issued to you by
REM Xilinx, and to the maximum extent permitted by applicable
REM law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
REM WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
REM AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
REM BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
REM INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
REM (2) Xilinx shall not be liable (whether in contract or tort,
REM including negligence, or under any other theory of
REM liability) for any loss or damage of any kind or nature
REM related to, arising under or in connection with these
REM materials, including for any direct, or any indirect,
REM special, incidental, or consequential loss or damage
REM (including loss of data, profits, goodwill, or any type of
REM loss or damage suffered as a result of any action brought
REM by a third party) even if such damage or loss was
REM reasonably foreseeable or Xilinx had been advised of the
REM possibility of the same.
REM
REM CRITICAL APPLICATIONS
REM Xilinx products are not designed or intended to be fail-
REM safe, or for use in any application requiring fail-safe
REM performance, such as life-support or safety devices or
REM systems, Class III medical devices, nuclear facilities,
REM applications related to the deployment of airbags, or any
REM other applications that could lead to death, personal
REM injury, or severe property or environmental damage
REM (individually and collectively, "Critical
REM Applications"). Customer assumes the sole risk and
REM liability of any use of Xilinx products in Critical
REM Applications, subject only to applicable laws and
REM regulations governing limitations on product liability.
REM
REM THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
REM PART OF THIS FILE AT ALL TIMES.

REM **************************** Beginning of Script ***************************

        
REM Ensure the follwoing
REM The library paths for UNISIMS_VER, SIMPRIMS_VER, XILINXCORELIB_VER,
REM UNISIM, SIMPRIM, XILINXCORELIB are set correctly in the cds.lib and hdl.var files.
REM Variables LMC_HOME and XILINX are set 
REM Define the mapping for the work library in cds.lib file. DEFINE work ./work

mkdir work
REM MGT Wrapper
ncvlog -work work   ../../../trg_tx_buf_bypass_gtx.v;
ncvlog -work work   ../../../trg_tx_buf_bypass.v;

ncvlog -work work  $SIMPLEX_PARTNER/rx_trg_tx_buf_bypass_gtx.v;
ncvlog -work work  $SIMPLEX_PARTNER/rx_trg_tx_buf_bypass.v;

 
REM Clock Modules 
ncvlog -work work  ../../example_design/mgt_usrclk_source_mmcm.v;
ncvlog -work work  $SIMPLEX_PARTNER/rx_trg_tx_buf_bypass/example_design/mgt_usrclk_source_mmcm.v;

REM Example Design modules
ncvlog -work work  ../../example_design/tx_sync.v;
ncvlog -work work  ../../example_design/frame_gen.v;
ncvlog -work work  $SIMPLEX_PARTNER/rx_trg_tx_buf_bypass/example_design/frame_check.v;
ncvlog -work work  ../../example_design/trg_tx_buf_bypass_top.v;
ncvlog -work work  $SIMPLEX_PARTNER/rx_trg_tx_buf_bypass/example_design/rx_trg_tx_buf_bypass_top.v;

ncvlog -work work  ../demo_tb.v;

REM Other modules
ncvlog -work work $XILINX/verilog/src/glbl.v;

REM Elaborate Design
ncelab -TIMESCALE 1ns/1ps -ACCESS +rw work.DEMO_TB work.glbl

REM Run simulation
ncsim work.DEMO_TB -input @"simvision -input wave_ncsim.sv"

