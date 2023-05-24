--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
--Date        : Thu Oct 27 17:51:56 2022
--Host        : DESKTOP-L5GM2MG running 64-bit major release  (build 9200)
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
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
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_xfft_0_1 is
  port (
    aclk : in STD_LOGIC;
    s_axis_config_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_config_tvalid : in STD_LOGIC;
    s_axis_config_tready : out STD_LOGIC;
    s_axis_data_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_data_tvalid : in STD_LOGIC;
    s_axis_data_tready : out STD_LOGIC;
    s_axis_data_tlast : in STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tready : in STD_LOGIC;
    m_axis_data_tlast : out STD_LOGIC;
    event_frame_started : out STD_LOGIC;
    event_tlast_unexpected : out STD_LOGIC;
    event_tlast_missing : out STD_LOGIC;
    event_status_channel_halt : out STD_LOGIC;
    event_data_in_channel_halt : out STD_LOGIC;
    event_data_out_channel_halt : out STD_LOGIC
  );
  end component design_1_xfft_0_1;
  signal S_AXIS_CONFIG_0_1_TDATA : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal S_AXIS_CONFIG_0_1_TREADY : STD_LOGIC;
  signal S_AXIS_CONFIG_0_1_TVALID : STD_LOGIC;
  signal S_AXIS_DATA_0_1_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXIS_DATA_0_1_TLAST : STD_LOGIC;
  signal S_AXIS_DATA_0_1_TREADY : STD_LOGIC;
  signal S_AXIS_DATA_0_1_TVALID : STD_LOGIC;
  signal fft_M_AXIS_DATA_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal fft_M_AXIS_DATA_TLAST : STD_LOGIC;
  signal fft_M_AXIS_DATA_TREADY : STD_LOGIC;
  signal fft_M_AXIS_DATA_TVALID : STD_LOGIC;
  signal s_axis_aclk_0_1 : STD_LOGIC;
  signal NLW_fft_event_data_in_channel_halt_UNCONNECTED : STD_LOGIC;
  signal NLW_fft_event_data_out_channel_halt_UNCONNECTED : STD_LOGIC;
  signal NLW_fft_event_frame_started_UNCONNECTED : STD_LOGIC;
  signal NLW_fft_event_status_channel_halt_UNCONNECTED : STD_LOGIC;
  signal NLW_fft_event_tlast_missing_UNCONNECTED : STD_LOGIC;
  signal NLW_fft_event_tlast_unexpected_UNCONNECTED : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of M_AXIS_DATA_0_tlast : signal is "xilinx.com:interface:axis:1.0 M_AXIS_DATA_0 TLAST";
  attribute X_INTERFACE_INFO of M_AXIS_DATA_0_tready : signal is "xilinx.com:interface:axis:1.0 M_AXIS_DATA_0 TREADY";
  attribute X_INTERFACE_INFO of M_AXIS_DATA_0_tvalid : signal is "xilinx.com:interface:axis:1.0 M_AXIS_DATA_0 TVALID";
  attribute X_INTERFACE_INFO of S_AXIS_CONFIG_0_tready : signal is "xilinx.com:interface:axis:1.0 S_AXIS_CONFIG_0 TREADY";
  attribute X_INTERFACE_INFO of S_AXIS_CONFIG_0_tvalid : signal is "xilinx.com:interface:axis:1.0 S_AXIS_CONFIG_0 TVALID";
  attribute X_INTERFACE_INFO of S_AXIS_DATA_0_tlast : signal is "xilinx.com:interface:axis:1.0 S_AXIS_DATA_0 TLAST";
  attribute X_INTERFACE_INFO of S_AXIS_DATA_0_tready : signal is "xilinx.com:interface:axis:1.0 S_AXIS_DATA_0 TREADY";
  attribute X_INTERFACE_INFO of S_AXIS_DATA_0_tvalid : signal is "xilinx.com:interface:axis:1.0 S_AXIS_DATA_0 TVALID";
  attribute X_INTERFACE_INFO of s_axis_aclk_0 : signal is "xilinx.com:signal:clock:1.0 CLK.S_AXIS_ACLK_0 CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of s_axis_aclk_0 : signal is "XIL_INTERFACENAME CLK.S_AXIS_ACLK_0, ASSOCIATED_BUSIF M01_AXIS_0:M_AXIS_DATA_0:S_AXIS_CONFIG_1:S_AXIS_0:S_AXIS_CONFIG_0:M_AXIS_0:S_AXIS_DATA_0:M01_AXIS_1:M_AXIS_DATA_1, ASSOCIATED_RESET s_axis_aresetn_0:ARESETN_0, CLK_DOMAIN design_1_s_axis_aclk_0, FREQ_HZ 100000000, PHASE 0.000";
  attribute X_INTERFACE_INFO of M_AXIS_DATA_0_tdata : signal is "xilinx.com:interface:axis:1.0 M_AXIS_DATA_0 TDATA";
  attribute X_INTERFACE_PARAMETER of M_AXIS_DATA_0_tdata : signal is "XIL_INTERFACENAME M_AXIS_DATA_0, CLK_DOMAIN design_1_s_axis_aclk_0, FREQ_HZ 100000000, HAS_TKEEP 0, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 2048} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value chan} size {attribs {resolve_type generated dependency chan_size format long minimum {} maximum {}} value 1} stride {attribs {resolve_type generated dependency chan_stride format long minimum {} maximum {}} value 32} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 2048} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_xn_re {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value xn_re} enabled {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 2032} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} size {attribs {resolve_type generated dependency frame_size format long minimum {} maximum {}} value 64} stride {attribs {resolve_type generated dependency frame_stride format long minimum {} maximum {}} value 32} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency xn_width format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type generated dependency xn_fractwidth format long minimum {} maximum {}} value 15} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}} field_xn_im {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value xn_im} enabled {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 2032} bitoffset {attribs {resolve_type generated dependency xn_im_offset format long minimum {} maximum {}} value 16} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} size {attribs {resolve_type generated dependency frame_size format long minimum {} maximum {}} value 64} stride {attribs {resolve_type generated dependency frame_stride format long minimum {} maximum {}} value 32} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency xn_width format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type generated dependency xn_fractwidth format long minimum {} maximum {}} value 15} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}}}}}}} TDATA_WIDTH 32 TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_xk_index {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value xk_index} enabled {attribs {resolve_type generated dependency xk_index_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency xk_index_width format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} field_blk_exp {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value blk_exp} enabled {attribs {resolve_type generated dependency blk_exp_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type generated dependency blk_exp_offset format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} size {attribs {resolve_type generated dependency chan_size format long minimum {} maximum {}} value 1} stride {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}} field_ovflo {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value ovflo} enabled {attribs {resolve_type generated dependency ovflo_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type generated dependency ovflo_offset format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} size {attribs {resolve_type generated dependency chan_size format long minimum {} maximum {}} value 1} stride {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}}}} TUSER_WIDTH 0}, PHASE 0.000, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of S_AXIS_CONFIG_0_tdata : signal is "xilinx.com:interface:axis:1.0 S_AXIS_CONFIG_0 TDATA";
  attribute X_INTERFACE_PARAMETER of S_AXIS_CONFIG_0_tdata : signal is "XIL_INTERFACENAME S_AXIS_CONFIG_0, CLK_DOMAIN design_1_s_axis_aclk_0, FREQ_HZ 100000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of S_AXIS_DATA_0_tdata : signal is "xilinx.com:interface:axis:1.0 S_AXIS_DATA_0 TDATA";
  attribute X_INTERFACE_PARAMETER of S_AXIS_DATA_0_tdata : signal is "XIL_INTERFACENAME S_AXIS_DATA_0, CLK_DOMAIN design_1_s_axis_aclk_0, FREQ_HZ 100000000, HAS_TKEEP 0, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0";
