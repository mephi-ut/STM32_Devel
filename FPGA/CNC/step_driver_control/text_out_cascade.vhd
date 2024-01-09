-- Vhdl test bench created from schematic /home/lusius/Devel/STM32_Devel/FPGA/CNC/step_driver_control/sdc.sch - Wed Jul 18 02:10:30 2018
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
   PORT( zero	:	IN	STD_LOGIC; 
          checkout	:	OUT	STD_LOGIC; 
          A1	:	OUT	STD_LOGIC; 
          A2	:	OUT	STD_LOGIC; 
          B1	:	OUT	STD_LOGIC; 
          B2	:	OUT	STD_LOGIC; 
          DIR	:	IN	STD_LOGIC; 
          ENABLE	:	IN	STD_LOGIC; 
          CLOCK	:	IN	STD_LOGIC);
   END COMPONENT;

   SIGNAL zero	:	STD_LOGIC;
   SIGNAL checkout	:	STD_LOGIC;
   SIGNAL A1	:	STD_LOGIC;
   SIGNAL A2	:	STD_LOGIC;
   SIGNAL B1	:	STD_LOGIC;
   SIGNAL B2	:	STD_LOGIC;
   SIGNAL DIR	:	STD_LOGIC;
   SIGNAL ENABLE	:	STD_LOGIC;
   SIGNAL CLOCK	:	STD_LOGIC;

BEGIN

   UUT: sdc PORT MAP(
		zero => zero, 
		checkout => checkout, 
		A1 => A1, 
		A2 => A2, 
		B1 => B1, 
		B2 => B2, 
		DIR => DIR, 
		ENABLE => ENABLE, 
		CLOCK => CLOCK
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
