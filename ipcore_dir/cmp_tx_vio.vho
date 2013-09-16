-------------------------------------------------------------------------------
-- Copyright (c) 2011 Xilinx, Inc.
-- All Rights Reserved
-------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor     : Xilinx
-- \   \   \/     Version    : 1.0
--  \   \         Application: Xilinx CORE Generator
--  /   /         Filename   : cmp_tx_vio.vho
-- /___/   /\     Timestamp  : Tue Aug 23 10:54:26 Eastern Daylight Time 2011
-- \   \  /  \
--  \___\/\___\
--
-- Design Name: ISE Instantiation template
-------------------------------------------------------------------------------
-- The following code must appear in the VHDL architecture header:

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
component cmp_tx_vio
  PORT (
    CONTROL : INOUT STD_LOGIC_VECTOR(35 DOWNTO 0);
    CLK : IN STD_LOGIC;
    ASYNC_IN : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    ASYNC_OUT : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    SYNC_OUT : OUT STD_LOGIC_VECTOR(3 DOWNTO 0));

end component;

-- Synplicity black box declaration
attribute syn_black_box : boolean;
attribute syn_black_box of cmp_tx_vio: component is true;

-- COMP_TAG_END ------ End COMPONENT Declaration ------------
-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.
------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG

your_instance_name : cmp_tx_vio
  port map (
    CONTROL => CONTROL,
    CLK => CLK,
    ASYNC_IN => ASYNC_IN,
    ASYNC_OUT => ASYNC_OUT,
    SYNC_OUT => SYNC_OUT);

-- INST_TAG_END ------ End INSTANTIATION Template ------------
