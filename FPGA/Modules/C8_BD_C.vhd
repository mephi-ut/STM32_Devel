----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:57:38 02/13/2018 
-- Design Name: 
-- Module Name:    C8_BD_C - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity C8_BD_C is
    Port ( incr : in  STD_LOGIC;
           decr : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (7 downto 0));
end C8_BD_C;

architecture Behavioral of C8_BD_C is

begin

	process (incr,decr,clr)
	variable count : INTEGER range 0 to 254;
	begin
		if (rising_edge(clr)) then
			count := 0;
		end if;
	
		if (rising_edge(incr)) and (count /= 254) then
			count := count +1;
		end if;
	
		if (rising_edge(decr)) and (count /=0) then
			count := count -1;
		end if;
	Q <= std_logic_vector(to_unsigned(count, Q'length));
	end process;

end Behavioral;

