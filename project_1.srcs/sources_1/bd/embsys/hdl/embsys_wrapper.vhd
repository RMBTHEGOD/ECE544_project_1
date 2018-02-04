--Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2017.3 (win64) Build 2018833 Wed Oct  4 19:58:22 MDT 2017
--Date        : Tue Jan 30 10:58:25 2018
--Host        : LAPTOP-C1T6PIG6 running 64-bit major release  (build 9200)
--Command     : generate_target embsys_wrapper.bd
--Design      : embsys_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity embsys_wrapper is
  port (
    PmodOLEDrgb_out_0_pin10_io : inout STD_LOGIC;
    PmodOLEDrgb_out_0_pin1_io : inout STD_LOGIC;
    PmodOLEDrgb_out_0_pin2_io : inout STD_LOGIC;
    PmodOLEDrgb_out_0_pin3_io : inout STD_LOGIC;
    PmodOLEDrgb_out_0_pin4_io : inout STD_LOGIC;
    PmodOLEDrgb_out_0_pin7_io : inout STD_LOGIC;
    PmodOLEDrgb_out_0_pin8_io : inout STD_LOGIC;
    PmodOLEDrgb_out_0_pin9_io : inout STD_LOGIC;
    RGB1_Blue_0 : out STD_LOGIC;
    RGB1_Green_0 : out STD_LOGIC;
    RGB1_Red_0 : out STD_LOGIC;
    RGB2_Blue_0 : out STD_LOGIC;
    RGB2_Green_0 : out STD_LOGIC;
    RGB2_Red_0 : out STD_LOGIC;
    an_0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    btnC_0 : in STD_LOGIC;
    btnD_0 : in STD_LOGIC;
    btnL_0 : in STD_LOGIC;
    btnR_0 : in STD_LOGIC;
    btnU_0 : in STD_LOGIC;
    colour_clock : out STD_LOGIC;
    dp_0 : out STD_LOGIC;
    gpio_0_GPIO2_tri_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gpio_0_GPIO_tri_i : in STD_LOGIC_VECTOR ( 7 downto 0 );
    gpio_0_blue_high_tri_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio_0_blue_low_tri_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio_0_green_high_tri_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio_0_green_low_tri_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio_0_red_high_tri_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio_0_red_low_tri_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    led_0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    pmodENC_A_0 : in STD_LOGIC;
    pmodENC_B_0 : in STD_LOGIC;
    pmodENC_btn_0 : in STD_LOGIC;
    pmodENC_sw_0 : in STD_LOGIC;
    seg_0 : out STD_LOGIC_VECTOR ( 6 downto 0 );
    sw_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sysclk : in STD_LOGIC;
    sysreset_n : in STD_LOGIC;
    uart_rtl_0_rxd : in STD_LOGIC;
    uart_rtl_0_txd : out STD_LOGIC
  );
end embsys_wrapper;

