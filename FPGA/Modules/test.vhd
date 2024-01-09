-- Vhdl test bench created from schematic /home/trurl/Develop/STM32_Devel/FPGA/Polish/Scheme.sch - Tue Feb 13 20:39:27 2018
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
          DECr	:	IN	STD_LOGIC; 
          INCf	:	IN	STD_LOGIC; 
          DECf	:	IN	STD_LOGIC);
   END COMPONENT;

   SIGNAL iclk	:	STD_LOGIC;
   SIGNAL ogt	:	STD_LOGIC;
   SIGNAL olt	:	STD_LOGIC;
   SIGNAL INCr	:	STD_LOGIC;
   SIGNAL DECr	:	STD_LOGIC;
   SIGNAL INCf	:	STD_LOGIC;
   SIGNAL DECf	:	STD_LOGIC;

BEGIN

   UUT: Scheme PORT MAP(
		iclk => iclk, 
		ogt => ogt, 
		olt => olt, 
		INCr => INCr, 
		DECr => DECr, 
		INCf => INCf, 
		DECf => DECf
   );

-- *** Test Bench - User Defined Section ***
clk_proc : process
		begin
		iclk<='0';
		wait for 20 ns;
		iclk <='1';
		wait for 20 ns;
	end process;
	
   tb : PROCESS
   BEGIN
	 INCr<='0';
	 DECr<='0';
	 INCf<='0';
	 DECf<='0';
	 wait for 100 ns;
	 for a in 0 to 32 loop
	  INCf <='1';
	  wait for 20 ns;
	  INCf<='0';
	  wait for 20 ns;
	  end loop;
	 
	 for b in 0 to 8 loop
	  INCr <='1';
	  wait for 20 ns;
	  INCr<='0';
	  wait for 20 ns;
	  end loop;
	 
	 wait for 2000 ns;
	 
	 for b in 0 to 8 loop
	  INCr <='1';
	  wait for 20 ns;
	  INCr<='0';
	  wait for 20 ns;
	  end loop;
	 
	 wait for 2000 ns;
	 
	 for b in 0 to 8 loop
	  INCr <='1';
	  wait for 20 ns;
	  INCr<='0';
	  wait for 20 ns;
	  end loop;
	 
	 wait for 2000 ns;
	 
	 for b in 0 to 8 loop
	  INCr <='1';
	  wait for 20 ns;
	  INCr<='0';
	  wait for 20 ns;
	  end loop;
	 
	 wait for 2000 ns;
	 
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
