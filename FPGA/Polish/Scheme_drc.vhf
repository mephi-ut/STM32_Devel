--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Scheme_drc.vhf
-- /___/   /\     Timestamp : 02/13/2018 20:07:07
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: /home/opt/Xilinx/14.7/ISE_DS/ISE/bin/lin64/unwrapped/sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl Scheme_drc.vhf -w /home/trurl/Develop/STM32_Devel/FPGA/Polish/Scheme.sch
--Design Name: Scheme
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL COMPM8_HXILINX_Scheme -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.std_logic_unsigned.all;

entity COMPM8_HXILINX_Scheme is
port(
    GT  : out std_logic;
    LT  : out std_logic;

    A   : in std_logic_vector(7 downto 0);
    B   : in std_logic_vector(7 downto 0)
  );
end COMPM8_HXILINX_Scheme;

architecture COMPM8_HXILINX_Scheme_V of COMPM8_HXILINX_Scheme is
begin
     
  GT <= '1' when (A > B) else '0';
  LT <= '1' when (A < B) else '0';
 
end COMPM8_HXILINX_Scheme_V;
----- CELL COMP8_HXILINX_Scheme -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity COMP8_HXILINX_Scheme is
port(
    EQ  : out std_logic;

    A   : in std_logic_vector(7 downto 0);
    B   : in std_logic_vector(7 downto 0)
  );
end COMP8_HXILINX_Scheme;

architecture COMP8_HXILINX_Scheme_V of COMP8_HXILINX_Scheme is
begin
  EQ <= '1' when (A=B) else '0';
end COMP8_HXILINX_Scheme_V;
----- CELL CB8CE_HXILINX_Scheme -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CB8CE_HXILINX_Scheme is
port (
    CEO : out STD_LOGIC;
    Q   : out STD_LOGIC_VECTOR(7 downto 0);
    TC  : out STD_LOGIC;
    C   : in STD_LOGIC;
    CE  : in STD_LOGIC;
    CLR : in STD_LOGIC
    );
end CB8CE_HXILINX_Scheme;

architecture Behavioral of CB8CE_HXILINX_Scheme is

  signal COUNT : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
  constant TERMINAL_COUNT : STD_LOGIC_VECTOR(7 downto 0) := (others => '1');
  
begin

process(C, CLR)
begin
  if (CLR='1') then
    COUNT <= (others => '0');
  elsif (C'event and C = '1') then
    if (CE='1') then 
      COUNT <= COUNT+1;
    end if;
  end if;
end process;

TC  <= '1' when (COUNT = TERMINAL_COUNT) else '0';
CEO <= '1' when ((COUNT = TERMINAL_COUNT) and CE='1') else '0';
Q   <= COUNT;

end Behavioral;


library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Scheme is
   port ( DEC  : in    std_logic; 
          iclk : in    std_logic; 
          INC  : in    std_logic; 
          ogt  : out   std_logic; 
          olt  : out   std_logic);
end Scheme;

architecture BEHAVIORAL of Scheme is
   attribute HU_SET     : string ;
   signal XLXN_7  : std_logic;
   signal XLXN_18 : std_logic_vector (7 downto 0);
   signal XLXN_19 : std_logic;
   signal XLXN_20 : std_logic_vector (7 downto 0);
   signal XLXN_21 : std_logic_vector (7 downto 0);
   signal XLXN_26 : std_logic;
   signal XLXN_30 : std_logic_vector (7 downto 0);
   component COMPM8_HXILINX_Scheme
      port ( A  : in    std_logic_vector (7 downto 0); 
             B  : in    std_logic_vector (7 downto 0); 
             GT : out   std_logic; 
             LT : out   std_logic);
   end component;
   
   component CB8CE_HXILINX_Scheme
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             CEO : out   std_logic; 
             Q   : out   std_logic_vector (7 downto 0); 
             TC  : out   std_logic);
   end component;
   
   component COMP8_HXILINX_Scheme
      port ( A  : in    std_logic_vector (7 downto 0); 
             B  : in    std_logic_vector (7 downto 0); 
             EQ : out   std_logic);
   end component;
   
   component C8_BD_C
      port ( incr : in    std_logic; 
             decr : in    std_logic; 
             clr  : in    std_logic; 
             Q    : out   std_logic_vector (7 downto 0));
   end component;
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_2";
   attribute HU_SET of XLXI_2 : label is "XLXI_2_0";
   attribute HU_SET of XLXI_5 : label is "XLXI_5_1";
   attribute HU_SET of XLXI_9 : label is "XLXI_9_3";
begin
   XLXN_7 <= '1';
   XLXN_20(7 downto 0) <= x"04";
   XLXN_30(7 downto 0) <= x"08";
   XLXI_1 : COMPM8_HXILINX_Scheme
      port map (A(7 downto 0)=>XLXN_18(7 downto 0),
                B(7 downto 0)=>XLXN_21(7 downto 0),
                GT=>ogt,
                LT=>olt);
   
   XLXI_2 : CB8CE_HXILINX_Scheme
      port map (C=>iclk,
                CE=>XLXN_7,
                CLR=>XLXN_19,
                CEO=>open,
                Q(7 downto 0)=>XLXN_18(7 downto 0),
                TC=>open);
   
   XLXI_5 : COMP8_HXILINX_Scheme
      port map (A(7 downto 0)=>XLXN_18(7 downto 0),
                B(7 downto 0)=>XLXN_20(7 downto 0),
                EQ=>XLXN_19);
   
   XLXI_8 : C8_BD_C
      port map (clr=>XLXN_26,
                decr=>DEC,
                incr=>INC,
                Q(7 downto 0)=>XLXN_21(7 downto 0));
   
   XLXI_9 : COMP8_HXILINX_Scheme
      port map (A(7 downto 0)=>XLXN_21(7 downto 0),
                B(7 downto 0)=>XLXN_30(7 downto 0),
                EQ=>XLXN_26);
   
end BEHAVIORAL;


