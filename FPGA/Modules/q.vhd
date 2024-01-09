-- Vhdl test bench created from schematic /home/trurl/Develop/STM32_Devel/FPGA/Polish/Scheme.sch - Tue Feb 13 20:16:05 2018
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
   PORT( iclk	:	IN	STD_LOGIC; 
          ogt	:	OUT	STD_LOGIC; 
          olt	:	OUT	STD_LOGIC; 
          INCr	:	IN	STD_LOGIC; 
          DECr	:	IN	STD_LOGIC);
   END COMPONENT;

   SIGNAL iclk	:	STD_LOGIC;
   SIGNAL ogt	:	STD_LOGIC;
   SIGNAL olt	:	STD_LOGIC;
   SIGNAL INCr	:	STD_LOGIC;
   SIGNAL DECr	:	STD_LOGIC;

BEGIN

   UUT: Scheme PORT MAP(
		iclk => iclk, 
		ogt => ogt, 
		olt => olt, 
		INCr => INCr, 
		DECr => DECr
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
    iclk <='0';
	 INCr <='0';
	 DECr <='0';
	 wait for 100 ns;
	 for a in 0 to 3 loop
		iclk<='1';
		wait for 100 ns;
		iclk<='0';
		wait for 100 ns;
		end loop;
		
	 for a in 0 to 12 loop
		INCr<='1';
		wait for 100 ns;
		INCr<='0';
		wait for 100 ns;
		end loop;
		
	 for a in 0 to 3 loop
		DECr<='1';
		wait for 100 ns;
		DECr<='0';
		wait for 100 ns;
		end loop;
		
		
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