begin
  M_AXIS_DATA_0_tdata(31 downto 0) <= fft_M_AXIS_DATA_TDATA(31 downto 0);
  M_AXIS_DATA_0_tlast <= fft_M_AXIS_DATA_TLAST;
  M_AXIS_DATA_0_tvalid <= fft_M_AXIS_DATA_TVALID;
  S_AXIS_CONFIG_0_1_TDATA(7 downto 0) <= S_AXIS_CONFIG_0_tdata(7 downto 0);
  S_AXIS_CONFIG_0_1_TVALID <= S_AXIS_CONFIG_0_tvalid;
  S_AXIS_CONFIG_0_tready <= S_AXIS_CONFIG_0_1_TREADY;
  S_AXIS_DATA_0_1_TDATA(31 downto 0) <= S_AXIS_DATA_0_tdata(31 downto 0);
  S_AXIS_DATA_0_1_TLAST <= S_AXIS_DATA_0_tlast;
  S_AXIS_DATA_0_1_TVALID <= S_AXIS_DATA_0_tvalid;
  S_AXIS_DATA_0_tready <= S_AXIS_DATA_0_1_TREADY;
  fft_M_AXIS_DATA_TREADY <= M_AXIS_DATA_0_tready;
  s_axis_aclk_0_1 <= s_axis_aclk_0;
fft: component design_1_xfft_0_1
     port map (
      aclk => s_axis_aclk_0_1,
      event_data_in_channel_halt => NLW_fft_event_data_in_channel_halt_UNCONNECTED,
      event_data_out_channel_halt => NLW_fft_event_data_out_channel_halt_UNCONNECTED,
      event_frame_started => NLW_fft_event_frame_started_UNCONNECTED,
      event_status_channel_halt => NLW_fft_event_status_channel_halt_UNCONNECTED,
      event_tlast_missing => NLW_fft_event_tlast_missing_UNCONNECTED,
      event_tlast_unexpected => NLW_fft_event_tlast_unexpected_UNCONNECTED,
      m_axis_data_tdata(31 downto 0) => fft_M_AXIS_DATA_TDATA(31 downto 0),
      m_axis_data_tlast => fft_M_AXIS_DATA_TLAST,
      m_axis_data_tready => fft_M_AXIS_DATA_TREADY,
      m_axis_data_tvalid => fft_M_AXIS_DATA_TVALID,
      s_axis_config_tdata(7 downto 0) => S_AXIS_CONFIG_0_1_TDATA(7 downto 0),
      s_axis_config_tready => S_AXIS_CONFIG_0_1_TREADY,
      s_axis_config_tvalid => S_AXIS_CONFIG_0_1_TVALID,
      s_axis_data_tdata(31 downto 0) => S_AXIS_DATA_0_1_TDATA(31 downto 0),
      s_axis_data_tlast => S_AXIS_DATA_0_1_TLAST,
      s_axis_data_tready => S_AXIS_DATA_0_1_TREADY,
      s_axis_data_tvalid => S_AXIS_DATA_0_1_TVALID
    );
end STRUCTURE;
