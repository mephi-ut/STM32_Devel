-- Vhdl test bench created from schematic /home/trurl/STM32_Devel/FPGA/CNC/step_driver_control/count_test.sch - Thu Jul 19 16:58:50 2018
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
ENTITY count_test_count_test_sch_tb IS
END count_test_count_test_sch_tb;
ARCHITECTURE behavioral OF count_test_count_test_sch_tb IS 

   COMPONENT count_test
   PORT( TC	:	OUT	STD_LOGIC; 
          CEO	:	OUT	STD_LOGIC; 
          CLR	:	IN	STD_LOGIC; 
          CE	:	IN	STD_LOGIC; 
          CLK	:	IN	STD_LOGIC; 
          O_0	:	OUT	STD_LOGIC; 
          O_1	:	OUT	STD_LOGIC; 
          O_2	:	OUT	STD_LOGIC; 
          O_3	:	OUT	STD_LOGIC);
   END COMPONENT;

   SIGNAL TC	:	STD_LOGIC;
   SIGNAL CEO	:	STD_LOGIC;
   SIGNAL CLR	:	STD_LOGIC;
   SIGNAL CE	:	STD_LOGIC;
   SIGNAL CLK	:	STD_LOGIC;
   SIGNAL O_0	:	STD_LOGIC;
   SIGNAL O_1	:	STD_LOGIC;
   SIGNAL O_2	:	STD_LOGIC;
   SIGNAL O_3	:	STD_LOGIC;

BEGIN

   UUT: count_test PORT MAP(
		TC => TC, 
		CEO => CEO, 
		CLR => CLR, 
		CE => CE, 
		CLK => CLK, 
		O_0 => O_0, 
		O_1 => O_1, 
		O_2 => O_2, 
		O_3 => O_3
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
	CE <= '0';
	CLK <= '0';
	CLR <= '0';
	
	wait for 100 ns;
	CLR <= '1';
	wait for 10 ns;
	CLR <= '0';
	wait for 10 ns;
	CE <= '1';
	for i in 0 to 16 loop
	wait for 10 ns;
	CLK <= '1';
	wait for 10 ns;
	CLK <= '0';
	end loop;
	
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
