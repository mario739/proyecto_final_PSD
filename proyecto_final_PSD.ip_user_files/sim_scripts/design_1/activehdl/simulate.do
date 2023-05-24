onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+design_1 -L xbip_utils_v3_0_9 -L axi_utils_v2_0_5 -L c_reg_fd_v12_0_5 -L xbip_dsp48_wrapper_v3_0_4 -L xbip_pipe_v3_0_5 -L xbip_dsp48_addsub_v3_0_5 -L xbip_addsub_v3_0_5 -L c_addsub_v12_0_12 -L c_mux_bit_v12_0_5 -L c_shift_ram_v12_0_12 -L xbip_bram18k_v3_0_5 -L mult_gen_v12_0_14 -L cmpy_v6_0_15 -L floating_point_v7_0_15 -L xfft_v9_1_0 -L xil_defaultlib -L secureip -O5 xil_defaultlib.design_1

do {wave.do}

view wave
view structure

do {design_1.udo}

run -all

endsim

quit -force