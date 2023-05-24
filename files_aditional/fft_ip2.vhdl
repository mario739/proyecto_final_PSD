----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/9/2022 11:29:28 AM
-- Design Name: 
-- Module Name: fft_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;
use ieee.std_logic_textio.all;

entity fft_tb is

end fft_tb;

architecture Behavioral of fft_tb is
    
    constant in_file    : string  := "E:\Ejercicios_PSD\fft\files\fft_data_in.tx"; 
    constant out_file   : string  := "E:\Ejercicios_PSD\fft\files\fft_data_out.txt"; 
    constant DATA_IN_WIDTH : integer := 32;
    constant CONFIG_DATA_IN_WIDTH : integer := 16; 

    signal clk : std_logic;
    
    constant C_CLK_PERIOD : real := 4.0e-9;
    
    file r_fptr, w_fptr : text;

    signal s_axis_tdata_tb     : std_logic_vector(DATA_IN_WIDTH-1 downto 0);
    signal s_axis_tvalid_tb    : std_logic;
    signal s_axis_tready_tb    : std_logic;
    signal s_axis_tlast_tb    : std_logic:='0';
    
    signal m_axis_tdata_tb     : std_logic_vector(DATA_IN_WIDTH-1 downto 0);
    signal m_axis_tvalid_tb    : std_logic;
    signal m_axis_tready_tb    : std_logic;
    signal m_axis_tlast_tb    : std_logic;
    
    signal s_axis_config_tdata_tb    : std_logic_vector(7 downto 0);
    signal s_axis_config_tvalid_tb    : std_logic;
    signal s_axis_config_tready_tb    : std_logic;
    
begin
    clk_gen : process
    begin
        clk <= '1';
        wait for C_CLK_PERIOD / 2.0 * (1 SEC);
        clk <= '0';
        wait for C_CLK_PERIOD / 2.0 * (1 SEC);
    end process clk_gen;
    
    p_read_file : process is
        variable fstatus    : file_open_status;
        variable file_line  : line;
        variable slv_v      : std_logic_vector(DATA_IN_WIDTH-1 downto 0);
    begin
        s_axis_tdata_tb <= (others => '0');
        s_axis_tvalid_tb <= '0';
        file_open(fstatus, r_fptr, in_file, read_mode);
        
        loop_all: while true loop
            wait until (s_axis_tready_tb = '1');
            loop_file : while s_axis_tready_tb = '1' and not endfile(r_fptr) loop
                readline(r_fptr, file_line);
                read(file_line, slv_v);            
                s_axis_tdata_tb  <= slv_v;
                s_axis_tvalid_tb <= '1';                
                wait until (clk'event and clk = '1');                       
            end loop ;
            s_axis_tvalid_tb <= '0';
        end loop;           
        s_axis_tdata_tb <= (others => '0');
        s_axis_tvalid_tb <= '0';      
        file_close(r_fptr);
        wait;
    end process;
    
    p_write_file : process is
        variable fstatus    : file_open_status;
        variable file_line  : line;
        variable v_std_lv   : std_logic_vector(DATA_IN_WIDTH-1 downto 0);
    begin
        m_axis_tready_tb <= '1';
        file_open(fstatus, w_fptr, out_file, write_mode);
        
        loop_all: while true loop
            wait until (m_axis_tvalid_tb = '1');
                
            loop_file : while m_axis_tvalid_tb = '1' loop
                m_axis_tready_tb <= '1';
                v_std_lv := m_axis_tdata_tb;
                write(file_line, v_std_lv);
                writeline(w_fptr, file_line);            
                wait until (clk'event and clk = '1');                       
            end loop;
        end loop;
        m_axis_tready_tb <= '0';
        file_close(w_fptr);
        wait;
    end process;
    
    p_config : process is
    begin
        s_axis_config_tdata_tb  <= "00000001";
        s_axis_config_tvalid_tb <= '1';
        wait;
    end process;
    
    DUT : entity work.design_1_wrapper
    port map (
        s_axis_aclk_0 => clk,
        S_AXIS_DATA_0_tdata => s_axis_tdata_tb,
        S_AXIS_DATA_0_tlast => s_axis_tlast_tb,
        S_AXIS_DATA_0_tready => s_axis_tready_tb,
        S_AXIS_DATA_0_tvalid => s_axis_tvalid_tb,
        S_AXIS_CONFIG_0_tdata => s_axis_config_tdata_tb,
        S_AXIS_CONFIG_0_tready => s_axis_config_tready_tb,
        S_AXIS_CONFIG_0_tvalid => s_axis_config_tvalid_tb,
        M_AXIS_DATA_0_tdata => m_axis_tdata_tb,
        M_AXIS_DATA_0_tlast => m_axis_tlast_tb,
        M_AXIS_DATA_0_tready => m_axis_tready_tb,
        M_AXIS_DATA_0_tvalid => m_axis_tvalid_tb
    );    

end Behavioral;
