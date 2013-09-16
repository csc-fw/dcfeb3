-------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version : 1.8
--  \   \         Application : Virtex-6 FPGA GTX Transceiver Wizard
--  /   /         Filename : trg_tx_buf_bypass.vhd
-- /___/   /\     
-- \   \  /  \ 
--  \___\/\___\
--
--
-- Module TRG_TX_BUF_BYPASS (a GTX Wrapper)
-- Generated by Xilinx Virtex-6 FPGA GTX Transceiver Wizard
-- 
-- 
-- (c) Copyright 2009-2010 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES. 


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;


--***************************** Entity Declaration ****************************

entity TRG_TX_BUF_BYPASS is
generic
(
    -- Simulation attributes
    WRAPPER_SIM_GTXRESET_SPEEDUP    : integer   := 0 -- Set to 1 to speed up sim reset
);
port
(
    
    --_________________________________________________________________________
    --_________________________________________________________________________
    --GTX0  (X0Y13)
    
    ------- Receive Ports - RX Driver,OOB signalling,Coupling and Eq.,CDR ------
    GTX0_RXN_IN                             : in   std_logic;
    GTX0_RXP_IN                             : in   std_logic;
    ---------------- Transmit Ports - 8b10b Encoder Control Ports --------------
    GTX0_TXCHARISK_IN                       : in   std_logic_vector(3 downto 0);
    ------------------ Transmit Ports - TX Data Path interface -----------------
    GTX0_TXDATA_IN                          : in   std_logic_vector(31 downto 0);
    GTX0_TXOUTCLK_OUT                       : out  std_logic;
    GTX0_TXUSRCLK_IN                        : in   std_logic;
    GTX0_TXUSRCLK2_IN                       : in   std_logic;
    ---------------- Transmit Ports - TX Driver and OOB signaling --------------
    GTX0_TXN_OUT                            : out  std_logic;
    GTX0_TXP_OUT                            : out  std_logic;
    -------- Transmit Ports - TX Elastic Buffer and Phase Alignment Ports ------
    GTX0_TXDLYALIGNDISABLE_IN               : in   std_logic;
    GTX0_TXDLYALIGNMONENB_IN                : in   std_logic;
    GTX0_TXDLYALIGNMONITOR_OUT              : out  std_logic_vector(7 downto 0);
    GTX0_TXDLYALIGNRESET_IN                 : in   std_logic;
    GTX0_TXENPMAPHASEALIGN_IN               : in   std_logic;
    GTX0_TXPMASETPHASE_IN                   : in   std_logic;
    ----------------------- Transmit Ports - TX PLL Ports ----------------------
    GTX0_GTXTXRESET_IN                      : in   std_logic;
    GTX0_MGTREFCLKTX_IN                     : in   std_logic;
    GTX0_PLLTXRESET_IN                      : in   std_logic;
    GTX0_TXPLLLKDET_OUT                     : out  std_logic;
    GTX0_TXRESETDONE_OUT                    : out  std_logic

    
);


end TRG_TX_BUF_BYPASS;
    
architecture RTL of TRG_TX_BUF_BYPASS is

    attribute CORE_GENERATION_INFO : string;
    attribute CORE_GENERATION_INFO of RTL : architecture is "TRG_TX_BUF_BYPASS,v6_gtxwizard_v1_8,{protocol_file=Start_from_scratch}";

--***************************** Signal Declarations *****************************

    -- ground and tied_to_vcc_i signals
    signal  tied_to_ground_i                :   std_logic;
    signal  tied_to_ground_vec_i            :   std_logic_vector(63 downto 0);
    signal  tied_to_vcc_i                   :   std_logic;


  
    signal  gtx0_mgtrefclktx_i           :   std_logic_vector(1 downto 0);
    signal  gtx0_mgtrefclkrx_i           :   std_logic_vector(1 downto 0);
   
