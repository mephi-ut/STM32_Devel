----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:21:15 02/16/2018 
-- Design Name: 
-- Module Name:    Test1sym - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Test1sym is
    Port ( incr : in  STD_LOGIC;
           decr : in  STD_LOGIC;
           Q1 : out  STD_LOGIC;
           Q2 : out  STD_LOGIC);
end Test1sym;

architecture Behavioral of Test1sym is

begin
	I1I2 : process (incr,decr)
	variable stat1, stat2 : std_logic;
	begin
		if (rising_edge(incr)) then
			stat1 := '1';
			stat2 := '0';
		end if
		
		if (rising_edge(decr)) then
			stat1 := '0';
			stat2 := '1';
		end if
		
		Q1<=stat1;
		Q2<=stat2;
		
	end process I1I2;

end Behavioral;

