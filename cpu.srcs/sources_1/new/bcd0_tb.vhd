library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bcd0_tb is
end bcd0_tb;

architecture Behavioral of bcd0_tb is
component bcd0_mux is
  Port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    bcd_lo_in : in STD_LOGIC_VECTOR(7 downto 0);
    bcd_hi_in : in STD_LOGIC_VECTOR(7 downto 0);
    a_lo : out STD_LOGIC_VECTOR(7 downto 0);
    a_hi : out STD_LOGIC_VECTOR(7 downto 0);
    b_lo : out STD_LOGIC_VECTOR(7 downto 0);
    b_hi : out STD_LOGIC_VECTOR(7 downto 0)
  );
end component;

signal clk : STD_LOGIC := '0';
signal reset : STD_LOGIC := '1';
signal bcd_lo_in : STD_LOGIC_VECTOR(7 downto 0) := (others => '1');
signal bcd_hi_in : STD_LOGIC_VECTOR(7 downto 0) := (others => '1');
signal a_lo, a_hi, b_lo, b_hi : STD_LOGIC_VECTOR(7 downto 0);

constant CLK_PERIOD : time := 10 ns;

begin

UUT : bcd0_mux
  PORT MAP (
    clk => clk,
    reset => reset,
    bcd_lo_in => bcd_lo_in,
    bcd_hi_in => bcd_hi_in,
    a_lo => a_lo,
    a_hi => a_hi,
    b_lo => b_lo,
    b_hi => b_hi
  );

clk_process : process
begin
  clk <= '0';
  wait for CLK_PERIOD/2;
  clk <= '1';
  wait for CLK_PERIOD/2;
end process;

stim_proc : process
begin
  wait for 50 ns;
  reset <= '0';

  -- First valid BCD0 pair captured as A (right side)
  bcd_lo_in <= "11111001"; -- 1
  bcd_hi_in <= "10100100"; -- 2
  wait for 40 ns;

  -- Second valid BCD0 pair captured as B (left side)
  bcd_lo_in <= "10010010"; -- 5
  bcd_hi_in <= "11111000"; -- 7
  wait for 40 ns;

  -- Another pair overwrites A (alternating behavior)
  bcd_lo_in <= "11000000"; -- 0
  bcd_hi_in <= "10010000"; -- 9
  wait;
end process;

end Behavioral;
