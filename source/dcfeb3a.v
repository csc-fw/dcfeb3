`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date:    Tue Feb 01 14:46:42 2011
// Design Name: 
// Module Name:    dcfeb3a
//     Version: 2.19 11/12/12 DAQ on fiber uses 16 bit GTX interface and Dual rate selection -- fixed some bugs added logic analyzer signals
//     Version: 2.18 11/09/12 DAQ on fiber uses 16 bit GTX interface and Dual rate selection 
//     Version: 2.17 11/09/12 Changes to mac_fifo port and signal names didn't get propagated to daq_transceiver_io.  Now fixed.
//     Version: 2.16 11/08/12 registered di-strip output in tmb_fiber_out for half strip test mode to adjust phase by half a clock
//////////////////////////////////////////////////////////////////////////////////

module dcfeb3a #(
	parameter USE_DESER_CHIPSCOPE = 0,
	parameter USE_CMP_CHIPSCOPE = 0,
	parameter USE_DAQ_CHIPSCOPE = 0,
	parameter USE_FF_EMU_CHIPSCOPE = 0,
	parameter USE_SPI_CHIPSCOPE = 0,
	parameter USE_PIPE_CHIPSCOPE = 0,
	parameter USE_SEM_CHIPSCOPE = 1
	)(

	//Clocks
	input CMS_CLK_N,CMS_CLK_P,CMS80_N,CMS80_P,
	input QPLL_CLK_AC_P,QPLL_CLK_AC_N,XO_CLK_AC_P,XO_CLK_AC_N,
	input \FEM_CLK320- ,\FEM_CLK320+ ,
	input GC0N,GC0P,GC1N,GC1P,
	output TP_B35_0N,TP_B35_0P,
	
	//FF-EMU Emulator signals
	input  CLK320_SIGDET,
	input \FEM_RX_DAT- ,\FEM_RX_DAT+ ,
	output FEM_REPROGRAM,
	output FEM_TCK,FEM_TDI,FEM_TMS,
	output \FEM_TX_DAT- ,\FEM_TX_DAT+ ,
	
	//FF-EMU ASIC signals
	input CTRL_SIGDET,
	output CTRL_TDIS,
	input FMU_TOKEN,
	input FMU_L1A,FMU_RESYNC,
	input FMU_SPI_CS0,FMU_SPI_CS1,FMU_SPI_CLK,FMU_SPI_DAT,
	output FMU_SPI_BUSY,FMU_SPI_RTN_CLK,FMU_SPI_RTN_DAT,
	output FMU_UL_TCK,FMU_UL_TDI,FMU_UL_TMS,
	output FMU_FLF_E1,FMU_FLF_P1,FMU_FLF_P2,
	output FMU_VLF_E2,
	output \FMU_CLK40_UL- ,\FMU_CLK40_UL+ ,
	output RST_FFEMU,
	
	//Calibration signals
	input FMU_INJPLS,FMU_EXTPLS,
	input \SKW_EXTPLS- ,\SKW_EXTPLS+ ,
	input \SKW_INJPLS- ,\SKW_INJPLS+ ,
	input INJPLS_LV,
	input EXTPLS_LV,
	output \INJPULSE- ,\INJPULSE+ ,
	output \EXTPULSE- ,\EXTPULSE+ ,
	
	//SPI signals
	input SPI_RTN_LV,
	output SPI_CK_LV, SPI_DAT_LV,
	output ADC_CS_LV_B,
	output CAL_DAC_CS_LV_B,
	output COMP_DAC_CS_LV_B,
	
   //PROM Configuration signals
   inout  [22:0] BPI_AD,
   inout  [15:0] CFG_DAT,
   output BPI_AD21_RS0, BPI_AD22_RS1,
   output FCS_B, FOE_B, FWE_B, FLATCH_B,
	
   //Buckeye slow control signals
   input  G1SHOUTLV,G2SHOUTLV,G3SHOUTLV,G4SHOUTLV,G5SHOUTLV,G6SHOUTLV,
   output G1SHINLV,G2SHINLV,G3SHINLV,G4SHINLV,G5SHINLV,G6SHINLV,
   output G1SHCKLV,G2SHCKLV,G3SHCKLV,G4SHCKLV,G5SHCKLV,G6SHCKLV,
	
   //ADC differential serial datat inputs
   input [15:0] G1AD_N,G1AD_P,G2AD_N,G2AD_P,G3AD_N,G3AD_P,G4AD_N,G4AD_P,G5AD_N,G5AD_P,G6AD_N,G6AD_P,
	
   //ADC clock inputs
   input G1ADCLK0N,G1ADCLK0P,G1ADCLK1N,G1ADCLK1P,G1LCLK0N,G1LCLK0P,G1LCLK1N,G1LCLK1P,
   input G2ADCLK0N,G2ADCLK0P,G2ADCLK1N,G2ADCLK1P,G2LCLK0N,G2LCLK0P,G2LCLK1N,G2LCLK1P,
   input G3ADCLK0N,G3ADCLK0P,G3ADCLK1N,G3ADCLK1P,G3LCLK0N,G3LCLK0P,G3LCLK1N,G3LCLK1P,
   input G4ADCLK0N,G4ADCLK0P,G4ADCLK1N,G4ADCLK1P,G4LCLK0N,G4LCLK0P,G4LCLK1N,G4LCLK1P,
   input G5ADCLK0N,G5ADCLK0P,G5ADCLK1N,G5ADCLK1P,G5LCLK0N,G5LCLK0P,G5LCLK1N,G5LCLK1P,
   input G6ADCLK0N,G6ADCLK0P,G6ADCLK1N,G6ADCLK1P,G6LCLK0N,G6LCLK0P,G6LCLK1N,G6LCLK1P,
	
   //ADC control outputs
   output G1ADC_CS0_B_25,G1ADC_CS1_B_25,G2ADC_CS0_B_25,G2ADC_CS1_B_25,G3ADC_CS0_B_25,G3ADC_CS1_B_25,
   output G4ADC_CS0_B_25,G4ADC_CS1_B_25,G5ADC_CS0_B_25,G5ADC_CS1_B_25,G6ADC_CS0_B_25,G6ADC_CS1_B_25,
   output ADC_RST_B_25,
   output ADC_SCLK_25,
   output ADC_SDATA_25,
   output GA1ADCCLK_FN,GA1ADCCLK_FP,
   output GA2ADCCLK_FN,GA2ADCCLK_FP,
   output GA3ADCCLK_FN,GA3ADCCLK_FP,
	
	//Comparator signals
	input [7:0] G1C_LV, G2C_LV, G3C_LV, G4C_LV, G5C_LV, G6C_LV,  //Comparator data inputs
	output [1:0] CMODE,
	output [2:0] CTIME,
	output LCTCLK, LCTRST,
	
	
	//Channel Link signals
	output [15:0] DATAOUT,
	output CHAN_LNK_CLK,MB_FIFO_PUSH_B,MOVLP,OVLPMUX,DATAAVAIL,ENDWORD,
	
	//Trigger and sync signals
	input \SKW_L1A- ,\SKW_L1A+ ,
//	input \SKW_LCT- ,\SKW_LCT+ , // Names used on DCFEB Rev. 2a boards and in firmware version dcfeb_f2.0
	input \SKW_L1A_MATCH- ,\SKW_L1A_MATCH+ , // Names used on DCFEB Rev. 3b boards and in firmware version dcfeb_f3.0
	input \SKW_RESYNC- ,\SKW_RESYNC+ ,
	input \SKW_BC0- ,\SKW_BC0+ , // Only used on DCFEB Rev. 3b boards and in firmware version dcfeb_f3.0
	
	//Optical Transceiver signals
	input  DAQ_RX_P,DAQ_RX_N,
	output DAQ_TDIS,DAQ_TX_P,DAQ_TX_N,
	input  ALT_SIGDET,TRG_RX_P,TRG_RX_N,
	output TRG_TDIS,TRG_TX_P,TRG_TX_N,
//	input  OPCON_RXP,OPCON_RXN, // Optional transceiver connection only on DCFEB Rev. 3b boards
//	output OPCON_TXP,OPCON_TXN, // Optional transceiver connection only on DCFEB Rev. 3b boards
	
	//QPLL signals
	input QP_ERROR,QP_LOCKED,  // These I/O buffs are found in rsm1 reset_manager
	output QP_RST_B,
	
	//System monitor signals
	input DV4P_3_CUR_P, DV4P_3_CUR_N, DV3P_2_CUR_N, DV3P_2_CUR_P, DV3P_25_CUR_N, DV3P_25_CUR_P,
	input V3PDCOMP_MONN, V3PDCOMP_MONP, V3PIO_MONN, V3PIO_MONP, V25IO_MONN, V25IO_MONP,
	input V5PACOMP_MONN, V5PACOMP_MONP, V5PSUB_MONN, V5PSUB_MONP, V5PPA_MONP, V5PPA_MONN,
	input V33PAADC_MONP, V33PAADC_MONN, V18PDADC_MONP, V18PDADC_MONN, V5PAMP_MONP, V5PAMP_MONN,
//	input AV55P_3_CUR_N, AV55P_3_CUR_P,  // Names used on DCFEB Rev. 2a boards and in firmware version dcfeb_f2.0
//	input AV55P_5_CUR_N, AV55P_5_CUR_P,  // Names used on DCFEB Rev. 2a boards and in firmware version dcfeb_f2.0
	input AV54P_3_CUR_N, AV54P_3_CUR_P,  // Names used on DCFEB Rev. 3b boards and in firmware version dcfeb_f3.0
	input AV54P_5_CUR_N, AV54P_5_CUR_P,  // Names used on DCFEB Rev. 3b boards and in firmware version dcfeb_f3.0
	
	//Diagnostic & misc. signals: Logic analyzer and test piont ports
//	input SEL_SKW,SEL_CON, // Names used on DCFEB Rev. 2a boards and in firmware version dcfeb_f2.0
	input SEL_SKW_B,SEL_CON_B, // Names used on DCFEB Rev. 3b boards and in firmware version dcfeb_f3.0
	inout [2:0] TP_B24_,
	inout [15:0] TP_B25_,
	inout [1:0] TP_B26_,
	inout [14:1] TP_B35_ // bits 9 and 10 are skipped.
);

/////////////////////////////////////////////////////////////////////////////
//                                                                         //
//  Chip Scope Pro Control module                                          //
//                                                                         //
/////////////////////////////////////////////////////////////////////////////
	wire [35:0] adc_mem_vio_c0;
	wire [35:0] adc_cnfg_mem_la_c1;
	wire [35:0] readout_fifo1_la_c2;
	wire [35:0] DAQ_tx_vio_c3;
	wire [35:0] DAQ_tx_la_c4;
	wire [35:0] rd_fifo2_la_c5;
	wire [35:0] bpi_vio_c6;
	wire [35:0] bpi_la_c7;
	wire [35:0] cmp_tx_vio_c0;
	wire [35:0] cmp_tx_la_c1;
	wire [35:0] g1la0_c0;
	wire [35:0] g1vio0_c0;
	wire [35:0] pipe_la0_c0;
	wire [35:0] pipe_vio_in0_c1;
	wire [35:0] pipe_vio_out1_c2;
	wire [35:0] sem_la0_c0;
	wire [35:0] sem_vio_in0_c1;

generate
if(USE_CMP_CHIPSCOPE==1 && USE_DAQ_CHIPSCOPE==1 && USE_DESER_CHIPSCOPE==0) 
begin : chipscope_with_comp_and_daq
CSP_comp_daq_cntrl cmp_daq_cntrl1 (
    .CONTROL0(adc_mem_vio_c0), // INOUT BUS [35:0]
    .CONTROL1(adc_cnfg_mem_la_c1), // INOUT BUS [35:0]
    .CONTROL2(readout_fifo1_la_c2), // INOUT BUS [35:0]
    .CONTROL3(DAQ_tx_vio_c3), // INOUT BUS [35:0]
    .CONTROL4(DAQ_tx_la_c4), // INOUT BUS [35:0]
    .CONTROL5(rd_fifo2_la_c5), // INOUT BUS [35:0]
    .CONTROL6(bpi_vio_c6), // INOUT BUS [35:0]
    .CONTROL7(bpi_la_c7), // INOUT BUS [35:0]
    .CONTROL8(cmp_tx_vio_c0), // INOUT BUS [35:0]
    .CONTROL9(cmp_tx_la_c1)  // INOUT BUS [35:0]
);
	assign pipe_la0_c0 = 36'h000000000;
	assign pipe_vio_in0_c1 = 36'h000000000;
	assign pipe_vio_out1_c2 = 36'h000000000;
	assign sem_la0_c0 = 36'h000000000;
	assign sem_vio_in0_c1 = 36'h000000000;
end
else if(USE_CMP_CHIPSCOPE==1 && USE_DAQ_CHIPSCOPE==0 && USE_DESER_CHIPSCOPE==0) 
begin : chipscope_with_comp_no_daq
 
CSP_comp_cntrl comp_cntrl1 (
    .CONTROL0(cmp_tx_vio_c0), // INOUT BUS [35:0]
    .CONTROL1(cmp_tx_la_c1)  // INOUT BUS [35:0]
);

	assign adc_mem_vio_c0 = 36'h000000000;
	assign adc_cnfg_mem_la_c1 = 36'h000000000;
	assign readout_fifo1_la_c2 = 36'h000000000;
	assign DAQ_tx_vio_c3 = 36'h000000000;
	assign DAQ_tx_la_c4 = 36'h000000000;
	assign rd_fifo2_la_c5 = 36'h000000000;
	assign bpi_vio_c6 = 36'h000000000;
	assign bpi_la_c7 = 36'h000000000;
	assign pipe_la0_c0 = 36'h000000000;
	assign pipe_vio_in0_c1 = 36'h000000000;
	assign pipe_vio_out1_c2 = 36'h000000000;
	assign sem_la0_c0 = 36'h000000000;
	assign sem_vio_in0_c1 = 36'h000000000;
end
else if(USE_CMP_CHIPSCOPE==0 && USE_DAQ_CHIPSCOPE==1 && USE_DESER_CHIPSCOPE==0) 
begin : chipscope_with_daq_no_comp
CSP_daq_cntrl daq_cntrl1 (
    .CONTROL0(adc_mem_vio_c0), // INOUT BUS [35:0]
    .CONTROL1(adc_cnfg_mem_la_c1), // INOUT BUS [35:0]
    .CONTROL2(readout_fifo1_la_c2), // INOUT BUS [35:0]
    .CONTROL3(DAQ_tx_vio_c3), // INOUT BUS [35:0]
    .CONTROL4(DAQ_tx_la_c4), // INOUT BUS [35:0]
    .CONTROL5(rd_fifo2_la_c5), // INOUT BUS [35:0]
    .CONTROL6(bpi_vio_c6), // INOUT BUS [35:0]
    .CONTROL7(bpi_la_c7) // INOUT BUS [35:0]
);

	assign cmp_tx_vio_c0 = 36'h000000000;
	assign cmp_tx_la_c1 = 36'h000000000;
	assign pipe_la0_c0 = 36'h000000000;
	assign pipe_vio_in0_c1 = 36'h000000000;
	assign pipe_vio_out1_c2 = 36'h000000000;
	assign sem_la0_c0 = 36'h000000000;
	assign sem_vio_in0_c1 = 36'h000000000;
end
else if(USE_CMP_CHIPSCOPE==0 && USE_DAQ_CHIPSCOPE==0 && USE_DESER_CHIPSCOPE==1) 
begin : chipscope_with_deser
CSP_deser_cntrl deser_cntrl1 (
    .CONTROL0(g1vio0_c0), // INOUT BUS [35:0]
    .CONTROL1(g1la0_c0),  // INOUT BUS [35:0]
    .CONTROL2(adc_mem_vio_c0), // INOUT BUS [35:0]
    .CONTROL3(adc_cnfg_mem_la_c1) // INOUT BUS [35:0]
);

	assign readout_fifo1_la_c2 = 36'h000000000;
	assign DAQ_tx_vio_c3 = 36'h000000000;
	assign DAQ_tx_la_c4 = 36'h000000000;
	assign rd_fifo2_la_c5 = 36'h000000000;
	assign bpi_vio_c6 = 36'h000000000;
	assign bpi_la_c7 = 36'h000000000;
	assign cmp_tx_vio_c0 = 36'h000000000;
	assign cmp_tx_la_c1 = 36'h000000000;
	assign pipe_la0_c0 = 36'h000000000;
	assign pipe_vio_in0_c1 = 36'h000000000;
	assign pipe_vio_out1_c2 = 36'h000000000;
	assign sem_la0_c0 = 36'h000000000;
	assign sem_vio_in0_c1 = 36'h000000000;
end
else if(USE_CMP_CHIPSCOPE==0 && USE_DAQ_CHIPSCOPE==0 && USE_DESER_CHIPSCOPE==0 && USE_PIPE_CHIPSCOPE == 1) 
begin : chipscope_with_pipeline
CSP_pipe_cntrl pipe_cntrl1 (
    .CONTROL0(pipe_la0_c0), // INOUT BUS [35:0]
    .CONTROL1(pipe_vio_in0_c1),  // INOUT BUS [35:0]
    .CONTROL2(pipe_vio_out1_c2) // INOUT BUS [35:0]
);
	assign g1vio0_c0 = 36'h000000000;
	assign g1la0_c0 = 36'h000000000;
	assign adc_mem_vio_c0 = 36'h000000000;
	assign adc_cnfg_mem_la_c1 = 36'h000000000;
	assign readout_fifo1_la_c2 = 36'h000000000;
	assign DAQ_tx_vio_c3 = 36'h000000000;
	assign DAQ_tx_la_c4 = 36'h000000000;
	assign rd_fifo2_la_c5 = 36'h000000000;
	assign bpi_vio_c6 = 36'h000000000;
	assign bpi_la_c7 = 36'h000000000;
	assign cmp_tx_vio_c0 = 36'h000000000;
	assign cmp_tx_la_c1 = 36'h000000000;
	assign sem_la0_c0 = 36'h000000000;
	assign sem_vio_in0_c1 = 36'h000000000;
end
else if(USE_CMP_CHIPSCOPE==0 && USE_DAQ_CHIPSCOPE==0 && USE_DESER_CHIPSCOPE==0 && USE_PIPE_CHIPSCOPE == 0 && USE_SEM_CHIPSCOPE == 1) 
begin : chipscope_with_pipeline
CSP_sem_cntrl sem_cntrl1 (
    .CONTROL0(sem_la0_c0), // INOUT BUS [35:0]
    .CONTROL1(sem_vio_in0_c1)  // INOUT BUS [35:0]
);
	assign g1vio0_c0 = 36'h000000000;
	assign g1la0_c0 = 36'h000000000;
	assign adc_mem_vio_c0 = 36'h000000000;
	assign adc_cnfg_mem_la_c1 = 36'h000000000;
	assign readout_fifo1_la_c2 = 36'h000000000;
	assign DAQ_tx_vio_c3 = 36'h000000000;
	assign DAQ_tx_la_c4 = 36'h000000000;
	assign rd_fifo2_la_c5 = 36'h000000000;
	assign bpi_vio_c6 = 36'h000000000;
	assign bpi_la_c7 = 36'h000000000;
	assign cmp_tx_vio_c0 = 36'h000000000;
	assign cmp_tx_la_c1 = 36'h000000000;
	assign pipe_vio_in0_c1 = 36'h000000000;
	assign pipe_vio_out1_c2 = 36'h000000000;
end
else
begin : no_chipscope
	assign g1vio0_c0 = 36'h000000000;
	assign g1la0_c0 = 36'h000000000;
	assign adc_mem_vio_c0 = 36'h000000000;
	assign adc_cnfg_mem_la_c1 = 36'h000000000;
	assign readout_fifo1_la_c2 = 36'h000000000;
	assign DAQ_tx_vio_c3 = 36'h000000000;
	assign DAQ_tx_la_c4 = 36'h000000000;
	assign rd_fifo2_la_c5 = 36'h000000000;
	assign bpi_vio_c6 = 36'h000000000;
	assign bpi_la_c7 = 36'h000000000;
	assign cmp_tx_vio_c0 = 36'h000000000;
	assign cmp_tx_la_c1 = 36'h000000000;
	assign pipe_la0_c0 = 36'h000000000;
	assign pipe_vio_in0_c1 = 36'h000000000;
	assign pipe_vio_out1_c2 = 36'h000000000;
	assign sem_la0_c0 = 36'h000000000;
	assign sem_vio_in0_c1 = 36'h000000000;
end
endgenerate



 /////////////////////////////////////////////////////////////////////////////
 //                                                                         //
 //  Clock source and management                                            //
 //                                                                         //
 /////////////////////////////////////////////////////////////////////////////

   wire sys_rst;
	wire cms_clk,cms80;
	wire daq_tx_125_refclk,daq_tx_125_refclk_dv2;
	wire trg_tx_160_refclk,trg_tx_160_refclk_buf;
	wire comp_clk;
	wire comp_clk80;
	wire comp_clk160;
	wire [3:0] cmp_clk_phase;
	wire [2:0] samp_clk_phase;
	wire cmp_c0;
	wire cmp_f0;

	wire trg_tx_pll_lock;
	wire trg_mmcm_lock;
	wire clk160,clk120,clk40,clk20,clk1mhz;
	wire fem_clk320;
	wire mmcm_rst, daq_mmcm_lock;
	wire strtup_clk, eos;
	wire eos_sim,eos_stim;
	wire adc_clk;
	wire dsr_resync;
	wire resync;

	wire resync_d1;
	wire lead_edg_resync;
	wire lead_edg_resync_d1;
	wire cap_phase;
	wire [7:0] rst_mmcm_pipe;
	wire samp_clk_phs_chng;
	
//   assign eos_sim = eos | eos_stim;
	
	Clock_sources
	Clk_src1(
	   // External inputs
		.CMS_CLK_N(CMS_CLK_N), .CMS_CLK_P(CMS_CLK_P),                      // from QPLL
		.CMS80_N(CMS80_N), .CMS80_P(CMS80_P),                              // from QPLL
		.QPLL_CLK_AC_N(QPLL_CLK_AC_N), .QPLL_CLK_AC_P(QPLL_CLK_AC_P),      // alternate clock 160 MHz Ref for TRG GTX (from QPLL)
		.XO_CLK_AC_N(XO_CLK_AC_N), .XO_CLK_AC_P(XO_CLK_AC_P),              // Crystal Osc. 125 MHz    Ref for DAQ GTX for GbE
		.FEM_CLK320_N(\FEM_CLK320- ), .FEM_CLK320_P(\FEM_CLK320+ ),                        // FF_EMU Emulator high speed clock
		.GC0N(GC0N), .GC0P(GC0P), .GC1N(GC1N), .GC1P(GC1P),                // Spare global clock inputs
		.CMP_CLK_PHASE(cmp_clk_phase),    // Comparator Clock Phase (0-15)
		.SAMP_CLK_PHASE(samp_clk_phase),    // Comparator Clock Phase (0-15)
		.SAMP_CLK_PHS_CHNG(samp_clk_phs_chng), // Sampling Clock Phase Change in progress; Reset deserializers.
		.TP_B35_0N(TP_B35_0N), .TP_B35_0P(TP_B35_0P),                                  // Test point clock output
	   // Internal inputs
		.RST(sys_rst),
		.RESYNC(resync),
	   // Internal outputs
		.CMS80(cms80),
		.DAQ_TX_125_REFCLK(daq_tx_125_refclk),
		.DAQ_TX_125_REFCLK_DV2(daq_tx_125_refclk_dv2),
		.TRG_TX_160_REFCLK(trg_tx_160_refclk),
		.COMP_CLK(comp_clk),              // comparator clock 
		.COMP_CLK80(comp_clk80),          // comparator GTX USRCLK2
		.COMP_CLK160(comp_clk160),          // comparator GTX USRCLK
		.TRG_MMCM_LOCK(trg_mmcm_lock),
		.CLK160(clk160),
		.CLK120(clk120),
		.CLK40(clk40),
		.CLK20(clk20),
		.CLK1MHZ(clk1mhz),
		.FEM_CLK320(fem_clk320),
		.ADC_CLK(adc_clk),
		.DSR_RESYNC(dsr_resync),
		.DAQ_MMCM_RST(mmcm_rst),
		.DAQ_MMCM_LOCK(daq_mmcm_lock),
		.STRTUP_CLK(strtup_clk),           // internal config clock for power on state machines in reset manager
		.EOS(eos),                          // End Of Startup
		.resync_d1(resync_d1),
		.lead_edg_resync(lead_edg_resync),
		.lead_edg_resync_d1(lead_edg_resync_d1),
		.cap_phase(cap_phase),
		.rst_mmcm_pipe(rst_mmcm_pipe)
	);
  

 /////////////////////////////////////////////////////////////////////////////
 //                                                                         //
 //  DCFEB Status word                                                      //
 //                                                                         //
 /////////////////////////////////////////////////////////////////////////////
 wire [15:0] dcfeb_status;
 wire [1:0]ttc_src;
 wire [2:0]tmb_tx_mode;
 wire qpll_lock;
 wire qpll_error;
 wire crc_error;
 wire jdaq_rate;
 wire rate_1_25;
 wire rate_3_2;
 wire [3:0] bc0cnt;
 wire csp_man_ctrl;
 wire use_any_l1a, juse_any_l1a, csp_use_any_l1a;
 wire l1a_head, jl1a_head, csp_l1a_head;

 assign use_any_l1a = csp_man_ctrl ? csp_use_any_l1a : juse_any_l1a;
 assign l1a_head = csp_man_ctrl ? csp_l1a_head : jl1a_head;
 assign dcfeb_status = {qpll_lock,qpll_error,l1a_head,use_any_l1a,bc0cnt,rate_3_2,rate_1_25,jdaq_rate,tmb_tx_mode,ttc_src};
 
 /////////////////////////////////////////////////////////////////////////////
 //                                                                         //
 //  BPI controller for XCF128 flash PROM                                   //
 //                                                                         //
 /////////////////////////////////////////////////////////////////////////////
 // BPI intreface signals
 wire bpi_active;
 wire bpi_busy;
 wire [1:0] bpi_op;
 wire [22:0] bpi_addr;
 wire [15:0] bpi_data_to;
 wire [15:0] bpi_data_from;
 wire bpi_load_data;
 wire bpi_execute;
 
 // Jtag interface signals
 	wire [15:0] bpi_rbk_fifo;
	wire [15:0] bpi_wrt_fifo;
	wire [15:0] bpi_status;
	wire [31:0] bpi_timer;
	wire bpi_jwe;
	wire bpi_jre;
	wire bpi_jrst;
	wire bpi_rst;
	wire BPI_disable;
	wire BPI_enable;

	assign bpi_rst = sys_rst || bpi_jrst;

	BPI_ctrl #(
	.USE_CHIPSCOPE(USE_DAQ_CHIPSCOPE)
	) 
	BPI_ctrl_i(
	 .BPI_VIO_CNTRL(bpi_vio_c6),
	 .BPI_LA_CNTRL(bpi_la_c7),
    .CLK(clk40),
    .CLK1MHZ(clk1mhz),
    .RST(bpi_rst),
	 // Signals to/from JTAG interface
	 .BPI_JWRT_FIFO(bpi_wrt_fifo),
	 .BPI_JWE(bpi_jwe),
	 .BPI_JRE(bpi_jre),
	 .BPI_JDSBL(BPI_disable),  // Disable BPI processing
	 .BPI_JENBL(BPI_enable),    // Enable BPI processing
	 .BPI_JRBK_FIFO(bpi_rbk_fifo),
	 .BPI_STATUS(bpi_status),
	 .BPI_TIMER(bpi_timer),    // stop watch timer for BPI commands
	 // Signals to/from BPI interface
	 .BPI_BUSY(bpi_busy),
	 .BPI_DATA_FROM(bpi_data_from),
	 .BPI_LOAD_DATA(bpi_load_data),
	 .BPI_ACTIVE(bpi_active),
	 .BPI_OP(bpi_op),
	 .BPI_ADDR(bpi_addr),
	 .BPI_DATA_TO(bpi_data_to),
	 .BPI_EXECUTE(bpi_execute)
    );

 /////////////////////////////////////////////////////////////////////////////
 //                                                                         //
 //  BPI interface to XCF128 flash PROM                                     //
 //                                                                         //
 /////////////////////////////////////////////////////////////////////////////
	wire [2:0] tmr;
	wire clk100khz;
	 
   bpi_interface 
	bpi_intf1 (
		.CLK(clk40),
		.CLK1MHZ(clk1mhz), 
		.RST(sys_rst),
	   .ADDR(bpi_addr),         //Bank/Array Address 
	   .CMD_DATA_OUT(bpi_data_to), //Data being written to FLASH device
	   .OP(bpi_op),           //Operation: 00-standby, 01-write, 10-read, 11-not allowed(standby)
		.EXECUTE(bpi_execute),
		.DATA_IN(bpi_data_from),  //Data read from FLASH device
		.LOAD_DATA(bpi_load_data),           //Clock enable signal for capturing Data read from FLASH device
		.BUSY(bpi_busy),            //Operation in progress signal (not ready)
	// signals for LED'S after programing
		.BPI_ACTIVE(bpi_active),
		.DCFEB_STATUS(dcfeb_status),
	 // external connections
      .BPI_AD(BPI_AD),     // Address bus to/from BPI prom
      .CFG_DAT(CFG_DAT),   // Data bus to/from BPI prom
      .RS0(BPI_AD21_RS0),.RS1(BPI_AD22_RS1),
      .FCS_B(FCS_B),.FOE_B(FOE_B),.FWE_B(FWE_B),.FLATCH_B(FLATCH_B),
		// diagnostic outputs for startup display
		.TMROUT(tmr), // to test point
		.CLK100KHZ(clk100khz) // to test point
	);
 

 /////////////////////////////////////////////////////////////////////////////
 //                                                                         //
 //  Buckeye slow control signals  (LV - low voltage side of translators)   //
 //                                                                         //
 /////////////////////////////////////////////////////////////////////////////

   wire [6:1] to_bky, bky_rtn, bky_clk;

   buckeye_interface
	bky_intf1 (
      .G1SHOUTLV(G1SHOUTLV),.G2SHOUTLV(G2SHOUTLV),.G3SHOUTLV(G3SHOUTLV),.G4SHOUTLV(G4SHOUTLV),.G5SHOUTLV(G5SHOUTLV),.G6SHOUTLV(G6SHOUTLV),
      .G1SHINLV(G1SHINLV),  .G2SHINLV(G2SHINLV),  .G3SHINLV(G3SHINLV),  .G4SHINLV(G4SHINLV),  .G5SHINLV(G5SHINLV),  .G6SHINLV(G6SHINLV),
      .G1SHCKLV(G1SHCKLV),  .G2SHCKLV(G2SHCKLV),  .G3SHCKLV(G3SHCKLV),  .G4SHCKLV(G4SHCKLV),  .G5SHCKLV(G5SHCKLV),  .G6SHCKLV(G6SHCKLV),
		.TO_BKY(to_bky), .BKY_RTN(bky_rtn), .BKY_CLK(bky_clk)
  );
 
 
 
 /////////////////////////////////////////////////////////////////////////////
 //                                                                         //
 //  ADC Serial data input signals and bit clock/ frame clock inputs        //
 //                                                                         //
 /////////////////////////////////////////////////////////////////////////////
 
	wire [11:0] frm_clks;
//	wire g1_frm_clk0;
//	wire g1_frm_clk1;
//	wire g2_frm_clk0;
//	wire g2_frm_clk1;
//	wire g3_frm_clk0;
//	wire g3_frm_clk1;
//	wire g4_frm_clk0;
//	wire g4_frm_clk1;
//	wire g5_frm_clk0;
//	wire g5_frm_clk1;
//	wire g6_frm_clk0;
//	wire g6_frm_clk1;
	
	wire [11:0] restartps;
//	wire g1restartp0;
//	wire g1restartp1;
//	wire g2restartp0;
//	wire g2restartp1;
//	wire g3restartp0;
//	wire g3restartp1;
//	wire g4restartp0;
//	wire g4restartp1;
//	wire g5restartp0;
//	wire g5restartp1;
//	wire g6restartp0;
//	wire g6restartp1;
	wire dsr_aligned;
	
//	wire [191:0] g1daq16ch,g2daq16ch,g3daq16ch,g4daq16ch,g5daq16ch,g6daq16ch;
	wire [95:0] g1daq8ch_0;
	wire [95:0] g1daq8ch_1;
	wire [95:0] g2daq8ch_0;
	wire [95:0] g2daq8ch_1;
	wire [95:0] g3daq8ch_0;
	wire [95:0] g3daq8ch_1;
	wire [95:0] g4daq8ch_0;
	wire [95:0] g4daq8ch_1;
	wire [95:0] g5daq8ch_0;
	wire [95:0] g5daq8ch_1;
	wire [95:0] g6daq8ch_0;
	wire [95:0] g6daq8ch_1;
	
	wire dsr_rst;
	wire csp_dsr_sys_rst;
	wire adc_init;
	wire adc_init_done;
	wire csp_resync;
	wire bit_slip_odd;
	wire bit_slip_evn;
	wire alg_gd;

//	adc_data_input_csp #(
//	.USE_CHIPSCOPE(USE_DESER_CHIPSCOPE)
//	)
//	adc_data_in1(
//		.CSP_G1LA0_CNTRL(g1la0_c0),
//		.CSP_G1VIO0_CNTRL(g1vio0_c0),
//		.CSP_DSR_SYS_RST(csp_dsr_sys_rst),
//		.ADC_INIT(adc_init),
//		.ADC_INIT_DONE(adc_init_done),
//		.CSP_RESYNC(csp_resync),
//		.g1bit_slip_odd1(bit_slip_odd),
//		.g1bit_slip_evn1(bit_slip_evn),
//		.ALG_GD(alg_gd),
//		
//		// Differential Serial Data Inputs
//		.G1AD_N(G1AD_N),.G1AD_P(G1AD_P),.G2AD_N(G2AD_N),.G2AD_P(G2AD_P),.G3AD_N(G3AD_N),.G3AD_P(G3AD_P),
//		.G4AD_N(G4AD_N),.G4AD_P(G4AD_P),.G5AD_N(G5AD_N),.G5AD_P(G5AD_P),.G6AD_N(G6AD_N),.G6AD_P(G6AD_P),
//		// Differential Frame Clock Inputs
//		.G1ADCLK0N(G1ADCLK0N),.G1ADCLK0P(G1ADCLK0P),
//		.G1ADCLK1N(G1ADCLK1N),.G1ADCLK1P(G1ADCLK1P),
//		.G2ADCLK0N(G2ADCLK0N),.G2ADCLK0P(G2ADCLK0P),
//		.G2ADCLK1N(G2ADCLK1N),.G2ADCLK1P(G2ADCLK1P),
//		.G3ADCLK0N(G3ADCLK0N),.G3ADCLK0P(G3ADCLK0P),
//		.G3ADCLK1N(G3ADCLK1N),.G3ADCLK1P(G3ADCLK1P),
//		.G4ADCLK0N(G4ADCLK0N),.G4ADCLK0P(G4ADCLK0P),
//		.G4ADCLK1N(G4ADCLK1N),.G4ADCLK1P(G4ADCLK1P),
//		.G5ADCLK0N(G5ADCLK0N),.G5ADCLK0P(G5ADCLK0P),
//		.G5ADCLK1N(G5ADCLK1N),.G5ADCLK1P(G5ADCLK1P),
//		.G6ADCLK0N(G6ADCLK0N),.G6ADCLK0P(G6ADCLK0P),
//		.G6ADCLK1N(G6ADCLK1N),.G6ADCLK1P(G6ADCLK1P),
//		// Differential Bit Clock Inputs
//		.G1LCLK0N(G1LCLK0N),.G1LCLK0P(G1LCLK0P),
//		.G1LCLK1N(G1LCLK1N),.G1LCLK1P(G1LCLK1P),
//		.G2LCLK0N(G2LCLK0N),.G2LCLK0P(G2LCLK0P),
//		.G2LCLK1N(G2LCLK1N),.G2LCLK1P(G2LCLK1P),
//		.G3LCLK0N(G3LCLK0N),.G3LCLK0P(G3LCLK0P),
//		.G3LCLK1N(G3LCLK1N),.G3LCLK1P(G3LCLK1P),
//		.G4LCLK0N(G4LCLK0N),.G4LCLK0P(G4LCLK0P),
//		.G4LCLK1N(G4LCLK1N),.G4LCLK1P(G4LCLK1P),
//		.G5LCLK0N(G5LCLK0N),.G5LCLK0P(G5LCLK0P),
//		.G5LCLK1N(G5LCLK1N),.G5LCLK1P(G5LCLK1P),
//		.G6LCLK0N(G6LCLK0N),.G6LCLK0P(G6LCLK0P),
//		.G6LCLK1N(G6LCLK1N),.G6LCLK1P(G6LCLK1P),
//	   // Clocks and Resets
//		.RST(dsr_rst),
//		.SYS_RST(sys_rst),
//		.DSR_RESYNC(dsr_resync),
////	   .CLK20(clk20),
//		.G1FRM_CLK0(g1_frm_clk0),    // Frame Clock for G1 ADC0 data
//		.G1FRM_CLK1(g1_frm_clk1),    // Frame Clock for G1 ADC1 data
//		.G2FRM_CLK0(g2_frm_clk0),    // Frame Clock for G2 ADC0 data
//		.G2FRM_CLK1(g2_frm_clk1),    // Frame Clock for G2 ADC1 data
//		.G3FRM_CLK0(g3_frm_clk0),    // Frame Clock for G3 ADC0 data
//		.G3FRM_CLK1(g3_frm_clk1),    // Frame Clock for G3 ADC1 data
//		.G4FRM_CLK0(g4_frm_clk0),    // Frame Clock for G4 ADC0 data
//		.G4FRM_CLK1(g4_frm_clk1),    // Frame Clock for G4 ADC1 data
//		.G5FRM_CLK0(g5_frm_clk0),    // Frame Clock for G5 ADC0 data
//		.G5FRM_CLK1(g5_frm_clk1),    // Frame Clock for G5 ADC1 data
//		.G6FRM_CLK0(g6_frm_clk0),    // Frame Clock for G6 ADC0 data
//		.G6FRM_CLK1(g6_frm_clk1),    // Frame Clock for G6 ADC1 data
//		//
//		.G1RESTARTP0(g1restartp0),   // Restart pipeline for G1 ADC0
//		.G1RESTARTP1(g1restartp1),   // Restart pipeline for G1 ADC1
//		.G2RESTARTP0(g2restartp0),   // Restart pipeline for G2 ADC0
//		.G2RESTARTP1(g2restartp1),   // Restart pipeline for G2 ADC1
//		.G3RESTARTP0(g3restartp0),   // Restart pipeline for G3 ADC0
//		.G3RESTARTP1(g3restartp1),   // Restart pipeline for G3 ADC1
//		.G4RESTARTP0(g4restartp0),   // Restart pipeline for G4 ADC0
//		.G4RESTARTP1(g4restartp1),   // Restart pipeline for G4 ADC1
//		.G5RESTARTP0(g5restartp0),   // Restart pipeline for G5 ADC0
//		.G5RESTARTP1(g5restartp1),   // Restart pipeline for G5 ADC1
//		.G6RESTARTP0(g6restartp0),   // Restart pipeline for G6 ADC0
//		.G6RESTARTP1(g6restartp1),   // Restart pipeline for G6 ADC1
//		.DSR_ALIGNED(dsr_aligned),
//		// Deserialized outputs - 16 channels of 12 bits flattend into single vectors (channel 15 in high order bits, 0 in low)
//		.G1DAQ16CH(g1daq16ch),
//		.G2DAQ16CH(g2daq16ch),
//		.G3DAQ16CH(g3daq16ch),
//		.G4DAQ16CH(g4daq16ch),
//		.G5DAQ16CH(g5daq16ch),
//		.G6DAQ16CH(g6daq16ch),
//		.RESYNC(resync),
//		.resync_d1(resync_d1),
//		.lead_edg_resync(lead_edg_resync),
//		.lead_edg_resync_d1(lead_edg_resync_d1),
//		.cap_phase(cap_phase),
//		.rst_mmcm_pipe(rst_mmcm_pipe)
//	);
	
	adc_data_input_gen_csp #(
	.USE_CHIPSCOPE(USE_DESER_CHIPSCOPE)
	)
	adc_data_in1(
		.CSP_G1LA0_CNTRL(g1la0_c0),
		.CSP_G1VIO0_CNTRL(g1vio0_c0),
		.CSP_DSR_SYS_RST(csp_dsr_sys_rst),
		.ADC_INIT(adc_init),
		.ADC_INIT_DONE(adc_init_done),
		.CSP_RESYNC(csp_resync),
		.bit_slip_odd_out(bit_slip_odd),
		.bit_slip_evn_out(bit_slip_evn),
		.ALG_GD(alg_gd),
		
		// Differential Serial Data Inputs
		.G1AD_N(G1AD_N),.G1AD_P(G1AD_P),.G2AD_N(G2AD_N),.G2AD_P(G2AD_P),.G3AD_N(G3AD_N),.G3AD_P(G3AD_P),
		.G4AD_N(G4AD_N),.G4AD_P(G4AD_P),.G5AD_N(G5AD_N),.G5AD_P(G5AD_P),.G6AD_N(G6AD_N),.G6AD_P(G6AD_P),
		// Differential Frame Clock Inputs
		.G1ADCLK0N(G1ADCLK0N),.G1ADCLK0P(G1ADCLK0P),
		.G1ADCLK1N(G1ADCLK1N),.G1ADCLK1P(G1ADCLK1P),
		.G2ADCLK0N(G2ADCLK0N),.G2ADCLK0P(G2ADCLK0P),
		.G2ADCLK1N(G2ADCLK1N),.G2ADCLK1P(G2ADCLK1P),
		.G3ADCLK0N(G3ADCLK0N),.G3ADCLK0P(G3ADCLK0P),
		.G3ADCLK1N(G3ADCLK1N),.G3ADCLK1P(G3ADCLK1P),
		.G4ADCLK0N(G4ADCLK0N),.G4ADCLK0P(G4ADCLK0P),
		.G4ADCLK1N(G4ADCLK1N),.G4ADCLK1P(G4ADCLK1P),
		.G5ADCLK0N(G5ADCLK0N),.G5ADCLK0P(G5ADCLK0P),
		.G5ADCLK1N(G5ADCLK1N),.G5ADCLK1P(G5ADCLK1P),
		.G6ADCLK0N(G6ADCLK0N),.G6ADCLK0P(G6ADCLK0P),
		.G6ADCLK1N(G6ADCLK1N),.G6ADCLK1P(G6ADCLK1P),
		// Differential Bit Clock Inputs
		.G1LCLK0N(G1LCLK0N),.G1LCLK0P(G1LCLK0P),
		.G1LCLK1N(G1LCLK1N),.G1LCLK1P(G1LCLK1P),
		.G2LCLK0N(G2LCLK0N),.G2LCLK0P(G2LCLK0P),
		.G2LCLK1N(G2LCLK1N),.G2LCLK1P(G2LCLK1P),
		.G3LCLK0N(G3LCLK0N),.G3LCLK0P(G3LCLK0P),
		.G3LCLK1N(G3LCLK1N),.G3LCLK1P(G3LCLK1P),
		.G4LCLK0N(G4LCLK0N),.G4LCLK0P(G4LCLK0P),
		.G4LCLK1N(G4LCLK1N),.G4LCLK1P(G4LCLK1P),
		.G5LCLK0N(G5LCLK0N),.G5LCLK0P(G5LCLK0P),
		.G5LCLK1N(G5LCLK1N),.G5LCLK1P(G5LCLK1P),
		.G6LCLK0N(G6LCLK0N),.G6LCLK0P(G6LCLK0P),
		.G6LCLK1N(G6LCLK1N),.G6LCLK1P(G6LCLK1P),
	   // Clocks and Resets
		.RST(dsr_rst),
		.SYS_RST(sys_rst),
		.DSR_RESYNC(dsr_resync),
		.FRM_CLKS(frm_clks),    // Frame Clock for ADC data
		//
		.RESTARTPS(restartps),   // Restart pipeline for  ADC
		.DSR_ALIGNED(dsr_aligned),
		// Deserialized outputs - 16 channels of 12 bits flattend into single vectors (channel 15 in high order bits, 0 in low)
		.G1DAQ8CH_0(g1daq8ch_0),
		.G1DAQ8CH_1(g1daq8ch_1),
		.G2DAQ8CH_0(g2daq8ch_0),
		.G2DAQ8CH_1(g2daq8ch_1),
		.G3DAQ8CH_0(g3daq8ch_0),
		.G3DAQ8CH_1(g3daq8ch_1),
		.G4DAQ8CH_0(g4daq8ch_0),
		.G4DAQ8CH_1(g4daq8ch_1),
		.G5DAQ8CH_0(g5daq8ch_0),
		.G5DAQ8CH_1(g5daq8ch_1),
		.G6DAQ8CH_0(g6daq8ch_0),
		.G6DAQ8CH_1(g6daq8ch_1),
		.RESYNC(resync),
		.resync_d1(resync_d1),
		.lead_edg_resync(lead_edg_resync),
		.lead_edg_resync_d1(lead_edg_resync_d1),
		.cap_phase(cap_phase),
		.rst_mmcm_pipe(rst_mmcm_pipe)
	);
	
  
 /////////////////////////////////////////////////////////////////////////////
 //                                                                         //
 //  ADC control output signals and differential sampling clock             //
 //                                                                         //
 /////////////////////////////////////////////////////////////////////////////

	wire [11:0] adc_cs;
	wire adc_rst,adc_sclk,adc_sdata;

	adc_control_out
	adc_cntrl1 (
	   // External control signals to ADCs
		.G1ADC_CS0_B_25(G1ADC_CS0_B_25), .G1ADC_CS1_B_25(G1ADC_CS1_B_25),
		.G2ADC_CS0_B_25(G2ADC_CS0_B_25), .G2ADC_CS1_B_25(G2ADC_CS1_B_25),
		.G3ADC_CS0_B_25(G3ADC_CS0_B_25), .G3ADC_CS1_B_25(G3ADC_CS1_B_25),
		.G4ADC_CS0_B_25(G4ADC_CS0_B_25), .G4ADC_CS1_B_25(G4ADC_CS1_B_25),
		.G5ADC_CS0_B_25(G5ADC_CS0_B_25), .G5ADC_CS1_B_25(G5ADC_CS1_B_25),
		.G6ADC_CS0_B_25(G6ADC_CS0_B_25), .G6ADC_CS1_B_25(G6ADC_CS1_B_25),
		.ADC_RST_B_25(ADC_RST_B_25),
		.ADC_SCLK_25(ADC_SCLK_25),
		.ADC_SDATA_25(ADC_SDATA_25),
		// Sampling clock to all ADCs
		.GA1ADCCLK_FN(GA1ADCCLK_FN),
		.GA1ADCCLK_FP(GA1ADCCLK_FP),
		.GA2ADCCLK_FN(GA2ADCCLK_FN),
		.GA2ADCCLK_FP(GA2ADCCLK_FP),
		.GA3ADCCLK_FN(GA3ADCCLK_FN),
		.GA3ADCCLK_FP(GA3ADCCLK_FP),
		// Internal control signals
      .ADC_CS(adc_cs),
      .ADC_RST(adc_rst),
      .ADC_SCLK(adc_sclk),
      .ADC_SDATA(adc_sdata),
      .ADC_CLK(adc_clk)
	);

	
 /////////////////////////////////////////////////////////////////////////////
 //                                                                         //
 //  Pipeline for digitize data for all 96 channels X 12 bits               //
 //                                                                         //
 /////////////////////////////////////////////////////////////////////////////
 
   wire jrstrt_pipe;
	wire [8:0] pdepth;
	wire [191:0] g1pipout,g2pipout,g3pipout,g4pipout,g5pipout,g6pipout;
	
//pipeline
//pipeline1(
//    .G1_WRCLK0(g1_frm_clk0),   //Frame clock from adc's
//    .G1_WRCLK1(g1_frm_clk1),   //Frame clock from adc's
//    .G2_WRCLK0(g2_frm_clk0),   //Frame clock from adc's
//    .G2_WRCLK1(g2_frm_clk1),   //Frame clock from adc's
//    .G3_WRCLK0(g3_frm_clk0),   //Frame clock from adc's
//    .G3_WRCLK1(g3_frm_clk1),   //Frame clock from adc's
//    .G4_WRCLK0(g4_frm_clk0),   //Frame clock from adc's
//    .G4_WRCLK1(g4_frm_clk1),   //Frame clock from adc's
//    .G5_WRCLK0(g5_frm_clk0),   //Frame clock from adc's
//    .G5_WRCLK1(g5_frm_clk1),   //Frame clock from adc's
//    .G6_WRCLK0(g6_frm_clk0),   //Frame clock from adc's
//    .G6_WRCLK1(g6_frm_clk1),   //Frame clock from adc's
//	 .RDCLK(clk20),             // 20 MHz clock in phase with CMS clock 
//    .RST(sys_rst || ~daq_mmcm_lock),  //Make sure pipeline is not started until valid clocks
//    .JRESTART(jrstrt_pipe),        //Restart pipeline from JTAG command
//	 .G1RESTARTP0(g1restartp0),   // Restart pipeline for G1 ADC0
//	 .G1RESTARTP1(g1restartp1),   // Restart pipeline for G1 ADC1
//	 .G2RESTARTP0(g2restartp0),   // Restart pipeline for G2 ADC0
//	 .G2RESTARTP1(g2restartp1),   // Restart pipeline for G2 ADC1
//	 .G3RESTARTP0(g3restartp0),   // Restart pipeline for G3 ADC0
//	 .G3RESTARTP1(g3restartp1),   // Restart pipeline for G3 ADC1
//	 .G4RESTARTP0(g4restartp0),   // Restart pipeline for G4 ADC0
//	 .G4RESTARTP1(g4restartp1),   // Restart pipeline for G4 ADC1
//	 .G5RESTARTP0(g5restartp0),   // Restart pipeline for G5 ADC0
//	 .G5RESTARTP1(g5restartp1),   // Restart pipeline for G5 ADC1
//	 .G6RESTARTP0(g6restartp0),   // Restart pipeline for G6 ADC0
//	 .G6RESTARTP1(g6restartp1),   // Restart pipeline for G6 ADC1
//    .PDEPTH(pdepth),             //Pipeline depth from JTAG Reg
//    .G1DAQ16CH(g1daq16ch),       //Deserialized data from group 1 amp channels
//    .G2DAQ16CH(g2daq16ch),
//    .G3DAQ16CH(g3daq16ch),
//    .G4DAQ16CH(g4daq16ch),
//    .G5DAQ16CH(g5daq16ch),
//    .G6DAQ16CH(g6daq16ch),
//    .G1PIPOUT(g1pipout),
//    .G2PIPOUT(g2pipout),
//    .G3PIPOUT(g3pipout),
//    .G4PIPOUT(g4pipout),
//    .G5PIPOUT(g5pipout),
//    .G6PIPOUT(g6pipout)
//    );

pipeline_gen_csp #(
	.USE_CHIPSCOPE(USE_PIPE_CHIPSCOPE)
	)
	pipeline1(
		.CSP_LA0_CNTRL(pipe_la0_c0),
		.CSP_VIO0_CNTRL(pipe_vio_in0_c1),
		.CSP_VIO1_CNTRL(pipe_vio_out1_c2),
	 .CLK160(clk160),
    .WRCLKS(frm_clks),   //Frame clock from adc's
	 .RDCLK(clk20),             // 20 MHz clock in phase with CMS clock 
    .RST(sys_rst || ~daq_mmcm_lock),  //Make sure pipeline is not started until valid clocks
    .JRESTART(jrstrt_pipe),        //Restart pipeline from JTAG command
	 .RESTARTPS(restartps),   // Restart pipeline for ADC0
    .PDEPTH(pdepth),             //Pipeline depth from JTAG Reg
    .G1DAQ8CH_0(g1daq8ch_0),       //Deserialized data from group 1 amp channels 7:0
    .G1DAQ8CH_1(g1daq8ch_1),       //Deserialized data from group 1 amp channels 15:8
    .G2DAQ8CH_0(g2daq8ch_0),       //Deserialized data from group 2 amp channels 7:0
    .G2DAQ8CH_1(g2daq8ch_1),       //Deserialized data from group 2 amp channels 15:8
    .G3DAQ8CH_0(g3daq8ch_0),       //Deserialized data from group 3 amp channels 7:0
    .G3DAQ8CH_1(g3daq8ch_1),       //Deserialized data from group 3 amp channels 15:8
    .G4DAQ8CH_0(g4daq8ch_0),       //Deserialized data from group 4 amp channels 7:0
    .G4DAQ8CH_1(g4daq8ch_1),       //Deserialized data from group 4 amp channels 15:8
    .G5DAQ8CH_0(g5daq8ch_0),       //Deserialized data from group 5 amp channels 7:0
    .G5DAQ8CH_1(g5daq8ch_1),       //Deserialized data from group 5 amp channels 15:8
    .G6DAQ8CH_0(g6daq8ch_0),       //Deserialized data from group 6 amp channels 7:0
    .G6DAQ8CH_1(g6daq8ch_1),       //Deserialized data from group 6 amp channels 15:8
    .G1PIPOUT(g1pipout),
    .G2PIPOUT(g2pipout),
    .G3PIPOUT(g3pipout),
    .G4PIPOUT(g4pipout),
    .G5PIPOUT(g5pipout),
    .G6PIPOUT(g6pipout)
    );


 /////////////////////////////////////////////////////////////////////////////
 //                                                                         //
 //  16 FIFOs (for 16 channels) each 12 bits wide (total is 16X12 bits wide.//
 //  Group G1 to G6 in sequence for sample 1,                               //
 //  then same for sample 2 and so on.                                      //
 //                                                                         //
 /////////////////////////////////////////////////////////////////////////////

wire l1a,l1a_match,lct,l1a_phase,bc0;
wire l1a_push_skw, l1a_push_mac;
wire [191:0] doutfifo;
wire [15:0] fifo1_rd_ena;
wire f1rdy;
wire [6:0] samp_max;

fifo16ch_wide
fifo1 (
    .CLK40(clk40),   // CMS clock for L1A capture
    .RDCLK(clk160),  // Read out at 160 MHz
	 .SMPCLK(clk20),	// Sample clock for L1A phase information.
    .WRCLK(clk120),  // write to FIFO at 120 MHz (6 words x 20MHz sample rate)
    .RST(sys_rst || ~daq_mmcm_lock),
    .L1A_MATCH(l1a_match),			
    .G1IN(g1pipout),
    .G2IN(g2pipout),
    .G3IN(g3pipout),
    .G4IN(g4pipout),
    .G5IN(g5pipout),
    .G6IN(g6pipout),
    .RD_ENA(fifo1_rd_ena),
	 .SAMP_MAX(samp_max),
	 .RDY(f1rdy),
	 .L1A_PHASE(l1a_phase),
    .DOUT_16CH(doutfifo)  // 192 bit wide output at 160 MHz for 6 X (n samples)
    );

wire rdfifo;
wire rdf_wren;
wire jtag_rd_mode;
wire [11:0] rdf_wdata;
wire [15:0] frm_data;
wire last_wrd;
wire dvalid;
wire daq_data_clk;
wire [15:0] txd;
wire txd_vld;
wire txack;

wire [15:0] dmb_data;
wire dmb_vld;


 /////////////////////////////////////////////////////////////////////////////
 //                                                                         //
 //  Transfer data from FIFO1 to readout FIFO1 and 2                        //
 //  This is a multiplexer between FIFO1 and Readout FIFOs.                 //
 //  Contains state machine and counters for samples, channels, and chips   //
 //  Sets channel, read enables for 6 chips, then increments channel,       //
 //  After finishing channels, repeats for the next sample.                 //
 //                                                                         //
 /////////////////////////////////////////////////////////////////////////////
 

xfer2fifo xfer2fifo_1(   // Transfer data from FIFO1 to readout FIFO at 160 MHz
    .CLK(clk160),
    .RST(sys_rst),
    .JTAG_MODE(jtag_rd_mode),
	 .SAMP_MAX(samp_max),
    .RD_FIFO(rdfifo),
    .DIN_16CH(doutfifo),
	 .RDY(f1rdy),
    .RD_ENA(fifo1_rd_ena),
	 .WREN(rdf_wren),
	 .DMUX(rdf_wdata)  // 12 bit data out
    );

 /////////////////////////////////////////////////////////////////////////////
 //                                                                         //
 //  Readout FIFO1 (x12 bits) wide.                                         //
 //  Data order is {sample[0],channel[0],chip[0]...chip[5]},                //
 //                {sample[0],channel[1],chip[0]...chip[5]},                //
 //                {sample[0],channel[2],chip[0]...chip[5]},                //
 //                        ...                                              //
 //                {sample[n],channel[15],chip[0]...chip[5]}                //
 //                                                                         //
 /////////////////////////////////////////////////////////////////////////////

readout_fifo #(
	.USE_CHIPSCOPE(USE_DAQ_CHIPSCOPE)
	)
rd_fifo1(
	.CSP_CNTRL(readout_fifo1_la_c2),
    .WCLK(clk160),
    .RCLK(clk40),
    .CMSCLK(clk40),
    .RST(sys_rst),
	 .SAMP_MAX(samp_max),
    .WDATA(rdf_wdata),
	 .WREN(rdf_wren),
	 .L1A(l1a),
	 .L1A_MATCH(l1a_match),
	 .L1A_PHASE(l1a_phase),
	 .RESYNC(resync),
	 .l1a_push(l1a_push_skw),
	 .LAST_WRD(last_wrd),
	 .DVALID(dvalid),
    .DOUT(frm_data)
    );
	 
 /////////////////////////////////////////////////////////////////////////////
 //                                                                         //
 //  Readout FIFO2 to feed MAC for GbE optical path.                        //
 //                                                                         //
 /////////////////////////////////////////////////////////////////////////////


mac_fifo #(
	.USE_CHIPSCOPE(USE_DAQ_CHIPSCOPE)
	)
rd_fifo2(
	.CSP_CNTRL(rd_fifo2_la_c5),
   .WCLK(clk160),
   .RCLK(daq_data_clk),
   .CMSCLK(clk40),
   .RST(sys_rst),
	.SAMP_MAX(samp_max),
   .WDATA(rdf_wdata),
	.WREN(rdf_wren),
	.L1A_HEAD(l1a_head),
	.L1A(l1a),
	.L1A_MATCH(l1a_match),
	.L1A_PHASE(l1a_phase),
	.RESYNC(resync),
	.TXACK(txack),                     // Data acknowledge signal from frame processor
	 .l1a_push(l1a_push_mac),
	.TXD(txd),                         // 16-bit data for frame processor
	.TXD_VLD(txd_vld)                  // data valid signal
   );
	


 /////////////////////////////////////////////////////////////////////////////
 //                                                                         //
 //  DAQ Path Optical Transceiver signals and GTX signals                   //
 //                                                                         //
 /////////////////////////////////////////////////////////////////////////////

daq_optical_out #(
	.USE_CHIPSCOPE(USE_DAQ_CHIPSCOPE),
	.SIM_SPEEDUP(0)
)
daq_optical_out_i (
	.DAQ_TX_VIO_CNTRL(DAQ_tx_vio_c3),
	.DAQ_TX_LA_CNTRL(DAQ_tx_la_c4),
	.RST(sys_rst),
	// External signals
	.DAQ_RX_N(DAQ_RX_N),.DAQ_RX_P(DAQ_RX_P), // high speed serial input not connected on hardware 
	.DAQ_TDIS(DAQ_TDIS),                     // disable optical transmission
	.DAQ_TX_N(DAQ_TX_N),.DAQ_TX_P(DAQ_TX_P), // high speed serial output
	// Internal signals
	.DAQ_TX_125REFCLK(daq_tx_125_refclk),    // 125 MHz for 1 GbE
	.DAQ_TX_125REFCLK_DV2(daq_tx_125_refclk_dv2), // 62.5 MHz user clock for 1 GbE
	.DAQ_TX_160REFCLK(trg_tx_160_refclk),    // 160 MHz for  2.56 GbE
	.L1A_MATCH(l1a_match),
	.TXD(txd),                         // 16-bit data for frame processor
	.TXD_VLD(txd_vld),                   // frame data valid signal
	.JDAQ_RATE(jdaq_rate),
	.RATE_1_25(rate_1_25),
	.RATE_3_2(rate_3_2),
	.TX_ACK(txack),
	.CSP_MAN_CTRL(csp_man_ctrl),        // Chip Scope Pro manual control for DAQ rate, L1A, and packet headers;
	.CSP_USE_ANY_L1A(csp_use_any_l1a),     // Flag to send data on any L1A
	.CSP_L1A_HEAD(csp_l1a_head),        // Flag to send L1A number at the begining of the packet
	.DAQ_DATA_CLK(daq_data_clk)
  );

//	daq_transceiver_io #(
//		.USE_CHIPSCOPE(USE_DAQ_CHIPSCOPE),
//		.USE_2p56GbE(1),
//		.SIM_SPEEDUP(0)
//	)		
//	daq_xcvr_io1 (
//		.DAQ_TX_VIO_CNTRL(DAQ_tx_vio_c3),
//		.DAQ_TX_LA_CNTRL(DAQ_tx_la_c4),
//	   .RST(sys_rst),
//		// External signals
//		.DAQ_RX_N(DAQ_RX_N),.DAQ_RX_P(DAQ_RX_P), // high speed serial input not connected on hardware 
//		.DAQ_TDIS(DAQ_TDIS),                     // disable optical transmission
//		.DAQ_TX_N(DAQ_TX_N),.DAQ_TX_P(DAQ_TX_P), // high speed serial output
//		// Internal signals 
//		.DAQ_TX_125REFCLK(daq_tx_125_refclk),    // 125 MHz for 1 GbE
//		.DAQ_TX_160REFCLK(trg_tx_160_refclk),    // 160 MHz for 2 or 2.56 GbE
//		.L1A_MATCH(l1a_match),
//		.MACTXD(txd),                         // 16-bit data for MAC processor
//		.MACTXDVLD(txd_vld),                   // MAC data valid signal
//		.TXACK(txack),                           // Data acknowledge signal from MAC processor
//		.DAQ_DATA_CLK(daq_data_clk)
//  );
  


	channel_link_out
	ch_link1 (
	   // External output
		.DATAOUT(DATAOUT),
		.CHAN_LNK_CLK(CHAN_LNK_CLK),
		.MB_FIFO_PUSH_B(MB_FIFO_PUSH_B),
		.MOVLP(MOVLP),
		.OVLPMUX(OVLPMUX),
		.DATAAVAIL(DATAAVAIL),
		.ENDWORD(ENDWORD),
		// Internal input
		.CLK(clk40),
		.L1A_MATCH(l1a_match),
		.LAST_WRD(last_wrd),
		.DVALID(dvalid),
		.FRAME_DATA(frm_data)
//Temporary assignments
//		.L1A(1'b0),
//		.LAST_WRD(1'b0),
//		.DVALID(1'b0),
//		.FRAME_DATA(16'h0000)
    );

	
  //
  //Trigger and sync signals
  //
	wire fem_l1a;
	wire fem_resync;
	wire fem_l1a_match;
	wire cal_mode;

	trigger
	trig_in1(                           // provides synchronus trigger inputs
		.CLK40(clk40),
		.RST(sys_rst),
	 // external connections
		.SKW_L1A_P(\SKW_L1A+ ),.SKW_L1A_N(\SKW_L1A- ),
		.SKW_L1A_MATCH_P(\SKW_L1A_MATCH+ ),.SKW_L1A_MATCH_N(\SKW_L1A_MATCH- ),
		.SKW_RESYNC_P(\SKW_RESYNC+ ),.SKW_RESYNC_N(\SKW_RESYNC- ),
		.SKW_BC0_P(\SKW_BC0+ ),.SKW_BC0_N(\SKW_BC0- ),
		.FMU_L1A(FMU_L1A),
		.FMU_RESYNC(FMU_RESYNC),
		.FMU_L1A_MATCH(FMU_EXTPLS),	// Changed definition form external pulse to 'matched L1A'
	// internal signals
		.FEM_L1A(fem_l1a),    			 //FF-EMU Emulator L1A
		.FEM_RESYNC(fem_resync), 		 //FF-EMU Emulator Resync
		.FEM_L1A_MATCH(fem_l1a_match), //FF-EMU Emulator L1A match
		.TTC_SRC(ttc_src),      		 // Trigger source mode
		.USE_ANY_L1A(use_any_l1a),		//JTAG flag for L1A match source (L1A or L1A_MATCH)
		.CSP_RESYNC(csp_resync),
	 // common signals
		.L1A(l1a),
		.L1A_MATCH(l1a_match),
		.LCT(lct),
		.RESYNC(resync),
		.BC0CNT(bc0cnt),
		.BC0(bc0)
	);
	 
	
  //
  //Calibration signals
  //
	wire fem_injpls;
	wire fem_extpls;
	wire trg_pulse;

	calib_intf
	calib_intf_i(                           // provides multiplexing for calibration i/o
		.CLK40(clk40),
	 // external connections
		.SKW_EXTPLS_P(\SKW_EXTPLS+ ),.SKW_EXTPLS_N(\SKW_EXTPLS- ),
		.SKW_INJPLS_P(\SKW_INJPLS+ ),.SKW_INJPLS_N(\SKW_INJPLS- ),
		.FMU_INJPLS(FMU_INJPLS),
		.INJPLS_LV(INJPLS_LV),
		.EXTPLS_LV(EXTPLS_LV),
	// internal signals
		.FEM_INJPLS(fem_injpls),     //FF-EMU Emulator charge injection pulse
		.TTC_SRC(ttc_src),       // Trigger source mode
		.CAL_MODE(cal_mode),		 // external or internal calibrations pulses (0: external pulsing, 1: internal pulsing)
	 // common output signals
		.INJPULSE_P(\INJPULSE+ ),.INJPULSE_N(\INJPULSE- ),
		.EXTPULSE_P(\EXTPULSE+ ),.EXTPULSE_N(\EXTPULSE- ),
		.TRG_PULSE(trg_pulse)
	);


	//
	//Comparator signals
	//

 /////////////////////////////////////////////////////////////////////////////
 //                                                                         //
 //  Comparator I/O and Comparator DAC control signals                      //
 //                                                                         //
 /////////////////////////////////////////////////////////////////////////////

	wire [7:0]g1c,g2c,g3c,g4c,g5c,g6c;
	wire [1:0]comp_mode;
	wire [2:0]comp_time;
	wire lct_rst;
	
	comparator_io
	comp_io1 (
	   // External I/O
		.G1C_LV(G1C_LV), .G2C_LV(G2C_LV), .G3C_LV(G3C_LV), .G4C_LV(G4C_LV), .G5C_LV(G5C_LV), .G6C_LV(G6C_LV), // Comparator inputs
		.CMODE(CMODE),  // Comparator Mode output
		.CTIME(CTIME),  // Comparator Timing output
		.LCTCLK(LCTCLK), .LCTRST(LCTRST), //Comparator clock and reset
		// Internal signals
		.G1C(g1c), .G2C(g2c), .G3C(g3c), .G4C(g4c), .G5C(g5c), .G6C(g6c), // Encoded Di-Strip signals from Comparator
		.COMP_MODE(comp_mode),
		.COMP_TIME(comp_time),
		.LCT_CLK(comp_clk), .LCT_RST(comp_rst)
	);

 
 /////////////////////////////////////////////////////////////////////////////
 //                                                                         //
 //  Trigger Path Optical Transceiver signals and GTX signals               //
 //                                                                         //
 /////////////////////////////////////////////////////////////////////////////

	wire trg_gtxtxreset;
   wire trg_gtxtxreset_csp;
   wire trg_txresetdone;
	wire trg_tx_pllrst;
	reg  trg_rst;
   wire tx_sync_done;
	wire ena_test_pat;
	wire inj_err;
	wire strt_ltncy;
	wire mon_tx_sel;
	wire [3:0] mon_trg_tx_isk;
	wire [31:0] mon_trg_tx_data;
	wire man_rst;
	wire ltncy_trig_strt;
	wire [29:0] lay1_to_6_half_strip;
	wire [5:0] layer_mask;
	
	tmb_fiber_out #(
		.SIM_SPEEDUP(0)
	)
	tmb_fiber_out1 (
	   .RST(sys_rst),
		// External signals
		.TRG_SIGDET(ALT_SIGDET),                 // receiver signal detected
		.TRG_RX_N(TRG_RX_N),.TRG_RX_P(TRG_RX_P), // high speed serial input
		.TRG_TDIS(TRG_TDIS),                     // disable optical transmission
		.TRG_TX_N(TRG_TX_N),.TRG_TX_P(TRG_TX_P), // high speed serial output
		// Internal signals
		.G1C(g1c), .G2C(g2c), .G3C(g3c), .G4C(g4c), .G5C(g5c), .G6C(g6c), // from comparators
		.TRG_TX_REFCLK(trg_tx_160_refclk),       // 160 MHz for comparator data
		.TRG_TXUSRCLK(comp_clk160),              // 160 MHz GTX parallel clock
		.TRG_CLK80(comp_clk80),                  //  80 MHz GTX User interface clock
 		.TRG_GTXTXRST(trg_gtxtxreset | trg_gtxtxreset_csp),           // GTX reset tx side
		.TRG_TX_PLLRST(trg_tx_pllrst),           // Reset Transmit PLL
		.TRG_RST(trg_rst),                       // Reset for Pseudo Random Bit Stream
		.ENA_TEST_PAT(ena_test_pat),             // Enable test with Pseudo Random Bit Stream Chip Scope Pro control only
		.TMB_TX_MODE(tmb_tx_mode),               // Select transmission mode
		.LAY1_TO_6_HALF_STRIP(lay1_to_6_half_strip), //5-bit half strip number (0-31) for each layer for tmb_tx_mode 5 
		.LAYER_MASK(layer_mask),						// indicates which layer to allow active half strips in tmb_tx_mode 5
		.TRG_PULSE(trg_pulse),
		.INJ_ERR(inj_err),                       // Inject error into Pseudo Random Bit Stream
		.TRG_TX_PLL_LOCK(trg_tx_pll_lock),       // tx side pll lock
		.TRG_TXRESETDONE(trg_txresetdone),       // tx side reset done
		.TX_SYNC_DONE(tx_sync_done),             // tx side phase alignment done
		.STRT_LTNCY(strt_ltncy),                 // signal to start latency counter
		.LTNCY_TRIG(ltncy_trig_strt),            // trigger for scope to start latency measurement
		.MON_TX_SEL(mon_tx_sel),
		.MON_TRG_TX_ISK(mon_trg_tx_isk),
		.MON_TRG_TX_DATA(mon_trg_tx_data)
  ); 
  
	always @(posedge comp_clk) begin
		trg_rst <= resync | sys_rst | man_rst | comp_rst;
	end
	

generate
if(USE_CMP_CHIPSCOPE==1) 
begin : chipscope_trg
// chip scope code for trigger tx and latency
//
wire [31:0] cmp_tx_async_in;
wire [7:0]  cmp_tx_async_out;
wire [3:0]  cmp_tx_sync_out;
wire [95:0] cmp_tx_la_data;
wire [7:0]  cmp_tx_la_trig;
wire [95:0] cmp_latency_la_data;
wire [7:0]  cmp_latency_la_trig;

wire [7:0] dummy_asigs;
wire [3:0] dummy_ssigs;


	cmp_tx_vio cmp_tx_vio1 (
		 .CONTROL(cmp_tx_vio_c0), // INOUT BUS [35:0]
		 .CLK(comp_clk), // IN
		 .ASYNC_IN(cmp_tx_async_in), // IN BUS [31:0]
		 .ASYNC_OUT(cmp_tx_async_out), // OUT BUS [7:0]
		 .SYNC_OUT(cmp_tx_sync_out) // OUT BUS [3:0]
	);


//		 ASYNC_IN [31:0]
	assign cmp_tx_async_in[0]     = trg_txresetdone;
	assign cmp_tx_async_in[1]     = trg_tx_pll_lock;
	assign cmp_tx_async_in[2]     = trg_rst;
	assign cmp_tx_async_in[3]     = tx_sync_done;
	assign cmp_tx_async_in[6:4]   = tmb_tx_mode;
	assign cmp_tx_async_in[7]     = 1'b0;
	assign cmp_tx_async_in[12:8]  = lay1_to_6_half_strip[4:0];
	assign cmp_tx_async_in[17:13] = lay1_to_6_half_strip[9:5];
	assign cmp_tx_async_in[22:18] = lay1_to_6_half_strip[14:10];
	assign cmp_tx_async_in[27:23] = lay1_to_6_half_strip[19:15];
	assign cmp_tx_async_in[31:28] = layer_mask[3:0];

		 
//		 ASYNC_OUT [7:0]
	assign ena_test_pat       = cmp_tx_async_out[0];
	assign man_rst            = cmp_tx_async_out[1];
	assign trg_gtxtxreset_csp = cmp_tx_async_out[2];
	assign trg_tx_pllrst      = cmp_tx_async_out[3];
	assign dummy_asigs[7:4]   = cmp_tx_async_out[7:4];
		 
//		 SYNC_OUT [7:0]
	assign inj_err            = cmp_tx_sync_out[0];
	assign dummy_ssigs[3:1]   = cmp_tx_sync_out[3:1];

	cmp_tx_la cmp_tx_la_i (
		 .CONTROL(cmp_tx_la_c1),
		 .CLK(comp_clk80),
		 .DATA(cmp_tx_la_data), // IN BUS [95:0]
		 .TRIG0(cmp_tx_la_trig) // IN BUS [7:0]
	);
	
// LA Data [95:0]
	assign cmp_tx_la_data[7:0]     = g1c;
	assign cmp_tx_la_data[15:8]    = g2c;
	assign cmp_tx_la_data[23:16]   = g3c;
	assign cmp_tx_la_data[31:24]   = g4c;
	assign cmp_tx_la_data[39:32]   = g5c;
	assign cmp_tx_la_data[47:40]   = g6c;
	assign cmp_tx_la_data[79:48]   = mon_trg_tx_data;
	assign cmp_tx_la_data[83:80]   = mon_trg_tx_isk;
	assign cmp_tx_la_data[84]      = mon_tx_sel;
	assign cmp_tx_la_data[85]      = ena_test_pat;
	assign cmp_tx_la_data[86]      = man_rst;
	assign cmp_tx_la_data[87]      = trg_rst;
	assign cmp_tx_la_data[88]      = trg_gtxtxreset_csp;
	assign cmp_tx_la_data[89]      = trg_tx_pllrst;
	assign cmp_tx_la_data[90]      = trg_txresetdone;
	assign cmp_tx_la_data[91]      = trg_tx_pll_lock;
	assign cmp_tx_la_data[92]      = tx_sync_done;
	assign cmp_tx_la_data[93]      = trg_pulse;
	assign cmp_tx_la_data[94]      = inj_err;
	assign cmp_tx_la_data[95]      = 1'b0;


// LA Trigger [7:0]
	assign cmp_tx_la_trig[0]      = man_rst;
	assign cmp_tx_la_trig[1]      = trg_rst;
	assign cmp_tx_la_trig[2]      = trg_pulse;
	assign cmp_tx_la_trig[3]      = trg_gtxtxreset_csp;
	assign cmp_tx_la_trig[4]      = trg_tx_pllrst;
	assign cmp_tx_la_trig[5]      = trg_txresetdone;
	assign cmp_tx_la_trig[6]      = trg_tx_pll_lock;
	assign cmp_tx_la_trig[7]      = tx_sync_done;

end
else
begin : no_chipscope_trg
	assign ena_test_pat       = 1'b0;
	assign inj_err            = 1'b0;
	assign man_rst            = 1'b0;
	assign trg_gtxtxreset_csp = 1'b0;
	assign trg_tx_pllrst      = 1'b0;
end
endgenerate
	
/////////////////////////////////////////////////////////////////////////////
//                                                                         //
//  FF_EMU Interface                                                       //
//                                                                         //
/////////////////////////////////////////////////////////////////////////////
wire ctrl_fbr_det;
  
ff_emu_intrf #(
		.USE_CHIPSCOPE(USE_FF_EMU_CHIPSCOPE)
	)		
FF_EMU_i  (
	//External input signals
	.CTRL_SIGDET(CTRL_SIGDET),
	.FMU_TOKEN(FMU_TOKEN),
	.FMU_SPI_CS0(FMU_SPI_CS0),
	.FMU_SPI_CS1(FMU_SPI_CS1),
	.FMU_SPI_CLK(FMU_SPI_CLK),
	.FMU_SPI_DAT(FMU_SPI_DAT),
	//External output signals
	.CTRL_TDIS(CTRL_TDIS),
	.FMU_SPI_BUSY(FMU_SPI_BUSY),
	.FMU_SPI_RTN_CLK(FMU_SPI_RTN_CLK),
	.FMU_SPI_RTN_DAT(FMU_SPI_RTN_DAT),
	.FMU_UL_TCK(FMU_UL_TCK),
	.FMU_UL_TDI(FMU_UL_TDI),
	.FMU_UL_TMS(FMU_UL_TMS),
	.FMU_FLF_E1(FMU_FLF_E1),
	.FMU_FLF_P1(FMU_FLF_P1),
	.FMU_FLF_P2(FMU_FLF_P2),
	.FMU_VLF_E2(FMU_VLF_E2),
	.FMU_CLK40_UL_N(\FMU_CLK40_UL- ),.FMU_CLK40_UL_P(\FMU_CLK40_UL+ ),
	.RST_FFEMU(RST_FFEMU),
	// Internal signals
	.CTRL_FIBER_DET(ctrl_fbr_det)
);
  
/////////////////////////////////////////////////////////////////////////////
//                                                                         //
//  FF_Emulator Interface                                                  //
//                                                                         //
/////////////////////////////////////////////////////////////////////////////
  
ff_emulator_intrf #(
		.USE_CHIPSCOPE(USE_FF_EMU_CHIPSCOPE)
	)		
FF_Emulator_i  (
	.HS_CLK(fem_clk320),          // High speed clock for data reception
	.CTRL_FIBER_DET(ctrl_fbr_det),  //Control channel signal detect.
	//External input signals
	.CLK320_SIGDET(CLK320_SIGDET),                 // receiver signal detected
	.FEM_RX_DAT_N(\FEM_RX_DAT- ),.FEM_RX_DAT_P(\FEM_RX_DAT+ ),
	//External output signals
	.FEM_RPRG(FEM_REPROGRAM),
	.FEM_TCK(FEM_TCK),
	.FEM_TDI(FEM_TDI),
	.FEM_TMS(FEM_TMS),
	.FEM_TX_DAT_N(\FEM_TX_DAT- ),.FEM_TX_DAT_P(\FEM_TX_DAT+ ),
	//Internal signals
	.FEM_L1A(fem_l1a),
	.FEM_L1A_MATCH(fem_l1a_match),
	.FEM_RESYNC(fem_resync),
	.FEM_INJPLS(fem_injpls),
	.FEM_EXTPLS(fem_extpls)
);
  
  
/////////////////////////////////////////////////////////////////////////////
//                                                                         //
//  FF_Emulator Interface                                                  //
//                                                                         //
/////////////////////////////////////////////////////////////////////////////

wire cdac_enb,caldac_enb,caladc_enb;
wire spi_ck;
wire spi_dat;
wire spi_rtn;
  
spi_port #(
		.USE_CHIPSCOPE(USE_SPI_CHIPSCOPE)
	)		
SPI_PORT_i  (
	//SPI input signals
	.SPI_RTN_LV(SPI_RTN_LV),
	//SPI output signals
	.SPI_CK_LV(SPI_CK_LV),
	.SPI_DAT_LV(SPI_DAT_LV),
	.ADC_CS_LV_B(ADC_CS_LV_B),
	.CAL_DAC_CS_LV_B(CAL_DAC_CS_LV_B),
	.COMP_DAC_CS_LV_B(COMP_DAC_CS_LV_B),
	// internal signals
	.SPI_RTN(spi_rtn),
   .CDAC_ENB(cdac_enb),
   .CALDAC_ENB(caldac_enb),
   .CALADC_ENB(caladc_enb),
	.SPI_CK(spi_ck),
	.SPI_DAT(spi_dat)
);



/////////////////////////////////////////////////////////////////////////////
//                                                                         //
//  System Monitor Core                                                    //
//                                                                         //
/////////////////////////////////////////////////////////////////////////////
  
  
  wire sys_mon_rst;
  wire vccaux_alarm,vccint_alarm,user_temp_alarm,ot;
  
  sysmon SYS_MON(
      .DCLK_IN(clk40),
      .RESET_IN(sys_mon_rst),
      .VAUXP0(DV4P_3_CUR_P), 
      .VAUXN0(DV4P_3_CUR_N),
      .VAUXP1(DV3P_2_CUR_P),
      .VAUXN1(DV3P_2_CUR_N),
      .VAUXP2(DV3P_25_CUR_P),
      .VAUXN2(DV3P_25_CUR_N),
      .VAUXP3(V3PDCOMP_MONP),
      .VAUXN3(V3PDCOMP_MONN),
      .VAUXP4(AV54P_3_CUR_P),
      .VAUXN4(AV54P_3_CUR_N),
      .VAUXP5(AV54P_5_CUR_P),
      .VAUXN5(AV54P_5_CUR_N),
      .VAUXP6(V3PIO_MONP),
      .VAUXN6(V3PIO_MONN),
      .VAUXP8(V25IO_MONP),
      .VAUXN8(V25IO_MONN),
      .VAUXP9(V5PACOMP_MONP),
      .VAUXN9(V5PACOMP_MONN),
      .VAUXP10(V5PAMP_MONP),
      .VAUXN10(V5PAMP_MONN),
      .VAUXP11(V18PDADC_MONP),
      .VAUXN11(V18PDADC_MONN),
      .VAUXP13(V33PAADC_MONP),
      .VAUXN13(V33PAADC_MONN),
      .VAUXP14(V5PPA_MONP),
      .VAUXN14(V5PPA_MONN),
      .VAUXP15(V5PSUB_MONP),
      .VAUXN15(V5PSUB_MONN),
 
      .VCCAUX_ALARM_OUT(vccaux_alarm),
      .VCCINT_ALARM_OUT(vccint_alarm),
      .USER_TEMP_ALARM_OUT(user_temp_alarm),
      .OT_OUT(ot),
      .VP_IN(1'b0),
      .VN_IN(1'b0)
      );

 /////////////////////////////////////////////////////////////////////////////
 //                                                                         //
 //  Power on startup proceedure for resets                                 //
 //  and control signals for the QPLL                                       //
 //                                                                         //
 /////////////////////////////////////////////////////////////////////////////
  
	wire por_adc_init, jtag_adc_init, csp_adc_init;
//	wire adc_init;
//	wire adc_init_done;
	wire por;
	wire [2:0] por_state;
	wire jtag_sys_rst;
	wire csp_sys_rst;
	wire cmp_clk_phs_chng;
	
	assign adc_init = por_adc_init | jtag_adc_init | csp_adc_init;

	reset_manager rsm1(
		.STUP_CLK(strtup_clk),
		.CLK(clk40),
		.COMP_CLK(comp_clk),
		.CLK100KHZ(clk100khz),
		.EOS(eos),
		.JTAG_SYS_RST(jtag_sys_rst),
		.CSP_SYS_RST(csp_sys_rst),
		.DAQ_MMCM_LOCK(daq_mmcm_lock),
		.TRG_MMCM_LOCK(trg_mmcm_lock),
		.CMP_CLK_PHS_CHNG(cmp_clk_phs_chng),
		.TRG_SYNC_DONE(tx_sync_done),
		.QP_ERROR(QP_ERROR),
		.QP_LOCKED(QP_LOCKED),
		.ADC_INIT_DONE(adc_init_done),
		
		.ADC_INIT(por_adc_init),
		.QP_RST_B(QP_RST_B),
		.TRG_GTXTXRESET(trg_gtxtxreset),
		.MMCM_RST(mmcm_rst),
		.SYS_MON_RST(sys_mon_rst),
		.ADC_RST(adc_rst),
		.TRG_RST(comp_rst),
		.DSR_RST(dsr_rst),
		.SYS_RST(sys_rst),
		.POR(por),
		.QPLL_LOCK(qpll_lock),
		.QPLL_ERROR(qpll_error),
		.POR_STATE(por_state)
	);
  
  
 
 /////////////////////////////////////////////////////////////////////////////
 //                                                                         //
 //  JTAG Accessible User Registers                                         //
 //                                                                         //
 /////////////////////////////////////////////////////////////////////////////
 
	wire [1:0] xl1dlyset;
	wire [3:0] loadpblk;
	wire [25:0] adc_mem;
	wire [11:0] adc_mask;
	wire adc_we;
	wire jc_adc_cnfg;
	


	jtag_access #(
	.USE_CHIPSCOPE(USE_SEM_CHIPSCOPE)
	)
	jtag_acc1(
		.CSP_LA0_CNTRL(sem_la0_c0),
		.CSP_VIO0_CNTRL(sem_vio_in0_c1),
		
      .CLK20(clk20),      // 20 MHz Clock
      .CLK40(clk40),      // 40 MHz Clock
      .CLK120(clk120),    // 120 MHz Clock
      .FSTCLK(clk160),    // 160 MHz Clock
      .RST(sys_rst),      // Reset default state
		.BKY_RTN(bky_rtn),  // Serial data returned from amplifiers
		.DCFEB_STATUS(dcfeb_status),    // Status word
		.ADCDATA(doutfifo), // Data out of pipeline
		.BPI_RBK_FIFO(bpi_rbk_fifo), // Data read back from BPI PROM
		.BPI_STATUS(bpi_status),     // STATUS word for BPI interface
		.BPI_TIMER(bpi_timer),     // stop watch timer for BPI commands
		
		.JTAG_SYS_RST(jtag_sys_rst), // Issue the equivalent of power on reset without reprogramming.
		.RDFIFO(rdfifo),            // Advance fifo to next word
		.JTAG_RD_MODE(jtag_rd_mode),// JTAG read out mode for FIFO1 
		.CRC_ERROR(crc_error),        // CRC error detected in configuration memory (two or more bit errors in one Frame)
      .XL1DLYSET(xl1dlyset),      // Extra L1A delay setting [1:0]
      .LOADPBLK(loadpblk),        // Pre-blockend bits [3:0] not used in DCFEB
		.COMP_MODE(comp_mode),      // comparator mode bits [1:0]
		.COMP_TIME(comp_time),      // comparator timing bits [2:0]
		.CDAC_ENB(cdac_enb),        // Comparator DAC enable
		.CALDAC_ENB(caldac_enb),    // Calibration DAC enable
		.CALADC_ENB(caladc_enb),    // Calibration ADC enable
		.SPI_CK(spi_ck),            // Calibration DAC clock
		.SPI_DAT(spi_dat),          // Calibration DAC data
		.CAL_MODE(cal_mode),        // Calibration mode (0: external pulsing, 1: internal pulsing)
		.SPI_RTN(spi_rtn),          // Retrun data from SPI devices
		.TO_BKY(to_bky),            // Serial data sent to amplifiers
		.BKY_CLK(bky_clk),          // Shift clock for amplifiers
		.ADC_WE(adc_we),            // Write enable for ADC configuration memory
		.ADC_MEM(adc_mem),          // Data word for ADC configuration memory
		.ADC_MASK(adc_mask),        // Mask for ADCs to configure
		.ADC_INIT(jtag_adc_init),   // ADC initialization signal
      .JC_ADC_CNFG(jc_adc_cnfg),  // JTAG Controll of ADC configuration memory
      .RSTRT_PIPE(jrstrt_pipe),    // Restart pipeline on JTAG command
      .PDEPTH(pdepth),            // Pipeline Depth register (9 bits)
      .TTC_SRC(ttc_src),          // TTC source register (2 bits)
		.BPI_WRT_FIFO(bpi_wrt_fifo),// Data word for ADC configuration memory
		.BPI_WE(bpi_jwe),           // Write enable for BPI Write FIFO
		.BPI_RDENA(bpi_jre),        // Read enable for BPI Readback FIFO
		.BPI_RESET(bpi_jrst),       // Reset signal for BPI interface (does not reset the PROM)
		.BPI_DISABLE(BPI_disable),  // Disable BPI processing
		.BPI_ENABLE(BPI_enable),    // Enable BPI processing
		.SAMP_MAX(samp_max),        // Number of samples to readout minus 1
		.CMP_CLK_PHASE(cmp_clk_phase), // Comparator Clock Phase (0-15)
		.SAMP_CLK_PHASE(samp_clk_phase), // Sampling Clock Phase (0-7)
		.CMP_CLK_PHS_CHNG(cmp_clk_phs_chng), // Comp Clock Phase Change in progress; Reset TMB path transceiver.
		.SAMP_CLK_PHS_CHNG(samp_clk_phs_chng), // Sampling Clock Phase Change in progress; Reset deserializers.
		.TMB_TX_MODE(tmb_tx_mode),   // TMB transmit mode (3-bits, 0: comparator data, 1: fixed patterns, 2: counters, 3: randoms, 5: half strips).
		.LAY1_TO_6_HALF_STRIP(lay1_to_6_half_strip), //half strips to inject into data stream for each layer
		.LAYER_MASK(layer_mask),     //layer mask to indicate which layers are active.
		.JDAQ_RATE(jdaq_rate),        //DAQ Rate selection: 0 = 1GbE (1.25Gbps line rate), 1 = 2.56GbE (3.2Gbps line rate).
		.USE_ANY_L1A(juse_any_l1a),   //L1A_MATCH source: 0 = L1A_MATCH = skw_rw_l1a_match, 1 = L1A_MATCH = skw_rw_l1a.
		.L1A_HEAD(jl1a_head)         //L1A_HEAD flag: 0 -> l1anum is NOT used as header in data stream, 1 -> l1anum IS used as header in data stream.
   );
		
 /////////////////////////////////////////////////////////////////////////////
 //                                                                         //
 //  ADC configuration and initialization                                   //
 //                                                                         //
 /////////////////////////////////////////////////////////////////////////////
	 wire [1:0] memsel;
	 wire [23:0] mem_out;
	 wire [4:0] addr;
	 wire [4:0] wra;

	 wire [3:0] csp_we;
	 wire [23:0] csp_wr_data;
	 wire [23:0] csp_rd_data;
	 wire [4:0] csp_wr_addr;
	 wire [4:0] csp_rd_addr;
	 wire [1:0] csp_msel;
	 wire csp_rd_ctrl;
	 
   adc_config
	adc_config1 (
		.CLK(clk20),         // 20 MHz Clock
		.RST(adc_rst),       // Reset
		.INIT(adc_init),     // Command to initialize the ADC's (on power up or on command)
	   .JCTRL(jc_adc_cnfg), // Selects JWE and JDATA as source for writing memory
		.JWE(adc_we),        // Write enable for the memory (from JTAG)
		.JDATA(adc_mem),     // Parallel data to be written to memory from JTAG
	   .CSP_WE(csp_we), // Write enables from chip scope pro control
	   .CSP_WR_DATA(csp_wr_data), // Data to be written to memory from chip scope pro
	   .CSP_WR_ADDR(csp_wr_addr), // Address to write to memory from chip scope pro
	   .CSP_RD_CTRL(csp_rd_ctrl),       // Selects CSP_RD_ADDR as source of address
	   .CSP_RD_DATA(csp_rd_data), // Data read from memory going to chip scope pro
	   .CSP_RD_ADDR(csp_rd_addr), // Address to read memory from chip scope pro
	   .CSP_MSEL(csp_msel), // memory select from chip scope pro
		.MASK(adc_mask),     // Mask for which ADC to talk to
		.CS(adc_cs),         // Chip selects for all 12 ADC's
		.SCLK(adc_sclk),     // Serial clock to ADC's
		.SDATA(adc_sdata),   // Serial data to ADC's
		.DONE(adc_init_done),  // Done signal when initialization is complete
		.la_msel(memsel),
		.la_mem_out(mem_out),
		.la_rd_addr(addr),
		.la_wr_addr(wra)
	);
	
generate
if(USE_DAQ_CHIPSCOPE==1 || USE_DESER_CHIPSCOPE==1)
begin

/////////////////////////////////////////////////////////////////////////////
//                                                                         //
//  Chip Scope Pro Virtual I/O module                                      //
//                                                                         //
/////////////////////////////////////////////////////////////////////////////
	wire [17:0] spare;
	wire [1:0] spr2;
	wire spr1;
	
adc_mem_vio vio0_adc_mem (
    .CONTROL(adc_mem_vio_c0), // INOUT BUS [35:0]
    .CLK(clk20),
    .SYNC_IN(csp_rd_data), // IN BUS [23:0]
    .SYNC_OUT({spare,csp_sys_rst,spr2,csp_adc_init,spr1,csp_rd_ctrl,csp_msel,csp_we,csp_wr_data,csp_wr_addr,csp_rd_addr}) // OUT BUS [63:0]
);

/////////////////////////////////////////////////////////////////////////////
//                                                                         //
//  Chip Scope Pro Logic Analyzer module                                   //
//                                                                         //
/////////////////////////////////////////////////////////////////////////////
   wire la_trg_out;


adc_cnfg_mem_la la_adc_cnfg_mem (
    .CONTROL(adc_cnfg_mem_la_c1),
    .CLK(clk20),
    .DATA({10'h000,adc_mem,memsel,mem_out,addr,wra,jc_adc_cnfg,adc_init_done,adc_rst,adc_init,1'b0,adc_we,csp_we,adc_cs,adc_sclk,adc_sdata}), // IN BUS [95:0]
    .TRIG0({1'b0,adc_init_done,adc_rst,adc_init,jc_adc_cnfg,adc_we,csp_we,adc_cs,adc_sclk,adc_sdata}), // IN BUS [23:0]
    .TRIG_OUT(la_trg_out)
);

end
else
begin
	assign spare = 18'h00000;
	assign spr2 = 2'b00;
	assign spr1 = 1'b0;
//	assign csp_sys_rst = 1'b0;
	assign csp_sys_rst = csp_dsr_sys_rst;
	assign csp_adc_init = 1'b0;
	assign csp_rd_ctrl = 1'b0;
	assign csp_msel = 2'b00;
	assign csp_we = 4'h0;
	assign csp_wr_data = 24'h000000;
	assign csp_wr_addr = 5'h00;
	assign csp_rd_addr = 5'h00;
end
endgenerate

/////////////////////////////////////////////////////////////////////////////
//                                                                         //
//  Instantiate module for managing test points                            //
//                                                                         //
/////////////////////////////////////////////////////////////////////////////

	test_points
	tp_io1 (
		.CLK(clk40),
		.DAQ_DATA_CLK(daq_data_clk),
		.CMS80(cms80),
		.COMP_CLK(comp_clk),
		.COMP_CLK80(comp_clk80),
		.COMP_CLK160(comp_clk160),
		.CLK1MHZ(clk1mhz),
		.CLK100KHZ(clk100khz),
		.CLK20(clk20),
		.ADC_CLK(adc_clk),
		.TMR(tmr),
		.TRG_TX_PLL_LOCK(trg_tx_pll_lock),
		.TRG_GTXTXRESET(trg_gtxtxreset),
		.TRG_TXRESETDONE(trg_txresetdone),
		.TRG_SYNCDONE(tx_sync_done),
		.TRG_MMCM_LOCK(trg_mmcm_lock),
		.COMP_RST(comp_rst),
		.TRG_RST(trg_rst),
		.LCT(lct),
		.CMP_CLK_PHS_CHNG(cmp_clk_phs_chng),
		.EOS(eos),
		.POR(por),
		.POR_STATE(por_state),
		.DSR_ALGND(dsr_aligned),
		.DSR_RST(dsr_rst),
		//
		.DSR_RESYNC(dsr_resync),
		.RESYNC(resync),
		.SYS_RST(sys_rst),
		.ADC_INIT(adc_init),
		.L1A(l1a),
		.L1A_MATCH(l1a_match),
		.L1A_PUSH_SKW(l1a_push_skw),
		.L1A_PUSH_MAC(l1a_push_mac),
		.ALG_GD(alg_gd),
		//
		.SEL_CON_B(SEL_CON_B),
		.SEL_SKW_B(SEL_SKW_B),
		.TP_B24_(TP_B24_),
		.TP_B25_(TP_B25_),
		.TP_B26_(TP_B26_),
		.TP_B35_(TP_B35_) // bits 9 and 10 are skipped.
	);
  
	
endmodule
