------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 1.8
--  \   \         Application : Virtex-6 FPGA GTX Transceiver Wizard
--  /   /         Filename : double_reset.vhd
-- /___/   /\     
-- \   \  /  \ 
--  \___\/\___\
--
--
-- Module DOUBLE_RESET
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

entity DOUBLE_RESET is
port
(
	CLK                :   in    std_logic;
	PLLLKDET           :   in    std_logic;
	GTXTEST_DONE       :   out   std_logic;
	GTXTEST_BIT1       :   out   std_logic
);

end DOUBLE_RESET;

architecture RTL of DOUBLE_RESET is
--***********************************Parameter Declarations********************
    constant DLY : time := 1 ns;

--*******************************Register Declarations************************
    signal 	plllkdet_sync	:   std_logic;
    signal 	plllkdet_r	:   std_logic;
    signal 	reset_dly_ctr	:   unsigned(10 downto 0);
    signal      reset_dly_done	:   std_logic;
    signal      testdone_f      :   std_logic_vector(3 downto 0);

begin
--*******************************Main Body of Code****************************

    process(CLK )
    begin
        if(CLK'event and CLK = '1') then
           plllkdet_r    <= PLLLKDET   	after DLY;
           plllkdet_sync <= plllkdet_r 	after DLY;
        end if;
    end process;

    GTXTEST_BIT1 <= reset_dly_done; 
    GTXTEST_DONE <= testdone_f(0) when (reset_dly_ctr = b"00000000000") else '0';

    process(CLK )
    begin
        if(CLK'event and CLK = '1') then
          if (plllkdet_sync = '0') then
            reset_dly_ctr 	<= b"11111111111"     after DLY;
          elsif (reset_dly_ctr /= b"00000000000") then
            reset_dly_ctr 	<= reset_dly_ctr - 1	after DLY;
          end if;
        end if;
    end process;

    process(CLK )
    begin
        if(CLK'event and CLK = '1') then
          if (plllkdet_sync = '0') then
             reset_dly_done 	<= '0'   	after DLY;
          elsif (reset_dly_ctr(10) = '0') then
             reset_dly_done 	<= reset_dly_ctr(8)   after DLY;
          end if;
        end if;
    end process;

    process(CLK )
    begin
        if(CLK'event and CLK = '1') then
          if(reset_dly_ctr /= b"00000000000") then
             testdone_f 	<= b"1111" after DLY;
          else
             testdone_f 	<= '0' & testdone_f(3 downto 1) after DLY;      
          end if;
        end if;
    end process;
    

end RTL;
