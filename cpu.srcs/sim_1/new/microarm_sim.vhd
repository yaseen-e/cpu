----------------------------------------------------------------------------------
-- microarm_sim.vhd
-- Instruction-level behavioral simulation testbench.
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity microarm_sim is
end microarm_sim;

architecture behavior of microarm_sim is
component cpu
    port(
        mclk : in  std_logic;
        reset : in  std_logic;
        Inport0 : in  std_logic_vector(7 downto 0);
        Inport1 : in  std_logic_vector(7 downto 0);
        Outport0 : out std_logic_vector(7 downto 0);
        Outport1 : out std_logic_vector(7 downto 0);
        RGB_RED : out std_logic;
        DISP2_SEG : out std_logic_vector(7 downto 0);
        DISP2_AN : out std_logic_vector(3 downto 0)
    );
end component;

signal clk : std_logic := '0';
signal reset : std_logic := '1';
signal Inport0 : std_logic_vector(7 downto 0) := (others => '0');
signal Inport1 : std_logic_vector(7 downto 0) := (others => '0');
signal Outport0 : std_logic_vector(7 downto 0);
signal Outport1 : std_logic_vector(7 downto 0);
signal RGB_RED : std_logic;
signal DISP2_SEG : std_logic_vector(7 downto 0);
signal DISP2_AN : std_logic_vector(3 downto 0);

constant clk_period : time := 10 ns;
constant sim_timeout : time := 45 ms;
constant enable_result_assert : boolean := false;
constant expected_out0 : std_logic_vector(7 downto 0) := X"00";

begin
UUT : cpu port map (
    mclk => clk,
    reset => reset,
    Inport0 => Inport0,
    Inport1 => Inport1,
    Outport0 => Outport0,
    Outport1 => Outport1,
    RGB_RED => RGB_RED,
    DISP2_SEG => DISP2_SEG,
    DISP2_AN => DISP2_AN
);

clk_process : process
begin
    clk <= '0'; wait for clk_period / 2;
    clk <= '1'; wait for clk_period / 2;
end process;

stim_proc : process
begin
    wait for 100 ns;
    reset <= '0';

    -- DEB-friendly stimulus: keep switches high first, then hold low long enough.
    Inport0(1 downto 0) <= "11";
    wait for 200 ns;
    Inport0(1 downto 0) <= "00";
    wait;
end process;

-- Use enable_result_assert=true when a test program has a fixed expected output.
check_proc : process
begin
    wait until reset = '0';
    wait for sim_timeout;

    if(enable_result_assert) then
        assert (Outport0 = expected_out0)
            report "FAIL: microarm_sim expected Outport0 mismatch"
            severity failure;
    end if;

    report "INFO: microarm_sim completed; capture waveforms for current instruction program." severity note;
    wait;
end process;

end behavior;
