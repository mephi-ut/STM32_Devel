-- Vhdl test bench created from schematic /home/trurl/STM32_Devel/FPGA/CNC/step_driver_control/input_schheme.sch - Thu Jul 19 14:45:43 2018
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY input_schheme_input_schheme_sch_tb IS
END input_schheme_input_schheme_sch_tb;
ARCHITECTURE behavioral OF input_schheme_input_schheme_sch_tb IS 

   COMPONENT input_schheme
   PORT( XLXN_64	:	OUT	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          XLXN_65	:	OUT	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          enbl	:	IN	STD_LOGIC; 
          clk	:	IN	STD_LOGIC; 
          rst	:	IN	STD_LOGIC; 
          datain	:	IN	STD_LOGIC);
   END COMPONENT;

   SIGNAL XLXN_64	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL XLXN_65	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL enbl	:	STD_LOGIC;
   SIGNAL clk	:	STD_LOGIC;
   SIGNAL rst	:	STD_LOGIC;
   SIGNAL datain	:	STD_LOGIC;

BEGIN

   UUT: input_schheme PORT MAP(
		XLXN_64 => XLXN_64, 
		XLXN_65 => XLXN_65, 
		enbl => enbl, 
		clk => clk, 
		rst => rst, 
		datain => datain
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
	enbl <= '0';
	clk <= '0';
	datain <= '0';
	rst <= '1';
	wait for 100 ns;
	rst <= '0';
	wait for 100 ns;
	enbl <= '1';
	
	for i in 0 to 16 loop
		wait for 10 ns;
		datain <= '1';
		wait for 10 ns;
		clk <= '1';
		wait for 10 ns;
		clk <= '0';
		wait for 10 ns;
		clk <= '1';
		wait for 10 ns;
		clk <= '0';
		wait for 10 ns;
	
		datain <= '0';
		wait for 10 ns;
	
		clk <= '1';
		wait for 10 ns;
		clk <= '0';
		wait for 10 ns;
		clk <= '1';
		wait for 10 ns;
		clk <= '0';
		wait for 10 ns;
	
	
	
	
	
	end loop;
	

   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
