-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.3 (win64) Build 2018833 Wed Oct  4 19:58:22 MDT 2017
-- Date        : Mon Jan 15 16:55:14 2018
-- Host        : CAPLAB03 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top embsys_fit_timer_0_0 -prefix
--               embsys_fit_timer_0_0_ embsys_fit_timer_0_0_stub.vhdl
-- Design      : embsys_fit_timer_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity embsys_fit_timer_0_0 is
  Port ( 
    Clk : in STD_LOGIC;
    Rst : in STD_LOGIC;
    Interrupt : out STD_LOGIC
  );

end embsys_fit_timer_0_0;

architecture stub of embsys_fit_timer_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "Clk,Rst,Interrupt";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "fit_timer,Vivado 2017.3";
begin
end;
