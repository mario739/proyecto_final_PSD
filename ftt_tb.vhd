library ieee;
USE IEEE.std_logic_1164.all;
-----------------------------------------

entity fft_tb is

end entity;


architecture fft_tb_ar of fft_tb is

    signal clk,reset : std_logic;
    constant C_CLK_PERIOD : real := 10.0e-9; 
    constant DATA_IN_WIDTH : integer := 16; 

    signal data_config:std_logic_vector(16 downto 0):="111111111111111";


    signal M_AXIS_DATA_0_tdata : STD_LOGIC_VECTOR ( DATA_IN_WIDTH-1 downto 0 );
    signal M_AXIS_DATA_0_tlast : STD_LOGIC;
    signal M_AXIS_DATA_0_tready :='1';
    signal M_AXIS_DATA_0_tvalid :STD_LOGIC;
    signal S_AXIS_CONFIG_0_tdata :STD_LOGIC_VECTOR ( 16 downto 0 );
    signal S_AXIS_CONFIG_0_tready :STD_LOGIC;
    signal S_AXIS_CONFIG_0_tvalid :STD_LOGIC;
    signal S_AXIS_DATA_0_tdata :STD_LOGIC_VECTOR ( DATA_IN_WIDTH-1 downto 0 );
    signal S_AXIS_DATA_0_tlast :STD_LOGIC;
    signal S_AXIS_DATA_0_tready :STD_LOGIC;
    signal S_AXIS_DATA_0_tvalid :STD_LOGIC;
    signal s_axis_aclk_0 :STD_LOGIC;


    signal s_axis_tdata_tb     : std_logic_vector(DATA_IN_WIDTH-1 downto 0);
    signal s_axis_tvalid_tb    : std_logic;
    signal s_axis_tready_tb    : std_logic;
    signal m_axis_tdata_tb     : std_logic_vector((2*DATA_IN_WIDTH)-1 downto 0);
    signal m_axis_tvalid_tb    : std_logic;
    signal m_axis_tready_tb    : std_logic;
    
    
    type t_mem is array(0 to 7) of std_logic_vector(7 downto 0);
    signal t_mem : mem :=(0=>"11111111",
                          1=>"11111111",
                          2=>"11111111",
                          3=>"11111111",
                          4=>"11111111",
                          5=>"11111111",
                          6=>"11111111",
                          7=>"11111111");

begin
    CLK_GEN : process
    begin
        clk <= '1';
        wait for C_CLK_PERIOD / 2.0 * (1 SEC);
        clk <= '0';
        wait for C_CLK_PERIOD / 2.0 * (1 SEC);
    end process CLK_GEN;

    RESET_GEN : process
    begin
        reset <= '0',
                 '1' after 20.0*C_CLK_PERIOD * (1 SEC);
        wait;
    end process RESET_GEN;

process(clk,reset)



begin
--PROCESO PARA ESTABLECER LA CONFIGURACION
process(clk,reset)
    if (rising_edge(clk)) then
        if (S_AXIS_CONFIG_0_tready= '1') then
            S_AXIS_CONFIG_0_tdata<=data_config;
            S_AXIS_CONFIG_0_tvalid<=1;
        end if ;
    end if ;
end process;

DUT: entity work.design_1_wrapper
        port map(
        M_AXIS_DATA_0_tdata => M_AXIS_DATA_0_tdata;
        M_AXIS_DATA_0_tlast => M_AXIS_DATA_0_tlast;
        M_AXIS_DATA_0_tready => M_AXIS_DATA_0_tready;
        M_AXIS_DATA_0_tvalid => M_AXIS_DATA_0_tvalid;
        S_AXIS_CONFIG_0_tdata => S_AXIS_CONFIG_0_tdata
        S_AXIS_CONFIG_0_tready => S_AXIS_CONFIG_0_tready
        S_AXIS_CONFIG_0_tvalid => S_AXIS_CONFIG_0_tvalid
        S_AXIS_DATA_0_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
        S_AXIS_DATA_0_tlast : in STD_LOGIC;
        S_AXIS_DATA_0_tready : out STD_LOGIC;
        S_AXIS_DATA_0_tvalid : in STD_LOGIC;
        s_axis_aclk_0 : clk
        );

end fft_tb_ar;


