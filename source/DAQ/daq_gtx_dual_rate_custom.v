///////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version : 1.12
//  \   \         Application : Virtex-6 FPGA GTX Transceiver Wizard
//  /   /         Filename : daq_gtx_dual_rate.v
// /___/   /\     
// \   \  /  \ 
//  \___\/\___\
//
//
// Module DAQ_GTX_DUAL_RATE (a GTX Wrapper)
// Generated by Xilinx Virtex-6 FPGA GTX Transceiver Wizard
// 
// 
// (c) Copyright 2009-2011 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES. 


`timescale 1ns / 1ps


//***************************** Entity Declaration ****************************

(* CORE_GENERATION_INFO = "daq_gtx_dual_rate,v6_gtxwizard_v1_12,{protocol_file=Start_from_scratch}" *) module daq_gtx_dual_rate_custom #
(
    // Simulation attributes
    parameter   WRAPPER_SIM_GTXRESET_SPEEDUP    = 0    // Set to 1 to speed up sim reset
)
(
    
    //_________________________________________________________________________
    //_________________________________________________________________________
    //GTX0  (X0Y12)

    //----------------- Receive Ports - RX Data Path interface -----------------
    input           GTX0_RXRESET_IN,
    //----- Receive Ports - RX Driver,OOB signalling,Coupling and Eq.,CDR ------
    input           GTX0_RXN_IN,
    input           GTX0_RXP_IN,
    //---------------------- Receive Ports - RX PLL Ports ----------------------
    input           GTX0_GREFCLKRX_IN,
    input   [1:0]   GTX0_NORTHREFCLKRX_IN,
    input           GTX0_PERFCLKRX_IN,
    input   [2:0]   GTX0_RXPLLREFSELDY_IN,
    input   [1:0]   GTX0_SOUTHREFCLKRX_IN,
    //-------------- Transmit Ports - 8b10b Encoder Control Ports --------------
    input   [1:0]   GTX0_TXCHARISK_IN,
    //----------------------- Transmit Ports - GTX Ports -----------------------
    input   [12:0]  GTX0_GTXTEST_IN,
    //---------------- Transmit Ports - TX Data Path interface -----------------
    input   [15:0]  GTX0_TXDATA_IN,
    output          GTX0_TXOUTCLK_OUT,
    input           GTX0_TXRESET_IN,
    input           GTX0_TXUSRCLK2_IN,
    //-------------- Transmit Ports - TX Driver and OOB signaling --------------
    output          GTX0_TXN_OUT,
    output          GTX0_TXP_OUT,
    //--------- Transmit Ports - TX Elastic Buffer and Phase Alignment ---------
    output  [1:0]   GTX0_TXBUFSTATUS_OUT,
    //--------------------- Transmit Ports - TX PLL Ports ----------------------
    input           GTX0_GREFCLKTX_IN,
    input           GTX0_GTXTXRESET_IN,
    input   [1:0]   GTX0_MGTREFCLKTX_IN,
    input   [1:0]   GTX0_NORTHREFCLKTX_IN,
    input           GTX0_PERFCLKTX_IN,
    input           GTX0_PLLTXRESET_IN,
    input   [1:0]   GTX0_SOUTHREFCLKTX_IN,
    output          GTX0_TXPLLLKDET_OUT,
    input   [2:0]   GTX0_TXPLLREFSELDY_IN,
    input   [1:0]   GTX0_TXRATE_IN,
    output          GTX0_TXRATEDONE_OUT,
    output          GTX0_TXRESETDONE_OUT


);

//***************************** Wire Declarations *****************************

    // ground and vcc signals
    wire            tied_to_ground_i;
    wire    [63:0]  tied_to_ground_vec_i;
    wire            tied_to_vcc_i;
    wire    [63:0]  tied_to_vcc_vec_i;
    wire            gtx0_gtxtest_bit1;
    wire            gtx0_txreset_i;
    wire            gtx0_txplllkdet_i;
 
//********************************* Main Body of Code**************************

    assign tied_to_ground_i             = 1'b0;
    assign tied_to_ground_vec_i         = 64'h0000000000000000;
    assign tied_to_vcc_i                = 1'b1;
    assign tied_to_vcc_vec_i            = 64'hffffffffffffffff;

    assign gtx0_txreset_i          = GTX0_TXRESET_IN;
    assign GTX0_TXPLLLKDET_OUT     = gtx0_txplllkdet_i;

//------------------------- GTX Instances  -------------------------------



    //_________________________________________________________________________
    //_________________________________________________________________________
    //GTX0  (X0Y12)

    daq_gtx_dual_rate_custom_gtx #
    (
        // Simulation attributes
        .GTX_SIM_GTXRESET_SPEEDUP   (WRAPPER_SIM_GTXRESET_SPEEDUP),
        
        // Share RX PLL parameter
        .GTX_TX_CLK_SOURCE           ("TXPLL"),
        // Save power parameter
        .GTX_POWER_SAVE              (10'b0000110000)
    )
    gtx0_daq_gtx_dual_rate_custom_gtx_i
    (
        //----------------- Receive Ports - RX Data Path interface -----------------
        .RXRESET_IN                     (GTX0_RXRESET_IN),
        //----- Receive Ports - RX Driver,OOB signalling,Coupling and Eq.,CDR ------
        .RXN_IN                         (GTX0_RXN_IN),
        .RXP_IN                         (GTX0_RXP_IN),
        //---------------------- Receive Ports - RX PLL Ports ----------------------
        .GREFCLKRX_IN                   (GTX0_GREFCLKRX_IN),
        .NORTHREFCLKRX_IN               (GTX0_NORTHREFCLKRX_IN),
        .PERFCLKRX_IN                   (GTX0_PERFCLKRX_IN),
        .RXPLLREFSELDY_IN               (GTX0_RXPLLREFSELDY_IN),
        .SOUTHREFCLKRX_IN               (GTX0_SOUTHREFCLKRX_IN),
        //-------------- Transmit Ports - 8b10b Encoder Control Ports --------------
        .TXCHARISK_IN                   (GTX0_TXCHARISK_IN),
        //----------------------- Transmit Ports - GTX Ports -----------------------
        .GTXTEST_IN                     (GTX0_GTXTEST_IN),
        //---------------- Transmit Ports - TX Data Path interface -----------------
        .TXDATA_IN                      (GTX0_TXDATA_IN),
        .TXOUTCLK_OUT                   (GTX0_TXOUTCLK_OUT),
        .TXRESET_IN                     (gtx0_txreset_i),
        .TXUSRCLK2_IN                   (GTX0_TXUSRCLK2_IN),
        //-------------- Transmit Ports - TX Driver and OOB signaling --------------
        .TXN_OUT                        (GTX0_TXN_OUT),
        .TXP_OUT                        (GTX0_TXP_OUT),
        //--------- Transmit Ports - TX Elastic Buffer and Phase Alignment ---------
        .TXBUFSTATUS_OUT                (GTX0_TXBUFSTATUS_OUT),
        //--------------------- Transmit Ports - TX PLL Ports ----------------------
        .GREFCLKTX_IN                   (GTX0_GREFCLKTX_IN),
        .GTXTXRESET_IN                  (GTX0_GTXTXRESET_IN),
        .MGTREFCLKTX_IN                 (GTX0_MGTREFCLKTX_IN),
        .NORTHREFCLKTX_IN               (GTX0_NORTHREFCLKTX_IN),
        .PERFCLKTX_IN                   (GTX0_PERFCLKTX_IN),
        .PLLTXRESET_IN                  (GTX0_PLLTXRESET_IN),
        .SOUTHREFCLKTX_IN               (GTX0_SOUTHREFCLKTX_IN),
        .TXPLLLKDET_OUT                 (gtx0_txplllkdet_i),
        .TXPLLREFSELDY_IN               (GTX0_TXPLLREFSELDY_IN),
        .TXRATE_IN                      (GTX0_TXRATE_IN),
        .TXRATEDONE_OUT                 (GTX0_TXRATEDONE_OUT),
        .TXRESETDONE_OUT                (GTX0_TXRESETDONE_OUT)

    );


endmodule

    
