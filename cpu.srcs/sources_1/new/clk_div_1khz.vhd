----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/09/2026 02:45:33 PM
-- Design Name: 
-- Module Name: clk_div_1khz - Behavioral
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

entity clk_div_1khz is
	Port (
		clk_in : in STD_LOGIC;
		reset : in STD_LOGIC;
		clk_out : out STD_LOGIC
	);
end clk_div_1khz;

architecture Behavioral of clk_div_1khz is
signal div_cnt : unsigned(15 downto 0);
signal clk_1khz_r : STD_LOGIC;

begin

process(clk_in, reset)
begin
	if(reset = '1') then
		div_cnt <= (others => '0');
		clk_1khz_r <= '0';
	elsif(rising_edge(clk_in)) then
		if(div_cnt = 49999) then
			div_cnt <= (others => '0');
			clk_1khz_r <= not clk_1khz_r;
		else
			div_cnt <= div_cnt + 1;
		end if;
	end if;
end process;

clk_out <= clk_1khz_r;


end Behavioral;