architecture STRUCTURE of embsys_wrapper is
  component embsys is
  port (
    gpio_0_GPIO_tri_i : in STD_LOGIC_VECTOR ( 7 downto 0 );
    uart_rtl_0_rxd : in STD_LOGIC;
    uart_rtl_0_txd : out STD_LOGIC;
    PmodOLEDrgb_out_0_pin1_o : out STD_LOGIC;
    PmodOLEDrgb_out_0_pin7_i : in STD_LOGIC;
    PmodOLEDrgb_out_0_pin2_o : out STD_LOGIC;
    PmodOLEDrgb_out_0_pin8_i : in STD_LOGIC;
    PmodOLEDrgb_out_0_pin3_o : out STD_LOGIC;
    PmodOLEDrgb_out_0_pin9_i : in STD_LOGIC;
    PmodOLEDrgb_out_0_pin10_o : out STD_LOGIC;
    PmodOLEDrgb_out_0_pin4_o : out STD_LOGIC;
    PmodOLEDrgb_out_0_pin3_i : in STD_LOGIC;
    PmodOLEDrgb_out_0_pin4_i : in STD_LOGIC;
    PmodOLEDrgb_out_0_pin1_i : in STD_LOGIC;
    PmodOLEDrgb_out_0_pin2_i : in STD_LOGIC;
    PmodOLEDrgb_out_0_pin10_t : out STD_LOGIC;
    PmodOLEDrgb_out_0_pin8_t : out STD_LOGIC;
    PmodOLEDrgb_out_0_pin9_t : out STD_LOGIC;
    PmodOLEDrgb_out_0_pin4_t : out STD_LOGIC;
    PmodOLEDrgb_out_0_pin9_o : out STD_LOGIC;
    PmodOLEDrgb_out_0_pin10_i : in STD_LOGIC;
    PmodOLEDrgb_out_0_pin7_t : out STD_LOGIC;
    PmodOLEDrgb_out_0_pin1_t : out STD_LOGIC;
    PmodOLEDrgb_out_0_pin2_t : out STD_LOGIC;
    PmodOLEDrgb_out_0_pin7_o : out STD_LOGIC;
    PmodOLEDrgb_out_0_pin3_t : out STD_LOGIC;
    PmodOLEDrgb_out_0_pin8_o : out STD_LOGIC;
    gpio_0_GPIO2_tri_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gpio_0_red_high_tri_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio_0_red_low_tri_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio_0_blue_high_tri_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio_0_blue_low_tri_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio_0_green_high_tri_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio_0_green_low_tri_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    sysclk : in STD_LOGIC;
    sysreset_n : in STD_LOGIC;
    btnU_0 : in STD_LOGIC;
    btnD_0 : in STD_LOGIC;
    btnC_0 : in STD_LOGIC;
    btnL_0 : in STD_LOGIC;
    btnR_0 : in STD_LOGIC;
    sw_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    led_0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    RGB1_Red_0 : out STD_LOGIC;
    RGB1_Green_0 : out STD_LOGIC;
    RGB1_Blue_0 : out STD_LOGIC;
    RGB2_Red_0 : out STD_LOGIC;
    RGB2_Green_0 : out STD_LOGIC;
    RGB2_Blue_0 : out STD_LOGIC;
    seg_0 : out STD_LOGIC_VECTOR ( 6 downto 0 );
    dp_0 : out STD_LOGIC;
    an_0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    pmodENC_sw_0 : in STD_LOGIC;
    pmodENC_btn_0 : in STD_LOGIC;
    pmodENC_B_0 : in STD_LOGIC;
    pmodENC_A_0 : in STD_LOGIC;
    colour_clock : out STD_LOGIC
  );
  end component embsys;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal PmodOLEDrgb_out_0_pin10_i : STD_LOGIC;
  signal PmodOLEDrgb_out_0_pin10_o : STD_LOGIC;
  signal PmodOLEDrgb_out_0_pin10_t : STD_LOGIC;
  signal PmodOLEDrgb_out_0_pin1_i : STD_LOGIC;
  signal PmodOLEDrgb_out_0_pin1_o : STD_LOGIC;
  signal PmodOLEDrgb_out_0_pin1_t : STD_LOGIC;
  signal PmodOLEDrgb_out_0_pin2_i : STD_LOGIC;
  signal PmodOLEDrgb_out_0_pin2_o : STD_LOGIC;
  signal PmodOLEDrgb_out_0_pin2_t : STD_LOGIC;
  signal PmodOLEDrgb_out_0_pin3_i : STD_LOGIC;
  signal PmodOLEDrgb_out_0_pin3_o : STD_LOGIC;
  signal PmodOLEDrgb_out_0_pin3_t : STD_LOGIC;
  signal PmodOLEDrgb_out_0_pin4_i : STD_LOGIC;
  signal PmodOLEDrgb_out_0_pin4_o : STD_LOGIC;
  signal PmodOLEDrgb_out_0_pin4_t : STD_LOGIC;
  signal PmodOLEDrgb_out_0_pin7_i : STD_LOGIC;
  signal PmodOLEDrgb_out_0_pin7_o : STD_LOGIC;
  signal PmodOLEDrgb_out_0_pin7_t : STD_LOGIC;
  signal PmodOLEDrgb_out_0_pin8_i : STD_LOGIC;
  signal PmodOLEDrgb_out_0_pin8_o : STD_LOGIC;
  signal PmodOLEDrgb_out_0_pin8_t : STD_LOGIC;
  signal PmodOLEDrgb_out_0_pin9_i : STD_LOGIC;
  signal PmodOLEDrgb_out_0_pin9_o : STD_LOGIC;
  signal PmodOLEDrgb_out_0_pin9_t : STD_LOGIC;
