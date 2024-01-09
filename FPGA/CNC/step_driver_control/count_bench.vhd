-- Vhdl test bench created from schematic /home/lusius/Devel/STM32_Devel/FPGA/CNC/step_driver_control/count_bidir_4.sch - Fri Jul 20 04:38:38 2018
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
ENTITY count_bidir_4_count_bidir_4_sch_tb IS
END count_bidir_4_count_bidir_4_sch_tb;
ARCHITECTURE behavioral OF count_bidir_4_count_bidir_4_sch_tb IS 

   COMPONENT count_bidir_4
   PORT( Q0	:	OUT	STD_LOGIC; 
          DIR	:	IN	STD_LOGIC; 
          Q1	:	OUT	STD_LOGIC; 
          Q2	:	OUT	STD_LOGIC; 
          RST	:	IN	STD_LOGIC; 
          COUNT	:	IN	STD_LOGIC; 
          Q3	:	OUT	STD_LOGIC);
   END COMPONENT;

   SIGNAL Q0	:	STD_LOGIC;
   SIGNAL DIR	:	STD_LOGIC;
   SIGNAL Q1	:	STD_LOGIC;
   SIGNAL Q2	:	STD_LOGIC;
   SIGNAL RST	:	STD_LOGIC;
   SIGNAL COUNT	:	STD_LOGIC;
   SIGNAL Q3	:	STD_LOGIC;

BEGIN

   UUT: count_bidir_4 PORT MAP(
		Q0 => Q0, 
		DIR => DIR, 
		Q1 => Q1, 
		Q2 => Q2, 
		RST => RST, 
		COUNT => COUNT, 
		Q3 => Q3
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
	RST <= '1';
	DIR <= '1';
	COUNT <= '0';
	wait for 100 ns;
	RST <= '0';
	
	for i in 0 to 20 loop
		wait for 10 ns;
		COUNT <= '1';
		wait for 10 ns;
		COUNT <= '0';
	end loop;
	wait for 10 ns;
	DIR <= '0';
	for i in 0 to 20 loop
		wait for 10 ns;
		COUNT <= '1';
		wait for 10 ns;
		COUNT <= '0';
	end loop;
	
	
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
