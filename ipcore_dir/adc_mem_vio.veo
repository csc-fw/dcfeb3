///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 2013 Xilinx, Inc.
// All Rights Reserved
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor     : Xilinx
// \   \   \/     Version    : 14.6
//  \   \         Application: Xilinx CORE Generator
//  /   /         Filename   : adc_mem_vio.veo
// /___/   /\     Timestamp  : Wed Sep 18 17:14:00 Eastern Daylight Time 2013
// \   \  /  \
//  \___\/\___\
//
// Design Name: ISE Instantiation template
///////////////////////////////////////////////////////////////////////////////

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
adc_mem_vio YourInstanceName (
    .CONTROL(CONTROL), // INOUT BUS [35:0]
    .CLK(CLK), // IN
    .SYNC_IN(SYNC_IN), // IN BUS [23:0]
    .SYNC_OUT(SYNC_OUT) // OUT BUS [63:0]
);

// INST_TAG_END ------ End INSTANTIATION Template ---------