begin
PmodOLEDrgb_out_0_pin10_iobuf: component IOBUF
     port map (
      I => PmodOLEDrgb_out_0_pin10_o,
      IO => PmodOLEDrgb_out_0_pin10_io,
      O => PmodOLEDrgb_out_0_pin10_i,
      T => PmodOLEDrgb_out_0_pin10_t
    );
PmodOLEDrgb_out_0_pin1_iobuf: component IOBUF
     port map (
      I => PmodOLEDrgb_out_0_pin1_o,
      IO => PmodOLEDrgb_out_0_pin1_io,
      O => PmodOLEDrgb_out_0_pin1_i,
      T => PmodOLEDrgb_out_0_pin1_t
    );
PmodOLEDrgb_out_0_pin2_iobuf: component IOBUF
     port map (
      I => PmodOLEDrgb_out_0_pin2_o,
      IO => PmodOLEDrgb_out_0_pin2_io,
      O => PmodOLEDrgb_out_0_pin2_i,
      T => PmodOLEDrgb_out_0_pin2_t
    );
PmodOLEDrgb_out_0_pin3_iobuf: component IOBUF
     port map (
      I => PmodOLEDrgb_out_0_pin3_o,
      IO => PmodOLEDrgb_out_0_pin3_io,
      O => PmodOLEDrgb_out_0_pin3_i,
      T => PmodOLEDrgb_out_0_pin3_t
    );
PmodOLEDrgb_out_0_pin4_iobuf: component IOBUF
     port map (
      I => PmodOLEDrgb_out_0_pin4_o,
      IO => PmodOLEDrgb_out_0_pin4_io,
      O => PmodOLEDrgb_out_0_pin4_i,
      T => PmodOLEDrgb_out_0_pin4_t
    );
PmodOLEDrgb_out_0_pin7_iobuf: component IOBUF
     port map (
      I => PmodOLEDrgb_out_0_pin7_o,
      IO => PmodOLEDrgb_out_0_pin7_io,
      O => PmodOLEDrgb_out_0_pin7_i,
      T => PmodOLEDrgb_out_0_pin7_t
    );
PmodOLEDrgb_out_0_pin8_iobuf: component IOBUF
     port map (
      I => PmodOLEDrgb_out_0_pin8_o,
      IO => PmodOLEDrgb_out_0_pin8_io,
      O => PmodOLEDrgb_out_0_pin8_i,
      T => PmodOLEDrgb_out_0_pin8_t
    );
PmodOLEDrgb_out_0_pin9_iobuf: component IOBUF
     port map (
      I => PmodOLEDrgb_out_0_pin9_o,
      IO => PmodOLEDrgb_out_0_pin9_io,
      O => PmodOLEDrgb_out_0_pin9_i,
      T => PmodOLEDrgb_out_0_pin9_t
    );
