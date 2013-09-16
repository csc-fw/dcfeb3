///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 2011 Xilinx, Inc.
// All Rights Reserved
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor     : Xilinx
// \   \   \/     Version    : 1.0
//  \   \         Application: Xilinx CORE Generator
//  /   /         Filename   : cmp_tx_vio.veo
// /___/   /\     Timestamp  : Tue Aug 23 10:54:26 Eastern Daylight Time 2011
// \   \  /  \
//  \___\/\___\
//
// Design Name: ISE Instantiation template
///////////////////////////////////////////////////////////////////////////////

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
cmp_tx_vio YourInstanceName (
    .CONTROL(CONTROL), // INOUT BUS [35:0]
    .CLK(CLK), // IN
    .ASYNC_IN(ASYNC_IN), // IN BUS [31:0]
    .ASYNC_OUT(ASYNC_OUT), // OUT BUS [7:0]
    .SYNC_OUT(SYNC_OUT) // OUT BUS [3:0]
);

// INST_TAG_END ------ End INSTANTIATION Template ---------

