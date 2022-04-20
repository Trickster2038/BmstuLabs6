--------------------------------------------------------------------------------
-- Copyright (c) 1995-2003 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1
--  \   \         Application : ISE
--  /   /         Filename : tb_wave.vhw
-- /___/   /\     Timestamp : Wed Mar 23 15:17:25 2022
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: tb_wave
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
library ieee;
use ieee.std_logic_1164.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY tb_wave IS
END tb_wave;

ARCHITECTURE testbench_arch OF tb_wave IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT lab2_example
        PORT (
            RST : In std_logic;
            CLK : In std_logic;
            COUNT : In std_logic;
            CNT : Out std_logic
        );
    END COMPONENT;

    SIGNAL RST : std_logic := '0';
    SIGNAL CLK : std_logic := '0';
    SIGNAL COUNT : std_logic := '0';
    SIGNAL CNT : std_logic := '0';

    constant PERIOD : time := 200 ns;
    constant DUTY_CYCLE : real := 0.5;
    constant OFFSET : time := 100 ns;

    BEGIN
        UUT : lab2_example
        PORT MAP (
            RST => RST,
            CLK => CLK,
            COUNT => COUNT,
            CNT => CNT
        );

        PROCESS    -- clock process for CLK
        BEGIN
            WAIT for OFFSET;
            CLOCK_LOOP : LOOP
                CLK <= '0';
                WAIT FOR (PERIOD - (PERIOD * DUTY_CYCLE));
                CLK <= '1';
                WAIT FOR (PERIOD * DUTY_CYCLE);
            END LOOP CLOCK_LOOP;
        END PROCESS;

        PROCESS
            BEGIN
                -- -------------  Current Time:  1985ns
                WAIT FOR 1985 ns;
                RST <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  6585ns
                WAIT FOR 4600 ns;
                RST <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  9985ns
                WAIT FOR 3400 ns;
                COUNT <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  11185ns
                WAIT FOR 1200 ns;
                COUNT <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  11985ns
                WAIT FOR 800 ns;
                COUNT <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  12985ns
                WAIT FOR 1000 ns;
                COUNT <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  13985ns
                WAIT FOR 1000 ns;
                COUNT <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  14585ns
                WAIT FOR 600 ns;
                COUNT <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  15385ns
                WAIT FOR 800 ns;
                COUNT <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  16585ns
                WAIT FOR 1200 ns;
                COUNT <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  17385ns
                WAIT FOR 800 ns;
                COUNT <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  18385ns
                WAIT FOR 1000 ns;
                COUNT <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  18985ns
                WAIT FOR 600 ns;
                COUNT <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  19585ns
                WAIT FOR 600 ns;
                COUNT <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  19985ns
                WAIT FOR 400 ns;
                COUNT <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  21385ns
                WAIT FOR 1400 ns;
                COUNT <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  22385ns
                WAIT FOR 1000 ns;
                COUNT <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  60985ns
                WAIT FOR 38600 ns;
                COUNT <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  61785ns
                WAIT FOR 800 ns;
                COUNT <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  62385ns
                WAIT FOR 600 ns;
                COUNT <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  63385ns
                WAIT FOR 1000 ns;
                COUNT <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  65385ns
                WAIT FOR 2000 ns;
                COUNT <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  66185ns
                WAIT FOR 800 ns;
                COUNT <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  67585ns
                WAIT FOR 1400 ns;
                COUNT <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  68985ns
                WAIT FOR 1400 ns;
                COUNT <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  69985ns
                WAIT FOR 1000 ns;
                COUNT <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  70185ns
                WAIT FOR 200 ns;
                COUNT <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  70585ns
                WAIT FOR 400 ns;
                COUNT <= '0';
                -- -------------------------------------
                WAIT FOR 29615 ns;

            END PROCESS;

    END testbench_arch;

