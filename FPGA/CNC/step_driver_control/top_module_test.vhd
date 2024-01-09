-- Vhdl test bench created from schematic /home/trurl/STM32_Devel/FPGA/CNC/step_driver_control/topboard.sch - Thu Jul 19 20:19:30 2018
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
ENTITY topboard_topboard_sch_tb IS
END topboard_topboard_sch_tb;
ARCHITECTURE behavioral OF topboard_topboard_sch_tb IS 

   COMPONENT topboard
   PORT( RESET	:	IN	STD_LOGIC; 
          WORK_ENABLE	:	IN	STD_LOGIC; 
          SET_ENABLE	:	IN	STD_LOGIC; 
          SET_DIV_DATA	:	IN	STD_LOGIC; 
          SET_DIV_CLK	:	IN	STD_LOGIC; 
          A1	:	OUT	STD_LOGIC; 
          A2	:	OUT	STD_LOGIC; 
          B1	:	OUT	STD_LOGIC; 
          B2	:	OUT	STD_LOGIC; 
          SYS_CLOCK	:	IN	STD_LOGIC; 
          SET_DIST_CLK	:	IN	STD_LOGIC; 
          SET_DIST_DATA	:	IN	STD_LOGIC; 
          DIST_FINISH	:	OUT	STD_LOGIC; 
          DIR_IS_UP	:	IN	STD_LOGIC);
   END COMPONENT;

   SIGNAL RESET	:	STD_LOGIC;
   SIGNAL WORK_ENABLE	:	STD_LOGIC;
   SIGNAL SET_ENABLE	:	STD_LOGIC;
   SIGNAL SET_DIV_DATA	:	STD_LOGIC;
   SIGNAL SET_DIV_CLK	:	STD_LOGIC;
   SIGNAL A1	:	STD_LOGIC;
   SIGNAL A2	:	STD_LOGIC;
   SIGNAL B1	:	STD_LOGIC;
   SIGNAL B2	:	STD_LOGIC;
   SIGNAL SYS_CLOCK	:	STD_LOGIC;
   SIGNAL SET_DIST_CLK	:	STD_LOGIC;
   SIGNAL SET_DIST_DATA	:	STD_LOGIC;
   SIGNAL DIST_FINISH	:	STD_LOGIC;
   SIGNAL DIR_IS_UP	:	STD_LOGIC;

BEGIN

   UUT: topboard PORT MAP(
		RESET => RESET, 
		WORK_ENABLE => WORK_ENABLE, 
		SET_ENABLE => SET_ENABLE, 
		SET_DIV_DATA => SET_DIV_DATA, 
		SET_DIV_CLK => SET_DIV_CLK, 
		A1 => A1, 
		A2 => A2, 
		B1 => B1, 
		B2 => B2, 
		SYS_CLOCK => SYS_CLOCK, 
		SET_DIST_CLK => SET_DIST_CLK, 
		SET_DIST_DATA => SET_DIST_DATA, 
		DIST_FINISH => DIST_FINISH, 
		DIR_IS_UP => DIR_IS_UP
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
		RESET <= '0';
		WORK_ENABLE <= '0';
		SET_ENABLE <= '0';
		SET_DIV_DATA <= '0';
		SET_DIV_CLK <= '0';
		SYS_CLOCK <= '0';
		SET_DIST_CLK <= '0';
		SET_DIST_DATA <= '0';
		DIR_IS_UP <= '0';
		wait for 100 ns;
		RESET <= '1';
		wait for 10 ns;
		RESET <= '0';
		wait for 10 ns;
		
		SET_ENABLE <= '1';
		SET_DIV_DATA <= '1';
		for div in 0 to 1 loop
		wait for 10 ns;
		SET_DIV_CLK <= '1';
		wait for 10 ns;
		SET_DIV_CLK <= '0';
		end loop;
		wait for 10 ns;
		SET_DIV_DATA <= '0';
		SET_DIST_DATA <= '1';

		for dist in 0 to 4 loop
			wait for 10 ns;
			SET_DIST_CLK <= '1';
			wait for 10 ns;
			SET_DIST_CLK <= '0';
		end loop;
		wait for 10 ns;
		SET_ENABLE <= '0';
		SET_DIST_DATA <= '0';
		wait for 10 ns;
		WORK_ENABLE <= '1';
		
		for work in 0 to 512 loop
		wait for 10 ns;
		SYS_CLOCK <= '1';
		wait for 10 ns;
		SYS_CLOCK <= '0';
		end loop;
		wait for 10 ns;
		WORK_ENABLE <= '0';
		wait;
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