--*************************** Component Declarations **************************
component TRG_TX_BUF_BYPASS_GTX
generic
(
    -- Simulation attributes
    GTX_SIM_GTXRESET_SPEEDUP    : integer    := 0;
    
    -- Share RX PLL parameter
    GTX_TX_CLK_SOURCE           : string     := "TXPLL";
    -- Save power parameter
    GTX_POWER_SAVE              : bit_vector := "0000000000"
);
port 
(   
    ------- Receive Ports - RX Driver,OOB signalling,Coupling and Eq.,CDR ------
    RXN_IN                                  : in   std_logic;
    RXP_IN                                  : in   std_logic;
    ---------------- Transmit Ports - 8b10b Encoder Control Ports --------------
    TXCHARISK_IN                            : in   std_logic_vector(3 downto 0);
    ------------------ Transmit Ports - TX Data Path interface -----------------
    TXDATA_IN                               : in   std_logic_vector(31 downto 0);
    TXOUTCLK_OUT                            : out  std_logic;
    TXUSRCLK_IN                             : in   std_logic;
    TXUSRCLK2_IN                            : in   std_logic;
    ---------------- Transmit Ports - TX Driver and OOB signaling --------------
    TXN_OUT                                 : out  std_logic;
    TXP_OUT                                 : out  std_logic;
    -------- Transmit Ports - TX Elastic Buffer and Phase Alignment Ports ------
    TXDLYALIGNDISABLE_IN                    : in   std_logic;
    TXDLYALIGNMONENB_IN                     : in   std_logic;
    TXDLYALIGNMONITOR_OUT                   : out  std_logic_vector(7 downto 0);
    TXDLYALIGNRESET_IN                      : in   std_logic;
    TXENPMAPHASEALIGN_IN                    : in   std_logic;
    TXPMASETPHASE_IN                        : in   std_logic;
    ----------------------- Transmit Ports - TX PLL Ports ----------------------
    GTXTXRESET_IN                           : in   std_logic;
    MGTREFCLKTX_IN                          : in   std_logic_vector(1 downto 0);
    PLLTXRESET_IN                           : in   std_logic;
    TXPLLLKDET_OUT                          : out  std_logic;
    TXRESETDONE_OUT                         : out  std_logic


);
end component;


--********************************* Main Body of Code**************************

begin                       

    tied_to_ground_i                    <= '0';
    tied_to_ground_vec_i(63 downto 0)   <= (others => '0');
    tied_to_vcc_i                       <= '1';
                     

   
    gtx0_mgtrefclktx_i <= (tied_to_ground_i & GTX0_MGTREFCLKTX_IN);

 
    --------------------------- GTX Instances  -------------------------------   


    --_________________________________________________________________________
    --_________________________________________________________________________
    --GTX0  (X0Y13)

    gtx0_trg_tx_buf_bypass_i : TRG_TX_BUF_BYPASS_GTX
    generic map
    (
        -- Simulation attributes
        GTX_SIM_GTXRESET_SPEEDUP    => WRAPPER_SIM_GTXRESET_SPEEDUP,
        
        -- Share RX PLL parameter
        GTX_TX_CLK_SOURCE           => "TXPLL",
        -- Save power parameter
        GTX_POWER_SAVE              => "0000100000"
    )
    port map
    (
        ------- Receive Ports - RX Driver,OOB signalling,Coupling and Eq.,CDR ------
        RXN_IN                          =>      GTX0_RXN_IN,
        RXP_IN                          =>      GTX0_RXP_IN,
        ---------------- Transmit Ports - 8b10b Encoder Control Ports --------------
        TXCHARISK_IN                    =>      GTX0_TXCHARISK_IN,
        ------------------ Transmit Ports - TX Data Path interface -----------------
        TXDATA_IN                       =>      GTX0_TXDATA_IN,
        TXOUTCLK_OUT                    =>      GTX0_TXOUTCLK_OUT,
        TXUSRCLK_IN                     =>      GTX0_TXUSRCLK_IN,
        TXUSRCLK2_IN                    =>      GTX0_TXUSRCLK2_IN,
        ---------------- Transmit Ports - TX Driver and OOB signaling --------------
        TXN_OUT                         =>      GTX0_TXN_OUT,
        TXP_OUT                         =>      GTX0_TXP_OUT,
        -------- Transmit Ports - TX Elastic Buffer and Phase Alignment Ports ------
        TXDLYALIGNDISABLE_IN            =>      GTX0_TXDLYALIGNDISABLE_IN,
        TXDLYALIGNMONENB_IN             =>      GTX0_TXDLYALIGNMONENB_IN,
        TXDLYALIGNMONITOR_OUT           =>      GTX0_TXDLYALIGNMONITOR_OUT,
        TXDLYALIGNRESET_IN              =>      GTX0_TXDLYALIGNRESET_IN,
        TXENPMAPHASEALIGN_IN            =>      GTX0_TXENPMAPHASEALIGN_IN,
        TXPMASETPHASE_IN                =>      GTX0_TXPMASETPHASE_IN,
        ----------------------- Transmit Ports - TX PLL Ports ----------------------
        GTXTXRESET_IN                   =>      GTX0_GTXTXRESET_IN,
        MGTREFCLKTX_IN                  =>      gtx0_mgtrefclktx_i,
        PLLTXRESET_IN                   =>      GTX0_PLLTXRESET_IN,
        TXPLLLKDET_OUT                  =>      GTX0_TXPLLLKDET_OUT,
        TXRESETDONE_OUT                 =>      GTX0_TXRESETDONE_OUT

    );

  
  
    

     
end RTL;
