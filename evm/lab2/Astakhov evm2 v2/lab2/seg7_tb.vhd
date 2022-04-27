--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:56:48 04/20/2022
-- Design Name:   
-- Module Name:   C:/Users/user/Desktop/Astakhov evm2/lab2/seg7_tb.vhd
-- Project Name:  lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Seven_Segment_Driver
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;
 
ENTITY seg7_tb IS
END seg7_tb;
 
ARCHITECTURE behavior OF seg7_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Seven_Segment_Driver
    PORT(
         CLK : IN  std_logic;
         CLK_DIV : IN  std_logic;
         Q : IN  std_logic_vector(15 downto 0);
         RST : IN  std_logic;
         D : OUT  std_logic_vector(3 downto 0);
         A : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal CLK_DIV : std_logic := '0';
   signal Q : std_logic_vector(15 downto 0) := (others => '0');
   signal RST : std_logic := '0';

 	--Outputs
   signal D : std_logic_vector(3 downto 0);
   signal A : std_logic_vector(3 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Seven_Segment_Driver PORT MAP (
          CLK => CLK,
          CLK_DIV => CLK_DIV,
          Q => Q,
          RST => RST,
          D => D,
          A => A
        );
 
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --variable clock_period := 1ns;
 
   clock_process :process
   begin
		clk <= '0';
		wait for 50ns;
		clk <= '1';
		wait for 50ns;
   end process;
	
	clock_div_process :process
   begin
		clk_div <= '0';
		wait for 200ns;
		clk_div <= '1';
		wait for 200ns;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
		Q <= "0001001000110100"; -- 0001 0010 0011 0100
		wait for 100ns;
		rst <= '0';
		wait for 100ns;
		rst <= '1';
		wait for 100ns;
		rst <= '0';
      -- hold reset state for 100ms.
      wait for 100ns;	
		
		
      wait for 1500ns;
      -- insert stimulus here 

      wait;
   end process;

END;
