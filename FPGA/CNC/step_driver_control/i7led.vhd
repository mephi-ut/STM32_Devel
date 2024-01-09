-- Vhdl test bench created from schematic /home/trurl/STM32_Devel/FPGA/CNC/step_driver_control/i7led_decoder.sch - Fri Jul 20 17:50:36 2018
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
ENTITY i7led_decoder_i7led_decoder_sch_tb IS
END i7led_decoder_i7led_decoder_sch_tb;
ARCHITECTURE behavioral OF i7led_decoder_i7led_decoder_sch_tb IS 

   COMPONENT i7led_decoder
   PORT( SEG_A	:	OUT	STD_LOGIC; 
          SEG_C	:	OUT	STD_LOGIC; 
          SEG_D	:	OUT	STD_LOGIC; 
          SEG_E	:	OUT	STD_LOGIC; 
          SEG_F	:	OUT	STD_LOGIC; 
          SEG_B	:	OUT	STD_LOGIC; 
          SEG_G	:	OUT	STD_LOGIC; 
          COUNT	:	IN	STD_LOGIC; 
          DIR	:	IN	STD_LOGIC; 
          CE_O	:	OUT	STD_LOGIC; 
          RST	:	IN	STD_LOGIC; 
          COUNT_EN	:	IN	STD_LOGIC);
   END COMPONENT;

   SIGNAL SEG_A	:	STD_LOGIC;
   SIGNAL SEG_C	:	STD_LOGIC;
   SIGNAL SEG_D	:	STD_LOGIC;
   SIGNAL SEG_E	:	STD_LOGIC;
   SIGNAL SEG_F	:	STD_LOGIC;
   SIGNAL SEG_B	:	STD_LOGIC;
   SIGNAL SEG_G	:	STD_LOGIC;
   SIGNAL COUNT	:	STD_LOGIC;
   SIGNAL DIR	:	STD_LOGIC;
   SIGNAL CE_O	:	STD_LOGIC;
   SIGNAL RST	:	STD_LOGIC;
   SIGNAL COUNT_EN	:	STD_LOGIC;

BEGIN

   UUT: i7led_decoder PORT MAP(
		SEG_A => SEG_A, 
		SEG_C => SEG_C, 
		SEG_D => SEG_D, 
		SEG_E => SEG_E, 
		SEG_F => SEG_F, 
		SEG_B => SEG_B, 
		SEG_G => SEG_G, 
		COUNT => COUNT, 
		DIR => DIR, 
		CE_O => CE_O, 
		RST => RST, 
		COUNT_EN => COUNT_EN
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
		COUNT <= '0';
		DIR <= '0';
		RST <= '0';
		COUNT_EN <= '0';
		wait for 100 ns;
		RST <= '1';
		wait for 10 ns;
		RST <= '0';
		wait for 10 ns;
		DIR <= '1';
		COUNT_EN <= '1';
		
		for i in 0 to 16 loop
		wait for 10 ns;
		COUNT <= '1';
		wait for 10 ns;
		COUNT <= '0';
		end loop;
		
		wait for 100 ns;
		COUNT_EN <= '0';
		RST <= '1';
		wait for 10 ns;
		RST <= '0';
		wait for 10 ns;
		COUNT_EN <= '1';
		DIR <= '0';
		
		for i in 0 to 16 loop
		wait for 10 ns;
		COUNT <= '1';
		wait for 10 ns;
		COUNT <= '0';
		end loop;
	
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
