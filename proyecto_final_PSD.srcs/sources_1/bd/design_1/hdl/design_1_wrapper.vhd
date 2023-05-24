--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
--Date        : Thu Oct 27 17:51:56 2022
--Host        : DESKTOP-L5GM2MG running 64-bit major release  (build 9200)
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    M_AXIS_DATA_0_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXIS_DATA_0_tlast : out STD_LOGIC;
    M_AXIS_DATA_0_tready : in STD_LOGIC;
    M_AXIS_DATA_0_tvalid : out STD_LOGIC;
    S_AXIS_CONFIG_0_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXIS_CONFIG_0_tready : out STD_LOGIC;
    S_AXIS_CONFIG_0_tvalid : in STD_LOGIC;
    S_AXIS_DATA_0_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXIS_DATA_0_tlast : in STD_LOGIC;
    S_AXIS_DATA_0_tready : out STD_LOGIC;
    S_AXIS_DATA_0_tvalid : in STD_LOGIC;
    s_axis_aclk_0 : in STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    S_AXIS_CONFIG_0_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXIS_CONFIG_0_tready : out STD_LOGIC;
    S_AXIS_CONFIG_0_tvalid : in STD_LOGIC;
    S_AXIS_DATA_0_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXIS_DATA_0_tlast : in STD_LOGIC;
    S_AXIS_DATA_0_tready : out STD_LOGIC;
    S_AXIS_DATA_0_tvalid : in STD_LOGIC;
    s_axis_aclk_0 : in STD_LOGIC;
    M_AXIS_DATA_0_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXIS_DATA_0_tlast : out STD_LOGIC;
    M_AXIS_DATA_0_tready : in STD_LOGIC;
    M_AXIS_DATA_0_tvalid : out STD_LOGIC
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      M_AXIS_DATA_0_tdata(31 downto 0) => M_AXIS_DATA_0_tdata(31 downto 0),
      M_AXIS_DATA_0_tlast => M_AXIS_DATA_0_tlast,
      M_AXIS_DATA_0_tready => M_AXIS_DATA_0_tready,
      M_AXIS_DATA_0_tvalid => M_AXIS_DATA_0_tvalid,
      S_AXIS_CONFIG_0_tdata(7 downto 0) => S_AXIS_CONFIG_0_tdata(7 downto 0),
      S_AXIS_CONFIG_0_tready => S_AXIS_CONFIG_0_tready,
      S_AXIS_CONFIG_0_tvalid => S_AXIS_CONFIG_0_tvalid,
      S_AXIS_DATA_0_tdata(31 downto 0) => S_AXIS_DATA_0_tdata(31 downto 0),
      S_AXIS_DATA_0_tlast => S_AXIS_DATA_0_tlast,
      S_AXIS_DATA_0_tready => S_AXIS_DATA_0_tready,
      S_AXIS_DATA_0_tvalid => S_AXIS_DATA_0_tvalid,
      s_axis_aclk_0 => s_axis_aclk_0
    );
end STRUCTURE;
