vlib work
vlib riviera

vlib riviera/xbip_utils_v3_0_9
vlib riviera/axi_utils_v2_0_5
vlib riviera/c_reg_fd_v12_0_5
vlib riviera/xbip_dsp48_wrapper_v3_0_4
vlib riviera/xbip_pipe_v3_0_5
vlib riviera/xbip_dsp48_addsub_v3_0_5
vlib riviera/xbip_addsub_v3_0_5
vlib riviera/c_addsub_v12_0_12
vlib riviera/c_mux_bit_v12_0_5
vlib riviera/c_shift_ram_v12_0_12
vlib riviera/xbip_bram18k_v3_0_5
vlib riviera/mult_gen_v12_0_14
vlib riviera/cmpy_v6_0_15
vlib riviera/floating_point_v7_0_15
vlib riviera/xfft_v9_1_0
vlib riviera/xil_defaultlib

vmap xbip_utils_v3_0_9 riviera/xbip_utils_v3_0_9
vmap axi_utils_v2_0_5 riviera/axi_utils_v2_0_5
vmap c_reg_fd_v12_0_5 riviera/c_reg_fd_v12_0_5
vmap xbip_dsp48_wrapper_v3_0_4 riviera/xbip_dsp48_wrapper_v3_0_4
vmap xbip_pipe_v3_0_5 riviera/xbip_pipe_v3_0_5
vmap xbip_dsp48_addsub_v3_0_5 riviera/xbip_dsp48_addsub_v3_0_5
vmap xbip_addsub_v3_0_5 riviera/xbip_addsub_v3_0_5
vmap c_addsub_v12_0_12 riviera/c_addsub_v12_0_12
vmap c_mux_bit_v12_0_5 riviera/c_mux_bit_v12_0_5
vmap c_shift_ram_v12_0_12 riviera/c_shift_ram_v12_0_12
vmap xbip_bram18k_v3_0_5 riviera/xbip_bram18k_v3_0_5
vmap mult_gen_v12_0_14 riviera/mult_gen_v12_0_14
vmap cmpy_v6_0_15 riviera/cmpy_v6_0_15
vmap floating_point_v7_0_15 riviera/floating_point_v7_0_15
vmap xfft_v9_1_0 riviera/xfft_v9_1_0
vmap xil_defaultlib riviera/xil_defaultlib

vcom -work xbip_utils_v3_0_9 -93 \
"../../../../proyecto_final_PSD.srcs/sources_1/bd/design_1/ipshared/a5f8/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_5 -93 \
"../../../../proyecto_final_PSD.srcs/sources_1/bd/design_1/ipshared/ec8e/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work c_reg_fd_v12_0_5 -93 \
"../../../../proyecto_final_PSD.srcs/sources_1/bd/design_1/ipshared/cbdd/hdl/c_reg_fd_v12_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -93 \
"../../../../proyecto_final_PSD.srcs/sources_1/bd/design_1/ipshared/da55/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_5 -93 \
"../../../../proyecto_final_PSD.srcs/sources_1/bd/design_1/ipshared/442e/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_5 -93 \
"../../../../proyecto_final_PSD.srcs/sources_1/bd/design_1/ipshared/ad9e/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_addsub_v3_0_5 -93 \
"../../../../proyecto_final_PSD.srcs/sources_1/bd/design_1/ipshared/0e42/hdl/xbip_addsub_v3_0_vh_rfs.vhd" \

vcom -work c_addsub_v12_0_12 -93 \
"../../../../proyecto_final_PSD.srcs/sources_1/bd/design_1/ipshared/7f1a/hdl/c_addsub_v12_0_vh_rfs.vhd" \

vcom -work c_mux_bit_v12_0_5 -93 \
"../../../../proyecto_final_PSD.srcs/sources_1/bd/design_1/ipshared/512a/hdl/c_mux_bit_v12_0_vh_rfs.vhd" \

vcom -work c_shift_ram_v12_0_12 -93 \
"../../../../proyecto_final_PSD.srcs/sources_1/bd/design_1/ipshared/a9d0/hdl/c_shift_ram_v12_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_5 -93 \
"../../../../proyecto_final_PSD.srcs/sources_1/bd/design_1/ipshared/c08f/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_14 -93 \
"../../../../proyecto_final_PSD.srcs/sources_1/bd/design_1/ipshared/6bb5/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work cmpy_v6_0_15 -93 \
"../../../../proyecto_final_PSD.srcs/sources_1/bd/design_1/ipshared/0df9/hdl/cmpy_v6_0_vh_rfs.vhd" \

vcom -work floating_point_v7_0_15 -93 \
"../../../../proyecto_final_PSD.srcs/sources_1/bd/design_1/ipshared/a054/hdl/floating_point_v7_0_vh_rfs.vhd" \

vcom -work xfft_v9_1_0 -93 \
"../../../../proyecto_final_PSD.srcs/sources_1/bd/design_1/ipshared/1ac3/hdl/xfft_v9_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_xfft_0_1/sim/design_1_xfft_0_1.vhd" \
"../../../bd/design_1/sim/design_1.vhd" \

