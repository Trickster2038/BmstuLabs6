--------------------------------------------------------------------------------
-- Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: K.31
--  \   \         Application: netgen
--  /   /         Filename: main_translate.vhd
-- /___/   /\     Timestamp: Wed Apr 20 15:46:55 2022
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -rpw 100 -tpw 0 -ar Structure -tm main -w -dir netgen/translate -ofmt vhdl -sim main.ngd main_translate.vhd 
-- Device	: 3s200ft256-5
-- Input file	: main.ngd
-- Output file	: C:\Users\user\Desktop\Astakhov evm2\lab2\netgen\translate\main_translate.vhd
-- # of Entities	: 1
-- Design Name	: main
-- Xilinx	: C:\Xilinx\10.1\ISE
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Development System Reference Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity main is
  port (
    CLK : in STD_LOGIC := 'X'; 
    RESET : in STD_LOGIC := 'X'; 
    COUNT : in STD_LOGIC := 'X'; 
    A : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    LED : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end main;

architecture Structure of main is
  signal CLK_BUFGP : STD_LOGIC; 
  signal CNT_RISE : STD_LOGIC; 
  signal CNT_ff_10 : STD_LOGIC; 
  signal CNT_int : STD_LOGIC; 
  signal COUNTER_OVF : STD_LOGIC; 
  signal COUNTER_or0000 : STD_LOGIC; 
  signal COUNT_IBUF_62 : STD_LOGIC; 
  signal Mcount_COUNTER_cy_10_rt_93 : STD_LOGIC; 
  signal Mcount_COUNTER_cy_11_rt_95 : STD_LOGIC; 
  signal Mcount_COUNTER_cy_12_rt_97 : STD_LOGIC; 
  signal Mcount_COUNTER_cy_13_rt_99 : STD_LOGIC; 
  signal Mcount_COUNTER_cy_14_rt_101 : STD_LOGIC; 
  signal Mcount_COUNTER_cy_15_rt_103 : STD_LOGIC; 
  signal Mcount_COUNTER_cy_16_rt_105 : STD_LOGIC; 
  signal Mcount_COUNTER_cy_17_rt_107 : STD_LOGIC; 
  signal Mcount_COUNTER_cy_18_rt_109 : STD_LOGIC; 
  signal Mcount_COUNTER_cy_19_rt_111 : STD_LOGIC; 
  signal Mcount_COUNTER_cy_1_rt_113 : STD_LOGIC; 
  signal Mcount_COUNTER_cy_20_rt_115 : STD_LOGIC; 
  signal Mcount_COUNTER_cy_21_rt_117 : STD_LOGIC; 
  signal Mcount_COUNTER_cy_22_rt_119 : STD_LOGIC; 
  signal Mcount_COUNTER_cy_23_rt_121 : STD_LOGIC; 
  signal Mcount_COUNTER_cy_24_rt_123 : STD_LOGIC; 
  signal Mcount_COUNTER_cy_25_rt_125 : STD_LOGIC; 
  signal Mcount_COUNTER_cy_26_rt_127 : STD_LOGIC; 
  signal Mcount_COUNTER_cy_27_rt_129 : STD_LOGIC; 
  signal Mcount_COUNTER_cy_28_rt_131 : STD_LOGIC; 
  signal Mcount_COUNTER_cy_29_rt_133 : STD_LOGIC; 
  signal Mcount_COUNTER_cy_2_rt_135 : STD_LOGIC; 
  signal Mcount_COUNTER_cy_30_rt_137 : STD_LOGIC; 
  signal Mcount_COUNTER_cy_3_rt_139 : STD_LOGIC; 
  signal Mcount_COUNTER_cy_4_rt_141 : STD_LOGIC; 
  signal Mcount_COUNTER_cy_5_rt_143 : STD_LOGIC; 
  signal Mcount_COUNTER_cy_6_rt_145 : STD_LOGIC; 
  signal Mcount_COUNTER_cy_7_rt_147 : STD_LOGIC; 
  signal Mcount_COUNTER_cy_8_rt_149 : STD_LOGIC; 
  signal Mcount_COUNTER_cy_9_rt_151 : STD_LOGIC; 
  signal Mcount_COUNTER_xor_31_rt_153 : STD_LOGIC; 
  signal Mcount_MAIN_COUNTER_cy_10_rt_156 : STD_LOGIC; 
  signal Mcount_MAIN_COUNTER_cy_11_rt_158 : STD_LOGIC; 
  signal Mcount_MAIN_COUNTER_cy_12_rt_160 : STD_LOGIC; 
  signal Mcount_MAIN_COUNTER_cy_13_rt_162 : STD_LOGIC; 
  signal Mcount_MAIN_COUNTER_cy_14_rt_164 : STD_LOGIC; 
  signal Mcount_MAIN_COUNTER_cy_1_rt_166 : STD_LOGIC; 
  signal Mcount_MAIN_COUNTER_cy_2_rt_168 : STD_LOGIC; 
  signal Mcount_MAIN_COUNTER_cy_3_rt_170 : STD_LOGIC; 
  signal Mcount_MAIN_COUNTER_cy_4_rt_172 : STD_LOGIC; 
  signal Mcount_MAIN_COUNTER_cy_5_rt_174 : STD_LOGIC; 
  signal Mcount_MAIN_COUNTER_cy_6_rt_176 : STD_LOGIC; 
  signal Mcount_MAIN_COUNTER_cy_7_rt_178 : STD_LOGIC; 
  signal Mcount_MAIN_COUNTER_cy_8_rt_180 : STD_LOGIC; 
  signal Mcount_MAIN_COUNTER_cy_9_rt_182 : STD_LOGIC; 
  signal Mcount_MAIN_COUNTER_xor_15_rt_184 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal RESET_IBUF_187 : STD_LOGIC; 
  signal Result_0_2 : STD_LOGIC; 
  signal Result_10_1 : STD_LOGIC; 
  signal Result_10_2 : STD_LOGIC; 
  signal Result_11_1 : STD_LOGIC; 
  signal Result_11_2 : STD_LOGIC; 
  signal Result_12_1 : STD_LOGIC; 
  signal Result_12_2 : STD_LOGIC; 
  signal Result_13_1 : STD_LOGIC; 
  signal Result_13_2 : STD_LOGIC; 
  signal Result_14_1 : STD_LOGIC; 
  signal Result_14_2 : STD_LOGIC; 
  signal Result_15_1 : STD_LOGIC; 
  signal Result_15_2 : STD_LOGIC; 
  signal Result_16_1 : STD_LOGIC; 
  signal Result_17_1 : STD_LOGIC; 
  signal Result_18_1 : STD_LOGIC; 
  signal Result_19_1 : STD_LOGIC; 
  signal Result_1_1 : STD_LOGIC; 
  signal Result_1_2 : STD_LOGIC; 
  signal Result_20_1 : STD_LOGIC; 
  signal Result_21_1 : STD_LOGIC; 
  signal Result_22_1 : STD_LOGIC; 
  signal Result_23_1 : STD_LOGIC; 
  signal Result_24_1 : STD_LOGIC; 
  signal Result_25_1 : STD_LOGIC; 
  signal Result_26_1 : STD_LOGIC; 
  signal Result_27_1 : STD_LOGIC; 
  signal Result_28_1 : STD_LOGIC; 
  signal Result_29_1 : STD_LOGIC; 
  signal Result_2_1 : STD_LOGIC; 
  signal Result_2_2 : STD_LOGIC; 
  signal Result_30_1 : STD_LOGIC; 
  signal Result_31_1 : STD_LOGIC; 
  signal Result_3_1 : STD_LOGIC; 
  signal Result_3_2 : STD_LOGIC; 
  signal Result_4_1 : STD_LOGIC; 
  signal Result_4_2 : STD_LOGIC; 
  signal Result_5_1 : STD_LOGIC; 
  signal Result_5_2 : STD_LOGIC; 
  signal Result_6_1 : STD_LOGIC; 
  signal Result_6_2 : STD_LOGIC; 
  signal Result_7_1 : STD_LOGIC; 
  signal Result_7_2 : STD_LOGIC; 
  signal Result_8_1 : STD_LOGIC; 
  signal Result_8_2 : STD_LOGIC; 
  signal Result_9_1 : STD_LOGIC; 
  signal Result_9_2 : STD_LOGIC; 
  signal lab2_example_inst_COUNTER_or0000 : STD_LOGIC; 
  signal lab2_example_inst_DLY_OVF : STD_LOGIC; 
  signal lab2_example_inst_Mcount_COUNTER_cy_10_rt_317 : STD_LOGIC; 
  signal lab2_example_inst_Mcount_COUNTER_cy_11_rt_319 : STD_LOGIC; 
  signal lab2_example_inst_Mcount_COUNTER_cy_12_rt_321 : STD_LOGIC; 
  signal lab2_example_inst_Mcount_COUNTER_cy_13_rt_323 : STD_LOGIC; 
  signal lab2_example_inst_Mcount_COUNTER_cy_14_rt_325 : STD_LOGIC; 
  signal lab2_example_inst_Mcount_COUNTER_cy_15_rt_327 : STD_LOGIC; 
  signal lab2_example_inst_Mcount_COUNTER_cy_16_rt_329 : STD_LOGIC; 
  signal lab2_example_inst_Mcount_COUNTER_cy_17_rt_331 : STD_LOGIC; 
  signal lab2_example_inst_Mcount_COUNTER_cy_18_rt_333 : STD_LOGIC; 
  signal lab2_example_inst_Mcount_COUNTER_cy_19_rt_335 : STD_LOGIC; 
  signal lab2_example_inst_Mcount_COUNTER_cy_1_rt_337 : STD_LOGIC; 
  signal lab2_example_inst_Mcount_COUNTER_cy_20_rt_339 : STD_LOGIC; 
  signal lab2_example_inst_Mcount_COUNTER_cy_21_rt_341 : STD_LOGIC; 
  signal lab2_example_inst_Mcount_COUNTER_cy_22_rt_343 : STD_LOGIC; 
  signal lab2_example_inst_Mcount_COUNTER_cy_23_rt_345 : STD_LOGIC; 
  signal lab2_example_inst_Mcount_COUNTER_cy_24_rt_347 : STD_LOGIC; 
  signal lab2_example_inst_Mcount_COUNTER_cy_25_rt_349 : STD_LOGIC; 
  signal lab2_example_inst_Mcount_COUNTER_cy_26_rt_351 : STD_LOGIC; 
  signal lab2_example_inst_Mcount_COUNTER_cy_27_rt_353 : STD_LOGIC; 
  signal lab2_example_inst_Mcount_COUNTER_cy_28_rt_355 : STD_LOGIC; 
  signal lab2_example_inst_Mcount_COUNTER_cy_29_rt_357 : STD_LOGIC; 
  signal lab2_example_inst_Mcount_COUNTER_cy_2_rt_359 : STD_LOGIC; 
  signal lab2_example_inst_Mcount_COUNTER_cy_30_rt_361 : STD_LOGIC; 
  signal lab2_example_inst_Mcount_COUNTER_cy_3_rt_363 : STD_LOGIC; 
  signal lab2_example_inst_Mcount_COUNTER_cy_4_rt_365 : STD_LOGIC; 
  signal lab2_example_inst_Mcount_COUNTER_cy_5_rt_367 : STD_LOGIC; 
  signal lab2_example_inst_Mcount_COUNTER_cy_6_rt_369 : STD_LOGIC; 
  signal lab2_example_inst_Mcount_COUNTER_cy_7_rt_371 : STD_LOGIC; 
  signal lab2_example_inst_Mcount_COUNTER_cy_8_rt_373 : STD_LOGIC; 
  signal lab2_example_inst_Mcount_COUNTER_cy_9_rt_375 : STD_LOGIC; 
  signal lab2_example_inst_Mcount_COUNTER_xor_31_rt_376 : STD_LOGIC; 
  signal led_decode_inst_Mrom_SEG_DATA : STD_LOGIC; 
  signal led_decode_inst_Mrom_SEG_DATA1 : STD_LOGIC; 
  signal led_decode_inst_Mrom_SEG_DATA2 : STD_LOGIC; 
  signal led_decode_inst_Mrom_SEG_DATA3 : STD_LOGIC; 
  signal led_decode_inst_Mrom_SEG_DATA4 : STD_LOGIC; 
  signal led_decode_inst_Mrom_SEG_DATA5 : STD_LOGIC; 
  signal led_decode_inst_Mrom_SEG_DATA6 : STD_LOGIC; 
  signal led_decode_inst_Mrom_SEG_DATA7 : STD_LOGIC; 
  signal ssd_inst_D_0_or000010_393 : STD_LOGIC; 
  signal ssd_inst_D_0_or000021_394 : STD_LOGIC; 
  signal ssd_inst_D_1_or000010_395 : STD_LOGIC; 
  signal ssd_inst_D_1_or000021_396 : STD_LOGIC; 
  signal ssd_inst_D_2_or000010_397 : STD_LOGIC; 
  signal ssd_inst_D_2_or000021_398 : STD_LOGIC; 
  signal ssd_inst_D_3_or000010_399 : STD_LOGIC; 
  signal ssd_inst_D_3_or000021_400 : STD_LOGIC; 
  signal CLK_BUFGP_IBUFG_2 : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal COUNTER : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal COUNTER_OVF_cmp_eq0000_wg_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal COUNTER_OVF_cmp_eq0000_wg_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal D_int : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal MAIN_COUNTER : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal Mcount_COUNTER_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal Mcount_COUNTER_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Mcount_MAIN_COUNTER_cy : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal Mcount_MAIN_COUNTER_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 31 downto 1 ); 
  signal lab2_example_inst_COUNTER : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal lab2_example_inst_DLY_OVF_cmp_eq0000_wg_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal lab2_example_inst_DLY_OVF_cmp_eq0000_wg_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal lab2_example_inst_Mcount_COUNTER_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal lab2_example_inst_SN : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal lab2_example_inst_S : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal ssd_inst_A_int : STD_LOGIC_VECTOR ( 3 downto 0 ); 
