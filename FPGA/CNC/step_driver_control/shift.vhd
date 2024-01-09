-- Vhdl test bench created from schematic /home/trurl/STM32_Devel/FPGA/CNC/step_driver_control/input_schheme.sch - Thu Jul 19 13:59:39 2018
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
   PORT( XLXN_1	:	OUT	STD_LOGIC; 
          XLXN_2	:	OUT	STD_LOGIC; 
          XLXN_3	:	OUT	STD_LOGIC; 
          XLXN_4	:	OUT	STD_LOGIC; 
          data	:	IN	STD_LOGIC; 
          enbl	:	IN	STD_LOGIC; 
          clk	:	IN	STD_LOGIC; 
          rst	:	IN	STD_LOGIC);
   END COMPONENT;

   SIGNAL XLXN_1	:	STD_LOGIC;
   SIGNAL XLXN_2	:	STD_LOGIC;
   SIGNAL XLXN_3	:	STD_LOGIC;
   SIGNAL XLXN_4	:	STD_LOGIC;
   SIGNAL data	:	STD_LOGIC;
   SIGNAL enbl	:	STD_LOGIC;
   SIGNAL clk	:	STD_LOGIC;
   SIGNAL rst	:	STD_LOGIC;

BEGIN

   UUT: input_schheme PORT MAP(
		XLXN_1 => XLXN_1, 
		XLXN_2 => XLXN_2, 
		XLXN_3 => XLXN_3, 
		XLXN_4 => XLXN_4, 
		data => data, 
		enbl => enbl, 
		clk => clk, 
		rst => rst
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
		rst <= '0';
		enbl <='1';
		data <= '0';
		clk <= '0';
		
		for i in 0 to 8 loop
		wait for 10 ns;
		data <= '1';
		wait for 10 ns;
		clk <= '1';
		wait for 10 ns;
		clk <= '0';
		wait for 10 ns;
		data <= '0';
		wait for 10 ns;
		clk <= '1';
		wait for 10 ns;
		clk <= '0';
		wait for 10 ns;
		end loop;

   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
