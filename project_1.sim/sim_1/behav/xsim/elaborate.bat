@echo off
REM ****************************************************************************
REM Vivado (TM) v2017.3 (64-bit)
REM
REM Filename    : elaborate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for elaborating the compiled design
REM
REM Generated by Vivado on Wed Jan 31 13:51:39 -0800 2018
REM SW Build 2018833 on Wed Oct  4 19:58:22 MDT 2017
REM
REM Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
REM
REM usage: elaborate.bat
REM
REM ****************************************************************************
call xelab  -wto 4ad9ee19e500462ca185dc7ea3ce4020 --incr --debug typical --relax --mt 2 -L microblaze_v10_0_4 -L xil_defaultlib -L dist_mem_gen_v8_0_12 -L lib_pkg_v1_0_2 -L lib_cdc_v1_0_2 -L lib_srl_fifo_v1_0_2 -L fifo_generator_v13_2_0 -L lib_fifo_v1_0_9 -L axi_lite_ipif_v3_0_4 -L interrupt_control_v3_1_4 -L axi_quad_spi_v3_2_13 -L axi_gpio_v2_0_16 -L axi_timer_v2_0_16 -L fit_timer_v2_0_8 -L axi_uartlite_v2_0_18 -L axi_intc_v4_1_10 -L xlconcat_v2_1_1 -L mdm_v3_2_11 -L proc_sys_reset_v5_0_12 -L generic_baseblocks_v2_1_0 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_14 -L axi_data_fifo_v2_1_13 -L axi_crossbar_v2_1_15 -L lmb_v10_v3_0_9 -L lmb_bram_if_cntlr_v4_0_13 -L blk_mem_gen_v8_4_0 -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot n4fpga_behav xil_defaultlib.n4fpga xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0