embsys_i: component embsys
     port map (
      PmodOLEDrgb_out_0_pin10_i => PmodOLEDrgb_out_0_pin10_i,
      PmodOLEDrgb_out_0_pin10_o => PmodOLEDrgb_out_0_pin10_o,
      PmodOLEDrgb_out_0_pin10_t => PmodOLEDrgb_out_0_pin10_t,
      PmodOLEDrgb_out_0_pin1_i => PmodOLEDrgb_out_0_pin1_i,
      PmodOLEDrgb_out_0_pin1_o => PmodOLEDrgb_out_0_pin1_o,
      PmodOLEDrgb_out_0_pin1_t => PmodOLEDrgb_out_0_pin1_t,
      PmodOLEDrgb_out_0_pin2_i => PmodOLEDrgb_out_0_pin2_i,
      PmodOLEDrgb_out_0_pin2_o => PmodOLEDrgb_out_0_pin2_o,
      PmodOLEDrgb_out_0_pin2_t => PmodOLEDrgb_out_0_pin2_t,
      PmodOLEDrgb_out_0_pin3_i => PmodOLEDrgb_out_0_pin3_i,
      PmodOLEDrgb_out_0_pin3_o => PmodOLEDrgb_out_0_pin3_o,
      PmodOLEDrgb_out_0_pin3_t => PmodOLEDrgb_out_0_pin3_t,
      PmodOLEDrgb_out_0_pin4_i => PmodOLEDrgb_out_0_pin4_i,
      PmodOLEDrgb_out_0_pin4_o => PmodOLEDrgb_out_0_pin4_o,
      PmodOLEDrgb_out_0_pin4_t => PmodOLEDrgb_out_0_pin4_t,
      PmodOLEDrgb_out_0_pin7_i => PmodOLEDrgb_out_0_pin7_i,
      PmodOLEDrgb_out_0_pin7_o => PmodOLEDrgb_out_0_pin7_o,
      PmodOLEDrgb_out_0_pin7_t => PmodOLEDrgb_out_0_pin7_t,
      PmodOLEDrgb_out_0_pin8_i => PmodOLEDrgb_out_0_pin8_i,
      PmodOLEDrgb_out_0_pin8_o => PmodOLEDrgb_out_0_pin8_o,
      PmodOLEDrgb_out_0_pin8_t => PmodOLEDrgb_out_0_pin8_t,
      PmodOLEDrgb_out_0_pin9_i => PmodOLEDrgb_out_0_pin9_i,
      PmodOLEDrgb_out_0_pin9_o => PmodOLEDrgb_out_0_pin9_o,
      PmodOLEDrgb_out_0_pin9_t => PmodOLEDrgb_out_0_pin9_t,
      RGB1_Blue_0 => RGB1_Blue_0,
      RGB1_Green_0 => RGB1_Green_0,
      RGB1_Red_0 => RGB1_Red_0,
      RGB2_Blue_0 => RGB2_Blue_0,
      RGB2_Green_0 => RGB2_Green_0,
      RGB2_Red_0 => RGB2_Red_0,
      an_0(7 downto 0) => an_0(7 downto 0),
      btnC_0 => btnC_0,
      btnD_0 => btnD_0,
      btnL_0 => btnL_0,
      btnR_0 => btnR_0,
      btnU_0 => btnU_0,
      colour_clock => colour_clock,
      dp_0 => dp_0,
      gpio_0_GPIO2_tri_o(7 downto 0) => gpio_0_GPIO2_tri_o(7 downto 0),
      gpio_0_GPIO_tri_i(7 downto 0) => gpio_0_GPIO_tri_i(7 downto 0),
      gpio_0_blue_high_tri_i(31 downto 0) => gpio_0_blue_high_tri_i(31 downto 0),
      gpio_0_blue_low_tri_i(31 downto 0) => gpio_0_blue_low_tri_i(31 downto 0),
      gpio_0_green_high_tri_i(31 downto 0) => gpio_0_green_high_tri_i(31 downto 0),
      gpio_0_green_low_tri_i(31 downto 0) => gpio_0_green_low_tri_i(31 downto 0),
      gpio_0_red_high_tri_i(31 downto 0) => gpio_0_red_high_tri_i(31 downto 0),
      gpio_0_red_low_tri_i(31 downto 0) => gpio_0_red_low_tri_i(31 downto 0),
      led_0(15 downto 0) => led_0(15 downto 0),
      pmodENC_A_0 => pmodENC_A_0,
      pmodENC_B_0 => pmodENC_B_0,
      pmodENC_btn_0 => pmodENC_btn_0,
      pmodENC_sw_0 => pmodENC_sw_0,
      seg_0(6 downto 0) => seg_0(6 downto 0),
      sw_0(15 downto 0) => sw_0(15 downto 0),
      sysclk => sysclk,
      sysreset_n => sysreset_n,
      uart_rtl_0_rxd => uart_rtl_0_rxd,
      uart_rtl_0_txd => uart_rtl_0_txd
    );
end STRUCTURE;
