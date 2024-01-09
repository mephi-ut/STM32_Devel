-- Vhdl test bench created from schematic /home/trurl/STM32_Devel/FPGA/CNC/step_driver_control/sdc_divider.sch - Thu Jul 19 19:41:44 2018
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
ENTITY sdc_divider_sdc_divider_sch_tb IS
END sdc_divider_sdc_divider_sch_tb;
ARCHITECTURE behavioral OF sdc_divider_sdc_divider_sch_tb IS 

   COMPONENT sdc_divider
   PORT( SYS_CLK	:	IN	STD_LOGIC; 
          RST	:	IN	STD_LOGIC; 
          DIV_EN	:	IN	STD_LOGIC; 
          MAIN_TICK	:	OUT	STD_LOGIC; 
          SET_DIV_DATA_div2	:	IN	STD_LOGIC; 
          SET_DIV_EN	:	IN	STD_LOGIC; 
          SET_DIV_CLK	:	IN	STD_LOGIC);
   END COMPONENT;

   SIGNAL SYS_CLK	:	STD_LOGIC;
   SIGNAL RST	:	STD_LOGIC;
   SIGNAL DIV_EN	:	STD_LOGIC;
   SIGNAL MAIN_TICK	:	STD_LOGIC;
   SIGNAL SET_DIV_DATA_div2	:	STD_LOGIC;
   SIGNAL SET_DIV_EN	:	STD_LOGIC;
   SIGNAL SET_DIV_CLK	:	STD_LOGIC;

BEGIN

   UUT: sdc_divider PORT MAP(
		SYS_CLK => SYS_CLK, 
		RST => RST, 
		DIV_EN => DIV_EN, 
		MAIN_TICK => MAIN_TICK, 
		SET_DIV_DATA_div2 => SET_DIV_DATA_div2, 
		SET_DIV_EN => SET_DIV_EN, 
		SET_DIV_CLK => SET_DIV_CLK
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
	SYS_CLK <='0';
		RST <='0';
		DIV_EN <='0'; 
		SET_DIV_DATA_div2 <='0'; 
		SET_DIV_EN <='0'; 
		SET_DIV_CLK <='0';
		wait for 100 ns;
		RST <= '1';
		wait for 10 ns;
		RST <= '0';
		wait for 10 ns;
		SET_DIV_EN <='1'; 
		SET_DIV_DATA_div2 <='1'; 

		
		for i in 0 to 4 loop
			wait for 10 ns;
			SET_DIV_CLK <='1';
			wait for 10 ns;
			SET_DIV_CLK <='0';
		end loop;
		wait for 10 ns;
		SET_DIV_EN <='0'; 
		DIV_EN <='1'; 
		SET_DIV_DATA_div2 <='0'; 

		for k in 0 to 256 loop
			wait for 10 ns;
			SYS_CLK <='1';
			wait for 10 ns;
			SYS_CLK <='0';
		end loop;   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
