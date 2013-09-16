////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: M.81d
//  \   \         Application: netgen
//  /   /         Filename: CSP_comp_daq_cntrl.v
// /___/   /\     Timestamp: Fri Jul 27 12:59:06 2012
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog C:/Users/bylsma/Projects/DCFEB/firmware/dcfeb_f2.0/ipcore_dir/tmp/_cg/CSP_comp_daq_cntrl.ngc C:/Users/bylsma/Projects/DCFEB/firmware/dcfeb_f2.0/ipcore_dir/tmp/_cg/CSP_comp_daq_cntrl.v 
// Device	: xc6vlx130t-ff1156-1
// Input file	: C:/Users/bylsma/Projects/DCFEB/firmware/dcfeb_f2.0/ipcore_dir/tmp/_cg/CSP_comp_daq_cntrl.ngc
// Output file	: C:/Users/bylsma/Projects/DCFEB/firmware/dcfeb_f2.0/ipcore_dir/tmp/_cg/CSP_comp_daq_cntrl.v
// # of Modules	: 1
// Design Name	: CSP_comp_daq_cntrl
// Xilinx        : C:\Xilinx\12.4\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module CSP_comp_daq_cntrl (
CONTROL0, CONTROL1, CONTROL2, CONTROL3, CONTROL4, CONTROL5, CONTROL6, CONTROL7, CONTROL8, CONTROL9
)/* synthesis syn_black_box syn_noprune=1 */;
  inout [35 : 0] CONTROL0;
  inout [35 : 0] CONTROL1;
  inout [35 : 0] CONTROL2;
  inout [35 : 0] CONTROL3;
  inout [35 : 0] CONTROL4;
  inout [35 : 0] CONTROL5;
  inout [35 : 0] CONTROL6;
  inout [35 : 0] CONTROL7;
  inout [35 : 0] CONTROL8;
  inout [35 : 0] CONTROL9;
  
  // synthesis translate_off
  
  wire N0;
  wire \U0/iUPDATE_OUT ;
  wire \U0/iSHIFT_OUT ;
  wire \U0/U_ICON/U_TDO_MUX/U_CS_MUX/I4.U_MUX16/Mmux_O_6_333 ;
  wire \U0/U_ICON/U_TDO_MUX/U_CS_MUX/I4.U_MUX16/Mmux_O_7_334 ;
  wire \U0/U_ICON/I_YES_BSCAN.U_BS/iDRCK_LOCAL ;
  wire \U0/U_ICON/iDATA_CMD_n ;
  wire \U0/U_ICON/iSEL_n ;
  wire \U0/U_ICON/iSYNC ;
  wire \U0/U_ICON/iTDO ;
  wire \U0/U_ICON/iCORE_ID_SEL[0] ;
  wire \U0/U_ICON/iCORE_ID_SEL[1] ;
  wire \U0/U_ICON/iCORE_ID_SEL[2] ;
  wire \U0/U_ICON/iCORE_ID_SEL[3] ;
  wire \U0/U_ICON/iCORE_ID_SEL[4] ;
  wire \U0/U_ICON/iCORE_ID_SEL[5] ;
  wire \U0/U_ICON/iCORE_ID_SEL[6] ;
  wire \U0/U_ICON/iCORE_ID_SEL[7] ;
  wire \U0/U_ICON/iCORE_ID_SEL[8] ;
  wire \U0/U_ICON/iCORE_ID_SEL[9] ;
  wire \U0/U_ICON/iCORE_ID_SEL[15] ;
  wire \U0/U_ICON/iDATA_CMD ;
  wire \U0/U_ICON/iTDO_next ;
  wire \U0/U_ICON/iSEL ;
  wire \U0/U_ICON/iTDI ;
  wire \U0/U_ICON/U_CMD/iSEL_n ;
  wire \U0/U_ICON/U_CMD/iTARGET_CE ;
  wire \U0/U_ICON/U_CTRL_OUT/iDATA_VALID ;
  wire \U0/U_ICON/U_STAT/iTDO_next ;
  wire \U0/U_ICON/U_STAT/iSTAT_LOW ;
  wire \U0/U_ICON/U_STAT/iSTAT_HIGH ;
  wire \U0/U_ICON/U_STAT/iSTATCMD_CE_n ;
  wire \U0/U_ICON/U_STAT/iCMD_GRP0_SEL ;
  wire \U0/U_ICON/U_STAT/iSTATCMD_CE ;
  wire \U0/U_ICON/U_STAT/iDATA_VALID ;
  wire \U0/U_ICON/U_SYNC/iGOT_SYNC_LOW ;
  wire \U0/U_ICON/U_SYNC/iGOT_SYNC ;
  wire \U0/U_ICON/U_SYNC/iDATA_CMD_n ;
  wire \U0/U_ICON/U_SYNC/iGOT_SYNC_HIGH ;
  wire N2;
  wire N406;
  wire N407;
  wire N408;
  wire N441;
  wire N442;
  wire N443;
  wire N476;
  wire N477;
  wire N478;
  wire N511;
  wire N512;
  wire N513;
  wire N546;
  wire N547;
  wire N548;
  wire N581;
  wire N582;
  wire N583;
  wire N616;
  wire N617;
  wire N618;
  wire N651;
  wire N652;
  wire N653;
  wire N686;
  wire N687;
  wire N688;
  wire \NLW_U0/U_ICON/I_YES_BSCAN.U_BS/I_V6.ISYN.I_USE_SOFTBSCAN_EQ0.U_BS_TCK_UNCONNECTED ;
  wire \NLW_U0/U_ICON/I_YES_BSCAN.U_BS/I_V6.ISYN.I_USE_SOFTBSCAN_EQ0.U_BS_RUNTEST_UNCONNECTED ;
  wire \NLW_U0/U_ICON/I_YES_BSCAN.U_BS/I_V6.ISYN.I_USE_SOFTBSCAN_EQ0.U_BS_RESET_UNCONNECTED ;
  wire \NLW_U0/U_ICON/I_YES_BSCAN.U_BS/I_V6.ISYN.I_USE_SOFTBSCAN_EQ0.U_BS_CAPTURE_UNCONNECTED ;
  wire \NLW_U0/U_ICON/I_YES_BSCAN.U_BS/I_V6.ISYN.I_USE_SOFTBSCAN_EQ0.U_BS_TMS_UNCONNECTED ;
  wire \NLW_U0/U_ICON/U_CMD/U_CORE_ID_SEL/I4.FI[14].U_LUT_O_UNCONNECTED ;
  wire \NLW_U0/U_ICON/U_CMD/U_CORE_ID_SEL/I4.FI[13].U_LUT_O_UNCONNECTED ;
  wire \NLW_U0/U_ICON/U_CMD/U_CORE_ID_SEL/I4.FI[12].U_LUT_O_UNCONNECTED ;
  wire \NLW_U0/U_ICON/U_CMD/U_CORE_ID_SEL/I4.FI[11].U_LUT_O_UNCONNECTED ;
  wire \NLW_U0/U_ICON/U_CMD/U_CORE_ID_SEL/I4.FI[10].U_LUT_O_UNCONNECTED ;
  wire [15 : 15] \U0/U_ICON/iTDO_VEC ;
  wire [15 : 0] \U0/U_ICON/iCOMMAND_SEL ;
  wire [3 : 0] \U0/U_ICON/iCORE_ID ;
  wire [1 : 0] \U0/U_ICON/iCOMMAND_GRP ;
  wire [11 : 8] \U0/U_ICON/U_CMD/iTARGET ;
  wire [1 : 0] \U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL ;
  wire [3 : 0] \U0/U_ICON/U_STAT/iSTAT ;
  wire [5 : 0] \U0/U_ICON/U_STAT/iSTAT_CNT ;
  wire [5 : 0] \U0/U_ICON/U_STAT/U_STAT_CNT/D ;
  wire [5 : 1] \U0/U_ICON/U_STAT/U_STAT_CNT/CI ;
  wire [5 : 0] \U0/U_ICON/U_STAT/U_STAT_CNT/S ;
  wire [6 : 0] \U0/U_ICON/U_SYNC/iSYNC_WORD ;
  assign
    CONTROL0[2] = CONTROL9[2],
    CONTROL0[1] = CONTROL9[1],
    CONTROL0[0] = CONTROL9[0],
    CONTROL1[2] = CONTROL9[2],
    CONTROL1[1] = CONTROL9[1],
    CONTROL1[0] = CONTROL9[0],
    CONTROL2[2] = CONTROL9[2],
    CONTROL2[1] = CONTROL9[1],
    CONTROL2[0] = CONTROL9[0],
    CONTROL3[2] = CONTROL9[2],
    CONTROL3[1] = CONTROL9[1],
    CONTROL3[0] = CONTROL9[0],
    CONTROL4[2] = CONTROL9[2],
    CONTROL4[1] = CONTROL9[1],
    CONTROL4[0] = CONTROL9[0],
    CONTROL5[2] = CONTROL9[2],
    CONTROL5[1] = CONTROL9[1],
    CONTROL5[0] = CONTROL9[0],
    CONTROL6[2] = CONTROL9[2],
    CONTROL6[1] = CONTROL9[1],
    CONTROL6[0] = CONTROL9[0],
    CONTROL7[2] = CONTROL9[2],
    CONTROL7[1] = CONTROL9[1],
    CONTROL7[0] = CONTROL9[0],
    CONTROL8[2] = CONTROL9[2],
    CONTROL8[1] = CONTROL9[1],
    CONTROL8[0] = CONTROL9[0];
  VCC   XST_VCC (
    .P(N0)
  );
  GND   XST_GND (
    .G(CONTROL9[2])
  );
  BSCAN_VIRTEX6 #(
    .JTAG_CHAIN ( 3 ),
    .DISABLE_JTAG ( "FALSE" ))
  \U0/U_ICON/I_YES_BSCAN.U_BS/I_V6.ISYN.I_USE_SOFTBSCAN_EQ0.U_BS  (
    .SHIFT(\U0/iSHIFT_OUT ),
    .TDI(\U0/U_ICON/iTDI ),
    .TCK(\NLW_U0/U_ICON/I_YES_BSCAN.U_BS/I_V6.ISYN.I_USE_SOFTBSCAN_EQ0.U_BS_TCK_UNCONNECTED ),
    .RUNTEST(\NLW_U0/U_ICON/I_YES_BSCAN.U_BS/I_V6.ISYN.I_USE_SOFTBSCAN_EQ0.U_BS_RUNTEST_UNCONNECTED ),
    .UPDATE(\U0/iUPDATE_OUT ),
    .RESET(\NLW_U0/U_ICON/I_YES_BSCAN.U_BS/I_V6.ISYN.I_USE_SOFTBSCAN_EQ0.U_BS_RESET_UNCONNECTED ),
    .SEL(\U0/U_ICON/iSEL ),
    .TDO(\U0/U_ICON/iTDO ),
    .CAPTURE(\NLW_U0/U_ICON/I_YES_BSCAN.U_BS/I_V6.ISYN.I_USE_SOFTBSCAN_EQ0.U_BS_CAPTURE_UNCONNECTED ),
    .TMS(\NLW_U0/U_ICON/I_YES_BSCAN.U_BS/I_V6.ISYN.I_USE_SOFTBSCAN_EQ0.U_BS_TMS_UNCONNECTED ),
    .DRCK(\U0/U_ICON/I_YES_BSCAN.U_BS/iDRCK_LOCAL )
  );
  icon_bscan_bufg   \U0/U_ICON/I_YES_BSCAN.U_BS/I_USE_SOFTBSCAN_EQ0.I_USE_XST_TCK_WORKAROUND_EQ1.U_ICON_BSCAN_BUFG  (
    .DRCK_LOCAL_I(\U0/U_ICON/I_YES_BSCAN.U_BS/iDRCK_LOCAL ),
    .DRCK_LOCAL_O(CONTROL9[0])
  );
  INV   \U0/U_ICON/U_iDATA_CMD_n  (
    .I(\U0/U_ICON/iDATA_CMD ),
    .O(\U0/U_ICON/iDATA_CMD_n )
  );
  INV   \U0/U_ICON/U_iSEL_n  (
    .I(\U0/U_ICON/iSEL ),
    .O(\U0/U_ICON/iSEL_n )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \U0/U_ICON/U_TDO_MUX/U_CS_MUX/I4.U_MUX16/Mmux_O_6  (
    .I0(\U0/U_ICON/iCORE_ID [1]),
    .I1(\U0/U_ICON/iCORE_ID [0]),
    .I2(CONTROL6[3]),
    .I3(CONTROL7[3]),
    .I4(CONTROL5[3]),
    .I5(CONTROL4[3]),
    .O(\U0/U_ICON/U_TDO_MUX/U_CS_MUX/I4.U_MUX16/Mmux_O_6_333 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \U0/U_ICON/U_TDO_MUX/U_CS_MUX/I4.U_MUX16/Mmux_O_7  (
    .I0(\U0/U_ICON/iCORE_ID [1]),
    .I1(\U0/U_ICON/iCORE_ID [0]),
    .I2(CONTROL2[3]),
    .I3(CONTROL3[3]),
    .I4(CONTROL1[3]),
    .I5(CONTROL0[3]),
    .O(\U0/U_ICON/U_TDO_MUX/U_CS_MUX/I4.U_MUX16/Mmux_O_7_334 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/U_ICON/U_TDO_reg  (
    .C(CONTROL9[0]),
    .CE(N0),
    .D(\U0/U_ICON/iTDO_next ),
    .Q(\U0/U_ICON/iTDO )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/U_ICON/U_TDI_reg  (
    .C(CONTROL9[0]),
    .CE(N0),
    .D(\U0/U_ICON/iTDI ),
    .Q(CONTROL9[1])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/U_ICON/U_iDATA_CMD  (
    .C(\U0/iUPDATE_OUT ),
    .CLR(\U0/U_ICON/iSEL_n ),
    .D(\U0/U_ICON/iDATA_CMD_n ),
    .Q(\U0/U_ICON/iDATA_CMD )
  );
  INV   \U0/U_ICON/U_CMD/U_SEL_n  (
    .I(\U0/U_ICON/iSEL ),
    .O(\U0/U_ICON/U_CMD/iSEL_n )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \U0/U_ICON/U_CMD/U_TARGET_CE  (
    .I0(\U0/U_ICON/iDATA_CMD ),
    .I1(\U0/iSHIFT_OUT ),
    .O(\U0/U_ICON/U_CMD/iTARGET_CE )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/U_ICON/U_CMD/G_TARGET[6].I_NE0.U_TARGET  (
    .C(CONTROL9[0]),
    .CE(\U0/U_ICON/U_CMD/iTARGET_CE ),
    .CLR(\U0/U_ICON/U_CMD/iSEL_n ),
    .D(\U0/U_ICON/iCOMMAND_GRP [1]),
    .Q(\U0/U_ICON/iCOMMAND_GRP [0])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/U_ICON/U_CMD/G_TARGET[7].I_NE0.U_TARGET  (
    .C(CONTROL9[0]),
    .CE(\U0/U_ICON/U_CMD/iTARGET_CE ),
    .CLR(\U0/U_ICON/U_CMD/iSEL_n ),
    .D(\U0/U_ICON/U_CMD/iTARGET [8]),
    .Q(\U0/U_ICON/iCOMMAND_GRP [1])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/U_ICON/U_CMD/G_TARGET[8].I_NE0.U_TARGET  (
    .C(CONTROL9[0]),
    .CE(\U0/U_ICON/U_CMD/iTARGET_CE ),
    .CLR(\U0/U_ICON/U_CMD/iSEL_n ),
    .D(\U0/U_ICON/U_CMD/iTARGET [9]),
    .Q(\U0/U_ICON/U_CMD/iTARGET [8])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/U_ICON/U_CMD/G_TARGET[9].I_NE0.U_TARGET  (
    .C(CONTROL9[0]),
    .CE(\U0/U_ICON/U_CMD/iTARGET_CE ),
    .CLR(\U0/U_ICON/U_CMD/iSEL_n ),
    .D(\U0/U_ICON/U_CMD/iTARGET [10]),
    .Q(\U0/U_ICON/U_CMD/iTARGET [9])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/U_ICON/U_CMD/G_TARGET[10].I_NE0.U_TARGET  (
    .C(CONTROL9[0]),
    .CE(\U0/U_ICON/U_CMD/iTARGET_CE ),
    .CLR(\U0/U_ICON/U_CMD/iSEL_n ),
    .D(\U0/U_ICON/U_CMD/iTARGET [11]),
    .Q(\U0/U_ICON/U_CMD/iTARGET [10])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/U_ICON/U_CMD/G_TARGET[11].I_NE0.U_TARGET  (
    .C(CONTROL9[0]),
    .CE(\U0/U_ICON/U_CMD/iTARGET_CE ),
    .CLR(\U0/U_ICON/U_CMD/iSEL_n ),
    .D(\U0/U_ICON/iCORE_ID [0]),
    .Q(\U0/U_ICON/U_CMD/iTARGET [11])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/U_ICON/U_CMD/G_TARGET[12].I_NE0.U_TARGET  (
    .C(CONTROL9[0]),
    .CE(\U0/U_ICON/U_CMD/iTARGET_CE ),
    .CLR(\U0/U_ICON/U_CMD/iSEL_n ),
    .D(\U0/U_ICON/iCORE_ID [1]),
    .Q(\U0/U_ICON/iCORE_ID [0])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/U_ICON/U_CMD/G_TARGET[13].I_NE0.U_TARGET  (
    .C(CONTROL9[0]),
    .CE(\U0/U_ICON/U_CMD/iTARGET_CE ),
    .CLR(\U0/U_ICON/U_CMD/iSEL_n ),
    .D(\U0/U_ICON/iCORE_ID [2]),
    .Q(\U0/U_ICON/iCORE_ID [1])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/U_ICON/U_CMD/G_TARGET[14].I_NE0.U_TARGET  (
    .C(CONTROL9[0]),
    .CE(\U0/U_ICON/U_CMD/iTARGET_CE ),
    .CLR(\U0/U_ICON/U_CMD/iSEL_n ),
    .D(\U0/U_ICON/iCORE_ID [3]),
    .Q(\U0/U_ICON/iCORE_ID [2])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/U_ICON/U_CMD/G_TARGET[15].I_EQ0.U_TARGET  (
    .C(CONTROL9[0]),
    .CE(\U0/U_ICON/U_CMD/iTARGET_CE ),
    .CLR(\U0/U_ICON/U_CMD/iSEL_n ),
    .D(CONTROL9[1]),
    .Q(\U0/U_ICON/iCORE_ID [3])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CMD/U_COMMAND_SEL/I4.FI[15].U_LUT  (
    .I0(\U0/U_ICON/U_CMD/iTARGET [8]),
    .I1(\U0/U_ICON/U_CMD/iTARGET [9]),
    .I2(\U0/U_ICON/U_CMD/iTARGET [10]),
    .I3(\U0/U_ICON/U_CMD/iTARGET [11]),
    .O(\U0/U_ICON/iCOMMAND_SEL [15])
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \U0/U_ICON/U_CMD/U_COMMAND_SEL/I4.FI[14].U_LUT  (
    .I0(\U0/U_ICON/U_CMD/iTARGET [8]),
    .I1(\U0/U_ICON/U_CMD/iTARGET [9]),
    .I2(\U0/U_ICON/U_CMD/iTARGET [10]),
    .I3(\U0/U_ICON/U_CMD/iTARGET [11]),
    .O(\U0/U_ICON/iCOMMAND_SEL [14])
  );
  LUT4 #(
    .INIT ( 16'h2000 ))
  \U0/U_ICON/U_CMD/U_COMMAND_SEL/I4.FI[13].U_LUT  (
    .I0(\U0/U_ICON/U_CMD/iTARGET [8]),
    .I1(\U0/U_ICON/U_CMD/iTARGET [9]),
    .I2(\U0/U_ICON/U_CMD/iTARGET [10]),
    .I3(\U0/U_ICON/U_CMD/iTARGET [11]),
    .O(\U0/U_ICON/iCOMMAND_SEL [13])
  );
  LUT4 #(
    .INIT ( 16'h1000 ))
  \U0/U_ICON/U_CMD/U_COMMAND_SEL/I4.FI[12].U_LUT  (
    .I0(\U0/U_ICON/U_CMD/iTARGET [8]),
    .I1(\U0/U_ICON/U_CMD/iTARGET [9]),
    .I2(\U0/U_ICON/U_CMD/iTARGET [10]),
    .I3(\U0/U_ICON/U_CMD/iTARGET [11]),
    .O(\U0/U_ICON/iCOMMAND_SEL [12])
  );
  LUT4 #(
    .INIT ( 16'h0800 ))
  \U0/U_ICON/U_CMD/U_COMMAND_SEL/I4.FI[11].U_LUT  (
    .I0(\U0/U_ICON/U_CMD/iTARGET [8]),
    .I1(\U0/U_ICON/U_CMD/iTARGET [9]),
    .I2(\U0/U_ICON/U_CMD/iTARGET [10]),
    .I3(\U0/U_ICON/U_CMD/iTARGET [11]),
    .O(\U0/U_ICON/iCOMMAND_SEL [11])
  );
  LUT4 #(
    .INIT ( 16'h0400 ))
  \U0/U_ICON/U_CMD/U_COMMAND_SEL/I4.FI[10].U_LUT  (
    .I0(\U0/U_ICON/U_CMD/iTARGET [8]),
    .I1(\U0/U_ICON/U_CMD/iTARGET [9]),
    .I2(\U0/U_ICON/U_CMD/iTARGET [10]),
    .I3(\U0/U_ICON/U_CMD/iTARGET [11]),
    .O(\U0/U_ICON/iCOMMAND_SEL [10])
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \U0/U_ICON/U_CMD/U_COMMAND_SEL/I4.FI[9].U_LUT  (
    .I0(\U0/U_ICON/U_CMD/iTARGET [8]),
    .I1(\U0/U_ICON/U_CMD/iTARGET [9]),
    .I2(\U0/U_ICON/U_CMD/iTARGET [10]),
    .I3(\U0/U_ICON/U_CMD/iTARGET [11]),
    .O(\U0/U_ICON/iCOMMAND_SEL [9])
  );
  LUT4 #(
    .INIT ( 16'h0100 ))
  \U0/U_ICON/U_CMD/U_COMMAND_SEL/I4.FI[8].U_LUT  (
    .I0(\U0/U_ICON/U_CMD/iTARGET [8]),
    .I1(\U0/U_ICON/U_CMD/iTARGET [9]),
    .I2(\U0/U_ICON/U_CMD/iTARGET [10]),
    .I3(\U0/U_ICON/U_CMD/iTARGET [11]),
    .O(\U0/U_ICON/iCOMMAND_SEL [8])
  );
  LUT4 #(
    .INIT ( 16'h0080 ))
  \U0/U_ICON/U_CMD/U_COMMAND_SEL/I4.FI[7].U_LUT  (
    .I0(\U0/U_ICON/U_CMD/iTARGET [8]),
    .I1(\U0/U_ICON/U_CMD/iTARGET [9]),
    .I2(\U0/U_ICON/U_CMD/iTARGET [10]),
    .I3(\U0/U_ICON/U_CMD/iTARGET [11]),
    .O(\U0/U_ICON/iCOMMAND_SEL [7])
  );
  LUT4 #(
    .INIT ( 16'h0040 ))
  \U0/U_ICON/U_CMD/U_COMMAND_SEL/I4.FI[6].U_LUT  (
    .I0(\U0/U_ICON/U_CMD/iTARGET [8]),
    .I1(\U0/U_ICON/U_CMD/iTARGET [9]),
    .I2(\U0/U_ICON/U_CMD/iTARGET [10]),
    .I3(\U0/U_ICON/U_CMD/iTARGET [11]),
    .O(\U0/U_ICON/iCOMMAND_SEL [6])
  );
  LUT4 #(
    .INIT ( 16'h0020 ))
  \U0/U_ICON/U_CMD/U_COMMAND_SEL/I4.FI[5].U_LUT  (
    .I0(\U0/U_ICON/U_CMD/iTARGET [8]),
    .I1(\U0/U_ICON/U_CMD/iTARGET [9]),
    .I2(\U0/U_ICON/U_CMD/iTARGET [10]),
    .I3(\U0/U_ICON/U_CMD/iTARGET [11]),
    .O(\U0/U_ICON/iCOMMAND_SEL [5])
  );
  LUT4 #(
    .INIT ( 16'h0010 ))
  \U0/U_ICON/U_CMD/U_COMMAND_SEL/I4.FI[4].U_LUT  (
    .I0(\U0/U_ICON/U_CMD/iTARGET [8]),
    .I1(\U0/U_ICON/U_CMD/iTARGET [9]),
    .I2(\U0/U_ICON/U_CMD/iTARGET [10]),
    .I3(\U0/U_ICON/U_CMD/iTARGET [11]),
    .O(\U0/U_ICON/iCOMMAND_SEL [4])
  );
  LUT4 #(
    .INIT ( 16'h0008 ))
  \U0/U_ICON/U_CMD/U_COMMAND_SEL/I4.FI[3].U_LUT  (
    .I0(\U0/U_ICON/U_CMD/iTARGET [8]),
    .I1(\U0/U_ICON/U_CMD/iTARGET [9]),
    .I2(\U0/U_ICON/U_CMD/iTARGET [10]),
    .I3(\U0/U_ICON/U_CMD/iTARGET [11]),
    .O(\U0/U_ICON/iCOMMAND_SEL [3])
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  \U0/U_ICON/U_CMD/U_COMMAND_SEL/I4.FI[2].U_LUT  (
    .I0(\U0/U_ICON/U_CMD/iTARGET [8]),
    .I1(\U0/U_ICON/U_CMD/iTARGET [9]),
    .I2(\U0/U_ICON/U_CMD/iTARGET [10]),
    .I3(\U0/U_ICON/U_CMD/iTARGET [11]),
    .O(\U0/U_ICON/iCOMMAND_SEL [2])
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \U0/U_ICON/U_CMD/U_COMMAND_SEL/I4.FI[1].U_LUT  (
    .I0(\U0/U_ICON/U_CMD/iTARGET [8]),
    .I1(\U0/U_ICON/U_CMD/iTARGET [9]),
    .I2(\U0/U_ICON/U_CMD/iTARGET [10]),
    .I3(\U0/U_ICON/U_CMD/iTARGET [11]),
    .O(\U0/U_ICON/iCOMMAND_SEL [1])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \U0/U_ICON/U_CMD/U_COMMAND_SEL/I4.FI[0].U_LUT  (
    .I0(\U0/U_ICON/U_CMD/iTARGET [8]),
    .I1(\U0/U_ICON/U_CMD/iTARGET [9]),
    .I2(\U0/U_ICON/U_CMD/iTARGET [10]),
    .I3(\U0/U_ICON/U_CMD/iTARGET [11]),
    .O(\U0/U_ICON/iCOMMAND_SEL [0])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CMD/U_CORE_ID_SEL/I4.FI[15].U_LUT  (
    .I0(\U0/U_ICON/iCORE_ID [0]),
    .I1(\U0/U_ICON/iCORE_ID [1]),
    .I2(\U0/U_ICON/iCORE_ID [2]),
    .I3(\U0/U_ICON/iCORE_ID [3]),
    .O(\U0/U_ICON/iCORE_ID_SEL[15] )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \U0/U_ICON/U_CMD/U_CORE_ID_SEL/I4.FI[14].U_LUT  (
    .I0(\U0/U_ICON/iCORE_ID [0]),
    .I1(\U0/U_ICON/iCORE_ID [1]),
    .I2(\U0/U_ICON/iCORE_ID [2]),
    .I3(\U0/U_ICON/iCORE_ID [3]),
    .O(\NLW_U0/U_ICON/U_CMD/U_CORE_ID_SEL/I4.FI[14].U_LUT_O_UNCONNECTED )
  );
  LUT4 #(
    .INIT ( 16'h2000 ))
  \U0/U_ICON/U_CMD/U_CORE_ID_SEL/I4.FI[13].U_LUT  (
    .I0(\U0/U_ICON/iCORE_ID [0]),
    .I1(\U0/U_ICON/iCORE_ID [1]),
    .I2(\U0/U_ICON/iCORE_ID [2]),
    .I3(\U0/U_ICON/iCORE_ID [3]),
    .O(\NLW_U0/U_ICON/U_CMD/U_CORE_ID_SEL/I4.FI[13].U_LUT_O_UNCONNECTED )
  );
  LUT4 #(
    .INIT ( 16'h1000 ))
  \U0/U_ICON/U_CMD/U_CORE_ID_SEL/I4.FI[12].U_LUT  (
    .I0(\U0/U_ICON/iCORE_ID [0]),
    .I1(\U0/U_ICON/iCORE_ID [1]),
    .I2(\U0/U_ICON/iCORE_ID [2]),
    .I3(\U0/U_ICON/iCORE_ID [3]),
    .O(\NLW_U0/U_ICON/U_CMD/U_CORE_ID_SEL/I4.FI[12].U_LUT_O_UNCONNECTED )
  );
  LUT4 #(
    .INIT ( 16'h0800 ))
  \U0/U_ICON/U_CMD/U_CORE_ID_SEL/I4.FI[11].U_LUT  (
    .I0(\U0/U_ICON/iCORE_ID [0]),
    .I1(\U0/U_ICON/iCORE_ID [1]),
    .I2(\U0/U_ICON/iCORE_ID [2]),
    .I3(\U0/U_ICON/iCORE_ID [3]),
    .O(\NLW_U0/U_ICON/U_CMD/U_CORE_ID_SEL/I4.FI[11].U_LUT_O_UNCONNECTED )
  );
  LUT4 #(
    .INIT ( 16'h0400 ))
  \U0/U_ICON/U_CMD/U_CORE_ID_SEL/I4.FI[10].U_LUT  (
    .I0(\U0/U_ICON/iCORE_ID [0]),
    .I1(\U0/U_ICON/iCORE_ID [1]),
    .I2(\U0/U_ICON/iCORE_ID [2]),
    .I3(\U0/U_ICON/iCORE_ID [3]),
    .O(\NLW_U0/U_ICON/U_CMD/U_CORE_ID_SEL/I4.FI[10].U_LUT_O_UNCONNECTED )
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \U0/U_ICON/U_CMD/U_CORE_ID_SEL/I4.FI[9].U_LUT  (
    .I0(\U0/U_ICON/iCORE_ID [0]),
    .I1(\U0/U_ICON/iCORE_ID [1]),
    .I2(\U0/U_ICON/iCORE_ID [2]),
    .I3(\U0/U_ICON/iCORE_ID [3]),
    .O(\U0/U_ICON/iCORE_ID_SEL[9] )
  );
  LUT4 #(
    .INIT ( 16'h0100 ))
  \U0/U_ICON/U_CMD/U_CORE_ID_SEL/I4.FI[8].U_LUT  (
    .I0(\U0/U_ICON/iCORE_ID [0]),
    .I1(\U0/U_ICON/iCORE_ID [1]),
    .I2(\U0/U_ICON/iCORE_ID [2]),
    .I3(\U0/U_ICON/iCORE_ID [3]),
    .O(\U0/U_ICON/iCORE_ID_SEL[8] )
  );
  LUT4 #(
    .INIT ( 16'h0080 ))
  \U0/U_ICON/U_CMD/U_CORE_ID_SEL/I4.FI[7].U_LUT  (
    .I0(\U0/U_ICON/iCORE_ID [0]),
    .I1(\U0/U_ICON/iCORE_ID [1]),
    .I2(\U0/U_ICON/iCORE_ID [2]),
    .I3(\U0/U_ICON/iCORE_ID [3]),
    .O(\U0/U_ICON/iCORE_ID_SEL[7] )
  );
  LUT4 #(
    .INIT ( 16'h0040 ))
  \U0/U_ICON/U_CMD/U_CORE_ID_SEL/I4.FI[6].U_LUT  (
    .I0(\U0/U_ICON/iCORE_ID [0]),
    .I1(\U0/U_ICON/iCORE_ID [1]),
    .I2(\U0/U_ICON/iCORE_ID [2]),
    .I3(\U0/U_ICON/iCORE_ID [3]),
    .O(\U0/U_ICON/iCORE_ID_SEL[6] )
  );
  LUT4 #(
    .INIT ( 16'h0020 ))
  \U0/U_ICON/U_CMD/U_CORE_ID_SEL/I4.FI[5].U_LUT  (
    .I0(\U0/U_ICON/iCORE_ID [0]),
    .I1(\U0/U_ICON/iCORE_ID [1]),
    .I2(\U0/U_ICON/iCORE_ID [2]),
    .I3(\U0/U_ICON/iCORE_ID [3]),
    .O(\U0/U_ICON/iCORE_ID_SEL[5] )
  );
  LUT4 #(
    .INIT ( 16'h0010 ))
  \U0/U_ICON/U_CMD/U_CORE_ID_SEL/I4.FI[4].U_LUT  (
    .I0(\U0/U_ICON/iCORE_ID [0]),
    .I1(\U0/U_ICON/iCORE_ID [1]),
    .I2(\U0/U_ICON/iCORE_ID [2]),
    .I3(\U0/U_ICON/iCORE_ID [3]),
    .O(\U0/U_ICON/iCORE_ID_SEL[4] )
  );
  LUT4 #(
    .INIT ( 16'h0008 ))
  \U0/U_ICON/U_CMD/U_CORE_ID_SEL/I4.FI[3].U_LUT  (
    .I0(\U0/U_ICON/iCORE_ID [0]),
    .I1(\U0/U_ICON/iCORE_ID [1]),
    .I2(\U0/U_ICON/iCORE_ID [2]),
    .I3(\U0/U_ICON/iCORE_ID [3]),
    .O(\U0/U_ICON/iCORE_ID_SEL[3] )
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  \U0/U_ICON/U_CMD/U_CORE_ID_SEL/I4.FI[2].U_LUT  (
    .I0(\U0/U_ICON/iCORE_ID [0]),
    .I1(\U0/U_ICON/iCORE_ID [1]),
    .I2(\U0/U_ICON/iCORE_ID [2]),
    .I3(\U0/U_ICON/iCORE_ID [3]),
    .O(\U0/U_ICON/iCORE_ID_SEL[2] )
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \U0/U_ICON/U_CMD/U_CORE_ID_SEL/I4.FI[1].U_LUT  (
    .I0(\U0/U_ICON/iCORE_ID [0]),
    .I1(\U0/U_ICON/iCORE_ID [1]),
    .I2(\U0/U_ICON/iCORE_ID [2]),
    .I3(\U0/U_ICON/iCORE_ID [3]),
    .O(\U0/U_ICON/iCORE_ID_SEL[1] )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \U0/U_ICON/U_CMD/U_CORE_ID_SEL/I4.FI[0].U_LUT  (
    .I0(\U0/U_ICON/iCORE_ID [0]),
    .I1(\U0/U_ICON/iCORE_ID [1]),
    .I2(\U0/U_ICON/iCORE_ID [2]),
    .I3(\U0/U_ICON/iCORE_ID [3]),
    .O(\U0/U_ICON/iCORE_ID_SEL[0] )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[0].F_CMD[0].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [0]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[0] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL0[20])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[0].F_CMD[0].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [0]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[0] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL0[4])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[0].F_CMD[1].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [1]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[0] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL0[21])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[0].F_CMD[1].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [1]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[0] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL0[5])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[0].F_CMD[2].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [2]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[0] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL0[22])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[0].F_CMD[2].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [2]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[0] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL0[6])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[0].F_CMD[3].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [3]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[0] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL0[23])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[0].F_CMD[3].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [3]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[0] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL0[7])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[0].F_CMD[4].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [4]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[0] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL0[24])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[0].F_CMD[4].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [4]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[0] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL0[8])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[0].F_CMD[5].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [5]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[0] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL0[25])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[0].F_CMD[5].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [5]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[0] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL0[9])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[0].F_CMD[6].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [6]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[0] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL0[26])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[0].F_CMD[6].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [6]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[0] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL0[10])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[0].F_CMD[7].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [7]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[0] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL0[27])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[0].F_CMD[7].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [7]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[0] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL0[11])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[0].F_CMD[8].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [8]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[0] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL0[28])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[0].F_CMD[8].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [8]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[0] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL0[12])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[0].F_CMD[9].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [9]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[0] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL0[29])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[0].F_CMD[9].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [9]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[0] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL0[13])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[0].F_CMD[10].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [10]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[0] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL0[30])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[0].F_CMD[10].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [10]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[0] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL0[14])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[0].F_CMD[11].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [11]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[0] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL0[31])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[0].F_CMD[11].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [11]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[0] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL0[15])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[0].F_CMD[12].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [12]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[0] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL0[32])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[0].F_CMD[12].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [12]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[0] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL0[16])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[0].F_CMD[13].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [13]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[0] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL0[33])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[0].F_CMD[13].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [13]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[0] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL0[17])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[0].F_CMD[14].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [14]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[0] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL0[34])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[0].F_CMD[14].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [14]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[0] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL0[18])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[0].F_CMD[15].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [15]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[0] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL0[35])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[0].F_CMD[15].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [15]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[0] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL0[19])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[1].F_CMD[0].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [0]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[1] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL1[20])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[1].F_CMD[0].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [0]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[1] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL1[4])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[1].F_CMD[1].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [1]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[1] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL1[21])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[1].F_CMD[1].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [1]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[1] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL1[5])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[1].F_CMD[2].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [2]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[1] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL1[22])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[1].F_CMD[2].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [2]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[1] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL1[6])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[1].F_CMD[3].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [3]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[1] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL1[23])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[1].F_CMD[3].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [3]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[1] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL1[7])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[1].F_CMD[4].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [4]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[1] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL1[24])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[1].F_CMD[4].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [4]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[1] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL1[8])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[1].F_CMD[5].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [5]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[1] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL1[25])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[1].F_CMD[5].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [5]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[1] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL1[9])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[1].F_CMD[6].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [6]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[1] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL1[26])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[1].F_CMD[6].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [6]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[1] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL1[10])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[1].F_CMD[7].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [7]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[1] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL1[27])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[1].F_CMD[7].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [7]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[1] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL1[11])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[1].F_CMD[8].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [8]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[1] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL1[28])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[1].F_CMD[8].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [8]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[1] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL1[12])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[1].F_CMD[9].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [9]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[1] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL1[29])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[1].F_CMD[9].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [9]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[1] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL1[13])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[1].F_CMD[10].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [10]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[1] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL1[30])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[1].F_CMD[10].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [10]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[1] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL1[14])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[1].F_CMD[11].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [11]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[1] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL1[31])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[1].F_CMD[11].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [11]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[1] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL1[15])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[1].F_CMD[12].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [12]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[1] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL1[32])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[1].F_CMD[12].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [12]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[1] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL1[16])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[1].F_CMD[13].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [13]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[1] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL1[33])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[1].F_CMD[13].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [13]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[1] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL1[17])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[1].F_CMD[14].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [14]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[1] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL1[34])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[1].F_CMD[14].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [14]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[1] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL1[18])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[1].F_CMD[15].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [15]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[1] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL1[35])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[1].F_CMD[15].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [15]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[1] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL1[19])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[2].F_CMD[0].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [0]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[2] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL2[20])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[2].F_CMD[0].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [0]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[2] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL2[4])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[2].F_CMD[1].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [1]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[2] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL2[21])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[2].F_CMD[1].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [1]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[2] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL2[5])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[2].F_CMD[2].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [2]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[2] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL2[22])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[2].F_CMD[2].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [2]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[2] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL2[6])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[2].F_CMD[3].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [3]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[2] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL2[23])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[2].F_CMD[3].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [3]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[2] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL2[7])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[2].F_CMD[4].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [4]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[2] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL2[24])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[2].F_CMD[4].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [4]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[2] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL2[8])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[2].F_CMD[5].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [5]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[2] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL2[25])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[2].F_CMD[5].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [5]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[2] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL2[9])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[2].F_CMD[6].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [6]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[2] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL2[26])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[2].F_CMD[6].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [6]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[2] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL2[10])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[2].F_CMD[7].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [7]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[2] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL2[27])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[2].F_CMD[7].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [7]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[2] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL2[11])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[2].F_CMD[8].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [8]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[2] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL2[28])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[2].F_CMD[8].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [8]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[2] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL2[12])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[2].F_CMD[9].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [9]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[2] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL2[29])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[2].F_CMD[9].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [9]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[2] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL2[13])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[2].F_CMD[10].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [10]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[2] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL2[30])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[2].F_CMD[10].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [10]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[2] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL2[14])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[2].F_CMD[11].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [11]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[2] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL2[31])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[2].F_CMD[11].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [11]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[2] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL2[15])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[2].F_CMD[12].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [12]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[2] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL2[32])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[2].F_CMD[12].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [12]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[2] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL2[16])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[2].F_CMD[13].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [13]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[2] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL2[33])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[2].F_CMD[13].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [13]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[2] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL2[17])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[2].F_CMD[14].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [14]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[2] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL2[34])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[2].F_CMD[14].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [14]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[2] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL2[18])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[2].F_CMD[15].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [15]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[2] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL2[35])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[2].F_CMD[15].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [15]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[2] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL2[19])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[3].F_CMD[0].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [0]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[3] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL3[20])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[3].F_CMD[0].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [0]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[3] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL3[4])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[3].F_CMD[1].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [1]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[3] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL3[21])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[3].F_CMD[1].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [1]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[3] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL3[5])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[3].F_CMD[2].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [2]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[3] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL3[22])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[3].F_CMD[2].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [2]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[3] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL3[6])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[3].F_CMD[3].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [3]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[3] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL3[23])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[3].F_CMD[3].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [3]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[3] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL3[7])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[3].F_CMD[4].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [4]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[3] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL3[24])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[3].F_CMD[4].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [4]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[3] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL3[8])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[3].F_CMD[5].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [5]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[3] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL3[25])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[3].F_CMD[5].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [5]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[3] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL3[9])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[3].F_CMD[6].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [6]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[3] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL3[26])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[3].F_CMD[6].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [6]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[3] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL3[10])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[3].F_CMD[7].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [7]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[3] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL3[27])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[3].F_CMD[7].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [7]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[3] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL3[11])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[3].F_CMD[8].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [8]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[3] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL3[28])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[3].F_CMD[8].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [8]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[3] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL3[12])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[3].F_CMD[9].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [9]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[3] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL3[29])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[3].F_CMD[9].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [9]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[3] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL3[13])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[3].F_CMD[10].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [10]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[3] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL3[30])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[3].F_CMD[10].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [10]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[3] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL3[14])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[3].F_CMD[11].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [11]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[3] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL3[31])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[3].F_CMD[11].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [11]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[3] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL3[15])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[3].F_CMD[12].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [12]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[3] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL3[32])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[3].F_CMD[12].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [12]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[3] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL3[16])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[3].F_CMD[13].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [13]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[3] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL3[33])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[3].F_CMD[13].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [13]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[3] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL3[17])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[3].F_CMD[14].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [14]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[3] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL3[34])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[3].F_CMD[14].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [14]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[3] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL3[18])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[3].F_CMD[15].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [15]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[3] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL3[35])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[3].F_CMD[15].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [15]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[3] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL3[19])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[4].F_CMD[0].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [0]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[4] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL4[20])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[4].F_CMD[0].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [0]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[4] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL4[4])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[4].F_CMD[1].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [1]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[4] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL4[21])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[4].F_CMD[1].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [1]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[4] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL4[5])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[4].F_CMD[2].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [2]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[4] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL4[22])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[4].F_CMD[2].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [2]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[4] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL4[6])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[4].F_CMD[3].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [3]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[4] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL4[23])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[4].F_CMD[3].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [3]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[4] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL4[7])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[4].F_CMD[4].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [4]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[4] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL4[24])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[4].F_CMD[4].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [4]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[4] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL4[8])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[4].F_CMD[5].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [5]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[4] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL4[25])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[4].F_CMD[5].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [5]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[4] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL4[9])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[4].F_CMD[6].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [6]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[4] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL4[26])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[4].F_CMD[6].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [6]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[4] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL4[10])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[4].F_CMD[7].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [7]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[4] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL4[27])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[4].F_CMD[7].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [7]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[4] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL4[11])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[4].F_CMD[8].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [8]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[4] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL4[28])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[4].F_CMD[8].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [8]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[4] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL4[12])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[4].F_CMD[9].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [9]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[4] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL4[29])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[4].F_CMD[9].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [9]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[4] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL4[13])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[4].F_CMD[10].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [10]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[4] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL4[30])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[4].F_CMD[10].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [10]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[4] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL4[14])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[4].F_CMD[11].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [11]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[4] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL4[31])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[4].F_CMD[11].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [11]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[4] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL4[15])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[4].F_CMD[12].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [12]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[4] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL4[32])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[4].F_CMD[12].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [12]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[4] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL4[16])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[4].F_CMD[13].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [13]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[4] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL4[33])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[4].F_CMD[13].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [13]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[4] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL4[17])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[4].F_CMD[14].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [14]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[4] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL4[34])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[4].F_CMD[14].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [14]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[4] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL4[18])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[4].F_CMD[15].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [15]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[4] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL4[35])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[4].F_CMD[15].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [15]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[4] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL4[19])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[5].F_CMD[0].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [0]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[5] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL5[20])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[5].F_CMD[0].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [0]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[5] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL5[4])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[5].F_CMD[1].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [1]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[5] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL5[21])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[5].F_CMD[1].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [1]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[5] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL5[5])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[5].F_CMD[2].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [2]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[5] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL5[22])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[5].F_CMD[2].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [2]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[5] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL5[6])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[5].F_CMD[3].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [3]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[5] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL5[23])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[5].F_CMD[3].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [3]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[5] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL5[7])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[5].F_CMD[4].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [4]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[5] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL5[24])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[5].F_CMD[4].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [4]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[5] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL5[8])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[5].F_CMD[5].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [5]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[5] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL5[25])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[5].F_CMD[5].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [5]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[5] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL5[9])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[5].F_CMD[6].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [6]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[5] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL5[26])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[5].F_CMD[6].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [6]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[5] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL5[10])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[5].F_CMD[7].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [7]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[5] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL5[27])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[5].F_CMD[7].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [7]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[5] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL5[11])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[5].F_CMD[8].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [8]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[5] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL5[28])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[5].F_CMD[8].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [8]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[5] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL5[12])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[5].F_CMD[9].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [9]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[5] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL5[29])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[5].F_CMD[9].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [9]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[5] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL5[13])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[5].F_CMD[10].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [10]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[5] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL5[30])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[5].F_CMD[10].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [10]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[5] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL5[14])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[5].F_CMD[11].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [11]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[5] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL5[31])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[5].F_CMD[11].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [11]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[5] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL5[15])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[5].F_CMD[12].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [12]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[5] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL5[32])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[5].F_CMD[12].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [12]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[5] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL5[16])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[5].F_CMD[13].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [13]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[5] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL5[33])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[5].F_CMD[13].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [13]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[5] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL5[17])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[5].F_CMD[14].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [14]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[5] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL5[34])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[5].F_CMD[14].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [14]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[5] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL5[18])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[5].F_CMD[15].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [15]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[5] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL5[35])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[5].F_CMD[15].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [15]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[5] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL5[19])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[6].F_CMD[0].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [0]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[6] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL6[20])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[6].F_CMD[0].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [0]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[6] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL6[4])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[6].F_CMD[1].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [1]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[6] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL6[21])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[6].F_CMD[1].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [1]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[6] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL6[5])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[6].F_CMD[2].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [2]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[6] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL6[22])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[6].F_CMD[2].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [2]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[6] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL6[6])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[6].F_CMD[3].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [3]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[6] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL6[23])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[6].F_CMD[3].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [3]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[6] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL6[7])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[6].F_CMD[4].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [4]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[6] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL6[24])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[6].F_CMD[4].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [4]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[6] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL6[8])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[6].F_CMD[5].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [5]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[6] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL6[25])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[6].F_CMD[5].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [5]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[6] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL6[9])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[6].F_CMD[6].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [6]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[6] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL6[26])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[6].F_CMD[6].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [6]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[6] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL6[10])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[6].F_CMD[7].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [7]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[6] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL6[27])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[6].F_CMD[7].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [7]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[6] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL6[11])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[6].F_CMD[8].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [8]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[6] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL6[28])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[6].F_CMD[8].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [8]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[6] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL6[12])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[6].F_CMD[9].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [9]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[6] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL6[29])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[6].F_CMD[9].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [9]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[6] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL6[13])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[6].F_CMD[10].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [10]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[6] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL6[30])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[6].F_CMD[10].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [10]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[6] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL6[14])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[6].F_CMD[11].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [11]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[6] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL6[31])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[6].F_CMD[11].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [11]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[6] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL6[15])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[6].F_CMD[12].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [12]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[6] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL6[32])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[6].F_CMD[12].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [12]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[6] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL6[16])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[6].F_CMD[13].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [13]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[6] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL6[33])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[6].F_CMD[13].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [13]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[6] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL6[17])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[6].F_CMD[14].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [14]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[6] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL6[34])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[6].F_CMD[14].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [14]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[6] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL6[18])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[6].F_CMD[15].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [15]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[6] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL6[35])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[6].F_CMD[15].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [15]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[6] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL6[19])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[7].F_CMD[0].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [0]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[7] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL7[20])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[7].F_CMD[0].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [0]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[7] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL7[4])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[7].F_CMD[1].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [1]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[7] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL7[21])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[7].F_CMD[1].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [1]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[7] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL7[5])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[7].F_CMD[2].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [2]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[7] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL7[22])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[7].F_CMD[2].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [2]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[7] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL7[6])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[7].F_CMD[3].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [3]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[7] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL7[23])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[7].F_CMD[3].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [3]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[7] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL7[7])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[7].F_CMD[4].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [4]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[7] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL7[24])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[7].F_CMD[4].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [4]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[7] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL7[8])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[7].F_CMD[5].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [5]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[7] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL7[25])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[7].F_CMD[5].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [5]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[7] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL7[9])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[7].F_CMD[6].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [6]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[7] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL7[26])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[7].F_CMD[6].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [6]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[7] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL7[10])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[7].F_CMD[7].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [7]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[7] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL7[27])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[7].F_CMD[7].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [7]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[7] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL7[11])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[7].F_CMD[8].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [8]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[7] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL7[28])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[7].F_CMD[8].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [8]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[7] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL7[12])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[7].F_CMD[9].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [9]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[7] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL7[29])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[7].F_CMD[9].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [9]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[7] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL7[13])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[7].F_CMD[10].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [10]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[7] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL7[30])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[7].F_CMD[10].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [10]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[7] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL7[14])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[7].F_CMD[11].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [11]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[7] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL7[31])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[7].F_CMD[11].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [11]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[7] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL7[15])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[7].F_CMD[12].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [12]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[7] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL7[32])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[7].F_CMD[12].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [12]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[7] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL7[16])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[7].F_CMD[13].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [13]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[7] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL7[33])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[7].F_CMD[13].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [13]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[7] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL7[17])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[7].F_CMD[14].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [14]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[7] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL7[34])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[7].F_CMD[14].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [14]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[7] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL7[18])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[7].F_CMD[15].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [15]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[7] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL7[35])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[7].F_CMD[15].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [15]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[7] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL7[19])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[8].F_CMD[0].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [0]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[8] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL8[20])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[8].F_CMD[0].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [0]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[8] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL8[4])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[8].F_CMD[1].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [1]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[8] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL8[21])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[8].F_CMD[1].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [1]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[8] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL8[5])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[8].F_CMD[2].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [2]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[8] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL8[22])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[8].F_CMD[2].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [2]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[8] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL8[6])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[8].F_CMD[3].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [3]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[8] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL8[23])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[8].F_CMD[3].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [3]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[8] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL8[7])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[8].F_CMD[4].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [4]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[8] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL8[24])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[8].F_CMD[4].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [4]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[8] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL8[8])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[8].F_CMD[5].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [5]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[8] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL8[25])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[8].F_CMD[5].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [5]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[8] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL8[9])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[8].F_CMD[6].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [6]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[8] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL8[26])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[8].F_CMD[6].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [6]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[8] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL8[10])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[8].F_CMD[7].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [7]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[8] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL8[27])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[8].F_CMD[7].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [7]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[8] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL8[11])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[8].F_CMD[8].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [8]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[8] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL8[28])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[8].F_CMD[8].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [8]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[8] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL8[12])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[8].F_CMD[9].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [9]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[8] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL8[29])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[8].F_CMD[9].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [9]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[8] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL8[13])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[8].F_CMD[10].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [10]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[8] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL8[30])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[8].F_CMD[10].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [10]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[8] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL8[14])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[8].F_CMD[11].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [11]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[8] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL8[31])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[8].F_CMD[11].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [11]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[8] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL8[15])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[8].F_CMD[12].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [12]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[8] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL8[32])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[8].F_CMD[12].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [12]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[8] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL8[16])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[8].F_CMD[13].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [13]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[8] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL8[33])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[8].F_CMD[13].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [13]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[8] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL8[17])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[8].F_CMD[14].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [14]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[8] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL8[34])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[8].F_CMD[14].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [14]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[8] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL8[18])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[8].F_CMD[15].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [15]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[8] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL8[35])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[8].F_CMD[15].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [15]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[8] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL8[19])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[9].F_CMD[0].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [0]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[9] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL9[20])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[9].F_CMD[0].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [0]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[9] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL9[4])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[9].F_CMD[1].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [1]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[9] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL9[21])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[9].F_CMD[1].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [1]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[9] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL9[5])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[9].F_CMD[2].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [2]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[9] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL9[22])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[9].F_CMD[2].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [2]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[9] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL9[6])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[9].F_CMD[3].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [3]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[9] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL9[23])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[9].F_CMD[3].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [3]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[9] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL9[7])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[9].F_CMD[4].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [4]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[9] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL9[24])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[9].F_CMD[4].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [4]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[9] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL9[8])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[9].F_CMD[5].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [5]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[9] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL9[25])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[9].F_CMD[5].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [5]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[9] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL9[9])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[9].F_CMD[6].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [6]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[9] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL9[26])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[9].F_CMD[6].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [6]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[9] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL9[10])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[9].F_CMD[7].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [7]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[9] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL9[27])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[9].F_CMD[7].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [7]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[9] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL9[11])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[9].F_CMD[8].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [8]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[9] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL9[28])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[9].F_CMD[8].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [8]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[9] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL9[12])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[9].F_CMD[9].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [9]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[9] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL9[29])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[9].F_CMD[9].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [9]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[9] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL9[13])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[9].F_CMD[10].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [10]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[9] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL9[30])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[9].F_CMD[10].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [10]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[9] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL9[14])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[9].F_CMD[11].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [11]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[9] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL9[31])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[9].F_CMD[11].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [11]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[9] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL9[15])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[9].F_CMD[12].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [12]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[9] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL9[32])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[9].F_CMD[12].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [12]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[9] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL9[16])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[9].F_CMD[13].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [13]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[9] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL9[33])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[9].F_CMD[13].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [13]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[9] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL9[17])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[9].F_CMD[14].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [14]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[9] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL9[34])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[9].F_CMD[14].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [14]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[9] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL9[18])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[9].F_CMD[15].U_HCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [15]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[9] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1]),
    .O(CONTROL9[35])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_CTRL_OUT/F_NCP[9].F_CMD[15].U_LCE  (
    .I0(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [15]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[9] ),
    .I3(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0]),
    .O(CONTROL9[19])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \U0/U_ICON/U_CTRL_OUT/U_CMDGRP1  (
    .I0(\U0/U_ICON/iCOMMAND_GRP [0]),
    .I1(\U0/U_ICON/iCOMMAND_GRP [1]),
    .O(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [1])
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \U0/U_ICON/U_CTRL_OUT/U_CMDGRP0  (
    .I0(\U0/U_ICON/iCOMMAND_GRP [0]),
    .I1(\U0/U_ICON/iCOMMAND_GRP [1]),
    .O(\U0/U_ICON/U_CTRL_OUT/iCOMMAND_GRP_SEL [0])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/U_ICON/U_CTRL_OUT/U_DATA_VALID  (
    .I0(\U0/U_ICON/iSYNC ),
    .I1(\U0/iSHIFT_OUT ),
    .O(\U0/U_ICON/U_CTRL_OUT/iDATA_VALID )
  );
  MUXF6   \U0/U_ICON/U_STAT/U_TDO_next  (
    .I0(\U0/U_ICON/U_STAT/iSTAT_LOW ),
    .I1(\U0/U_ICON/U_STAT/iSTAT_HIGH ),
    .S(\U0/U_ICON/U_STAT/iSTAT_CNT [5]),
    .O(\U0/U_ICON/U_STAT/iTDO_next )
  );
  MUXF5   \U0/U_ICON/U_STAT/U_STAT_LOW  (
    .I0(\U0/U_ICON/U_STAT/iSTAT [0]),
    .I1(\U0/U_ICON/U_STAT/iSTAT [1]),
    .S(\U0/U_ICON/U_STAT/iSTAT_CNT [4]),
    .O(\U0/U_ICON/U_STAT/iSTAT_LOW )
  );
  MUXF5   \U0/U_ICON/U_STAT/U_STAT_HIGH  (
    .I0(\U0/U_ICON/U_STAT/iSTAT [2]),
    .I1(\U0/U_ICON/U_STAT/iSTAT [3]),
    .S(\U0/U_ICON/U_STAT/iSTAT_CNT [4]),
    .O(\U0/U_ICON/U_STAT/iSTAT_HIGH )
  );
  LUT4 #(
    .INIT ( 16'h0101 ))
  \U0/U_ICON/U_STAT/F_STAT[0].U_STAT  (
    .I0(\U0/U_ICON/U_STAT/iSTAT_CNT [0]),
    .I1(\U0/U_ICON/U_STAT/iSTAT_CNT [1]),
    .I2(\U0/U_ICON/U_STAT/iSTAT_CNT [2]),
    .I3(\U0/U_ICON/U_STAT/iSTAT_CNT [3]),
    .O(\U0/U_ICON/U_STAT/iSTAT [0])
  );
  LUT4 #(
    .INIT ( 16'hC401 ))
  \U0/U_ICON/U_STAT/F_STAT[1].U_STAT  (
    .I0(\U0/U_ICON/U_STAT/iSTAT_CNT [0]),
    .I1(\U0/U_ICON/U_STAT/iSTAT_CNT [1]),
    .I2(\U0/U_ICON/U_STAT/iSTAT_CNT [2]),
    .I3(\U0/U_ICON/U_STAT/iSTAT_CNT [3]),
    .O(\U0/U_ICON/U_STAT/iSTAT [1])
  );
  LUT4 #(
    .INIT ( 16'h2100 ))
  \U0/U_ICON/U_STAT/F_STAT[2].U_STAT  (
    .I0(\U0/U_ICON/U_STAT/iSTAT_CNT [0]),
    .I1(\U0/U_ICON/U_STAT/iSTAT_CNT [1]),
    .I2(\U0/U_ICON/U_STAT/iSTAT_CNT [2]),
    .I3(\U0/U_ICON/U_STAT/iSTAT_CNT [3]),
    .O(\U0/U_ICON/U_STAT/iSTAT [2])
  );
  LUT4 #(
    .INIT ( 16'hA610 ))
  \U0/U_ICON/U_STAT/F_STAT[3].U_STAT  (
    .I0(\U0/U_ICON/U_STAT/iSTAT_CNT [0]),
    .I1(\U0/U_ICON/U_STAT/iSTAT_CNT [1]),
    .I2(\U0/U_ICON/U_STAT/iSTAT_CNT [2]),
    .I3(\U0/U_ICON/U_STAT/iSTAT_CNT [3]),
    .O(\U0/U_ICON/U_STAT/iSTAT [3])
  );
  INV   \U0/U_ICON/U_STAT/U_STATCMD_n  (
    .I(\U0/U_ICON/U_STAT/iSTATCMD_CE ),
    .O(\U0/U_ICON/U_STAT/iSTATCMD_CE_n )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \U0/U_ICON/U_STAT/U_CMDGRP0  (
    .I0(\U0/U_ICON/iCOMMAND_GRP [0]),
    .I1(\U0/U_ICON/iCOMMAND_GRP [1]),
    .O(\U0/U_ICON/U_STAT/iCMD_GRP0_SEL )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/U_ICON/U_STAT/U_STATCMD  (
    .I0(\U0/U_ICON/U_STAT/iDATA_VALID ),
    .I1(\U0/U_ICON/iCOMMAND_SEL [0]),
    .I2(\U0/U_ICON/iCORE_ID_SEL[15] ),
    .I3(\U0/U_ICON/U_STAT/iCMD_GRP0_SEL ),
    .O(\U0/U_ICON/U_STAT/iSTATCMD_CE )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/U_ICON/U_STAT/U_DATA_VALID  (
    .I0(\U0/U_ICON/iSYNC ),
    .I1(\U0/iSHIFT_OUT ),
    .O(\U0/U_ICON/U_STAT/iDATA_VALID )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/U_ICON/U_STAT/U_TDO  (
    .C(CONTROL9[0]),
    .CE(N0),
    .D(\U0/U_ICON/U_STAT/iTDO_next ),
    .Q(\U0/U_ICON/iTDO_VEC [15])
  );
  XORCY   \U0/U_ICON/U_STAT/U_STAT_CNT/G[0].U_XORCY  (
    .CI(N0),
    .LI(\U0/U_ICON/U_STAT/U_STAT_CNT/S [0]),
    .O(\U0/U_ICON/U_STAT/U_STAT_CNT/D [0])
  );
  MUXCY_L   \U0/U_ICON/U_STAT/U_STAT_CNT/G[0].GnH.U_MUXCY  (
    .CI(N0),
    .DI(CONTROL9[2]),
    .S(\U0/U_ICON/U_STAT/U_STAT_CNT/S [0]),
    .LO(\U0/U_ICON/U_STAT/U_STAT_CNT/CI [1])
  );
  XORCY   \U0/U_ICON/U_STAT/U_STAT_CNT/G[1].U_XORCY  (
    .CI(\U0/U_ICON/U_STAT/U_STAT_CNT/CI [1]),
    .LI(\U0/U_ICON/U_STAT/U_STAT_CNT/S [1]),
    .O(\U0/U_ICON/U_STAT/U_STAT_CNT/D [1])
  );
  MUXCY_L   \U0/U_ICON/U_STAT/U_STAT_CNT/G[1].GnH.U_MUXCY  (
    .CI(\U0/U_ICON/U_STAT/U_STAT_CNT/CI [1]),
    .DI(CONTROL9[2]),
    .S(\U0/U_ICON/U_STAT/U_STAT_CNT/S [1]),
    .LO(\U0/U_ICON/U_STAT/U_STAT_CNT/CI [2])
  );
  XORCY   \U0/U_ICON/U_STAT/U_STAT_CNT/G[2].U_XORCY  (
    .CI(\U0/U_ICON/U_STAT/U_STAT_CNT/CI [2]),
    .LI(\U0/U_ICON/U_STAT/U_STAT_CNT/S [2]),
    .O(\U0/U_ICON/U_STAT/U_STAT_CNT/D [2])
  );
  MUXCY_L   \U0/U_ICON/U_STAT/U_STAT_CNT/G[2].GnH.U_MUXCY  (
    .CI(\U0/U_ICON/U_STAT/U_STAT_CNT/CI [2]),
    .DI(CONTROL9[2]),
    .S(\U0/U_ICON/U_STAT/U_STAT_CNT/S [2]),
    .LO(\U0/U_ICON/U_STAT/U_STAT_CNT/CI [3])
  );
  XORCY   \U0/U_ICON/U_STAT/U_STAT_CNT/G[3].U_XORCY  (
    .CI(\U0/U_ICON/U_STAT/U_STAT_CNT/CI [3]),
    .LI(\U0/U_ICON/U_STAT/U_STAT_CNT/S [3]),
    .O(\U0/U_ICON/U_STAT/U_STAT_CNT/D [3])
  );
  MUXCY_L   \U0/U_ICON/U_STAT/U_STAT_CNT/G[3].GnH.U_MUXCY  (
    .CI(\U0/U_ICON/U_STAT/U_STAT_CNT/CI [3]),
    .DI(CONTROL9[2]),
    .S(\U0/U_ICON/U_STAT/U_STAT_CNT/S [3]),
    .LO(\U0/U_ICON/U_STAT/U_STAT_CNT/CI [4])
  );
  XORCY   \U0/U_ICON/U_STAT/U_STAT_CNT/G[4].U_XORCY  (
    .CI(\U0/U_ICON/U_STAT/U_STAT_CNT/CI [4]),
    .LI(\U0/U_ICON/U_STAT/U_STAT_CNT/S [4]),
    .O(\U0/U_ICON/U_STAT/U_STAT_CNT/D [4])
  );
  MUXCY_L   \U0/U_ICON/U_STAT/U_STAT_CNT/G[4].GnH.U_MUXCY  (
    .CI(\U0/U_ICON/U_STAT/U_STAT_CNT/CI [4]),
    .DI(CONTROL9[2]),
    .S(\U0/U_ICON/U_STAT/U_STAT_CNT/S [4]),
    .LO(\U0/U_ICON/U_STAT/U_STAT_CNT/CI [5])
  );
  XORCY   \U0/U_ICON/U_STAT/U_STAT_CNT/G[5].U_XORCY  (
    .CI(\U0/U_ICON/U_STAT/U_STAT_CNT/CI [5]),
    .LI(\U0/U_ICON/U_STAT/U_STAT_CNT/S [5]),
    .O(\U0/U_ICON/U_STAT/U_STAT_CNT/D [5])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/U_ICON/U_STAT/U_STAT_CNT/G[0].U_LUT  (
    .I0(\U0/U_ICON/U_STAT/iSTAT_CNT [0]),
    .O(\U0/U_ICON/U_STAT/U_STAT_CNT/S [0])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/U_ICON/U_STAT/U_STAT_CNT/G[1].U_LUT  (
    .I0(\U0/U_ICON/U_STAT/iSTAT_CNT [1]),
    .O(\U0/U_ICON/U_STAT/U_STAT_CNT/S [1])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/U_ICON/U_STAT/U_STAT_CNT/G[2].U_LUT  (
    .I0(\U0/U_ICON/U_STAT/iSTAT_CNT [2]),
    .O(\U0/U_ICON/U_STAT/U_STAT_CNT/S [2])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/U_ICON/U_STAT/U_STAT_CNT/G[3].U_LUT  (
    .I0(\U0/U_ICON/U_STAT/iSTAT_CNT [3]),
    .O(\U0/U_ICON/U_STAT/U_STAT_CNT/S [3])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/U_ICON/U_STAT/U_STAT_CNT/G[4].U_LUT  (
    .I0(\U0/U_ICON/U_STAT/iSTAT_CNT [4]),
    .O(\U0/U_ICON/U_STAT/U_STAT_CNT/S [4])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/U_ICON/U_STAT/U_STAT_CNT/G[5].U_LUT  (
    .I0(\U0/U_ICON/U_STAT/iSTAT_CNT [5]),
    .O(\U0/U_ICON/U_STAT/U_STAT_CNT/S [5])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/U_ICON/U_STAT/U_STAT_CNT/G[0].U_FDRE  (
    .C(CONTROL9[0]),
    .CE(N0),
    .D(\U0/U_ICON/U_STAT/U_STAT_CNT/D [0]),
    .R(\U0/U_ICON/U_STAT/iSTATCMD_CE_n ),
    .Q(\U0/U_ICON/U_STAT/iSTAT_CNT [0])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/U_ICON/U_STAT/U_STAT_CNT/G[1].U_FDRE  (
    .C(CONTROL9[0]),
    .CE(N0),
    .D(\U0/U_ICON/U_STAT/U_STAT_CNT/D [1]),
    .R(\U0/U_ICON/U_STAT/iSTATCMD_CE_n ),
    .Q(\U0/U_ICON/U_STAT/iSTAT_CNT [1])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/U_ICON/U_STAT/U_STAT_CNT/G[2].U_FDRE  (
    .C(CONTROL9[0]),
    .CE(N0),
    .D(\U0/U_ICON/U_STAT/U_STAT_CNT/D [2]),
    .R(\U0/U_ICON/U_STAT/iSTATCMD_CE_n ),
    .Q(\U0/U_ICON/U_STAT/iSTAT_CNT [2])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/U_ICON/U_STAT/U_STAT_CNT/G[3].U_FDRE  (
    .C(CONTROL9[0]),
    .CE(N0),
    .D(\U0/U_ICON/U_STAT/U_STAT_CNT/D [3]),
    .R(\U0/U_ICON/U_STAT/iSTATCMD_CE_n ),
    .Q(\U0/U_ICON/U_STAT/iSTAT_CNT [3])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/U_ICON/U_STAT/U_STAT_CNT/G[4].U_FDRE  (
    .C(CONTROL9[0]),
    .CE(N0),
    .D(\U0/U_ICON/U_STAT/U_STAT_CNT/D [4]),
    .R(\U0/U_ICON/U_STAT/iSTATCMD_CE_n ),
    .Q(\U0/U_ICON/U_STAT/iSTAT_CNT [4])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/U_ICON/U_STAT/U_STAT_CNT/G[5].U_FDRE  (
    .C(CONTROL9[0]),
    .CE(N0),
    .D(\U0/U_ICON/U_STAT/U_STAT_CNT/D [5]),
    .R(\U0/U_ICON/U_STAT/iSTATCMD_CE_n ),
    .Q(\U0/U_ICON/U_STAT/iSTAT_CNT [5])
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \U0/U_ICON/U_SYNC/U_GOT_SYNC_L  (
    .I0(\U0/U_ICON/U_SYNC/iSYNC_WORD [0]),
    .I1(\U0/U_ICON/U_SYNC/iSYNC_WORD [1]),
    .I2(\U0/U_ICON/U_SYNC/iSYNC_WORD [2]),
    .I3(\U0/U_ICON/U_SYNC/iSYNC_WORD [3]),
    .O(\U0/U_ICON/U_SYNC/iGOT_SYNC_LOW )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/U_ICON/U_SYNC/U_GOT_SYNC  (
    .I0(\U0/U_ICON/U_SYNC/iGOT_SYNC_LOW ),
    .I1(\U0/U_ICON/U_SYNC/iGOT_SYNC_HIGH ),
    .O(\U0/U_ICON/U_SYNC/iGOT_SYNC )
  );
  INV   \U0/U_ICON/U_SYNC/U_iDATA_CMD_n  (
    .I(\U0/U_ICON/iDATA_CMD ),
    .O(\U0/U_ICON/U_SYNC/iDATA_CMD_n )
  );
  LUT4 #(
    .INIT ( 16'h0400 ))
  \U0/U_ICON/U_SYNC/U_GOT_SYNC_H  (
    .I0(\U0/U_ICON/U_SYNC/iSYNC_WORD [4]),
    .I1(\U0/U_ICON/U_SYNC/iSYNC_WORD [5]),
    .I2(\U0/U_ICON/U_SYNC/iSYNC_WORD [6]),
    .I3(CONTROL9[1]),
    .O(\U0/U_ICON/U_SYNC/iGOT_SYNC_HIGH )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/U_ICON/U_SYNC/U_SYNC  (
    .C(CONTROL9[0]),
    .CE(\U0/U_ICON/U_SYNC/iGOT_SYNC ),
    .D(N0),
    .R(\U0/U_ICON/U_SYNC/iDATA_CMD_n ),
    .Q(\U0/U_ICON/iSYNC )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/U_ICON/U_SYNC/G_SYNC_WORD[0].I_NE0.U_FDR  (
    .C(CONTROL9[0]),
    .D(\U0/U_ICON/U_SYNC/iSYNC_WORD [1]),
    .R(\U0/U_ICON/U_SYNC/iDATA_CMD_n ),
    .Q(\U0/U_ICON/U_SYNC/iSYNC_WORD [0])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/U_ICON/U_SYNC/G_SYNC_WORD[1].I_NE0.U_FDR  (
    .C(CONTROL9[0]),
    .D(\U0/U_ICON/U_SYNC/iSYNC_WORD [2]),
    .R(\U0/U_ICON/U_SYNC/iDATA_CMD_n ),
    .Q(\U0/U_ICON/U_SYNC/iSYNC_WORD [1])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/U_ICON/U_SYNC/G_SYNC_WORD[2].I_NE0.U_FDR  (
    .C(CONTROL9[0]),
    .D(\U0/U_ICON/U_SYNC/iSYNC_WORD [3]),
    .R(\U0/U_ICON/U_SYNC/iDATA_CMD_n ),
    .Q(\U0/U_ICON/U_SYNC/iSYNC_WORD [2])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/U_ICON/U_SYNC/G_SYNC_WORD[3].I_NE0.U_FDR  (
    .C(CONTROL9[0]),
    .D(\U0/U_ICON/U_SYNC/iSYNC_WORD [4]),
    .R(\U0/U_ICON/U_SYNC/iDATA_CMD_n ),
    .Q(\U0/U_ICON/U_SYNC/iSYNC_WORD [3])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/U_ICON/U_SYNC/G_SYNC_WORD[4].I_NE0.U_FDR  (
    .C(CONTROL9[0]),
    .D(\U0/U_ICON/U_SYNC/iSYNC_WORD [5]),
    .R(\U0/U_ICON/U_SYNC/iDATA_CMD_n ),
    .Q(\U0/U_ICON/U_SYNC/iSYNC_WORD [4])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/U_ICON/U_SYNC/G_SYNC_WORD[5].I_NE0.U_FDR  (
    .C(CONTROL9[0]),
    .D(\U0/U_ICON/U_SYNC/iSYNC_WORD [6]),
    .R(\U0/U_ICON/U_SYNC/iDATA_CMD_n ),
    .Q(\U0/U_ICON/U_SYNC/iSYNC_WORD [5])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/U_ICON/U_SYNC/G_SYNC_WORD[6].I_EQ0.U_FDR  (
    .C(CONTROL9[0]),
    .D(CONTROL9[1]),
    .R(\U0/U_ICON/U_SYNC/iDATA_CMD_n ),
    .Q(\U0/U_ICON/U_SYNC/iSYNC_WORD [6])
  );
  LUT6 #(
    .INIT ( 64'h8381030182800200 ))
  \U0/U_ICON/iCORE_ID<3>_SW0  (
    .I0(\U0/U_ICON/iCORE_ID [0]),
    .I1(\U0/U_ICON/iCORE_ID [1]),
    .I2(\U0/U_ICON/iCORE_ID [2]),
    .I3(CONTROL9[3]),
    .I4(\U0/U_ICON/iTDO_VEC [15]),
    .I5(CONTROL8[3]),
    .O(N2)
  );
  LUT5 #(
    .INIT ( 32'hFEBA5410 ))
  \U0/U_ICON/iCORE_ID<3>  (
    .I0(\U0/U_ICON/iCORE_ID [3]),
    .I1(\U0/U_ICON/iCORE_ID [2]),
    .I2(\U0/U_ICON/U_TDO_MUX/U_CS_MUX/I4.U_MUX16/Mmux_O_7_334 ),
    .I3(\U0/U_ICON/U_TDO_MUX/U_CS_MUX/I4.U_MUX16/Mmux_O_6_333 ),
    .I4(N2),
    .O(\U0/U_ICON/iTDO_next )
  );

// synthesis translate_on

endmodule

// synthesis translate_off

`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

// synthesis translate_on