begin
  CNT_ff : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => CNT_int,
      SRST => RESET_IBUF_187,
      O => CNT_ff_10,
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  XST_GND : X_ZERO
    port map (
      O => N2
    );
  XST_VCC : X_ONE
    port map (
      O => led_decode_inst_Mrom_SEG_DATA7
    );
  ssd_inst_A_int_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      CE => COUNTER_OVF,
      RST => RESET_IBUF_187,
      I => ssd_inst_A_int(3),
      O => ssd_inst_A_int(0),
      SET => GND
    );
  ssd_inst_A_int_3 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => CLK_BUFGP,
      CE => COUNTER_OVF,
      I => ssd_inst_A_int(2),
      SET => RESET_IBUF_187,
      O => ssd_inst_A_int(3),
      RST => GND
    );
  ssd_inst_A_int_2 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => CLK_BUFGP,
      CE => COUNTER_OVF,
      I => ssd_inst_A_int(1),
      SET => RESET_IBUF_187,
      O => ssd_inst_A_int(2),
      RST => GND
    );
  ssd_inst_A_int_1 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => CLK_BUFGP,
      CE => COUNTER_OVF,
      I => ssd_inst_A_int(0),
      SET => RESET_IBUF_187,
      O => ssd_inst_A_int(1),
      RST => GND
    );
  lab2_example_inst_S_1 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => lab2_example_inst_SN(1),
      SRST => RESET_IBUF_187,
      O => lab2_example_inst_S(1),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lab2_example_inst_S_0 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => lab2_example_inst_SN(0),
      SRST => RESET_IBUF_187,
      O => lab2_example_inst_S(0),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  COUNTER_0 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Mcount_COUNTER_lut(0),
      SRST => COUNTER_or0000,
      O => COUNTER(0),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  COUNTER_1 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result(1),
      SRST => COUNTER_or0000,
      O => COUNTER(1),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  COUNTER_2 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result(2),
      SRST => COUNTER_or0000,
      O => COUNTER(2),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  COUNTER_3 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result(3),
      SRST => COUNTER_or0000,
      O => COUNTER(3),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  COUNTER_4 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result(4),
      SRST => COUNTER_or0000,
      O => COUNTER(4),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  COUNTER_5 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result(5),
      SRST => COUNTER_or0000,
      O => COUNTER(5),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  COUNTER_6 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result(6),
      SRST => COUNTER_or0000,
      O => COUNTER(6),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  COUNTER_7 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result(7),
      SRST => COUNTER_or0000,
      O => COUNTER(7),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  COUNTER_8 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result(8),
      SRST => COUNTER_or0000,
      O => COUNTER(8),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  COUNTER_9 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result(9),
      SRST => COUNTER_or0000,
      O => COUNTER(9),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  COUNTER_10 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result(10),
      SRST => COUNTER_or0000,
      O => COUNTER(10),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  COUNTER_11 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result(11),
      SRST => COUNTER_or0000,
      O => COUNTER(11),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  COUNTER_12 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result(12),
      SRST => COUNTER_or0000,
      O => COUNTER(12),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  COUNTER_13 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result(13),
      SRST => COUNTER_or0000,
      O => COUNTER(13),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  COUNTER_14 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result(14),
      SRST => COUNTER_or0000,
      O => COUNTER(14),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  COUNTER_15 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result(15),
      SRST => COUNTER_or0000,
      O => COUNTER(15),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  COUNTER_16 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result(16),
      SRST => COUNTER_or0000,
      O => COUNTER(16),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  COUNTER_17 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result(17),
      SRST => COUNTER_or0000,
      O => COUNTER(17),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  COUNTER_18 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result(18),
      SRST => COUNTER_or0000,
      O => COUNTER(18),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  COUNTER_19 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result(19),
      SRST => COUNTER_or0000,
      O => COUNTER(19),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  COUNTER_20 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result(20),
      SRST => COUNTER_or0000,
      O => COUNTER(20),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  COUNTER_21 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result(21),
      SRST => COUNTER_or0000,
      O => COUNTER(21),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  COUNTER_22 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result(22),
      SRST => COUNTER_or0000,
      O => COUNTER(22),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  COUNTER_23 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result(23),
      SRST => COUNTER_or0000,
      O => COUNTER(23),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  COUNTER_24 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result(24),
      SRST => COUNTER_or0000,
      O => COUNTER(24),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  COUNTER_25 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result(25),
      SRST => COUNTER_or0000,
      O => COUNTER(25),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  COUNTER_26 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result(26),
      SRST => COUNTER_or0000,
      O => COUNTER(26),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  COUNTER_27 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result(27),
      SRST => COUNTER_or0000,
      O => COUNTER(27),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  COUNTER_28 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result(28),
      SRST => COUNTER_or0000,
      O => COUNTER(28),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  COUNTER_29 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result(29),
      SRST => COUNTER_or0000,
      O => COUNTER(29),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  COUNTER_30 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result(30),
      SRST => COUNTER_or0000,
      O => COUNTER(30),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  COUNTER_31 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result(31),
      SRST => COUNTER_or0000,
      O => COUNTER(31),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lab2_example_inst_COUNTER_0 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result_0_2,
      SRST => lab2_example_inst_COUNTER_or0000,
      O => lab2_example_inst_COUNTER(0),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lab2_example_inst_COUNTER_1 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result_1_2,
      SRST => lab2_example_inst_COUNTER_or0000,
      O => lab2_example_inst_COUNTER(1),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lab2_example_inst_COUNTER_2 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result_2_2,
      SRST => lab2_example_inst_COUNTER_or0000,
      O => lab2_example_inst_COUNTER(2),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lab2_example_inst_COUNTER_3 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result_3_2,
      SRST => lab2_example_inst_COUNTER_or0000,
      O => lab2_example_inst_COUNTER(3),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lab2_example_inst_COUNTER_4 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result_4_2,
      SRST => lab2_example_inst_COUNTER_or0000,
      O => lab2_example_inst_COUNTER(4),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lab2_example_inst_COUNTER_5 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result_5_2,
      SRST => lab2_example_inst_COUNTER_or0000,
      O => lab2_example_inst_COUNTER(5),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lab2_example_inst_COUNTER_6 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result_6_2,
      SRST => lab2_example_inst_COUNTER_or0000,
      O => lab2_example_inst_COUNTER(6),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lab2_example_inst_COUNTER_7 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result_7_2,
      SRST => lab2_example_inst_COUNTER_or0000,
      O => lab2_example_inst_COUNTER(7),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lab2_example_inst_COUNTER_8 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result_8_2,
      SRST => lab2_example_inst_COUNTER_or0000,
      O => lab2_example_inst_COUNTER(8),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lab2_example_inst_COUNTER_9 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result_9_2,
      SRST => lab2_example_inst_COUNTER_or0000,
      O => lab2_example_inst_COUNTER(9),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lab2_example_inst_COUNTER_10 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result_10_2,
      SRST => lab2_example_inst_COUNTER_or0000,
      O => lab2_example_inst_COUNTER(10),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lab2_example_inst_COUNTER_11 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result_11_2,
      SRST => lab2_example_inst_COUNTER_or0000,
      O => lab2_example_inst_COUNTER(11),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lab2_example_inst_COUNTER_12 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result_12_2,
      SRST => lab2_example_inst_COUNTER_or0000,
      O => lab2_example_inst_COUNTER(12),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lab2_example_inst_COUNTER_13 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result_13_2,
      SRST => lab2_example_inst_COUNTER_or0000,
      O => lab2_example_inst_COUNTER(13),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lab2_example_inst_COUNTER_14 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result_14_2,
      SRST => lab2_example_inst_COUNTER_or0000,
      O => lab2_example_inst_COUNTER(14),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lab2_example_inst_COUNTER_15 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result_15_2,
      SRST => lab2_example_inst_COUNTER_or0000,
      O => lab2_example_inst_COUNTER(15),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lab2_example_inst_COUNTER_16 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result_16_1,
      SRST => lab2_example_inst_COUNTER_or0000,
      O => lab2_example_inst_COUNTER(16),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lab2_example_inst_COUNTER_17 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result_17_1,
      SRST => lab2_example_inst_COUNTER_or0000,
      O => lab2_example_inst_COUNTER(17),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lab2_example_inst_COUNTER_18 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result_18_1,
      SRST => lab2_example_inst_COUNTER_or0000,
      O => lab2_example_inst_COUNTER(18),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lab2_example_inst_COUNTER_19 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result_19_1,
      SRST => lab2_example_inst_COUNTER_or0000,
      O => lab2_example_inst_COUNTER(19),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lab2_example_inst_COUNTER_20 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result_20_1,
      SRST => lab2_example_inst_COUNTER_or0000,
      O => lab2_example_inst_COUNTER(20),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lab2_example_inst_COUNTER_21 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result_21_1,
      SRST => lab2_example_inst_COUNTER_or0000,
      O => lab2_example_inst_COUNTER(21),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lab2_example_inst_COUNTER_22 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result_22_1,
      SRST => lab2_example_inst_COUNTER_or0000,
      O => lab2_example_inst_COUNTER(22),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lab2_example_inst_COUNTER_23 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result_23_1,
      SRST => lab2_example_inst_COUNTER_or0000,
      O => lab2_example_inst_COUNTER(23),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lab2_example_inst_COUNTER_24 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result_24_1,
      SRST => lab2_example_inst_COUNTER_or0000,
      O => lab2_example_inst_COUNTER(24),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lab2_example_inst_COUNTER_25 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result_25_1,
      SRST => lab2_example_inst_COUNTER_or0000,
      O => lab2_example_inst_COUNTER(25),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lab2_example_inst_COUNTER_26 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result_26_1,
      SRST => lab2_example_inst_COUNTER_or0000,
      O => lab2_example_inst_COUNTER(26),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lab2_example_inst_COUNTER_27 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result_27_1,
      SRST => lab2_example_inst_COUNTER_or0000,
      O => lab2_example_inst_COUNTER(27),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lab2_example_inst_COUNTER_28 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result_28_1,
      SRST => lab2_example_inst_COUNTER_or0000,
      O => lab2_example_inst_COUNTER(28),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lab2_example_inst_COUNTER_29 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result_29_1,
      SRST => lab2_example_inst_COUNTER_or0000,
      O => lab2_example_inst_COUNTER(29),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lab2_example_inst_COUNTER_30 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result_30_1,
      SRST => lab2_example_inst_COUNTER_or0000,
      O => lab2_example_inst_COUNTER(30),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lab2_example_inst_COUNTER_31 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result_31_1,
      SRST => lab2_example_inst_COUNTER_or0000,
      O => lab2_example_inst_COUNTER(31),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  MAIN_COUNTER_0 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      CE => CNT_RISE,
      I => Mcount_MAIN_COUNTER_lut(0),
      SRST => RESET_IBUF_187,
      O => MAIN_COUNTER(0),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  MAIN_COUNTER_1 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      CE => CNT_RISE,
      I => Result_1_1,
      SRST => RESET_IBUF_187,
      O => MAIN_COUNTER(1),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  MAIN_COUNTER_2 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      CE => CNT_RISE,
      I => Result_2_1,
      SRST => RESET_IBUF_187,
      O => MAIN_COUNTER(2),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  MAIN_COUNTER_3 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      CE => CNT_RISE,
      I => Result_3_1,
      SRST => RESET_IBUF_187,
      O => MAIN_COUNTER(3),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  MAIN_COUNTER_4 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      CE => CNT_RISE,
      I => Result_4_1,
      SRST => RESET_IBUF_187,
      O => MAIN_COUNTER(4),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  MAIN_COUNTER_5 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      CE => CNT_RISE,
      I => Result_5_1,
      SRST => RESET_IBUF_187,
      O => MAIN_COUNTER(5),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  MAIN_COUNTER_6 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      CE => CNT_RISE,
      I => Result_6_1,
      SRST => RESET_IBUF_187,
      O => MAIN_COUNTER(6),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  MAIN_COUNTER_7 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      CE => CNT_RISE,
      I => Result_7_1,
      SRST => RESET_IBUF_187,
      O => MAIN_COUNTER(7),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  MAIN_COUNTER_8 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      CE => CNT_RISE,
      I => Result_8_1,
      SRST => RESET_IBUF_187,
      O => MAIN_COUNTER(8),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  MAIN_COUNTER_9 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      CE => CNT_RISE,
      I => Result_9_1,
      SRST => RESET_IBUF_187,
      O => MAIN_COUNTER(9),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  MAIN_COUNTER_10 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      CE => CNT_RISE,
      I => Result_10_1,
      SRST => RESET_IBUF_187,
      O => MAIN_COUNTER(10),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  MAIN_COUNTER_11 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      CE => CNT_RISE,
      I => Result_11_1,
      SRST => RESET_IBUF_187,
      O => MAIN_COUNTER(11),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  MAIN_COUNTER_12 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      CE => CNT_RISE,
      I => Result_12_1,
      SRST => RESET_IBUF_187,
      O => MAIN_COUNTER(12),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  MAIN_COUNTER_13 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      CE => CNT_RISE,
      I => Result_13_1,
      SRST => RESET_IBUF_187,
      O => MAIN_COUNTER(13),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  MAIN_COUNTER_14 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      CE => CNT_RISE,
      I => Result_14_1,
      SRST => RESET_IBUF_187,
      O => MAIN_COUNTER(14),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  MAIN_COUNTER_15 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      CE => CNT_RISE,
      I => Result_15_1,
      SRST => RESET_IBUF_187,
      O => MAIN_COUNTER(15),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lab2_example_inst_Mcount_COUNTER_cy_0_Q : X_MUX2
    port map (
      IB => N2,
      IA => led_decode_inst_Mrom_SEG_DATA7,
      SEL => Result_0_2,
      O => lab2_example_inst_Mcount_COUNTER_cy(0)
    );
  lab2_example_inst_Mcount_COUNTER_cy_1_Q : X_MUX2
    port map (
      IB => lab2_example_inst_Mcount_COUNTER_cy(0),
      IA => N2,
      SEL => lab2_example_inst_Mcount_COUNTER_cy_1_rt_337,
      O => lab2_example_inst_Mcount_COUNTER_cy(1)
    );
  lab2_example_inst_Mcount_COUNTER_xor_1_Q : X_XOR2
    port map (
      I0 => lab2_example_inst_Mcount_COUNTER_cy(0),
      I1 => lab2_example_inst_Mcount_COUNTER_cy_1_rt_337,
      O => Result_1_2
    );
  lab2_example_inst_Mcount_COUNTER_cy_2_Q : X_MUX2
    port map (
      IB => lab2_example_inst_Mcount_COUNTER_cy(1),
      IA => N2,
      SEL => lab2_example_inst_Mcount_COUNTER_cy_2_rt_359,
      O => lab2_example_inst_Mcount_COUNTER_cy(2)
    );
  lab2_example_inst_Mcount_COUNTER_xor_2_Q : X_XOR2
    port map (
      I0 => lab2_example_inst_Mcount_COUNTER_cy(1),
      I1 => lab2_example_inst_Mcount_COUNTER_cy_2_rt_359,
      O => Result_2_2
    );
  lab2_example_inst_Mcount_COUNTER_cy_3_Q : X_MUX2
    port map (
      IB => lab2_example_inst_Mcount_COUNTER_cy(2),
      IA => N2,
      SEL => lab2_example_inst_Mcount_COUNTER_cy_3_rt_363,
      O => lab2_example_inst_Mcount_COUNTER_cy(3)
    );
  lab2_example_inst_Mcount_COUNTER_xor_3_Q : X_XOR2
    port map (
      I0 => lab2_example_inst_Mcount_COUNTER_cy(2),
      I1 => lab2_example_inst_Mcount_COUNTER_cy_3_rt_363,
      O => Result_3_2
    );
  lab2_example_inst_Mcount_COUNTER_cy_4_Q : X_MUX2
    port map (
      IB => lab2_example_inst_Mcount_COUNTER_cy(3),
      IA => N2,
      SEL => lab2_example_inst_Mcount_COUNTER_cy_4_rt_365,
      O => lab2_example_inst_Mcount_COUNTER_cy(4)
    );
  lab2_example_inst_Mcount_COUNTER_xor_4_Q : X_XOR2
    port map (
      I0 => lab2_example_inst_Mcount_COUNTER_cy(3),
      I1 => lab2_example_inst_Mcount_COUNTER_cy_4_rt_365,
      O => Result_4_2
    );
  lab2_example_inst_Mcount_COUNTER_cy_5_Q : X_MUX2
    port map (
      IB => lab2_example_inst_Mcount_COUNTER_cy(4),
      IA => N2,
      SEL => lab2_example_inst_Mcount_COUNTER_cy_5_rt_367,
      O => lab2_example_inst_Mcount_COUNTER_cy(5)
    );
  lab2_example_inst_Mcount_COUNTER_xor_5_Q : X_XOR2
    port map (
      I0 => lab2_example_inst_Mcount_COUNTER_cy(4),
      I1 => lab2_example_inst_Mcount_COUNTER_cy_5_rt_367,
      O => Result_5_2
    );
  lab2_example_inst_Mcount_COUNTER_cy_6_Q : X_MUX2
    port map (
      IB => lab2_example_inst_Mcount_COUNTER_cy(5),
      IA => N2,
      SEL => lab2_example_inst_Mcount_COUNTER_cy_6_rt_369,
      O => lab2_example_inst_Mcount_COUNTER_cy(6)
    );
  lab2_example_inst_Mcount_COUNTER_xor_6_Q : X_XOR2
    port map (
      I0 => lab2_example_inst_Mcount_COUNTER_cy(5),
      I1 => lab2_example_inst_Mcount_COUNTER_cy_6_rt_369,
      O => Result_6_2
    );
  lab2_example_inst_Mcount_COUNTER_cy_7_Q : X_MUX2
    port map (
      IB => lab2_example_inst_Mcount_COUNTER_cy(6),
      IA => N2,
      SEL => lab2_example_inst_Mcount_COUNTER_cy_7_rt_371,
      O => lab2_example_inst_Mcount_COUNTER_cy(7)
    );
  lab2_example_inst_Mcount_COUNTER_xor_7_Q : X_XOR2
    port map (
      I0 => lab2_example_inst_Mcount_COUNTER_cy(6),
      I1 => lab2_example_inst_Mcount_COUNTER_cy_7_rt_371,
      O => Result_7_2
    );
  lab2_example_inst_Mcount_COUNTER_cy_8_Q : X_MUX2
    port map (
      IB => lab2_example_inst_Mcount_COUNTER_cy(7),
      IA => N2,
      SEL => lab2_example_inst_Mcount_COUNTER_cy_8_rt_373,
      O => lab2_example_inst_Mcount_COUNTER_cy(8)
    );
  lab2_example_inst_Mcount_COUNTER_xor_8_Q : X_XOR2
    port map (
      I0 => lab2_example_inst_Mcount_COUNTER_cy(7),
      I1 => lab2_example_inst_Mcount_COUNTER_cy_8_rt_373,
      O => Result_8_2
    );
  lab2_example_inst_Mcount_COUNTER_cy_9_Q : X_MUX2
    port map (
      IB => lab2_example_inst_Mcount_COUNTER_cy(8),
      IA => N2,
      SEL => lab2_example_inst_Mcount_COUNTER_cy_9_rt_375,
      O => lab2_example_inst_Mcount_COUNTER_cy(9)
    );
  lab2_example_inst_Mcount_COUNTER_xor_9_Q : X_XOR2
    port map (
      I0 => lab2_example_inst_Mcount_COUNTER_cy(8),
      I1 => lab2_example_inst_Mcount_COUNTER_cy_9_rt_375,
      O => Result_9_2
    );
  lab2_example_inst_Mcount_COUNTER_cy_10_Q : X_MUX2
    port map (
      IB => lab2_example_inst_Mcount_COUNTER_cy(9),
      IA => N2,
      SEL => lab2_example_inst_Mcount_COUNTER_cy_10_rt_317,
      O => lab2_example_inst_Mcount_COUNTER_cy(10)
    );
  lab2_example_inst_Mcount_COUNTER_xor_10_Q : X_XOR2
    port map (
      I0 => lab2_example_inst_Mcount_COUNTER_cy(9),
      I1 => lab2_example_inst_Mcount_COUNTER_cy_10_rt_317,
      O => Result_10_2
    );
  lab2_example_inst_Mcount_COUNTER_cy_11_Q : X_MUX2
    port map (
      IB => lab2_example_inst_Mcount_COUNTER_cy(10),
      IA => N2,
      SEL => lab2_example_inst_Mcount_COUNTER_cy_11_rt_319,
      O => lab2_example_inst_Mcount_COUNTER_cy(11)
    );
  lab2_example_inst_Mcount_COUNTER_xor_11_Q : X_XOR2
    port map (
      I0 => lab2_example_inst_Mcount_COUNTER_cy(10),
      I1 => lab2_example_inst_Mcount_COUNTER_cy_11_rt_319,
      O => Result_11_2
    );
  lab2_example_inst_Mcount_COUNTER_cy_12_Q : X_MUX2
    port map (
      IB => lab2_example_inst_Mcount_COUNTER_cy(11),
      IA => N2,
      SEL => lab2_example_inst_Mcount_COUNTER_cy_12_rt_321,
      O => lab2_example_inst_Mcount_COUNTER_cy(12)
    );
  lab2_example_inst_Mcount_COUNTER_xor_12_Q : X_XOR2
    port map (
      I0 => lab2_example_inst_Mcount_COUNTER_cy(11),
      I1 => lab2_example_inst_Mcount_COUNTER_cy_12_rt_321,
      O => Result_12_2
    );
  lab2_example_inst_Mcount_COUNTER_cy_13_Q : X_MUX2
    port map (
      IB => lab2_example_inst_Mcount_COUNTER_cy(12),
      IA => N2,
      SEL => lab2_example_inst_Mcount_COUNTER_cy_13_rt_323,
      O => lab2_example_inst_Mcount_COUNTER_cy(13)
    );
  lab2_example_inst_Mcount_COUNTER_xor_13_Q : X_XOR2
    port map (
      I0 => lab2_example_inst_Mcount_COUNTER_cy(12),
      I1 => lab2_example_inst_Mcount_COUNTER_cy_13_rt_323,
      O => Result_13_2
    );
  lab2_example_inst_Mcount_COUNTER_cy_14_Q : X_MUX2
    port map (
      IB => lab2_example_inst_Mcount_COUNTER_cy(13),
      IA => N2,
      SEL => lab2_example_inst_Mcount_COUNTER_cy_14_rt_325,
      O => lab2_example_inst_Mcount_COUNTER_cy(14)
    );
  lab2_example_inst_Mcount_COUNTER_xor_14_Q : X_XOR2
    port map (
      I0 => lab2_example_inst_Mcount_COUNTER_cy(13),
      I1 => lab2_example_inst_Mcount_COUNTER_cy_14_rt_325,
      O => Result_14_2
    );
  lab2_example_inst_Mcount_COUNTER_cy_15_Q : X_MUX2
    port map (
      IB => lab2_example_inst_Mcount_COUNTER_cy(14),
      IA => N2,
      SEL => lab2_example_inst_Mcount_COUNTER_cy_15_rt_327,
      O => lab2_example_inst_Mcount_COUNTER_cy(15)
    );
  lab2_example_inst_Mcount_COUNTER_xor_15_Q : X_XOR2
    port map (
      I0 => lab2_example_inst_Mcount_COUNTER_cy(14),
      I1 => lab2_example_inst_Mcount_COUNTER_cy_15_rt_327,
      O => Result_15_2
    );
  lab2_example_inst_Mcount_COUNTER_cy_16_Q : X_MUX2
    port map (
      IB => lab2_example_inst_Mcount_COUNTER_cy(15),
      IA => N2,
      SEL => lab2_example_inst_Mcount_COUNTER_cy_16_rt_329,
      O => lab2_example_inst_Mcount_COUNTER_cy(16)
    );
  lab2_example_inst_Mcount_COUNTER_xor_16_Q : X_XOR2
    port map (
      I0 => lab2_example_inst_Mcount_COUNTER_cy(15),
      I1 => lab2_example_inst_Mcount_COUNTER_cy_16_rt_329,
      O => Result_16_1
    );
  lab2_example_inst_Mcount_COUNTER_cy_17_Q : X_MUX2
    port map (
      IB => lab2_example_inst_Mcount_COUNTER_cy(16),
      IA => N2,
      SEL => lab2_example_inst_Mcount_COUNTER_cy_17_rt_331,
      O => lab2_example_inst_Mcount_COUNTER_cy(17)
    );
  lab2_example_inst_Mcount_COUNTER_xor_17_Q : X_XOR2
    port map (
      I0 => lab2_example_inst_Mcount_COUNTER_cy(16),
      I1 => lab2_example_inst_Mcount_COUNTER_cy_17_rt_331,
      O => Result_17_1
    );
  lab2_example_inst_Mcount_COUNTER_cy_18_Q : X_MUX2
    port map (
      IB => lab2_example_inst_Mcount_COUNTER_cy(17),
      IA => N2,
      SEL => lab2_example_inst_Mcount_COUNTER_cy_18_rt_333,
      O => lab2_example_inst_Mcount_COUNTER_cy(18)
    );
  lab2_example_inst_Mcount_COUNTER_xor_18_Q : X_XOR2
    port map (
      I0 => lab2_example_inst_Mcount_COUNTER_cy(17),
      I1 => lab2_example_inst_Mcount_COUNTER_cy_18_rt_333,
      O => Result_18_1
    );
  lab2_example_inst_Mcount_COUNTER_cy_19_Q : X_MUX2
    port map (
      IB => lab2_example_inst_Mcount_COUNTER_cy(18),
      IA => N2,
      SEL => lab2_example_inst_Mcount_COUNTER_cy_19_rt_335,
      O => lab2_example_inst_Mcount_COUNTER_cy(19)
    );
  lab2_example_inst_Mcount_COUNTER_xor_19_Q : X_XOR2
    port map (
      I0 => lab2_example_inst_Mcount_COUNTER_cy(18),
      I1 => lab2_example_inst_Mcount_COUNTER_cy_19_rt_335,
      O => Result_19_1
    );
  lab2_example_inst_Mcount_COUNTER_cy_20_Q : X_MUX2
    port map (
      IB => lab2_example_inst_Mcount_COUNTER_cy(19),
      IA => N2,
      SEL => lab2_example_inst_Mcount_COUNTER_cy_20_rt_339,
      O => lab2_example_inst_Mcount_COUNTER_cy(20)
    );
  lab2_example_inst_Mcount_COUNTER_xor_20_Q : X_XOR2
    port map (
      I0 => lab2_example_inst_Mcount_COUNTER_cy(19),
      I1 => lab2_example_inst_Mcount_COUNTER_cy_20_rt_339,
      O => Result_20_1
    );
  lab2_example_inst_Mcount_COUNTER_cy_21_Q : X_MUX2
    port map (
      IB => lab2_example_inst_Mcount_COUNTER_cy(20),
      IA => N2,
      SEL => lab2_example_inst_Mcount_COUNTER_cy_21_rt_341,
      O => lab2_example_inst_Mcount_COUNTER_cy(21)
    );
  lab2_example_inst_Mcount_COUNTER_xor_21_Q : X_XOR2
    port map (
      I0 => lab2_example_inst_Mcount_COUNTER_cy(20),
      I1 => lab2_example_inst_Mcount_COUNTER_cy_21_rt_341,
      O => Result_21_1
    );
  lab2_example_inst_Mcount_COUNTER_cy_22_Q : X_MUX2
    port map (
      IB => lab2_example_inst_Mcount_COUNTER_cy(21),
      IA => N2,
      SEL => lab2_example_inst_Mcount_COUNTER_cy_22_rt_343,
      O => lab2_example_inst_Mcount_COUNTER_cy(22)
    );
  lab2_example_inst_Mcount_COUNTER_xor_22_Q : X_XOR2
    port map (
      I0 => lab2_example_inst_Mcount_COUNTER_cy(21),
      I1 => lab2_example_inst_Mcount_COUNTER_cy_22_rt_343,
      O => Result_22_1
    );
  lab2_example_inst_Mcount_COUNTER_cy_23_Q : X_MUX2
    port map (
      IB => lab2_example_inst_Mcount_COUNTER_cy(22),
      IA => N2,
      SEL => lab2_example_inst_Mcount_COUNTER_cy_23_rt_345,
      O => lab2_example_inst_Mcount_COUNTER_cy(23)
    );
  lab2_example_inst_Mcount_COUNTER_xor_23_Q : X_XOR2
    port map (
      I0 => lab2_example_inst_Mcount_COUNTER_cy(22),
      I1 => lab2_example_inst_Mcount_COUNTER_cy_23_rt_345,
      O => Result_23_1
    );
  lab2_example_inst_Mcount_COUNTER_cy_24_Q : X_MUX2
    port map (
      IB => lab2_example_inst_Mcount_COUNTER_cy(23),
      IA => N2,
      SEL => lab2_example_inst_Mcount_COUNTER_cy_24_rt_347,
      O => lab2_example_inst_Mcount_COUNTER_cy(24)
    );
  lab2_example_inst_Mcount_COUNTER_xor_24_Q : X_XOR2
    port map (
      I0 => lab2_example_inst_Mcount_COUNTER_cy(23),
      I1 => lab2_example_inst_Mcount_COUNTER_cy_24_rt_347,
      O => Result_24_1
    );
  lab2_example_inst_Mcount_COUNTER_cy_25_Q : X_MUX2
    port map (
      IB => lab2_example_inst_Mcount_COUNTER_cy(24),
      IA => N2,
      SEL => lab2_example_inst_Mcount_COUNTER_cy_25_rt_349,
      O => lab2_example_inst_Mcount_COUNTER_cy(25)
    );
  lab2_example_inst_Mcount_COUNTER_xor_25_Q : X_XOR2
    port map (
      I0 => lab2_example_inst_Mcount_COUNTER_cy(24),
      I1 => lab2_example_inst_Mcount_COUNTER_cy_25_rt_349,
      O => Result_25_1
    );
  lab2_example_inst_Mcount_COUNTER_cy_26_Q : X_MUX2
    port map (
      IB => lab2_example_inst_Mcount_COUNTER_cy(25),
      IA => N2,
      SEL => lab2_example_inst_Mcount_COUNTER_cy_26_rt_351,
      O => lab2_example_inst_Mcount_COUNTER_cy(26)
    );
  lab2_example_inst_Mcount_COUNTER_xor_26_Q : X_XOR2
    port map (
      I0 => lab2_example_inst_Mcount_COUNTER_cy(25),
      I1 => lab2_example_inst_Mcount_COUNTER_cy_26_rt_351,
      O => Result_26_1
    );
  lab2_example_inst_Mcount_COUNTER_cy_27_Q : X_MUX2
    port map (
      IB => lab2_example_inst_Mcount_COUNTER_cy(26),
      IA => N2,
      SEL => lab2_example_inst_Mcount_COUNTER_cy_27_rt_353,
      O => lab2_example_inst_Mcount_COUNTER_cy(27)
    );
  lab2_example_inst_Mcount_COUNTER_xor_27_Q : X_XOR2
    port map (
      I0 => lab2_example_inst_Mcount_COUNTER_cy(26),
      I1 => lab2_example_inst_Mcount_COUNTER_cy_27_rt_353,
      O => Result_27_1
    );
  lab2_example_inst_Mcount_COUNTER_cy_28_Q : X_MUX2
    port map (
      IB => lab2_example_inst_Mcount_COUNTER_cy(27),
      IA => N2,
      SEL => lab2_example_inst_Mcount_COUNTER_cy_28_rt_355,
      O => lab2_example_inst_Mcount_COUNTER_cy(28)
    );
  lab2_example_inst_Mcount_COUNTER_xor_28_Q : X_XOR2
    port map (
      I0 => lab2_example_inst_Mcount_COUNTER_cy(27),
      I1 => lab2_example_inst_Mcount_COUNTER_cy_28_rt_355,
      O => Result_28_1
    );
  lab2_example_inst_Mcount_COUNTER_cy_29_Q : X_MUX2
    port map (
      IB => lab2_example_inst_Mcount_COUNTER_cy(28),
      IA => N2,
      SEL => lab2_example_inst_Mcount_COUNTER_cy_29_rt_357,
      O => lab2_example_inst_Mcount_COUNTER_cy(29)
    );
  lab2_example_inst_Mcount_COUNTER_xor_29_Q : X_XOR2
    port map (
      I0 => lab2_example_inst_Mcount_COUNTER_cy(28),
      I1 => lab2_example_inst_Mcount_COUNTER_cy_29_rt_357,
      O => Result_29_1
    );
  lab2_example_inst_Mcount_COUNTER_cy_30_Q : X_MUX2
    port map (
      IB => lab2_example_inst_Mcount_COUNTER_cy(29),
      IA => N2,
      SEL => lab2_example_inst_Mcount_COUNTER_cy_30_rt_361,
      O => lab2_example_inst_Mcount_COUNTER_cy(30)
    );
  lab2_example_inst_Mcount_COUNTER_xor_30_Q : X_XOR2
    port map (
      I0 => lab2_example_inst_Mcount_COUNTER_cy(29),
      I1 => lab2_example_inst_Mcount_COUNTER_cy_30_rt_361,
      O => Result_30_1
    );
  lab2_example_inst_Mcount_COUNTER_xor_31_Q : X_XOR2
    port map (
      I0 => lab2_example_inst_Mcount_COUNTER_cy(30),
      I1 => lab2_example_inst_Mcount_COUNTER_xor_31_rt_376,
      O => Result_31_1
    );
  Mcount_COUNTER_cy_0_Q : X_MUX2
    port map (
      IB => N2,
      IA => led_decode_inst_Mrom_SEG_DATA7,
      SEL => Mcount_COUNTER_lut(0),
      O => Mcount_COUNTER_cy(0)
    );
  Mcount_COUNTER_cy_1_Q : X_MUX2
    port map (
      IB => Mcount_COUNTER_cy(0),
      IA => N2,
      SEL => Mcount_COUNTER_cy_1_rt_113,
      O => Mcount_COUNTER_cy(1)
    );
  Mcount_COUNTER_xor_1_Q : X_XOR2
    port map (
      I0 => Mcount_COUNTER_cy(0),
      I1 => Mcount_COUNTER_cy_1_rt_113,
      O => Result(1)
    );
  Mcount_COUNTER_cy_2_Q : X_MUX2
    port map (
      IB => Mcount_COUNTER_cy(1),
      IA => N2,
      SEL => Mcount_COUNTER_cy_2_rt_135,
      O => Mcount_COUNTER_cy(2)
    );
  Mcount_COUNTER_xor_2_Q : X_XOR2
    port map (
      I0 => Mcount_COUNTER_cy(1),
      I1 => Mcount_COUNTER_cy_2_rt_135,
      O => Result(2)
    );
  Mcount_COUNTER_cy_3_Q : X_MUX2
    port map (
      IB => Mcount_COUNTER_cy(2),
      IA => N2,
      SEL => Mcount_COUNTER_cy_3_rt_139,
      O => Mcount_COUNTER_cy(3)
    );
  Mcount_COUNTER_xor_3_Q : X_XOR2
    port map (
      I0 => Mcount_COUNTER_cy(2),
      I1 => Mcount_COUNTER_cy_3_rt_139,
      O => Result(3)
    );
  Mcount_COUNTER_cy_4_Q : X_MUX2
    port map (
      IB => Mcount_COUNTER_cy(3),
      IA => N2,
      SEL => Mcount_COUNTER_cy_4_rt_141,
      O => Mcount_COUNTER_cy(4)
    );
  Mcount_COUNTER_xor_4_Q : X_XOR2
    port map (
      I0 => Mcount_COUNTER_cy(3),
      I1 => Mcount_COUNTER_cy_4_rt_141,
      O => Result(4)
    );
  Mcount_COUNTER_cy_5_Q : X_MUX2
    port map (
      IB => Mcount_COUNTER_cy(4),
      IA => N2,
      SEL => Mcount_COUNTER_cy_5_rt_143,
      O => Mcount_COUNTER_cy(5)
    );
  Mcount_COUNTER_xor_5_Q : X_XOR2
    port map (
      I0 => Mcount_COUNTER_cy(4),
      I1 => Mcount_COUNTER_cy_5_rt_143,
      O => Result(5)
    );
  Mcount_COUNTER_cy_6_Q : X_MUX2
    port map (
      IB => Mcount_COUNTER_cy(5),
      IA => N2,
      SEL => Mcount_COUNTER_cy_6_rt_145,
      O => Mcount_COUNTER_cy(6)
    );
  Mcount_COUNTER_xor_6_Q : X_XOR2
    port map (
      I0 => Mcount_COUNTER_cy(5),
      I1 => Mcount_COUNTER_cy_6_rt_145,
      O => Result(6)
    );
  Mcount_COUNTER_cy_7_Q : X_MUX2
    port map (
      IB => Mcount_COUNTER_cy(6),
      IA => N2,
      SEL => Mcount_COUNTER_cy_7_rt_147,
      O => Mcount_COUNTER_cy(7)
    );
  Mcount_COUNTER_xor_7_Q : X_XOR2
    port map (
      I0 => Mcount_COUNTER_cy(6),
      I1 => Mcount_COUNTER_cy_7_rt_147,
      O => Result(7)
    );
  Mcount_COUNTER_cy_8_Q : X_MUX2
    port map (
      IB => Mcount_COUNTER_cy(7),
      IA => N2,
      SEL => Mcount_COUNTER_cy_8_rt_149,
      O => Mcount_COUNTER_cy(8)
    );
  Mcount_COUNTER_xor_8_Q : X_XOR2
    port map (
      I0 => Mcount_COUNTER_cy(7),
      I1 => Mcount_COUNTER_cy_8_rt_149,
      O => Result(8)
    );
  Mcount_COUNTER_cy_9_Q : X_MUX2
    port map (
      IB => Mcount_COUNTER_cy(8),
      IA => N2,
      SEL => Mcount_COUNTER_cy_9_rt_151,
      O => Mcount_COUNTER_cy(9)
    );
  Mcount_COUNTER_xor_9_Q : X_XOR2
    port map (
      I0 => Mcount_COUNTER_cy(8),
      I1 => Mcount_COUNTER_cy_9_rt_151,
      O => Result(9)
    );
  Mcount_COUNTER_cy_10_Q : X_MUX2
    port map (
      IB => Mcount_COUNTER_cy(9),
      IA => N2,
      SEL => Mcount_COUNTER_cy_10_rt_93,
      O => Mcount_COUNTER_cy(10)
    );
  Mcount_COUNTER_xor_10_Q : X_XOR2
    port map (
      I0 => Mcount_COUNTER_cy(9),
      I1 => Mcount_COUNTER_cy_10_rt_93,
      O => Result(10)
    );
  Mcount_COUNTER_cy_11_Q : X_MUX2
    port map (
      IB => Mcount_COUNTER_cy(10),
      IA => N2,
      SEL => Mcount_COUNTER_cy_11_rt_95,
      O => Mcount_COUNTER_cy(11)
    );
  Mcount_COUNTER_xor_11_Q : X_XOR2
    port map (
      I0 => Mcount_COUNTER_cy(10),
      I1 => Mcount_COUNTER_cy_11_rt_95,
      O => Result(11)
    );
  Mcount_COUNTER_cy_12_Q : X_MUX2
    port map (
      IB => Mcount_COUNTER_cy(11),
      IA => N2,
      SEL => Mcount_COUNTER_cy_12_rt_97,
      O => Mcount_COUNTER_cy(12)
    );
  Mcount_COUNTER_xor_12_Q : X_XOR2
    port map (
      I0 => Mcount_COUNTER_cy(11),
      I1 => Mcount_COUNTER_cy_12_rt_97,
      O => Result(12)
    );
  Mcount_COUNTER_cy_13_Q : X_MUX2
    port map (
      IB => Mcount_COUNTER_cy(12),
      IA => N2,
      SEL => Mcount_COUNTER_cy_13_rt_99,
      O => Mcount_COUNTER_cy(13)
    );
  Mcount_COUNTER_xor_13_Q : X_XOR2
    port map (
      I0 => Mcount_COUNTER_cy(12),
      I1 => Mcount_COUNTER_cy_13_rt_99,
      O => Result(13)
    );
  Mcount_COUNTER_cy_14_Q : X_MUX2
    port map (
      IB => Mcount_COUNTER_cy(13),
      IA => N2,
      SEL => Mcount_COUNTER_cy_14_rt_101,
      O => Mcount_COUNTER_cy(14)
    );
  Mcount_COUNTER_xor_14_Q : X_XOR2
    port map (
      I0 => Mcount_COUNTER_cy(13),
      I1 => Mcount_COUNTER_cy_14_rt_101,
      O => Result(14)
    );
  Mcount_COUNTER_cy_15_Q : X_MUX2
    port map (
      IB => Mcount_COUNTER_cy(14),
      IA => N2,
      SEL => Mcount_COUNTER_cy_15_rt_103,
      O => Mcount_COUNTER_cy(15)
    );
  Mcount_COUNTER_xor_15_Q : X_XOR2
    port map (
      I0 => Mcount_COUNTER_cy(14),
      I1 => Mcount_COUNTER_cy_15_rt_103,
      O => Result(15)
    );
  Mcount_COUNTER_cy_16_Q : X_MUX2
    port map (
      IB => Mcount_COUNTER_cy(15),
      IA => N2,
      SEL => Mcount_COUNTER_cy_16_rt_105,
      O => Mcount_COUNTER_cy(16)
    );
  Mcount_COUNTER_xor_16_Q : X_XOR2
    port map (
      I0 => Mcount_COUNTER_cy(15),
      I1 => Mcount_COUNTER_cy_16_rt_105,
      O => Result(16)
    );
  Mcount_COUNTER_cy_17_Q : X_MUX2
    port map (
      IB => Mcount_COUNTER_cy(16),
      IA => N2,
      SEL => Mcount_COUNTER_cy_17_rt_107,
      O => Mcount_COUNTER_cy(17)
    );
  Mcount_COUNTER_xor_17_Q : X_XOR2
    port map (
      I0 => Mcount_COUNTER_cy(16),
      I1 => Mcount_COUNTER_cy_17_rt_107,
      O => Result(17)
    );
  Mcount_COUNTER_cy_18_Q : X_MUX2
    port map (
      IB => Mcount_COUNTER_cy(17),
      IA => N2,
      SEL => Mcount_COUNTER_cy_18_rt_109,
      O => Mcount_COUNTER_cy(18)
    );
  Mcount_COUNTER_xor_18_Q : X_XOR2
    port map (
      I0 => Mcount_COUNTER_cy(17),
      I1 => Mcount_COUNTER_cy_18_rt_109,
      O => Result(18)
    );
  Mcount_COUNTER_cy_19_Q : X_MUX2
    port map (
      IB => Mcount_COUNTER_cy(18),
      IA => N2,
      SEL => Mcount_COUNTER_cy_19_rt_111,
      O => Mcount_COUNTER_cy(19)
    );
  Mcount_COUNTER_xor_19_Q : X_XOR2
    port map (
      I0 => Mcount_COUNTER_cy(18),
      I1 => Mcount_COUNTER_cy_19_rt_111,
      O => Result(19)
    );
  Mcount_COUNTER_cy_20_Q : X_MUX2
    port map (
      IB => Mcount_COUNTER_cy(19),
      IA => N2,
      SEL => Mcount_COUNTER_cy_20_rt_115,
      O => Mcount_COUNTER_cy(20)
    );
  Mcount_COUNTER_xor_20_Q : X_XOR2
    port map (
      I0 => Mcount_COUNTER_cy(19),
      I1 => Mcount_COUNTER_cy_20_rt_115,
      O => Result(20)
    );
  Mcount_COUNTER_cy_21_Q : X_MUX2
    port map (
      IB => Mcount_COUNTER_cy(20),
      IA => N2,
      SEL => Mcount_COUNTER_cy_21_rt_117,
      O => Mcount_COUNTER_cy(21)
    );
  Mcount_COUNTER_xor_21_Q : X_XOR2
    port map (
      I0 => Mcount_COUNTER_cy(20),
      I1 => Mcount_COUNTER_cy_21_rt_117,
      O => Result(21)
    );
  Mcount_COUNTER_cy_22_Q : X_MUX2
    port map (
      IB => Mcount_COUNTER_cy(21),
      IA => N2,
      SEL => Mcount_COUNTER_cy_22_rt_119,
      O => Mcount_COUNTER_cy(22)
    );
  Mcount_COUNTER_xor_22_Q : X_XOR2
    port map (
      I0 => Mcount_COUNTER_cy(21),
      I1 => Mcount_COUNTER_cy_22_rt_119,
      O => Result(22)
    );
  Mcount_COUNTER_cy_23_Q : X_MUX2
    port map (
      IB => Mcount_COUNTER_cy(22),
      IA => N2,
      SEL => Mcount_COUNTER_cy_23_rt_121,
      O => Mcount_COUNTER_cy(23)
    );
  Mcount_COUNTER_xor_23_Q : X_XOR2
    port map (
      I0 => Mcount_COUNTER_cy(22),
      I1 => Mcount_COUNTER_cy_23_rt_121,
      O => Result(23)
    );
  Mcount_COUNTER_cy_24_Q : X_MUX2
    port map (
      IB => Mcount_COUNTER_cy(23),
      IA => N2,
      SEL => Mcount_COUNTER_cy_24_rt_123,
      O => Mcount_COUNTER_cy(24)
    );
  Mcount_COUNTER_xor_24_Q : X_XOR2
    port map (
      I0 => Mcount_COUNTER_cy(23),
      I1 => Mcount_COUNTER_cy_24_rt_123,
      O => Result(24)
    );
  Mcount_COUNTER_cy_25_Q : X_MUX2
    port map (
      IB => Mcount_COUNTER_cy(24),
      IA => N2,
      SEL => Mcount_COUNTER_cy_25_rt_125,
      O => Mcount_COUNTER_cy(25)
    );
  Mcount_COUNTER_xor_25_Q : X_XOR2
    port map (
      I0 => Mcount_COUNTER_cy(24),
      I1 => Mcount_COUNTER_cy_25_rt_125,
      O => Result(25)
    );
  Mcount_COUNTER_cy_26_Q : X_MUX2
    port map (
      IB => Mcount_COUNTER_cy(25),
      IA => N2,
      SEL => Mcount_COUNTER_cy_26_rt_127,
      O => Mcount_COUNTER_cy(26)
    );
  Mcount_COUNTER_xor_26_Q : X_XOR2
    port map (
      I0 => Mcount_COUNTER_cy(25),
      I1 => Mcount_COUNTER_cy_26_rt_127,
      O => Result(26)
    );
  Mcount_COUNTER_cy_27_Q : X_MUX2
    port map (
      IB => Mcount_COUNTER_cy(26),
      IA => N2,
      SEL => Mcount_COUNTER_cy_27_rt_129,
      O => Mcount_COUNTER_cy(27)
    );
  Mcount_COUNTER_xor_27_Q : X_XOR2
    port map (
      I0 => Mcount_COUNTER_cy(26),
      I1 => Mcount_COUNTER_cy_27_rt_129,
      O => Result(27)
    );
  Mcount_COUNTER_cy_28_Q : X_MUX2
    port map (
      IB => Mcount_COUNTER_cy(27),
      IA => N2,
      SEL => Mcount_COUNTER_cy_28_rt_131,
      O => Mcount_COUNTER_cy(28)
    );
  Mcount_COUNTER_xor_28_Q : X_XOR2
    port map (
      I0 => Mcount_COUNTER_cy(27),
      I1 => Mcount_COUNTER_cy_28_rt_131,
      O => Result(28)
    );
  Mcount_COUNTER_cy_29_Q : X_MUX2
    port map (
      IB => Mcount_COUNTER_cy(28),
      IA => N2,
      SEL => Mcount_COUNTER_cy_29_rt_133,
      O => Mcount_COUNTER_cy(29)
    );
  Mcount_COUNTER_xor_29_Q : X_XOR2
    port map (
      I0 => Mcount_COUNTER_cy(28),
      I1 => Mcount_COUNTER_cy_29_rt_133,
      O => Result(29)
    );
  Mcount_COUNTER_cy_30_Q : X_MUX2
    port map (
      IB => Mcount_COUNTER_cy(29),
      IA => N2,
      SEL => Mcount_COUNTER_cy_30_rt_137,
      O => Mcount_COUNTER_cy(30)
    );
  Mcount_COUNTER_xor_30_Q : X_XOR2
    port map (
      I0 => Mcount_COUNTER_cy(29),
      I1 => Mcount_COUNTER_cy_30_rt_137,
      O => Result(30)
    );
  Mcount_COUNTER_xor_31_Q : X_XOR2
    port map (
      I0 => Mcount_COUNTER_cy(30),
      I1 => Mcount_COUNTER_xor_31_rt_153,
      O => Result(31)
    );
  Mcount_MAIN_COUNTER_cy_0_Q : X_MUX2
    port map (
      IB => N2,
      IA => led_decode_inst_Mrom_SEG_DATA7,
      SEL => Mcount_MAIN_COUNTER_lut(0),
      O => Mcount_MAIN_COUNTER_cy(0)
    );
  Mcount_MAIN_COUNTER_cy_1_Q : X_MUX2
    port map (
      IB => Mcount_MAIN_COUNTER_cy(0),
      IA => N2,
      SEL => Mcount_MAIN_COUNTER_cy_1_rt_166,
      O => Mcount_MAIN_COUNTER_cy(1)
    );
  Mcount_MAIN_COUNTER_xor_1_Q : X_XOR2
    port map (
      I0 => Mcount_MAIN_COUNTER_cy(0),
      I1 => Mcount_MAIN_COUNTER_cy_1_rt_166,
      O => Result_1_1
    );
  Mcount_MAIN_COUNTER_cy_2_Q : X_MUX2
    port map (
      IB => Mcount_MAIN_COUNTER_cy(1),
      IA => N2,
      SEL => Mcount_MAIN_COUNTER_cy_2_rt_168,
      O => Mcount_MAIN_COUNTER_cy(2)
    );
  Mcount_MAIN_COUNTER_xor_2_Q : X_XOR2
    port map (
      I0 => Mcount_MAIN_COUNTER_cy(1),
      I1 => Mcount_MAIN_COUNTER_cy_2_rt_168,
      O => Result_2_1
    );
  Mcount_MAIN_COUNTER_cy_3_Q : X_MUX2
    port map (
      IB => Mcount_MAIN_COUNTER_cy(2),
      IA => N2,
      SEL => Mcount_MAIN_COUNTER_cy_3_rt_170,
      O => Mcount_MAIN_COUNTER_cy(3)
    );
  Mcount_MAIN_COUNTER_xor_3_Q : X_XOR2
    port map (
      I0 => Mcount_MAIN_COUNTER_cy(2),
      I1 => Mcount_MAIN_COUNTER_cy_3_rt_170,
      O => Result_3_1
    );
  Mcount_MAIN_COUNTER_cy_4_Q : X_MUX2
    port map (
      IB => Mcount_MAIN_COUNTER_cy(3),
      IA => N2,
      SEL => Mcount_MAIN_COUNTER_cy_4_rt_172,
      O => Mcount_MAIN_COUNTER_cy(4)
    );
  Mcount_MAIN_COUNTER_xor_4_Q : X_XOR2
    port map (
      I0 => Mcount_MAIN_COUNTER_cy(3),
      I1 => Mcount_MAIN_COUNTER_cy_4_rt_172,
      O => Result_4_1
    );
  Mcount_MAIN_COUNTER_cy_5_Q : X_MUX2
    port map (
      IB => Mcount_MAIN_COUNTER_cy(4),
      IA => N2,
      SEL => Mcount_MAIN_COUNTER_cy_5_rt_174,
      O => Mcount_MAIN_COUNTER_cy(5)
    );
  Mcount_MAIN_COUNTER_xor_5_Q : X_XOR2
    port map (
      I0 => Mcount_MAIN_COUNTER_cy(4),
      I1 => Mcount_MAIN_COUNTER_cy_5_rt_174,
      O => Result_5_1
    );
  Mcount_MAIN_COUNTER_cy_6_Q : X_MUX2
    port map (
      IB => Mcount_MAIN_COUNTER_cy(5),
      IA => N2,
      SEL => Mcount_MAIN_COUNTER_cy_6_rt_176,
      O => Mcount_MAIN_COUNTER_cy(6)
    );
  Mcount_MAIN_COUNTER_xor_6_Q : X_XOR2
    port map (
      I0 => Mcount_MAIN_COUNTER_cy(5),
      I1 => Mcount_MAIN_COUNTER_cy_6_rt_176,
      O => Result_6_1
    );
  Mcount_MAIN_COUNTER_cy_7_Q : X_MUX2
    port map (
      IB => Mcount_MAIN_COUNTER_cy(6),
      IA => N2,
      SEL => Mcount_MAIN_COUNTER_cy_7_rt_178,
      O => Mcount_MAIN_COUNTER_cy(7)
    );
  Mcount_MAIN_COUNTER_xor_7_Q : X_XOR2
    port map (
      I0 => Mcount_MAIN_COUNTER_cy(6),
      I1 => Mcount_MAIN_COUNTER_cy_7_rt_178,
      O => Result_7_1
    );
  Mcount_MAIN_COUNTER_cy_8_Q : X_MUX2
    port map (
      IB => Mcount_MAIN_COUNTER_cy(7),
      IA => N2,
      SEL => Mcount_MAIN_COUNTER_cy_8_rt_180,
      O => Mcount_MAIN_COUNTER_cy(8)
    );
  Mcount_MAIN_COUNTER_xor_8_Q : X_XOR2
    port map (
      I0 => Mcount_MAIN_COUNTER_cy(7),
      I1 => Mcount_MAIN_COUNTER_cy_8_rt_180,
      O => Result_8_1
    );
  Mcount_MAIN_COUNTER_cy_9_Q : X_MUX2
    port map (
      IB => Mcount_MAIN_COUNTER_cy(8),
      IA => N2,
      SEL => Mcount_MAIN_COUNTER_cy_9_rt_182,
      O => Mcount_MAIN_COUNTER_cy(9)
    );
  Mcount_MAIN_COUNTER_xor_9_Q : X_XOR2
    port map (
      I0 => Mcount_MAIN_COUNTER_cy(8),
      I1 => Mcount_MAIN_COUNTER_cy_9_rt_182,
      O => Result_9_1
    );
  Mcount_MAIN_COUNTER_cy_10_Q : X_MUX2
    port map (
      IB => Mcount_MAIN_COUNTER_cy(9),
      IA => N2,
      SEL => Mcount_MAIN_COUNTER_cy_10_rt_156,
      O => Mcount_MAIN_COUNTER_cy(10)
    );
  Mcount_MAIN_COUNTER_xor_10_Q : X_XOR2
    port map (
      I0 => Mcount_MAIN_COUNTER_cy(9),
      I1 => Mcount_MAIN_COUNTER_cy_10_rt_156,
      O => Result_10_1
    );
  Mcount_MAIN_COUNTER_cy_11_Q : X_MUX2
    port map (
      IB => Mcount_MAIN_COUNTER_cy(10),
      IA => N2,
      SEL => Mcount_MAIN_COUNTER_cy_11_rt_158,
      O => Mcount_MAIN_COUNTER_cy(11)
    );
  Mcount_MAIN_COUNTER_xor_11_Q : X_XOR2
    port map (
      I0 => Mcount_MAIN_COUNTER_cy(10),
      I1 => Mcount_MAIN_COUNTER_cy_11_rt_158,
      O => Result_11_1
    );
  Mcount_MAIN_COUNTER_cy_12_Q : X_MUX2
    port map (
      IB => Mcount_MAIN_COUNTER_cy(11),
      IA => N2,
      SEL => Mcount_MAIN_COUNTER_cy_12_rt_160,
      O => Mcount_MAIN_COUNTER_cy(12)
    );
  Mcount_MAIN_COUNTER_xor_12_Q : X_XOR2
    port map (
      I0 => Mcount_MAIN_COUNTER_cy(11),
      I1 => Mcount_MAIN_COUNTER_cy_12_rt_160,
      O => Result_12_1
    );
  Mcount_MAIN_COUNTER_cy_13_Q : X_MUX2
    port map (
      IB => Mcount_MAIN_COUNTER_cy(12),
      IA => N2,
      SEL => Mcount_MAIN_COUNTER_cy_13_rt_162,
      O => Mcount_MAIN_COUNTER_cy(13)
    );
  Mcount_MAIN_COUNTER_xor_13_Q : X_XOR2
    port map (
      I0 => Mcount_MAIN_COUNTER_cy(12),
      I1 => Mcount_MAIN_COUNTER_cy_13_rt_162,
      O => Result_13_1
    );
  Mcount_MAIN_COUNTER_cy_14_Q : X_MUX2
    port map (
      IB => Mcount_MAIN_COUNTER_cy(13),
      IA => N2,
      SEL => Mcount_MAIN_COUNTER_cy_14_rt_164,
      O => Mcount_MAIN_COUNTER_cy(14)
    );
  Mcount_MAIN_COUNTER_xor_14_Q : X_XOR2
    port map (
      I0 => Mcount_MAIN_COUNTER_cy(13),
      I1 => Mcount_MAIN_COUNTER_cy_14_rt_164,
      O => Result_14_1
    );
  Mcount_MAIN_COUNTER_xor_15_Q : X_XOR2
    port map (
      I0 => Mcount_MAIN_COUNTER_cy(14),
      I1 => Mcount_MAIN_COUNTER_xor_15_rt_184,
      O => Result_15_1
    );
  COUNTER_OVF_cmp_eq0000_wg_lut_0_Q : X_LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      ADR0 => COUNTER(8),
      ADR1 => COUNTER(9),
      ADR2 => COUNTER(7),
      ADR3 => COUNTER(10),
      O => COUNTER_OVF_cmp_eq0000_wg_lut(0)
    );
  COUNTER_OVF_cmp_eq0000_wg_cy_0_Q : X_MUX2
    port map (
      IB => led_decode_inst_Mrom_SEG_DATA7,
      IA => N2,
      SEL => COUNTER_OVF_cmp_eq0000_wg_lut(0),
      O => COUNTER_OVF_cmp_eq0000_wg_cy(0)
    );
  COUNTER_OVF_cmp_eq0000_wg_lut_1_Q : X_LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      ADR0 => COUNTER(11),
      ADR1 => COUNTER(12),
      ADR2 => COUNTER(6),
      ADR3 => COUNTER(13),
      O => COUNTER_OVF_cmp_eq0000_wg_lut(1)
    );
  COUNTER_OVF_cmp_eq0000_wg_cy_1_Q : X_MUX2
    port map (
      IB => COUNTER_OVF_cmp_eq0000_wg_cy(0),
      IA => N2,
      SEL => COUNTER_OVF_cmp_eq0000_wg_lut(1),
      O => COUNTER_OVF_cmp_eq0000_wg_cy(1)
    );
  COUNTER_OVF_cmp_eq0000_wg_lut_2_Q : X_LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      ADR0 => COUNTER(14),
      ADR1 => COUNTER(15),
      ADR2 => COUNTER(5),
      ADR3 => COUNTER(16),
      O => COUNTER_OVF_cmp_eq0000_wg_lut(2)
    );
  COUNTER_OVF_cmp_eq0000_wg_cy_2_Q : X_MUX2
    port map (
      IB => COUNTER_OVF_cmp_eq0000_wg_cy(1),
      IA => N2,
      SEL => COUNTER_OVF_cmp_eq0000_wg_lut(2),
      O => COUNTER_OVF_cmp_eq0000_wg_cy(2)
    );
  COUNTER_OVF_cmp_eq0000_wg_lut_3_Q : X_LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      ADR0 => COUNTER(17),
      ADR1 => COUNTER(18),
      ADR2 => COUNTER(4),
      ADR3 => COUNTER(19),
      O => COUNTER_OVF_cmp_eq0000_wg_lut(3)
    );
  COUNTER_OVF_cmp_eq0000_wg_cy_3_Q : X_MUX2
    port map (
      IB => COUNTER_OVF_cmp_eq0000_wg_cy(2),
      IA => N2,
      SEL => COUNTER_OVF_cmp_eq0000_wg_lut(3),
      O => COUNTER_OVF_cmp_eq0000_wg_cy(3)
    );
  COUNTER_OVF_cmp_eq0000_wg_lut_4_Q : X_LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      ADR0 => COUNTER(20),
      ADR1 => COUNTER(21),
      ADR2 => COUNTER(3),
      ADR3 => COUNTER(22),
      O => COUNTER_OVF_cmp_eq0000_wg_lut(4)
    );
  COUNTER_OVF_cmp_eq0000_wg_cy_4_Q : X_MUX2
    port map (
      IB => COUNTER_OVF_cmp_eq0000_wg_cy(3),
      IA => N2,
      SEL => COUNTER_OVF_cmp_eq0000_wg_lut(4),
      O => COUNTER_OVF_cmp_eq0000_wg_cy(4)
    );
  COUNTER_OVF_cmp_eq0000_wg_lut_5_Q : X_LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      ADR0 => COUNTER(23),
      ADR1 => COUNTER(24),
      ADR2 => COUNTER(2),
      ADR3 => COUNTER(25),
      O => COUNTER_OVF_cmp_eq0000_wg_lut(5)
    );
  COUNTER_OVF_cmp_eq0000_wg_cy_5_Q : X_MUX2
    port map (
      IB => COUNTER_OVF_cmp_eq0000_wg_cy(4),
      IA => N2,
      SEL => COUNTER_OVF_cmp_eq0000_wg_lut(5),
      O => COUNTER_OVF_cmp_eq0000_wg_cy(5)
    );
  COUNTER_OVF_cmp_eq0000_wg_lut_6_Q : X_LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      ADR0 => COUNTER(26),
      ADR1 => COUNTER(27),
      ADR2 => COUNTER(1),
      ADR3 => COUNTER(28),
      O => COUNTER_OVF_cmp_eq0000_wg_lut(6)
    );
  COUNTER_OVF_cmp_eq0000_wg_cy_6_Q : X_MUX2
    port map (
      IB => COUNTER_OVF_cmp_eq0000_wg_cy(5),
      IA => N2,
      SEL => COUNTER_OVF_cmp_eq0000_wg_lut(6),
      O => COUNTER_OVF_cmp_eq0000_wg_cy(6)
    );
  COUNTER_OVF_cmp_eq0000_wg_lut_7_Q : X_LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      ADR0 => COUNTER(29),
      ADR1 => COUNTER(30),
      ADR2 => COUNTER(0),
      ADR3 => COUNTER(31),
      O => COUNTER_OVF_cmp_eq0000_wg_lut(7)
    );
  COUNTER_OVF_cmp_eq0000_wg_cy_7_Q : X_MUX2
    port map (
      IB => COUNTER_OVF_cmp_eq0000_wg_cy(6),
      IA => N2,
      SEL => COUNTER_OVF_cmp_eq0000_wg_lut(7),
      O => COUNTER_OVF
    );
  lab2_example_inst_DLY_OVF_cmp_eq0000_wg_lut_0_Q : X_LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      ADR0 => lab2_example_inst_COUNTER(8),
      ADR1 => lab2_example_inst_COUNTER(9),
      ADR2 => lab2_example_inst_COUNTER(7),
      ADR3 => lab2_example_inst_COUNTER(10),
      O => lab2_example_inst_DLY_OVF_cmp_eq0000_wg_lut(0)
    );
  lab2_example_inst_DLY_OVF_cmp_eq0000_wg_cy_0_Q : X_MUX2
    port map (
      IB => led_decode_inst_Mrom_SEG_DATA7,
      IA => N2,
      SEL => lab2_example_inst_DLY_OVF_cmp_eq0000_wg_lut(0),
      O => lab2_example_inst_DLY_OVF_cmp_eq0000_wg_cy(0)
    );
  lab2_example_inst_DLY_OVF_cmp_eq0000_wg_lut_1_Q : X_LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      ADR0 => lab2_example_inst_COUNTER(11),
      ADR1 => lab2_example_inst_COUNTER(12),
      ADR2 => lab2_example_inst_COUNTER(13),
      ADR3 => lab2_example_inst_COUNTER(6),
      O => lab2_example_inst_DLY_OVF_cmp_eq0000_wg_lut(1)
    );
  lab2_example_inst_DLY_OVF_cmp_eq0000_wg_cy_1_Q : X_MUX2
    port map (
      IB => lab2_example_inst_DLY_OVF_cmp_eq0000_wg_cy(0),
      IA => N2,
      SEL => lab2_example_inst_DLY_OVF_cmp_eq0000_wg_lut(1),
      O => lab2_example_inst_DLY_OVF_cmp_eq0000_wg_cy(1)
    );
  lab2_example_inst_DLY_OVF_cmp_eq0000_wg_lut_2_Q : X_LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      ADR0 => lab2_example_inst_COUNTER(14),
      ADR1 => lab2_example_inst_COUNTER(15),
      ADR2 => lab2_example_inst_COUNTER(16),
      ADR3 => lab2_example_inst_COUNTER(5),
      O => lab2_example_inst_DLY_OVF_cmp_eq0000_wg_lut(2)
    );
  lab2_example_inst_DLY_OVF_cmp_eq0000_wg_cy_2_Q : X_MUX2
    port map (
      IB => lab2_example_inst_DLY_OVF_cmp_eq0000_wg_cy(1),
      IA => N2,
      SEL => lab2_example_inst_DLY_OVF_cmp_eq0000_wg_lut(2),
      O => lab2_example_inst_DLY_OVF_cmp_eq0000_wg_cy(2)
    );
  lab2_example_inst_DLY_OVF_cmp_eq0000_wg_lut_3_Q : X_LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      ADR0 => lab2_example_inst_COUNTER(17),
      ADR1 => lab2_example_inst_COUNTER(18),
      ADR2 => lab2_example_inst_COUNTER(19),
      ADR3 => lab2_example_inst_COUNTER(4),
      O => lab2_example_inst_DLY_OVF_cmp_eq0000_wg_lut(3)
    );
  lab2_example_inst_DLY_OVF_cmp_eq0000_wg_cy_3_Q : X_MUX2
    port map (
      IB => lab2_example_inst_DLY_OVF_cmp_eq0000_wg_cy(2),
      IA => N2,
      SEL => lab2_example_inst_DLY_OVF_cmp_eq0000_wg_lut(3),
      O => lab2_example_inst_DLY_OVF_cmp_eq0000_wg_cy(3)
    );
  lab2_example_inst_DLY_OVF_cmp_eq0000_wg_lut_4_Q : X_LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      ADR0 => lab2_example_inst_COUNTER(20),
      ADR1 => lab2_example_inst_COUNTER(21),
      ADR2 => lab2_example_inst_COUNTER(22),
      ADR3 => lab2_example_inst_COUNTER(3),
      O => lab2_example_inst_DLY_OVF_cmp_eq0000_wg_lut(4)
    );
  lab2_example_inst_DLY_OVF_cmp_eq0000_wg_cy_4_Q : X_MUX2
    port map (
      IB => lab2_example_inst_DLY_OVF_cmp_eq0000_wg_cy(3),
      IA => N2,
      SEL => lab2_example_inst_DLY_OVF_cmp_eq0000_wg_lut(4),
      O => lab2_example_inst_DLY_OVF_cmp_eq0000_wg_cy(4)
    );
  lab2_example_inst_DLY_OVF_cmp_eq0000_wg_lut_5_Q : X_LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      ADR0 => lab2_example_inst_COUNTER(23),
      ADR1 => lab2_example_inst_COUNTER(24),
      ADR2 => lab2_example_inst_COUNTER(25),
      ADR3 => lab2_example_inst_COUNTER(2),
      O => lab2_example_inst_DLY_OVF_cmp_eq0000_wg_lut(5)
    );
  lab2_example_inst_DLY_OVF_cmp_eq0000_wg_cy_5_Q : X_MUX2
    port map (
      IB => lab2_example_inst_DLY_OVF_cmp_eq0000_wg_cy(4),
      IA => N2,
      SEL => lab2_example_inst_DLY_OVF_cmp_eq0000_wg_lut(5),
      O => lab2_example_inst_DLY_OVF_cmp_eq0000_wg_cy(5)
    );
  lab2_example_inst_DLY_OVF_cmp_eq0000_wg_lut_6_Q : X_LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      ADR0 => lab2_example_inst_COUNTER(26),
      ADR1 => lab2_example_inst_COUNTER(27),
      ADR2 => lab2_example_inst_COUNTER(28),
      ADR3 => lab2_example_inst_COUNTER(1),
      O => lab2_example_inst_DLY_OVF_cmp_eq0000_wg_lut(6)
    );
  lab2_example_inst_DLY_OVF_cmp_eq0000_wg_cy_6_Q : X_MUX2
    port map (
      IB => lab2_example_inst_DLY_OVF_cmp_eq0000_wg_cy(5),
      IA => N2,
      SEL => lab2_example_inst_DLY_OVF_cmp_eq0000_wg_lut(6),
      O => lab2_example_inst_DLY_OVF_cmp_eq0000_wg_cy(6)
    );
  lab2_example_inst_DLY_OVF_cmp_eq0000_wg_lut_7_Q : X_LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      ADR0 => lab2_example_inst_COUNTER(29),
      ADR1 => lab2_example_inst_COUNTER(30),
      ADR2 => lab2_example_inst_COUNTER(31),
      ADR3 => lab2_example_inst_COUNTER(0),
      O => lab2_example_inst_DLY_OVF_cmp_eq0000_wg_lut(7)
    );
  lab2_example_inst_DLY_OVF_cmp_eq0000_wg_cy_7_Q : X_MUX2
    port map (
      IB => lab2_example_inst_DLY_OVF_cmp_eq0000_wg_cy(6),
      IA => N2,
      SEL => lab2_example_inst_DLY_OVF_cmp_eq0000_wg_lut(7),
      O => lab2_example_inst_DLY_OVF
    );
  led_decode_inst_Mrom_SEG_DATA21 : X_LUT4
    generic map(
      INIT => X"445C"
    )
    port map (
      ADR0 => D_int(3),
      ADR1 => D_int(0),
      ADR2 => D_int(2),
      ADR3 => D_int(1),
      O => led_decode_inst_Mrom_SEG_DATA2
    );
  led_decode_inst_Mrom_SEG_DATA41 : X_LUT4
    generic map(
      INIT => X"80C2"
    )
    port map (
      ADR0 => D_int(1),
      ADR1 => D_int(2),
      ADR2 => D_int(3),
      ADR3 => D_int(0),
      O => led_decode_inst_Mrom_SEG_DATA4
    );
  led_decode_inst_Mrom_SEG_DATA51 : X_LUT4
    generic map(
      INIT => X"AC48"
    )
    port map (
      ADR0 => D_int(3),
      ADR1 => D_int(2),
      ADR2 => D_int(0),
      ADR3 => D_int(1),
      O => led_decode_inst_Mrom_SEG_DATA5
    );
  led_decode_inst_Mrom_SEG_DATA111 : X_LUT4
    generic map(
      INIT => X"6054"
    )
    port map (
      ADR0 => D_int(3),
      ADR1 => D_int(1),
      ADR2 => D_int(0),
      ADR3 => D_int(2),
      O => led_decode_inst_Mrom_SEG_DATA1
    );
  led_decode_inst_Mrom_SEG_DATA11 : X_LUT4
    generic map(
      INIT => X"2141"
    )
    port map (
      ADR0 => D_int(1),
      ADR1 => D_int(3),
      ADR2 => D_int(2),
      ADR3 => D_int(0),
      O => led_decode_inst_Mrom_SEG_DATA
    );
  led_decode_inst_Mrom_SEG_DATA31 : X_LUT4
    generic map(
      INIT => X"9806"
    )
    port map (
      ADR0 => D_int(0),
      ADR1 => D_int(2),
      ADR2 => D_int(3),
      ADR3 => D_int(1),
      O => led_decode_inst_Mrom_SEG_DATA3
    );
  led_decode_inst_Mrom_SEG_DATA61 : X_LUT4
    generic map(
      INIT => X"4184"
    )
    port map (
      ADR0 => D_int(1),
      ADR1 => D_int(0),
      ADR2 => D_int(3),
      ADR3 => D_int(2),
      O => led_decode_inst_Mrom_SEG_DATA6
    );
  ssd_inst_D_3_or000010 : X_LUT4
    generic map(
      INIT => X"22F2"
    )
    port map (
      ADR0 => MAIN_COUNTER(15),
      ADR1 => ssd_inst_A_int(3),
      ADR2 => MAIN_COUNTER(11),
      ADR3 => ssd_inst_A_int(2),
      O => ssd_inst_D_3_or000010_399
    );
  ssd_inst_D_3_or000021 : X_LUT4
    generic map(
      INIT => X"22F2"
    )
    port map (
      ADR0 => MAIN_COUNTER(7),
      ADR1 => ssd_inst_A_int(1),
      ADR2 => MAIN_COUNTER(3),
      ADR3 => ssd_inst_A_int(0),
      O => ssd_inst_D_3_or000021_400
    );
  ssd_inst_D_3_or000022 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => ssd_inst_D_3_or000010_399,
      ADR1 => ssd_inst_D_3_or000021_400,
      O => D_int(3)
    );
  ssd_inst_D_2_or000010 : X_LUT4
    generic map(
      INIT => X"22F2"
    )
    port map (
      ADR0 => MAIN_COUNTER(14),
      ADR1 => ssd_inst_A_int(3),
      ADR2 => MAIN_COUNTER(10),
      ADR3 => ssd_inst_A_int(2),
      O => ssd_inst_D_2_or000010_397
    );
  ssd_inst_D_2_or000021 : X_LUT4
    generic map(
      INIT => X"22F2"
    )
    port map (
      ADR0 => MAIN_COUNTER(6),
      ADR1 => ssd_inst_A_int(1),
      ADR2 => MAIN_COUNTER(2),
      ADR3 => ssd_inst_A_int(0),
      O => ssd_inst_D_2_or000021_398
    );
  ssd_inst_D_2_or000022 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => ssd_inst_D_2_or000010_397,
      ADR1 => ssd_inst_D_2_or000021_398,
      O => D_int(2)
    );
  ssd_inst_D_1_or000010 : X_LUT4
    generic map(
      INIT => X"22F2"
    )
    port map (
      ADR0 => MAIN_COUNTER(9),
      ADR1 => ssd_inst_A_int(2),
      ADR2 => MAIN_COUNTER(13),
      ADR3 => ssd_inst_A_int(3),
      O => ssd_inst_D_1_or000010_395
    );
  ssd_inst_D_1_or000021 : X_LUT4
    generic map(
      INIT => X"22F2"
    )
    port map (
      ADR0 => MAIN_COUNTER(1),
      ADR1 => ssd_inst_A_int(0),
      ADR2 => MAIN_COUNTER(5),
      ADR3 => ssd_inst_A_int(1),
      O => ssd_inst_D_1_or000021_396
    );
  ssd_inst_D_1_or000022 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => ssd_inst_D_1_or000010_395,
      ADR1 => ssd_inst_D_1_or000021_396,
      O => D_int(1)
    );
  ssd_inst_D_0_or000010 : X_LUT4
    generic map(
      INIT => X"22F2"
    )
    port map (
      ADR0 => MAIN_COUNTER(8),
      ADR1 => ssd_inst_A_int(2),
      ADR2 => MAIN_COUNTER(12),
      ADR3 => ssd_inst_A_int(3),
      O => ssd_inst_D_0_or000010_393
    );
  ssd_inst_D_0_or000021 : X_LUT4
    generic map(
      INIT => X"22F2"
    )
    port map (
      ADR0 => MAIN_COUNTER(0),
      ADR1 => ssd_inst_A_int(0),
      ADR2 => MAIN_COUNTER(4),
      ADR3 => ssd_inst_A_int(1),
      O => ssd_inst_D_0_or000021_394
    );
  ssd_inst_D_0_or000022 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => ssd_inst_D_0_or000010_393,
      ADR1 => ssd_inst_D_0_or000021_394,
      O => D_int(0)
    );
  lab2_example_inst_COUNTER_or00001 : X_LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      ADR0 => lab2_example_inst_S(0),
      ADR1 => RESET_IBUF_187,
      O => lab2_example_inst_COUNTER_or0000
    );
  lab2_example_inst_Mxor_CNT_Result1 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => lab2_example_inst_S(0),
      ADR1 => lab2_example_inst_S(1),
      O => CNT_int
    );
  lab2_example_inst_SN_1_or00001 : X_LUT3
    generic map(
      INIT => X"6C"
    )
    port map (
      ADR0 => lab2_example_inst_DLY_OVF,
      ADR1 => lab2_example_inst_S(1),
      ADR2 => lab2_example_inst_S(0),
      O => lab2_example_inst_SN(1)
    );
  lab2_example_inst_SN_0_or00001 : X_LUT4
    generic map(
      INIT => X"14BE"
    )
    port map (
      ADR0 => lab2_example_inst_S(0),
      ADR1 => lab2_example_inst_S(1),
      ADR2 => COUNT_IBUF_62,
      ADR3 => lab2_example_inst_DLY_OVF,
      O => lab2_example_inst_SN(0)
    );
  COUNTER_or00001 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => RESET_IBUF_187,
      ADR1 => COUNTER_OVF,
      O => COUNTER_or0000
    );
  RESET_IBUF : X_BUF
    port map (
      I => RESET,
      O => RESET_IBUF_187
    );
  COUNT_IBUF : X_BUF
    port map (
      I => COUNT,
      O => COUNT_IBUF_62
    );
  lab2_example_inst_Mcount_COUNTER_cy_1_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => lab2_example_inst_COUNTER(1),
      O => lab2_example_inst_Mcount_COUNTER_cy_1_rt_337,
      ADR1 => GND
    );
  lab2_example_inst_Mcount_COUNTER_cy_2_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => lab2_example_inst_COUNTER(2),
      O => lab2_example_inst_Mcount_COUNTER_cy_2_rt_359,
      ADR1 => GND
    );
  lab2_example_inst_Mcount_COUNTER_cy_3_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => lab2_example_inst_COUNTER(3),
      O => lab2_example_inst_Mcount_COUNTER_cy_3_rt_363,
      ADR1 => GND
    );
  lab2_example_inst_Mcount_COUNTER_cy_4_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => lab2_example_inst_COUNTER(4),
      O => lab2_example_inst_Mcount_COUNTER_cy_4_rt_365,
      ADR1 => GND
    );
  lab2_example_inst_Mcount_COUNTER_cy_5_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => lab2_example_inst_COUNTER(5),
      O => lab2_example_inst_Mcount_COUNTER_cy_5_rt_367,
      ADR1 => GND
    );
  lab2_example_inst_Mcount_COUNTER_cy_6_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => lab2_example_inst_COUNTER(6),
      O => lab2_example_inst_Mcount_COUNTER_cy_6_rt_369,
      ADR1 => GND
    );
  lab2_example_inst_Mcount_COUNTER_cy_7_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => lab2_example_inst_COUNTER(7),
      O => lab2_example_inst_Mcount_COUNTER_cy_7_rt_371,
      ADR1 => GND
    );
  lab2_example_inst_Mcount_COUNTER_cy_8_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => lab2_example_inst_COUNTER(8),
      O => lab2_example_inst_Mcount_COUNTER_cy_8_rt_373,
      ADR1 => GND
    );
  lab2_example_inst_Mcount_COUNTER_cy_9_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => lab2_example_inst_COUNTER(9),
      O => lab2_example_inst_Mcount_COUNTER_cy_9_rt_375,
      ADR1 => GND
    );
  lab2_example_inst_Mcount_COUNTER_cy_10_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => lab2_example_inst_COUNTER(10),
      O => lab2_example_inst_Mcount_COUNTER_cy_10_rt_317,
      ADR1 => GND
    );
  lab2_example_inst_Mcount_COUNTER_cy_11_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => lab2_example_inst_COUNTER(11),
      O => lab2_example_inst_Mcount_COUNTER_cy_11_rt_319,
      ADR1 => GND
    );
  lab2_example_inst_Mcount_COUNTER_cy_12_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => lab2_example_inst_COUNTER(12),
      O => lab2_example_inst_Mcount_COUNTER_cy_12_rt_321,
      ADR1 => GND
    );
  lab2_example_inst_Mcount_COUNTER_cy_13_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => lab2_example_inst_COUNTER(13),
      O => lab2_example_inst_Mcount_COUNTER_cy_13_rt_323,
      ADR1 => GND
    );
  lab2_example_inst_Mcount_COUNTER_cy_14_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => lab2_example_inst_COUNTER(14),
      O => lab2_example_inst_Mcount_COUNTER_cy_14_rt_325,
      ADR1 => GND
    );
  lab2_example_inst_Mcount_COUNTER_cy_15_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => lab2_example_inst_COUNTER(15),
      O => lab2_example_inst_Mcount_COUNTER_cy_15_rt_327,
      ADR1 => GND
    );
  lab2_example_inst_Mcount_COUNTER_cy_16_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => lab2_example_inst_COUNTER(16),
      O => lab2_example_inst_Mcount_COUNTER_cy_16_rt_329,
      ADR1 => GND
    );
  lab2_example_inst_Mcount_COUNTER_cy_17_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => lab2_example_inst_COUNTER(17),
      O => lab2_example_inst_Mcount_COUNTER_cy_17_rt_331,
      ADR1 => GND
    );
  lab2_example_inst_Mcount_COUNTER_cy_18_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => lab2_example_inst_COUNTER(18),
      O => lab2_example_inst_Mcount_COUNTER_cy_18_rt_333,
      ADR1 => GND
    );
  lab2_example_inst_Mcount_COUNTER_cy_19_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => lab2_example_inst_COUNTER(19),
      O => lab2_example_inst_Mcount_COUNTER_cy_19_rt_335,
      ADR1 => GND
    );
  lab2_example_inst_Mcount_COUNTER_cy_20_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => lab2_example_inst_COUNTER(20),
      O => lab2_example_inst_Mcount_COUNTER_cy_20_rt_339,
      ADR1 => GND
    );
  lab2_example_inst_Mcount_COUNTER_cy_21_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => lab2_example_inst_COUNTER(21),
      O => lab2_example_inst_Mcount_COUNTER_cy_21_rt_341,
      ADR1 => GND
    );
  lab2_example_inst_Mcount_COUNTER_cy_22_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => lab2_example_inst_COUNTER(22),
      O => lab2_example_inst_Mcount_COUNTER_cy_22_rt_343,
      ADR1 => GND
    );
  lab2_example_inst_Mcount_COUNTER_cy_23_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => lab2_example_inst_COUNTER(23),
      O => lab2_example_inst_Mcount_COUNTER_cy_23_rt_345,
      ADR1 => GND
    );
  lab2_example_inst_Mcount_COUNTER_cy_24_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => lab2_example_inst_COUNTER(24),
      O => lab2_example_inst_Mcount_COUNTER_cy_24_rt_347,
      ADR1 => GND
    );
  lab2_example_inst_Mcount_COUNTER_cy_25_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => lab2_example_inst_COUNTER(25),
      O => lab2_example_inst_Mcount_COUNTER_cy_25_rt_349,
      ADR1 => GND
    );
  lab2_example_inst_Mcount_COUNTER_cy_26_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => lab2_example_inst_COUNTER(26),
      O => lab2_example_inst_Mcount_COUNTER_cy_26_rt_351,
      ADR1 => GND
    );
  lab2_example_inst_Mcount_COUNTER_cy_27_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => lab2_example_inst_COUNTER(27),
      O => lab2_example_inst_Mcount_COUNTER_cy_27_rt_353,
      ADR1 => GND
    );
  lab2_example_inst_Mcount_COUNTER_cy_28_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => lab2_example_inst_COUNTER(28),
      O => lab2_example_inst_Mcount_COUNTER_cy_28_rt_355,
      ADR1 => GND
    );
  lab2_example_inst_Mcount_COUNTER_cy_29_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => lab2_example_inst_COUNTER(29),
      O => lab2_example_inst_Mcount_COUNTER_cy_29_rt_357,
      ADR1 => GND
    );
  lab2_example_inst_Mcount_COUNTER_cy_30_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => lab2_example_inst_COUNTER(30),
      O => lab2_example_inst_Mcount_COUNTER_cy_30_rt_361,
      ADR1 => GND
    );
  Mcount_COUNTER_cy_1_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => COUNTER(1),
      O => Mcount_COUNTER_cy_1_rt_113,
      ADR1 => GND
    );
  Mcount_COUNTER_cy_2_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => COUNTER(2),
      O => Mcount_COUNTER_cy_2_rt_135,
      ADR1 => GND
    );
  Mcount_COUNTER_cy_3_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => COUNTER(3),
      O => Mcount_COUNTER_cy_3_rt_139,
      ADR1 => GND
    );
  Mcount_COUNTER_cy_4_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => COUNTER(4),
      O => Mcount_COUNTER_cy_4_rt_141,
      ADR1 => GND
    );
  Mcount_COUNTER_cy_5_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => COUNTER(5),
      O => Mcount_COUNTER_cy_5_rt_143,
      ADR1 => GND
    );
  Mcount_COUNTER_cy_6_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => COUNTER(6),
      O => Mcount_COUNTER_cy_6_rt_145,
      ADR1 => GND
    );
  Mcount_COUNTER_cy_7_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => COUNTER(7),
      O => Mcount_COUNTER_cy_7_rt_147,
      ADR1 => GND
    );
  Mcount_COUNTER_cy_8_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => COUNTER(8),
      O => Mcount_COUNTER_cy_8_rt_149,
      ADR1 => GND
    );
  Mcount_COUNTER_cy_9_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => COUNTER(9),
      O => Mcount_COUNTER_cy_9_rt_151,
      ADR1 => GND
    );
  Mcount_COUNTER_cy_10_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => COUNTER(10),
      O => Mcount_COUNTER_cy_10_rt_93,
      ADR1 => GND
    );
  Mcount_COUNTER_cy_11_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => COUNTER(11),
      O => Mcount_COUNTER_cy_11_rt_95,
      ADR1 => GND
    );
  Mcount_COUNTER_cy_12_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => COUNTER(12),
      O => Mcount_COUNTER_cy_12_rt_97,
      ADR1 => GND
    );
  Mcount_COUNTER_cy_13_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => COUNTER(13),
      O => Mcount_COUNTER_cy_13_rt_99,
      ADR1 => GND
    );
  Mcount_COUNTER_cy_14_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => COUNTER(14),
      O => Mcount_COUNTER_cy_14_rt_101,
      ADR1 => GND
    );
  Mcount_COUNTER_cy_15_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => COUNTER(15),
      O => Mcount_COUNTER_cy_15_rt_103,
      ADR1 => GND
    );
  Mcount_COUNTER_cy_16_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => COUNTER(16),
      O => Mcount_COUNTER_cy_16_rt_105,
      ADR1 => GND
    );
  Mcount_COUNTER_cy_17_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => COUNTER(17),
      O => Mcount_COUNTER_cy_17_rt_107,
      ADR1 => GND
    );
  Mcount_COUNTER_cy_18_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => COUNTER(18),
      O => Mcount_COUNTER_cy_18_rt_109,
      ADR1 => GND
    );
  Mcount_COUNTER_cy_19_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => COUNTER(19),
      O => Mcount_COUNTER_cy_19_rt_111,
      ADR1 => GND
    );
  Mcount_COUNTER_cy_20_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => COUNTER(20),
      O => Mcount_COUNTER_cy_20_rt_115,
      ADR1 => GND
    );
  Mcount_COUNTER_cy_21_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => COUNTER(21),
      O => Mcount_COUNTER_cy_21_rt_117,
      ADR1 => GND
    );
  Mcount_COUNTER_cy_22_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => COUNTER(22),
      O => Mcount_COUNTER_cy_22_rt_119,
      ADR1 => GND
    );
  Mcount_COUNTER_cy_23_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => COUNTER(23),
      O => Mcount_COUNTER_cy_23_rt_121,
      ADR1 => GND
    );
  Mcount_COUNTER_cy_24_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => COUNTER(24),
      O => Mcount_COUNTER_cy_24_rt_123,
      ADR1 => GND
    );
  Mcount_COUNTER_cy_25_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => COUNTER(25),
      O => Mcount_COUNTER_cy_25_rt_125,
      ADR1 => GND
    );
  Mcount_COUNTER_cy_26_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => COUNTER(26),
      O => Mcount_COUNTER_cy_26_rt_127,
      ADR1 => GND
    );
  Mcount_COUNTER_cy_27_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => COUNTER(27),
      O => Mcount_COUNTER_cy_27_rt_129,
      ADR1 => GND
    );
  Mcount_COUNTER_cy_28_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => COUNTER(28),
      O => Mcount_COUNTER_cy_28_rt_131,
      ADR1 => GND
    );
  Mcount_COUNTER_cy_29_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => COUNTER(29),
      O => Mcount_COUNTER_cy_29_rt_133,
      ADR1 => GND
    );
  Mcount_COUNTER_cy_30_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => COUNTER(30),
      O => Mcount_COUNTER_cy_30_rt_137,
      ADR1 => GND
    );
  Mcount_MAIN_COUNTER_cy_1_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => MAIN_COUNTER(1),
      O => Mcount_MAIN_COUNTER_cy_1_rt_166,
      ADR1 => GND
    );
  Mcount_MAIN_COUNTER_cy_2_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => MAIN_COUNTER(2),
      O => Mcount_MAIN_COUNTER_cy_2_rt_168,
      ADR1 => GND
    );
  Mcount_MAIN_COUNTER_cy_3_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => MAIN_COUNTER(3),
      O => Mcount_MAIN_COUNTER_cy_3_rt_170,
      ADR1 => GND
    );
  Mcount_MAIN_COUNTER_cy_4_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => MAIN_COUNTER(4),
      O => Mcount_MAIN_COUNTER_cy_4_rt_172,
      ADR1 => GND
    );
  Mcount_MAIN_COUNTER_cy_5_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => MAIN_COUNTER(5),
      O => Mcount_MAIN_COUNTER_cy_5_rt_174,
      ADR1 => GND
    );
  Mcount_MAIN_COUNTER_cy_6_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => MAIN_COUNTER(6),
      O => Mcount_MAIN_COUNTER_cy_6_rt_176,
      ADR1 => GND
    );
  Mcount_MAIN_COUNTER_cy_7_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => MAIN_COUNTER(7),
      O => Mcount_MAIN_COUNTER_cy_7_rt_178,
      ADR1 => GND
    );
  Mcount_MAIN_COUNTER_cy_8_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => MAIN_COUNTER(8),
      O => Mcount_MAIN_COUNTER_cy_8_rt_180,
      ADR1 => GND
    );
  Mcount_MAIN_COUNTER_cy_9_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => MAIN_COUNTER(9),
      O => Mcount_MAIN_COUNTER_cy_9_rt_182,
      ADR1 => GND
    );
  Mcount_MAIN_COUNTER_cy_10_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => MAIN_COUNTER(10),
      O => Mcount_MAIN_COUNTER_cy_10_rt_156,
      ADR1 => GND
    );
  Mcount_MAIN_COUNTER_cy_11_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => MAIN_COUNTER(11),
      O => Mcount_MAIN_COUNTER_cy_11_rt_158,
      ADR1 => GND
    );
  Mcount_MAIN_COUNTER_cy_12_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => MAIN_COUNTER(12),
      O => Mcount_MAIN_COUNTER_cy_12_rt_160,
      ADR1 => GND
    );
  Mcount_MAIN_COUNTER_cy_13_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => MAIN_COUNTER(13),
      O => Mcount_MAIN_COUNTER_cy_13_rt_162,
      ADR1 => GND
    );
  Mcount_MAIN_COUNTER_cy_14_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => MAIN_COUNTER(14),
      O => Mcount_MAIN_COUNTER_cy_14_rt_164,
      ADR1 => GND
    );
  lab2_example_inst_Mcount_COUNTER_xor_31_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => lab2_example_inst_COUNTER(31),
      O => lab2_example_inst_Mcount_COUNTER_xor_31_rt_376,
      ADR1 => GND
    );
  Mcount_COUNTER_xor_31_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => COUNTER(31),
      O => Mcount_COUNTER_xor_31_rt_153,
      ADR1 => GND
    );
  Mcount_MAIN_COUNTER_xor_15_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => MAIN_COUNTER(15),
      O => Mcount_MAIN_COUNTER_xor_15_rt_184,
      ADR1 => GND
    );
  CNT_RISE_and00001 : X_LUT3
    generic map(
      INIT => X"14"
    )
    port map (
      ADR0 => CNT_ff_10,
      ADR1 => lab2_example_inst_S(1),
      ADR2 => lab2_example_inst_S(0),
      O => CNT_RISE
    );
  lab2_example_inst_Mcount_COUNTER_lut_0_INV_0 : X_INV
    port map (
      I => lab2_example_inst_COUNTER(0),
      O => Result_0_2
    );
  Mcount_COUNTER_lut_0_INV_0 : X_INV
    port map (
      I => COUNTER(0),
      O => Mcount_COUNTER_lut(0)
    );
  Mcount_MAIN_COUNTER_lut_0_INV_0 : X_INV
    port map (
      I => MAIN_COUNTER(0),
      O => Mcount_MAIN_COUNTER_lut(0)
    );
  CLK_BUFGP_BUFG : X_CKBUF
    port map (
      I => CLK_BUFGP_IBUFG_2,
      O => CLK_BUFGP
    );
  CLK_BUFGP_IBUFG : X_CKBUF
    port map (
      I => CLK,
      O => CLK_BUFGP_IBUFG_2
    );
  A_0_OBUF : X_OBUF
    port map (
      I => ssd_inst_A_int(0),
      O => A(0)
    );
  A_1_OBUF : X_OBUF
    port map (
      I => ssd_inst_A_int(1),
      O => A(1)
    );
  A_2_OBUF : X_OBUF
    port map (
      I => ssd_inst_A_int(2),
      O => A(2)
    );
  A_3_OBUF : X_OBUF
    port map (
      I => ssd_inst_A_int(3),
      O => A(3)
    );
  LED_0_OBUF : X_OBUF
    port map (
      I => led_decode_inst_Mrom_SEG_DATA,
      O => LED(0)
    );
  LED_1_OBUF : X_OBUF
    port map (
      I => led_decode_inst_Mrom_SEG_DATA1,
      O => LED(1)
    );
  LED_2_OBUF : X_OBUF
    port map (
      I => led_decode_inst_Mrom_SEG_DATA2,
      O => LED(2)
    );
  LED_3_OBUF : X_OBUF
    port map (
      I => led_decode_inst_Mrom_SEG_DATA3,
      O => LED(3)
    );
  LED_4_OBUF : X_OBUF
    port map (
      I => led_decode_inst_Mrom_SEG_DATA4,
      O => LED(4)
    );
  LED_5_OBUF : X_OBUF
    port map (
      I => led_decode_inst_Mrom_SEG_DATA5,
      O => LED(5)
    );
  LED_6_OBUF : X_OBUF
    port map (
      I => led_decode_inst_Mrom_SEG_DATA6,
      O => LED(6)
    );
  LED_7_OBUF : X_OBUF
    port map (
      I => led_decode_inst_Mrom_SEG_DATA7,
      O => LED(7)
    );
  NlwBlock_main_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_main_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

