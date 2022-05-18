----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:27:44 05/18/2022 
-- Design Name: 
-- Module Name:    main - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity main is
PORT ( CLK : IN std_logic;
	 COUNT : IN std_logic;
	 RESET : IN std_logic;
	 SW : IN std_logic_vector (5 DOWNTO 0);
	 LED : OUT std_logic_vector (7 DOWNTO 0));
end main;

architecture Behavioral of main is

COMPONENT control_unit
PORT (
    C : IN std_logic_vector (5 DOWNTO 0);
    CLK : IN std_logic; 
	 RST : IN std_logic;
    M : OUT std_logic_vector (7 DOWNTO 0) );
END COMPONENT;

COMPONENT stab
 PORT (
	 RST: IN STD_LOGIC; --��������� ������ ������
	 CLK: IN STD_LOGIC; --������ �������������
	 COUNT: IN STD_LOGIC; --������ ������ � ���������
	 CNT: OUT STD_LOGIC --������ ������, ��������� �� ��������
	 );
END COMPONENT;

SIGNAL CNT_int:std_logic;

begin

stab_inst : stab
 PORT MAP (CLK=>CLK,
	COUNT=>COUNT,
	RST=>RESET,
	CNT=>CNT_int);
	
control_unit_inst : control_unit
 PORT MAP (C=>SW,
	RST=>RESET,
	M=>LED,
	CLK=>CNT_int);



end Behavioral;

