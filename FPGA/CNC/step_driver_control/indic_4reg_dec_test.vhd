-- Vhdl test bench created from schematic /home/lusius/Devel/STM32_Devel/FPGA/CNC/step_driver_control/indic_4reg_decoder.sch - Tue Jul 24 03:25:54 2018
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
ENTITY indic_4reg_decoder_indic_4reg_decoder_sch_tb IS
END indic_4reg_decoder_indic_4reg_decoder_sch_tb;
ARCHITECTURE behavioral OF indic_4reg_decoder_indic_4reg_decoder_sch_tb IS 

   COMPONENT indic_4reg_decoder
   PORT( DIRECTION	:	IN	STD_LOGIC; 
          COUNT	:	IN	STD_LOGIC; 
          RESET	:	IN	STD_LOGIC; 
          COUNT_EN	:	IN	STD_LOGIC; 
          SEG_SWITCH	:	IN	STD_LOGIC; 
          SEG_A	:	OUT	STD_LOGIC; 
          SEG_B	:	OUT	STD_LOGIC; 
          SEG_C	:	OUT	STD_LOGIC; 
          SEG_D	:	OUT	STD_LOGIC; 
          SEG_E	:	OUT	STD_LOGIC; 
          SEG_F	:	OUT	STD_LOGIC; 
          SEG_G	:	OUT	STD_LOGIC);
   END COMPONENT;

   SIGNAL DIRECTION	:	STD_LOGIC;
   SIGNAL COUNT	:	STD_LOGIC;
   SIGNAL RESET	:	STD_LOGIC;
   SIGNAL COUNT_EN	:	STD_LOGIC;
   SIGNAL SEG_SWITCH	:	STD_LOGIC;
   SIGNAL SEG_A	:	STD_LOGIC;
   SIGNAL SEG_B	:	STD_LOGIC;
   SIGNAL SEG_C	:	STD_LOGIC;
   SIGNAL SEG_D	:	STD_LOGIC;
   SIGNAL SEG_E	:	STD_LOGIC;
   SIGNAL SEG_F	:	STD_LOGIC;
   SIGNAL SEG_G	:	STD_LOGIC;

BEGIN

   UUT: indic_4reg_decoder PORT MAP(
		DIRECTION => DIRECTION, 
		COUNT => COUNT, 
		RESET => RESET, 
		COUNT_EN => COUNT_EN, 
		SEG_SWITCH => SEG_SWITCH, 
		SEG_A => SEG_A, 
		SEG_B => SEG_B, 
		SEG_C => SEG_C, 
		SEG_D => SEG_D, 
		SEG_E => SEG_E, 
		SEG_F => SEG_F, 
		SEG_G => SEG_G
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
		DIRECTION <= '0';
		COUNT <= '0';
		RESET <= '0'; 
		COUNT_EN <= '0'; 
		SEG_SWITCH <= '0';
		wait for 100 ns;
		RESET <= '1';
		wait for 10 ns;
		RESET <= '0';
		wait for 10 ns;
		DIRECTION <= '1';
		COUNT_EN <= '1'; 
		wait for 100 ns;
		
		for i in 0 to 24 loop
		wait for 10 ns;
		COUNT <= '1';
		wait for 10 ns;
		COUNT <= '0';
		end loop;
		wait for 100 ns;
		
		for k in 0 to 3 loop
		wait for 10 ns;
		SEG_SWITCH <= '1';
		wait for 10 ns;
		SEG_SWITCH <= '0';
		end loop;
		
		WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
