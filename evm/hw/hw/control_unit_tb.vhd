--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:42:02 05/06/2022
-- Design Name:   
-- Module Name:   C:/Users/Professional/Desktop/BmstuLabs6/evm/hw/hw/control_unit_tb.vhd
-- Project Name:  hw
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: control_unit
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
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY control_unit_tb IS
END control_unit_tb;
 
ARCHITECTURE behavior OF control_unit_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT control_unit
    PORT(
         C : IN  std_logic_vector(5 downto 0);
         CLK : IN  std_logic;
         RST : IN  std_logic;
         M : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal C : std_logic_vector(5 downto 0) := (others => '0');
   signal CLK : std_logic := '0';
   signal RST : std_logic := '0';

 	--Outputs
   signal M : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: control_unit PORT MAP (
          C => C,
          CLK => CLK,
          RST => RST,
          M => M
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
   
	   
	 

	   -- Stimulus process
	   stim_proc: process
	   begin		
		C <= "000000"; --S1 -> S1
        RST <= '0';
        WAIT FOR CLK_PERIOD;
        RST <= '1';
		
		-- Loop 1 --
		C <= "000000"; --S1 -> S1
        WAIT FOR CLK_PERIOD;
        C <= "001100"; --S1 -> S4
        WAIT FOR CLK_PERIOD;
		C <= "100001"; --S4 -> S4
        WAIT FOR CLK_PERIOD;
		C <= "000000"; --S4 -> S3
        WAIT FOR CLK_PERIOD;
		C <= "000000"; --S3 -> S3
        WAIT FOR CLK_PERIOD;
		C <= "000011"; --S3 -> S1
        WAIT FOR CLK_PERIOD;
		C <= "000000"; --S1 -> S1
        WAIT FOR CLK_PERIOD;
		
		-- Loop 2 --
		
		
        
       
		  wait;
	   end process;

END;
