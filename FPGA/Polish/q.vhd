-- Vhdl test bench created from schematic /home/trurl/Develop/STM32_Devel/FPGA/Polish/Scheme.sch - Tue Feb 13 19:54:24 2018
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
ENTITY Scheme_Scheme_sch_tb IS
END Scheme_Scheme_sch_tb;
ARCHITECTURE behavioral OF Scheme_Scheme_sch_tb IS 

   COMPONENT Scheme
   PORT( ogt	:	OUT	STD_LOGIC; 
          olt	:	OUT	STD_LOGIC; 
          iclk	:	IN	STD_LOGIC);
   END COMPONENT;

   SIGNAL ogt	:	STD_LOGIC;
   SIGNAL olt	:	STD_LOGIC;
   SIGNAL iclk	:	STD_LOGIC;

BEGIN

   UUT: Scheme PORT MAP(
		ogt => ogt, 
		olt => olt, 
		iclk => iclk
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
