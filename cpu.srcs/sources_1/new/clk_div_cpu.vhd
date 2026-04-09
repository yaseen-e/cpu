----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/09/2026 04:15:11 PM
-- Design Name: 
-- Module Name: clk_div_cpu - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity clk_div_cpu is
	Port (
		clk_in : in STD_LOGIC;
		reset : in STD_LOGIC;
		clk_out : out STD_LOGIC
	);
end clk_div_cpu;

architecture Behavioral of clk_div_cpu is
-- 100MHz -> 2Hz (toggle every 25,000,000 cycles)
constant CPU_DIV_MAX : unsigned(24 downto 0) := to_unsigned(24999999, 25);
signal div_cnt : unsigned(24 downto 0);
signal cpu_clk_r : STD_LOGIC;

begin

process(clk_in, reset)
begin
	if(reset = '1') then
		div_cnt <= (others => '0');
		cpu_clk_r <= '0';
	elsif(rising_edge(clk_in)) then
		if(div_cnt = CPU_DIV_MAX) then
			div_cnt <= (others => '0');
			cpu_clk_r <= not cpu_clk_r;
		else
			div_cnt <= div_cnt + 1;
		end if;
	end if;
end process;

clk_out <= cpu_clk_r;


end Behavioral;
