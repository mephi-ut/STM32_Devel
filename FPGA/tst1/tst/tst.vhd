-- Vhdl test bench created from schematic /home/lusius/Devel/STM32_Devel/FPGA/tst1/tst/tst1.sch - Wed Jul 18 01:08:44 2018
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
ENTITY tst1_tst1_sch_tb IS
END tst1_tst1_sch_tb;
ARCHITECTURE behavioral OF tst1_tst1_sch_tb IS 

   COMPONENT tst1
   PORT( up	:	IN	STD_LOGIC; 
          load	:	IN	STD_LOGIC; 
          enable	:	IN	STD_LOGIC; 
          clk	:	IN	STD_LOGIC; 
          XLXN_10	:	OUT	STD_LOGIC; 
          XLXN_11	:	OUT	STD_LOGIC; 
          XLXN_12	:	OUT	STD_LOGIC);
   END COMPONENT;

   SIGNAL up	:	STD_LOGIC;
   SIGNAL load	:	STD_LOGIC;
   SIGNAL enable	:	STD_LOGIC;
   SIGNAL clk	:	STD_LOGIC;
   SIGNAL clr	:	STD_LOGIC;
   SIGNAL XLXN_10	:	STD_LOGIC;
   SIGNAL XLXN_11	:	STD_LOGIC;
   SIGNAL XLXN_12	:	STD_LOGIC;
   SIGNAL XLXN_13	:	STD_LOGIC;

BEGIN

   UUT: tst1 PORT MAP(
		up => up, 
		load => load, 
		enable => enable, 
		clk => clk, 
		XLXN_10 => XLXN_10, 
		XLXN_11 => XLXN_11, 
		XLXN_12 => XLXN_12 
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
	clr <= '0';
	load <= '1';
	wait for 100 ns;
	clk <= '1';
	wait for 100 ns;
	clk <= '0';
	wait for 100 ns;
	load <= '0';
	wait for 100 ns;
	enable <= '1';
	up <= '1';
	wait for 100 ns;
	
	for I in 0 to 16 loop
	clk <= '1';
	wait for 10 ns;
	clk <= '0';
	wait for 10 ns;
	end loop;
	
	END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
