-- Vhdl test bench created from schematic /home/trurl/STM32_Devel/FPGA/CNC/step_driver_control/sdc.sch - Wed Jul 18 16:50:26 2018
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
ENTITY sdc_sdc_sch_tb IS
END sdc_sdc_sch_tb;
ARCHITECTURE behavioral OF sdc_sdc_sch_tb IS 

   COMPONENT sdc
   PORT( A1	:	OUT	STD_LOGIC; 
          A2	:	OUT	STD_LOGIC; 
          B1	:	OUT	STD_LOGIC; 
          B2	:	OUT	STD_LOGIC; 
          up	:	IN	STD_LOGIC; 
          clock	:	IN	STD_LOGIC; 
          clear	:	IN	STD_LOGIC; 
          enable	:	IN	STD_LOGIC; 
          L_INIT	:	IN	STD_LOGIC);
   END COMPONENT;

   SIGNAL A1	:	STD_LOGIC;
   SIGNAL A2	:	STD_LOGIC;
   SIGNAL B1	:	STD_LOGIC;
   SIGNAL B2	:	STD_LOGIC;
   SIGNAL up	:	STD_LOGIC;
   SIGNAL clock	:	STD_LOGIC;
   SIGNAL clear	:	STD_LOGIC;
   SIGNAL enable	:	STD_LOGIC;
   SIGNAL L_INIT	:	STD_LOGIC;

BEGIN

   UUT: sdc PORT MAP(
		A1 => A1, 
		A2 => A2, 
		B1 => B1, 
		B2 => B2, 
		up => up, 
		clock => clock, 
		clear => clear, 
		enable => enable, 
		L_INIT => L_INIT
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
	up <= '0';
	clock <= '0';
	clear <= '0';
	enable <= '0';
	L_INIT <= '0';
	wait for 100 ns;
	L_INIT <= '1';
	wait for 10 ns;
	clock <= '1';
	wait for 10 ns;
	clock <= '0';
	wait for 10 ns;
	L_INIT <= '0';
	wait for 10 ns;
	enable <= '1';
	up <= '0';
	
	for i in 0 to 32 loop
		wait for 10 ns;
		clock <= '1';
		wait for 10 ns;
		clock <= '0';
	end loop;
	
	
	
	
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
