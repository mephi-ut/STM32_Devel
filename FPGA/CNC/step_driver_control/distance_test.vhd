-- Vhdl test bench created from schematic /home/trurl/STM32_Devel/FPGA/CNC/step_driver_control/distance_module.sch - Thu Jul 19 16:03:35 2018
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
ENTITY distance_module_distance_module_sch_tb IS
END distance_module_distance_module_sch_tb;
ARCHITECTURE behavioral OF distance_module_distance_module_sch_tb IS 

   COMPONENT distance_module
   PORT( SET_DATA_E	:	IN	STD_LOGIC; 
          SET_CLK	:	IN	STD_LOGIC; 
          SET_CLR	:	IN	STD_LOGIC; 
          COUNT_CLR	:	IN	STD_LOGIC; 
          DIST_END	:	OUT	STD_LOGIC; 
			 MAIN_TICK_O:	OUT	STD_LOGIC; 
          SET_DATA	:	IN	STD_LOGIC; 
          MAIN_TICK	:	IN	STD_LOGIC; 
          COUNT_EN	:	IN	STD_LOGIC);
   END COMPONENT;

   SIGNAL SET_DATA_E	:	STD_LOGIC;
   SIGNAL SET_CLK	:	STD_LOGIC;
   SIGNAL SET_CLR	:	STD_LOGIC;
   SIGNAL COUNT_CLR	:	STD_LOGIC;
   SIGNAL DIST_END	:	STD_LOGIC;
   SIGNAL MAIN_TICK_O:	STD_LOGIC;
   SIGNAL SET_DATA	:	STD_LOGIC;
   SIGNAL MAIN_TICK	:	STD_LOGIC;
   SIGNAL COUNT_EN	:	STD_LOGIC;

BEGIN

   UUT: distance_module PORT MAP(
		SET_DATA_E => SET_DATA_E, 
		SET_CLK => SET_CLK, 
		SET_CLR => SET_CLR, 
		COUNT_CLR => COUNT_CLR, 
		DIST_END => DIST_END, 
		SET_DATA => SET_DATA, 
		MAIN_TICK => MAIN_TICK, 
		COUNT_EN => COUNT_EN,
		MAIN_TICK_O => MAIN_TICK_O
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
		SET_DATA_E <= '0'; 
		SET_CLK <= '0'; 
		SET_CLR <= '0';
		COUNT_CLR <= '0';
		SET_DATA <= '0';
		MAIN_TICK <= '0';
		COUNT_EN <= '0';
		wait for 100 ns;
		SET_CLR <= '1';
		COUNT_CLR <= '1';
		wait for 10 ns;
		SET_CLR <= '0';
		COUNT_CLR <= '0';
		wait for 10 ns;
		SET_DATA_E <= '1'; 
		SET_DATA <= '1';
		
		for i in 0 to 4 loop
			wait for 10 ns;
			SET_CLK <= '1'; 
			wait for 10 ns;
			SET_CLK <= '0'; 
		end loop;
		wait for 10 ns;
		SET_DATA_E <= '0'; 
		SET_DATA <= '0';
		wait for 10 ns;
		COUNT_EN <= '1';
		
		for k in 0 to 64 loop
		wait for 10 ns;
			MAIN_TICK <= '1'; 
			wait for 10 ns;
			MAIN_TICK <= '0'; 
		end loop;
		














		
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
