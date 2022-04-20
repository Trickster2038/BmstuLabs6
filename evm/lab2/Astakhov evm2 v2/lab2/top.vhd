-- ������ ������ ���������� �������� 10 ��.
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

Entity lab2_example IS
 PORT (
	 RST: IN STD_LOGIC; --��������� ������ ������
	 CLK: IN STD_LOGIC; --������ �������������
	 COUNT: IN STD_LOGIC; --������ ������ � ���������
	 CNT: OUT STD_LOGIC --������ ������, ��������� �� ��������
	 );
END lab2_example;

ARCHITECTURE behavioral OF lab2_example IS
	-- �������� ��������� � ������������ � ���������
	CONSTANT STATE0: STD_LOGIC_VECTOR (1 downto 0) := "00";
	CONSTANT STATE1: STD_LOGIC_VECTOR (1 downto 0) := "01";
	CONSTANT STATE2: STD_LOGIC_VECTOR (1 downto 0) := "10";
	CONSTANT STATE3: STD_LOGIC_VECTOR (1 downto 0) := "11";
	-- ��������� �������� � ������ ������� t
	SIGNAL S: STD_LOGIC_VECTOR (1 downto 0);
	-- ��������� �������� � ������ ������� t+1
	SIGNAL SN: STD_LOGIC_VECTOR (1 downto 0);
	SIGNAL COUNTER: integer; -- ������� 2^20
	SIGNAL DLY_OVF: STD_LOGIC; -- ������ "���������� �����"
	SIGNAL DLY_EN: STD_LOGIC; -- ������ ���������� ������ ��������
BEGIN
	-- ������ ���������
	FSM_STATE_inst: PROCESS (CLK)
	BEGIN
		IF (CLK='1' and CLK'event) THEN
			IF (RST='1') THEN
				S <= STATE0;
			ELSE
				S <= SN;
			END IF;
		END IF;
	END PROCESS;
	-- �������������� ����� ��� ��������� �������� CNT � DLY_EN (�� ��������������� ��������)
	CNT <= S(1) xor S(0);
	DLY_EN <= S(0);
	--�������������� ����� ��� ����������� ���������� ��������� (�� ��������������� ��������)
	SN(0) <= (not DLY_OVF and S(0)) or (S(1) and not S(0) and not COUNT) or (not S(1) and not S(0) and COUNT);--������ 1
	SN(1) <= (S(1) and not S(0)) or (S(1) and S(0) and not DLY_OVF) or (not S(1) and S(0) and DLY_OVF);
	
	--SN(1) <= '1' WHEN ((DLY_OVF='0' and S(0) = '1') or S(1) = '0') ELSE '0';--������ 2

	-- �������� ��������
	COUNTER_inst: PROCESS (CLK)
	BEGIN
		IF (CLK='1' and CLK'event) THEN
			IF (RST='1' or DLY_EN = '0') THEN
				COUNTER <= 0;
			ELSE
				COUNTER <= COUNTER + 1;
			END IF;
		END IF;
	END PROCESS;
	DLY_OVF <= '1' WHEN COUNTER = 2**20-1 ELSE '0'; --������������ ��������
	
END Behavioral;